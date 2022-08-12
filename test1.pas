unit test1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.CustomizeDlg,
  Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.ValEdit, Vcl.AppEvnts, Vcl.CheckLst,
  Vcl.Mask, System.Beacon, System.Bluetooth, System.Beacon.Components,
  Vcl.Menus, Vcl.Tabs, Vcl.DockTabSet, Vcl.MPlayer, Vcl.WinXCalendars,
  Vcl.WinXCtrls, Web.HTTPApp, Data.Cloud.CloudAPI, Data.Cloud.AzureAPI,
  Vcl.AppAnalytics;

type
  TForm1 = class(TForm)
    Count: TLabel;
    Button_start: TButton;
    Timer1: TTimer;
    Ostalos: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button_startClick(Sender: TObject);
    procedure Edit1TEdit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

//действия при нажатии кнопки
procedure TForm1.Button_startClick(Sender: TObject);

begin
    Timer1.Enabled := true;
    Count.Caption := Edit1.Text;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
   Sec2: real;
begin
  Count.Caption := TimeToStr(Time);
//  Count.Caption := TimeToStr(Time);
//  Count.Caption := StrToInt(Edit1.Text);
//    Count.Caption := '2';  //то, что будет отображаться, когда запуститься таймер
end;

procedure TForm1.Edit1TEdit(Sender: TObject);
var
   Sec: real;
   Pole_vvoda: real;
begin
   Pole_vvoda:=StrToInt(Edit1.Text);
   Count.Caption := Edit1.Text;
end;

end.
