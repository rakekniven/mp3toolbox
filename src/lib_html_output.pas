(*
one line to give the program's name and an idea of what it does.
Copyright (C) yyyy  name of author

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*)

unit lib_html_output;

interface
	uses
    SysUtils,
    Dialogs,
		classes,
		WideStrUtils;

	procedure	HTML_Multi_Index_Seite(AHtmlOutputFile :	String);

	procedure	CDList_HTML_Main_Table_Output(AOutputStrings	:	TStringList);

	procedure create_html_output(AHtmlTemplateFile,
															 AHtmlOutputFile,
															 ALetter           :	String;
															 AArrayPointer    : Integer);
implementation

uses
	U_Main,
	U_Setup,
	lib1;

		{--- Variables in templates :	---}

		{#general:update_date}
		{#general:version}

		{#cdlist:total_cd_counter}
		{#cdlist:searchtime}
		{#cdlist:result_table}

		{#mp3list:total_mpg_counter}
		{#mp3list:searchtime}
		{#mp3list:result_list}
		{#mp3list:detail_mpg_counter}
		{#mp3list:detail_result_list}


{--- Index-Seite für Multioutput. ---------------------------------------------}
procedure	HTML_Multi_Index_Seite(AHtmlOutputFile :	String);
var
	i1		:	Integer;
	i2		:	Integer;
	count	:	array[0..25] of Integer;		//	array to countfor every letter
	dir		:	array[0..25] of Char;				//	array fot the letters
begin
	{Array mit Buchstaben}
	dir :=	'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

	for i1 := 0 to 25 do
	begin
		count[i1]	:=	0;
		{Schleife für ListBox-Ausgabe}
		for i2 := 0 to (mp3list_result_count - 1) do
		begin
			{	> 0 bedeutet String ist vorhanden}
			if (AnsiPos(dir[i1], AnsiUpperCase(F_Main.MP3_ListBox.Items[i2])) = 1) then
				count[i1]	:=	count[i1] + 1;
		end;
	end;
end;

{--- HTML - Body für CDList erzeugen. ----------------------------------------}
procedure	CDList_HTML_Main_Table_Output(AOutputStrings	:	TStringList);
var
	InFile    :	TextFile;
	ln        : String;
	linecount : Integer;
	i1        : Integer;
begin
	{Einzelne Seite ausgeben}
	AssignFile(InFile, F_Main.CDList_Source_File_CB.Items[F_Main.CDList_Source_File_CB.ItemIndex]);
	Reset(InFile);

	{zeilenweise lesen und zuweisen}
	linecount :=  0;
	AOutputStrings.Add('<table align="center" border="0" cellspacing="2" cellpadding="2">');

	While not Eof(InFile) do
	begin
		Readln(InFile, ln);
		separate_string_by_tab(ln);
		AOutputStrings.Add('<tr>');

		{First line bold}
		if linecount= 0  then
			AOutputStrings.Add('<td><b>Number</b></td>')
		else
			AOutputStrings.Add('<td>' + IntToStr(linecount) + '</td>');

		for i1 := 0 to F_Main.CDListe_StringGrid.ColCount - 1 do
		begin
		if linecount = 0 then
			AOutputStrings.Add('<td><b>'  + cdlist_tab_values[i1]  + '</b></td>')
		else
			AOutputStrings.Add('<td>'     + cdlist_tab_values[i1]  + '</td>');
		end;

		AOutputStrings.Add('</tr>');
		linecount :=  linecount + 1;
		F_Main.CDList_ProgressBar.Position  :=  linecount;

	end;
	AOutputStrings.Add('</table>');

	CloseFile(InFile);
end;

{--- create html output and replace keywords ----------------------------------}
procedure create_html_output(AHtmlTemplateFile,
														 AHtmlOutputFile,
														 ALetter 					:	String;
														 AArrayPointer    : Integer);
var
	OutFile	  	                   	:	TextFile;
	InFile	  	                   	: TextFile;
	lnraw				                   	: RawByteString;
	ln					                   	: String;
	cdlist_table                   	:	TStringList;
	i,
	cnt					                   	:	Integer;
	TplIsUnicode 										:	Boolean;
begin

	//	docs: https://code.google.com/p/mp3toolbox/wiki/ListOfVariables

	{check if template is present}
	if FileExists(AHtmlTemplateFile) then
	begin
		{Init}
		cdlist_table	:=  TStringList.Create;

		{Open Outputfile}
		AssignFile(OutFile, AHtmlOutputFile);
		Rewrite	(OutFile);

		{Open template file}
		AssignFile(InFile, AHtmlTemplateFile);
		Reset(InFile);

		cnt	:=	0;
		TplIsUnicode	:=	False;

		while not Eof(InFile) do
		begin
			Readln (InFile, lnraw);
			inc(cnt);

			if cnt < 2 then
				TplIsUnicode	:=	WideStrUtils.HasUTF8BOM(lnraw);

			ln	:=	UTF8ToString(lnraw);

			{--- Begin : Prüfungen ob werte ersetzt werden müssen ---}

			{replace general : update_date}
			if AnsiStrPos(PChar(ln), '{#general:update_date}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#general:update_date}', DateTimeToStr(Now), []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace general : version}
			else if AnsiStrPos(PChar(ln), '{#general:version}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#general:version}', F_Main.version, []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace cdlist : searchtime}
			else if AnsiStrPos(PChar(ln), '{#cdlist:searchtime}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#cdlist:searchtime}', TimeToStr(total_work_duration), []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace cdlist : total_cd_counter}
			else if AnsiStrPos(PChar(ln), '{#cdlist:total_cd_counter}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#cdlist:total_cd_counter}', IntToStr(cdlist_result_count), []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace cdlist : result_table}
			else if AnsiStrPos(PChar(ln), '{#cdlist:result_table}') <> nil then
			begin
				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(seperate_string_in_parts(ln, '{#cdlist:result_table}', 'start')))
				else
					writeln (OutFile, seperate_string_in_parts(ln, '{#cdlist:result_table}', 'start'));

				{write result table in a stringlist and print it}
				CDList_HTML_Main_Table_Output(cdlist_table);
				for i := 0 to cdlist_table.Count - 1 do
				begin
					if TplIsUnicode then
						writeln (OutFile, AnsiToUTF8(cdlist_table.Strings[i]))
					else
						writeln (OutFile, cdlist_table.Strings[i]);
				end;

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(seperate_string_in_parts(ln, '{#cdlist:result_table}', 'end')))
				else
					writeln (OutFile, seperate_string_in_parts(ln, '{#cdlist:result_table}', 'end'));
			end

			{replace mp3list : total_mpg_counter}
			else if AnsiStrPos(PChar(ln), '{#mp3list:total_mpg_counter}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#mp3list:total_mpg_counter}', IntToStr(mp3list_result_count), []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace mp3list : index character for multi output}
			else if AnsiStrPos(PChar(ln), '{#mp3list:index_character}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#mp3list:index_character}', ALetter, []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace mp3list : searchtime}
			else if AnsiStrPos(PChar(ln), '{#mp3list:searchtime}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#mp3list:searchtime}', TimeToStr(end_search_time - start_search_time), []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace mp3list : result_list}
			else if AnsiStrPos(PChar(ln), '{#mp3list:result_list}') <> nil then
			begin
				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(seperate_string_in_parts(ln, '{#mp3list:result_list}', 'start')))
				else
					writeln (OutFile, seperate_string_in_parts(ln, '{#mp3list:result_list}', 'start'));

				{write resultlist}
				for i := 0 to F_Main.MP3_ListBox.Items.Count - 1 do
				begin
					if TplIsUnicode then
						writeln (OutFile, AnsiToUTF8(F_Main.MP3_ListBox.Items[i] + '<br />'))
					else
						writeln (OutFile, F_Main.MP3_ListBox.Items[i] + '<br />');

					F_Main.Search_ProgressBar.Position	:= ((i + 1) * 100) div F_Main.MP3_ListBox.Items.Count;
				end;
				{fill up gauge}
				F_Main.Search_ProgressBar.Position	:=	100;
				F_Main.Search_ProgressBar.Position	:=	0;

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(seperate_string_in_parts(ln, '{#mp3list:result_list}', 'end')))
				else
					writeln (OutFile, seperate_string_in_parts(ln, '{#mp3list:result_list}', 'end'));
			end

			{replace mp3list : detail_mpg_counter}
			else if AnsiStrPos(PChar(ln), '{#mp3list:detail_mpg_counter}') <> nil then
			begin
				ln	:=	StringReplace(ln, '{#mp3list:detail_mpg_counter}', IntToStr(mp3list_Character_stringlists[AArrayPointer].Count), []);

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end

			{replace mp3list : detail_result_list}
			else if AnsiStrPos(PChar(ln), '{#mp3list:detail_result_list}') <> nil then
			begin
				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(seperate_string_in_parts(ln, '{#mp3list:detail_result_list}', 'start')))
				else
					writeln (OutFile, seperate_string_in_parts(ln, '{#mp3list:detail_result_list}', 'start'));

(*
				for i := 0 to mp3list_Character_stringlists[Array_pointer].Count - 1 do
					writeln (OutFile, mp3list_Character_stringlists[Array_pointer][i] + '<br>');
*)

				// Sort list before writing result
				mp3list_Character_stringlists[AArrayPointer].Sort;

				for i := 0 to mp3list_Character_stringlists[AArrayPointer].Count - 1 do
				begin

					if TplIsUnicode then
						writeln (OutFile, AnsiToUTF8(mp3list_Character_stringlists[AArrayPointer][i]) + '<br />')
					else
						writeln (OutFile, mp3list_Character_stringlists[AArrayPointer][i] + '<br />');

				end;

				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(seperate_string_in_parts(ln, '{#mp3list:detail_result_list}', 'end')))
				else
					writeln (OutFile, seperate_string_in_parts(ln, '{#mp3list:detail_result_list}', 'end'));
			end

			else
			begin
				{if nothing has to be replaced}
				if TplIsUnicode then
					writeln (OutFile, AnsiToUTF8(ln))
				else
					writeln (OutFile, ln);
			end;

			{ End : Prüfungen ob werte ersetzt werden müssen}
		end;
		cdlist_table.Free;

		CloseFile(InFile);
		CloseFile(OutFile);
	end
	else
	begin
		ShowMessage('No template found.');
	end;

end;

end.
