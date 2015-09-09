unit Aboutb;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     StdCtrls, Buttons, ExtCtrls, AHMTLabel, ActnList, RzLabel;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    Image2: TImage;
    AHMLabel1: TAHMLabel;
    ActionList1: TActionList;
    Action_Esc: TAction;
    RzLabel1: TRzLabel;
    Timer1: TTimer;
    procedure Image2Click(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;
  tcnt: Integer;

procedure Show_AboutForm(App:THandle);stdcall;

implementation

{$R *.DFM}

procedure Show_AboutForm(App:THandle);stdcall;
begin
  Application.Handle := App;
  try
    AboutBox := TAboutBox.Create(Application);
    AboutBox.ShowModal;
    FreeAndNil(AboutBox);
  except
    on E: Exception do
      MessageDlg ('¿ù»~: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TAboutBox.Image2Click(Sender: TObject);
begin
  Close;
end;

procedure TAboutBox.Action_EscExecute(Sender: TObject);
begin
  Close;
end;

procedure TAboutBox.Timer1Timer(Sender: TObject);
begin
  tcnt:=tcnt+1;
  if tcnt>=3 then
    Close;
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  tcnt:=0;
end;

end.

