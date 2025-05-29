unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RzPanel, Db, ZAbstractRODataset, ZDataset,
  ZConnection, ZAbstractDataset;

type
  TLoginForm = class(TForm)
    RzPanel1: TRzPanel;
    Label6: TLabel;
    Label2: TLabel;
    Edit_ID: TEdit;
    Edit_PW: TEdit;
    BitBtn1: TBitBtn;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_IDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_PWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Function chk_err(): Boolean;
  end;

var
  LoginForm: TLoginForm;
  errcnt: integer;
  urflag: Boolean;

implementation

uses WDModule, md5, ShellApi;

function MD5Str(Dig: MD5Digest): string;
begin
  Result := Format('%s', [MD5Print(Dig)]);
end;

{$R *.DFM}

Function TLoginForm.chk_err(): Boolean;
begin
  errcnt:=errcnt+1;
  if (errcnt=3) then
    begin
    windows.beep(1000,100);
    windows.beep(700,100);
    windows.beep(400,300);
    ShowMessage('已經錯誤三次，程式即將關閉！');
    Application.Terminate;
    end;
  Result:=True;  
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  errcnt:=0;
  urflag:=False;
end;

procedure TLoginForm.BitBtn1Click(Sender: TObject);
var
  pwStr: String;
begin
  ZReadOnlyQuery1.Close;
  ZReadOnlyQuery1.SQL.Clear;
  ZReadOnlyQuery1.SQL.Add('SELECT eid,epw FROM employee ');
  ZReadOnlyQuery1.SQL.Add('WHERE eid='''+Edit_ID.Text+'''');
  ZReadOnlyQuery1.Open;
  if ZReadOnlyQuery1.Eof then
    begin
    chk_err();
    windows.beep(1500,300);
    ShowMessage('帳號錯誤，請重新輸入！');
    Edit_ID.SetFocus;
    end
  else
    begin
    pwStr:=MD5Str(MD5String(Edit_PW.Text));
    if ZReadOnlyQuery1.FieldByName('epw').AsString=pwStr then
      begin
      urflag:=True;
      WDM.loginid:=Edit_ID.Text;
      ShellExecute(Handle, 'open', 'Remind.exe', nil, PChar(ExtractFilePath(Application.ExeName)), SW_SHOW);
      Close;
      end
    else
      begin
      chk_err();
      windows.beep(1500,300);
      ShowMessage('帳號或密碼錯誤，請重新輸入！');
      Edit_ID.SetFocus;
      end;
    end;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if urflag then
    Action:=caFree
  else
    begin
    if MessageDlg('確定要離開本系統？', mtWarning, [mbYes, mbNo], 0)=mrYes then
      Application.Terminate
    else
      Action := caNone;
    end;
end;

procedure TLoginForm.Edit_IDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
  if (Edit_ID.Text<>'')AND(Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TLoginForm.Edit_PWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Edit_PW.Text<>'')AND(Key=VK_Return) then
    begin
    Key:=0;
    BitBtn1Click(Self);
    //Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

end.
