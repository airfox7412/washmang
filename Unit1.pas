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
  //�P�_�O���O�����J�O�@�� �p�G�����ܱN�O�@�ꪺ��}, �x�s�� DevicePath
  //DevicePath �n�]�w�������ܼ�, �]���᭱�����γ��|�ϥΨ�o�� DevicePath

  DevicePath := StringOfChar(' ', 260); //Space(260);
  if FindPort(0, DevicePath) <> 0 then showmessage('�S�����O�@��');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  result: integer;
begin
  //�q�O�@��̭�Ū�����w��}�����
  //Ū���� 0 ��}�����. �Ǧ^����Ʀb result �̭�
  if YRead(result, 0, Edit1.text, Edit2.text, DevicePath) <> 0 then
    showmessage('Ū�����~')
  else
    showmessage('Ū�����\' + inttostr(result));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  mylen: integer;
  outstring: string;
begin
//�q�O�@��Ū�����w��}�����.
//�H�U�d�ҬO�q�� 0 �Ӧ�}Ū�� 10 BYTES ���. �ǥX�Ӫ���ƬO�@�Ӧr��
  mylen := 10; //�o�̬��nŪ���r�ꪺ����
  outstring := StringOfChar(' ', mylen);
  if YReadString(outstring, 0, mylen, Edit1.Text, Edit2.Text, DevicePath) <> 0 then
    showmessage('Ū�r�ꥢ��')
  else
    showmessage('Ū�r�ꦨ�\' + '[' + outstring + ']');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  f2: TextFile;
  s: string;
begin
//Ū�K�X�����I�s
//Ū���O�@�ꤺ����ƻݭn��ӱK�X,
//Ū���O�@�ꪺ�K�X, �X�t�w�]�Ȭ� ffffffff �� ffffffff
//�p�G�n���Ū�����K�X, �n���u���T���g�K�X�v�~�i�H���
//�`�N�A�O�u�g�v�K�X <==== �S�O�`�N
  if SetReadPassword(Edit3.text, Edit4.text, Edit5.text, Edit6.text, DevicePath) <> 0 then
    showmessage('Ū�K�X�]�w���~')
  else
  begin
    AssignFile(F2, 'MIKI.CAP');
    Append(F2);
    s := datetostr(date) + ' ' + timetostr(time) + ' �g�K�X�]�w: ' + Edit5.text + ': ' + Edit6.text + ' - ' + Edit7.text + ': ' + Edit8.text;
    WriteLn(F2, s);
    Flush(F2);
    CloseFile(F2);

    showmessage('�K�X�]�w���\');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  result: Integer;
begin
  //�g��ƨ�O�@����w��}
  //�g�J65��ƨ��00��}. �Ǧ^����Ʀb result �̭�
  if YWrite(StrToInt(Edit21.Text), 0, Edit7.text, Edit8.text, DevicePath) <> 0 then
    showmessage('�g�J���~')
  else
    showmessage('�g�J���\ ' + inttostr(result));
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
//�g�r���O�@����w��}�����.
//�g�J�r����0�Ӧ�}
  if YWriteString(Edit22.Text, 0, Edit7.Text, Edit8.Text, DevicePath) <> 0 then
    showmessage('�g�r�ꥢ��')
  else
    showmessage('�g�r�ꦨ�\' + '[' + Edit22.Text + ' ]');
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  f2: TextFile;
  s: string;
begin
//�g�K�X�����I�s
//�g�J�O�@�ꤺ����ƻݭn��ӱK�X,
//�g�J�O�@�ꪺ�K�X, �X�t�w�]�Ȭ� ffffffff �� ffffffff
//�p�G�n���g���K�X, �n���u���T���g�K�X�v�~�i�H���
  if SetWritePassword(Edit9.Text, Edit10.Text, Edit11.Text, Edit12.Text, DevicePath) <> 0 then
    showmessage('�]�m�g�K�X���~')
  else
  begin
    showmessage('�]�m�g�K�X���\');
    AssignFile(F2, 'MIKI.CAP');
    Append(F2);
    s := datetostr(date) + ' ' + timetostr(time) + ' �g�K�X�]�w: ' + Edit9.Text + ': ' + Edit9.Text + ' - ' + Edit9.Text + ': ' + Edit9.Text;
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
    showmessage('�]�w�O�K�B��K�X���~')
  else
  begin
    AssignFile(F2, 'MIKI.CAP');
    Append(F2);
    s := datetostr(date) + ' ' + timetostr(time) + ' �O�K�B��K�X�]�w: ' + Edit13.text + ': ' + Edit14.text + ' - ' + Edit15.text + ': ' + Edit16.text;
    WriteLn(F2, s);
    Flush(F2);
    CloseFile(F2);

    showmessage('�]�w�O�K�B��K�X���\');
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  N: integer;
  result: integer;
begin
//�[�K���B��. �g�J�@�Ӽƭ�. �]���C��USB�O�@�ꪺ�[�K�B���Ƴ����P.
//�]��Ū�^����Ƥ]�|���P. �o�˴N�i�H�F��[�K�O�@���\��
//�g�J�@�Ӽƭ� 1 ��O�@�ꤤ�[�K

  N := strtoint(Edit17.text);

  if sWrite(N, DevicePath) <> 0 then
  begin
    showmessage('�g���~');
    exit;
  end;

  if sRead(result, DevicePath) <> 0 then
    showmessage('Ū�����~')
  else
    Edit18.Text := inttostr(result);
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  N: integer;
  result: integer;
begin
//�ѱK���B��. �g�J�@�Ӫ��ƭ�. �]���C��USB�O�@�ꪺ�[�K�B���Ƴ����P.
//�N�[�K����Ƽg�J����, �g�L�O�@��N�i�H�ѱK�o��u�����ƭ�
//�g�J�@�ӥ[�K�L���ƭȨ�O�@��

  N := strtoint(Edit19.Text);

  if sWrite_2(N, DevicePath) <> 0 then
    showmessage('�g�J���~');

//�N�ѱK�����Ū���X��
  if sRead(result, DevicePath) <> 0 then
    showmessage('Ū�����~')
  else
   //MsgBox "�i��ѱK�B��Ū���쪺��� " + Str(result)
    Edit20.Text := inttostr(result);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  showmessage('��� 0912-208-000 �B����' + #13 + #13 +
    '�S�ѩ�� miki543849' + #13 + #13 +
    'SKYPE: nick-liu');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  close;
end;

end.

