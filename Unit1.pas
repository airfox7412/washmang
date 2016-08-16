unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Panel2: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Shape3: TShape;
    Button9: TButton;
    Button10: TButton;
    Edit21: TEdit;
    Edit22: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  DevicePath: string;

implementation



{$R *.dfm}

function NT_GetIDVersion(var Version: Integer; InPath: string): Integer; stdcall; external 'miki.dll';

function sRead(var in_data: integer; InPath: string): Integer; stdcall; external 'miki.dll';

function sWrite(out_data: integer; InPath: string): Integer; stdcall; external 'miki.dll';

function YWrite(InData: integer; Address: integer; HKey: string; LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';

function FindPort_2(start: integer; in_data: integer; verf_data: integer; InPath: string): Integer; stdcall; external 'miki.dll';

function FindPort(start: integer; OutPath: string): Integer; stdcall; external 'miki.dll';

function GetID(var ID_1: integer; var ID_2: integer; InPath: string): Integer; stdcall; external 'miki.dll';

function sWrite_2(out_data: integer; OutPath: string): Integer; stdcall; external 'miki.dll';

function YRead(var OutData: integer; Address: integer; HKey: string; LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';

function YReadString(outstring: string; Address: integer; mylen: integer; HKey: string; LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';

function YWriteString(InString: string; Address: integer; HKey: string; LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';


function SetWritePassword(W_HKey: string; W_LKey: string; new_HKey: string; new_LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';

function SetReadPassword(W_HKey: string; W_LKey: string; new_HKey: string; new_LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';

function SetCal(W_HKey: string; W_LKey: string; new_HKey: string; new_LKey: string; InPath: string):
  Integer; stdcall; external 'miki.dll';



procedure TForm1.FormShow(Sender: TObject);
begin
  //判斷是不是有插入保護鎖 如果有的話將保護鎖的位址, 儲存到 DevicePath
  //DevicePath 要設定為公用變數, 因為後面的應用都會使用到這個 DevicePath

  DevicePath := StringOfChar(' ', 260); //Space(260);
  if FindPort(0, DevicePath) <> 0 then showmessage('沒有找到保護鎖');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  result: integer;
begin
  //從保護鎖裡面讀取指定位址的資料
  //讀取第 0 位址的資料. 傳回的資料在 result 裡面
  if YRead(result, 0, Edit1.text, Edit2.text, DevicePath) <> 0 then
    showmessage('讀取錯誤')
  else
    showmessage('讀取成功' + inttostr(result));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  mylen: integer;
  outstring: string;
begin
//從保護鎖讀取指定位址的資料.
//以下範例是從第 0 個位址讀取 10 BYTES 資料. 傳出來的資料是一個字串
  mylen := 10; //這裡為要讀取字串的長度
  outstring := StringOfChar(' ', mylen);
  if YReadString(outstring, 0, mylen, Edit1.Text, Edit2.Text, DevicePath) <> 0 then
    showmessage('讀字串失敗')
  else
    showmessage('讀字串成功' + '[' + outstring + ']');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  f2: TextFile;
  s: string;
begin
//讀密碼的更改呼叫
//讀取保護鎖內的資料需要兩個密碼,
//讀取保護鎖的密碼, 出廠預設值為 ffffffff 跟 ffffffff
//如果要更改讀取的密碼, 要有「正確的寫密碼」才可以更改
//注意，是「寫」密碼 <==== 特別注意
  if SetReadPassword(Edit3.text, Edit4.text, Edit5.text, Edit6.text, DevicePath) <> 0 then
    showmessage('讀密碼設定錯誤')
  else
  begin
    AssignFile(F2, 'MIKI.CAP');
    Append(F2);
    s := datetostr(date) + ' ' + timetostr(time) + ' 寫密碼設定: ' + Edit5.text + ': ' + Edit6.text + ' - ' + Edit7.text + ': ' + Edit8.text;
    WriteLn(F2, s);
    Flush(F2);
    CloseFile(F2);

    showmessage('密碼設定成功');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  result: Integer;
begin
  //寫資料到保護鎖指定位址
  //寫入65資料到第00位址. 傳回的資料在 result 裡面
  if YWrite(StrToInt(Edit21.Text), 0, Edit7.text, Edit8.text, DevicePath) <> 0 then
    showmessage('寫入錯誤')
  else
    showmessage('寫入成功 ' + inttostr(result));
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
//寫字串到保護鎖指定位址的資料.
//寫入字串到第0個位址
  if YWriteString(Edit22.Text, 0, Edit7.Text, Edit8.Text, DevicePath) <> 0 then
    showmessage('寫字串失敗')
  else
    showmessage('寫字串成功' + '[' + Edit22.Text + ' ]');
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  f2: TextFile;
  s: string;
begin
//寫密碼的更改呼叫
//寫入保護鎖內的資料需要兩個密碼,
//寫入保護鎖的密碼, 出廠預設值為 ffffffff 跟 ffffffff
//如果要更改寫的密碼, 要有「正確的寫密碼」才可以更改
  if SetWritePassword(Edit9.Text, Edit10.Text, Edit11.Text, Edit12.Text, DevicePath) <> 0 then
    showmessage('設置寫密碼錯誤')
  else
  begin
    showmessage('設置寫密碼成功');
    AssignFile(F2, 'MIKI.CAP');
    Append(F2);
    s := datetostr(date) + ' ' + timetostr(time) + ' 寫密碼設定: ' + Edit9.Text + ': ' + Edit9.Text + ' - ' + Edit9.Text + ': ' + Edit9.Text;
    WriteLn(F2, s);
    Flush(F2);
    CloseFile(F2);
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  f2: TextFile;
  s: string;
begin
  if SetCal(Edit13.text, Edit14.text, Edit15.text, Edit16.text, DevicePath) <> 0 then
    showmessage('設定保密運算密碼錯誤')
  else
  begin
    AssignFile(F2, 'MIKI.CAP');
    Append(F2);
    s := datetostr(date) + ' ' + timetostr(time) + ' 保密運算密碼設定: ' + Edit13.text + ': ' + Edit14.text + ' - ' + Edit15.text + ': ' + Edit16.text;
    WriteLn(F2, s);
    Flush(F2);
    CloseFile(F2);

    showmessage('設定保密運算密碼成功');
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  N: integer;
  result: integer;
begin
//加密的運算. 寫入一個數值. 因為每個USB保護鎖的加密運算資料都不同.
//因此讀回的資料也會不同. 這樣就可以達到加密保護的功能
//寫入一個數值 1 到保護鎖中加密

  N := strtoint(Edit17.text);

  if sWrite(N, DevicePath) <> 0 then
  begin
    showmessage('寫錯誤');
    exit;
  end;

  if sRead(result, DevicePath) <> 0 then
    showmessage('讀取錯誤')
  else
    Edit18.Text := inttostr(result);
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  N: integer;
  result: integer;
begin
//解密的運算. 寫入一個的數值. 因為每個USB保護鎖的加密運算資料都不同.
//將加密的資料寫入之後, 經過保護鎖就可以解密得到真正的數值
//寫入一個加密過的數值到保護鎖

  N := strtoint(Edit19.Text);

  if sWrite_2(N, DevicePath) <> 0 then
    showmessage('寫入錯誤');

//將解密的資料讀取出來
  if sRead(result, DevicePath) <> 0 then
    showmessage('讀取錯誤')
  else
   //MsgBox "進行解密運算讀取到的資料 " + Str(result)
    Edit20.Text := inttostr(result);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  showmessage('手機 0912-208-000 劉先生' + #13 + #13 +
    '露天拍賣 miki543849' + #13 + #13 +
    'SKYPE: nick-liu');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  close;
end;

end.

