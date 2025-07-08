program multi3_1;

uses
  System.StartUpCopy,
  FMX.Forms,
  multi3 in 'multi3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
