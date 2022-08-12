program ro_calc_v1_5;

uses
  Forms,
  ro_calc_v1_5_0 in 'ro_calc_v1_5_0.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
