program magva_project2;

uses
  Vcl.Forms,
  magva_project in 'magva_project.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
