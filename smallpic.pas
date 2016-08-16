unit smallpic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList;

type
  TSPicForm = class(TForm)
    Image1: TImage;
    ActionList1: TActionList;
    Action_Esc: TAction;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SPicForm: TSPicForm;
  cflag: Boolean;
  tint: Integer;

implementation

{$R *.DFM}

procedure TSPicForm.FormCreate(Sender: TObject);
begin
  Width:=Image1.Width;
  Height:=Image1.Height;
  Top:=0;
  Left:=800-Width;
end;

procedure TSPicForm.Image1Click(Sender: TObject);
begin
  if cflag then
    begin
    Image1.Width:=640;
    Image1.Height:=480;
    Width:=Image1.Width;
    Height:=Image1.Height;
    Left:=800-Width;
    //Timer1.Enabled:=False;
    end
  else
    begin
    Image1.Width:=80;
    Image1.Height:=60;
    Width:=Image1.Width;
    Height:=Image1.Height;
    Left:=800-Width;
    //Timer1.Enabled:=True;
    end;
  cflag:=not cflag;
end;

procedure TSPicForm.FormActivate(Sender: TObject);
begin
  cflag:=False;
  Image1Click(Self);
  tint:=0;
end;

procedure TSPicForm.Action_EscExecute(Sender: TObject);
begin
  Image1.Width:=80;
  Image1.Height:=60;
  Width:=Image1.Width;
  Height:=Image1.Height;
  Left:=800-Width;
end;

procedure TSPicForm.Timer1Timer(Sender: TObject);
begin
  tint:=tint+1;
  if tint=10 then
    SPicForm.SetFocusedControl(Self);
end;

end.
