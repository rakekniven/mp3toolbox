unit U_FTP;

interface

type
	TFtpConnection = class(TObject)
		Hostname	:	String;
		Username	:	String;
		Password	:	String;
		RemoteDir	:	String;
//		IdFTP			:	TIdFTP;
	end;

implementation

end.
