unit Update;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MSNPopUp, ExtCtrls, AHMSystemClass, AHMTAppManager, Menus;

type
  TForm1 = class(TForm)
    MSNPopUp1: TMSNPopUp;
    Timer1: TTimer;
    AHMAppManager1: TAHMAppManager;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tint: Integer;

implementation

{$R *.DFM}

procedure TForm1.Timer1Timer(Sender: TObject);
var
  fname1,fname2: String;
  ftime1,ftime2: String;
begin
  tint:=tint+1;
  if tint=20 then
    begin
    fname1:=ExtractFilePath(Application.ExeName)+'Clothes.exe';
    fname2:='\\Tony-pc\wash\Clothes.exe';
    ftime1:=FormatDateTime('yyyy-mm-dd hh:nn:ss', FileDateToDateTime(FileAge(fname1)));
    if FileExists(fname2) then
      ftime2:=FormatDateTime('yyyy-mm-dd hh:nn:ss', FileDateToDateTime(FileAge(fname2)))
    else
      ftime2:=ftime1;
    if ftime1<>ftime2 then
      begin
      MSNPopUp1.Text:='洗衣程式已有更新'+#13+#10+'請重新下載！';
      MSNPopUp1.ShowPopUp;
      end;
    tint:=0;
    end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Close;
end;

end.
