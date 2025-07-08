unit magva_project;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, DateUtils, MMSystem, System.UITypes,
  Vcl.Dialogs, System.JSON;

type
  TTask = record
    Text: string;
    Reminder: TDateTime;
    HasReminder: Boolean;
  end;

  TForm1 = class(TForm)
    EditTask: TEdit;
    BtnAdd: TButton;
    ListBoxTasks: TListBox;
    BtnDelete: TButton;
    DateTimePickerReminder: TDateTimePicker;
    TimerCheck: TTimer;
    CheckBoxReminder: TCheckBox;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure TimerCheckTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FTasks: array of TTask;
    procedure SaveTasksToFile;
    procedure LoadTasksFromFile;
    procedure NotifyUser(const Msg: string);
    procedure UpdateListBox;
    function TaskToString(const Task: TTask): string;
  public
    NotifiedTimes: TStringList;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
  SaveFileName = 'tasks.json';

function DateTimeToJSONString(DT: TDateTime): string;
begin
  Result := FormatDateTime('yyyy-mm-dd"T"hh:nn:ss.zzz', DT);
end;

function JSONStringToDateTime(const Str: string): TDateTime;
begin
  Result := StrToDateTimeDef(Str, 0);
