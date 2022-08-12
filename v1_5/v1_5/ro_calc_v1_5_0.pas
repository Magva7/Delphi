unit ro_calc_v1_5_0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    btn3: TButton;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A, B, C, D, E, F, G : Integer;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
lbl6.Caption:=IntToStr(StrToInt(Edt1.Text)*StrToInt(Edt2.Text))
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
   A := StrToInt(Edt1.Text);
   B := StrToInt(Edt2.Text);
   C := A*B;
   Lbl6.Caption := IntToStr(C);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
   A := StrToInt(Edt1.Text);
   B := StrToInt(Edt2.Text);
   C := A*B;
   D := A*6*620-A*B;
   E := A*7*620-A*B;
   F := (A*B)+ A*6*620-A*B;
   G := (A*B)+ A*7*620-A*B;
   Lbl6.Caption := IntToStr(C);
   Lbl7.Caption := IntToStr(D);
   Lbl10.Caption := IntToStr(E);
   Lbl12.Caption := IntToStr(F);
   Lbl14.Caption := IntToStr(G);
end;

end.
