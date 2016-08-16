unit racc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Profile, FileCtrl, ExtCtrls, Db, Wwdatsrc, ADODB, Grids,
  Wwdbigrd, Wwdbgrid, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, RzShellDialogs, RzStatus, RzPanel;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    wwDS1: TwwDataSource;
    access: TProfileString;
    ZConnection1: TZConnection;
    ProfileFile1: TProfileFile;
    MYSQL: TProfileSection;
    myuser: TProfileString;
    mypassword: TProfileString;
    myport: TProfileInteger;
    protocol: TProfileString;
    mydbname: TProfileString;
    wwDS2: TwwDataSource;
    ZQuery1: TZQuery;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    Panel1: TPanel;
    Splitter1: TSplitter;
    wwDBGrid2: TwwDBGrid;
    Splitter2: TSplitter;
    wwDBGrid1: TwwDBGrid;
    Panel_menu: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzProgressStatus1: TRzProgressStatus;
    RzStatusPane2: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    RzStatusPane4: TRzStatusPane;
    ADOTable2: TADOTable;
    Button3: TButton;
    Button1: TButton;
    Button2: TButton;
    Button10: TButton;
    Button11: TButton;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function TransDate(day: String): String;

var
  Form1: TForm1;
  yint,mint,dint: Integer;
  r, rcnt: Integer;
  Stime, Etime: TDateTime;

implementation

{$R *.DFM}

uses Lcutils;

function GfIsNum(psString: string): boolean;
var
    code: integer;
    lr: real;
begin
    val(psString, lr, code);
    result := code = 0;
end;

function GfIsInt(psString: string): boolean;
var
    code: integer;
    li: integer;
begin
    val(psString, li, code);
    result := code = 0;
end;

function TransDate(day: String): String;
var
  ystr,mstr,dstr: String;
begin
  if day<>'' then
    try
      ystr:=Copy(day,1,4);
      mstr:=Copy(day,5,2);
      dstr:=Copy(day,7,2);
      yint:=StrToInt(ystr)-1911;
      Result:=StrZero(yint,3)+'/'+mstr+'/'+dstr;
    except
      Result:='';
    end
  else
    Result:=day;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ProfileFile1.Filename:=ExtractFilePath(Application.ExeName)+'Readmdb.ini';
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=protocol.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Port:=myport.Value;
  ZConnection1.Catalog:=mydbname.Value;
  ZConnection1.Database:=mydbname.Value;

  Caption:='轉換程式';
  ADOConnection1.Connected:=False;
  ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Password="";Persist Security Info=True;User ID=admin;Extended Properties="DSN=door;DBQ='+access.Value+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;UID=admin;"';
  ADOConnection1.Connected:=True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Stime:=now;
  RzStatusPane2.Caption:='開始：'+FormatDateTime('HH:MM:SS',Stime);
  Panel_menu.Visible:=False;
  wwDBGrid1.Enabled:=False;
  wwDBGrid2.DataSource.DataSet.DisableControls;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM cr';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM cr';
  ZQuery1.Open;
  ADOTable1.Close;
  ADOTable1.TableName:='adata';
  ADOTable1.Open;
  rcnt:=ADOTable1.RecordCount;
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    r:=ADOTable1.RecNo;
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      ZQuery1.FieldByName('crcode').Value:=copy(ADOTable1.FieldByName('manno').AsString,2,5);
      ZQuery1.FieldByName('crname').Value:=ADOTable1.FieldByName('manna').AsString;
      ZQuery1.FieldByName('cradr').Value:=ADOTable1.FieldByName('addr').AsString+'-'+ADOTable1.FieldByName('note1').AsString;
      ZQuery1.FieldByName('crtel').Value:=ADOTable1.FieldByName('tel').AsString;
      ZQuery1.FieldByName('crtela').Value:=ADOTable1.FieldByName('handtel').Value;
      ZQuery1.FieldByName('crmoney').Value:=-(ADOTable1.FieldByName('money').Value);
      if (ZQuery1.FieldByName('crmoney').Value<0) then
        ZQuery1.FieldByName('crvip').Value:='Y';
      ZQuery1.FieldByName('crdate').Value:=TransDate(ADOTable1.FieldByName('day1').AsString);
      ZQuery1.FieldByName('crpsen').Value:=ADOTable1.FieldByName('per').Value;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('manno').AsString+'轉換錯誤！';
    end;
    RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName)+' -> '+ADOTable1.FieldByName('manna').AsString;
    RzProgressStatus1.Percent:=Trunc((r/rcnt)*100);
    Etime:=now;
    RzStatusPane4.Caption:='費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.DataSource.DataSet.EnableControls;
  Etime:=now;
  RzStatusPane3.Caption:='結束：'+FormatDateTime('HH:MM:SS',Etime);
  RzStatusPane4.Caption:='轉換完成！共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  no: String;
  kind, money: Integer;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM waacc';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM waacc';
  ZQuery1.Open;

  ADOTable1.Close; //配件
  ADOTable1.TableName:='gdatad';
  ADOTable1.Open;
  ADOTable1.Sort:='fkndno';
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      ZQuery1.FieldByName('wano4').Value:=ADOTable1.FieldByName('fkndno').Value;
      ZQuery1.FieldByName('waacc').Value:=ADOTable1.FieldByName('fkndna').Value;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('dno').AsString+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM wawash';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM wawash';
  ZQuery1.Open;
  ADOTable1.Close;
  ADOTable1.TableName:='gdatae';
  ADOTable1.Open;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    try
      ZQuery1.Append;
      ZQuery1.FieldByName('wano6').Value:=StrZero(ADOTable1.FieldByName('wno').Value,2);
      ZQuery1.FieldByName('wawash').Value:=ADOTable1.FieldByName('wna').Value;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('wno').AsString+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i: Integer;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM waadr';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM waadr';
  ZQuery1.Open;
  ADOTable1.Close;
  ADOTable1.TableName:='adatag';
  ADOTable1.Open;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      ZQuery1.FieldByName('wano8').AsString:=StrZero(ADOTable1.FieldByName('addrno').Value,2);
      ZQuery1.FieldByName('waadr').AsString:=ADOTable1.FieldByName('addrna').AsString;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ZQuery1.FieldByName('wano8').Value+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  i: Integer;
  wano1: String;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM waname';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM waname';
  ZQuery1.Open;
  ADOTable1.Close;
  ADOTable1.TableName:='adataf';
  ADOTable1.Open;
  ADOTable1.Sort:='nano';
  ADOTable1.First;
  i:=1;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      ZQuery1.FieldByName('wano1').Value:=ADOTable1.FieldByName('nano').Value;
      ZQuery1.FieldByName('waname').Value:=ADOTable1.FieldByName('name').Value;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=wano1+'轉換錯誤！';
    end;
    ADOTable1.Next;
    i:=i+1;
    end;
  Panel_menu.Visible:=True;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  waname, wawash, wimemo, wiplace, indate: String;
  dno: string;
begin
  Stime:=now;
  RzStatusPane2.Caption:='開始：'+FormatDateTime('HH:MM:SS',Stime);
  Panel_menu.Visible:=False;
  wwDBGrid1.Enabled:=False;
  wwDBGrid2.DataSource.DataSet.DisableControls;
  ZReadOnlyQuery1.Close;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM wio';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM wio';
  ZQuery1.Open;
  ADOTable1.Close;
  ADOTable1.TableName:='gdata';
  ADOTable1.Open;
  rcnt:=ADOTable1.RecordCount;
  while not ADOTable1.Eof do
    begin 
    r:=ADOTable1.RecNo;
    Application.ProcessMessages;
    try
      ZQuery1.Append;
      ZQuery1.FieldByName('wicode').AsString:=ADOTable1.FieldByName('wano').AsString;
      ZQuery1.FieldByName('wisno').AsString:='0'+ADOTable1.FieldByName('wano2').AsString;
      ZQuery1.FieldByName('crcode').AsString:=copy(ADOTable1.FieldByName('manno').AsString,2,5);
      if ADOTable1.FieldByName('fknd').AsString<>'' then
        ZQuery1.FieldByName('wimemo').AsString:=Trim(ADOTable1.FieldByName('fknd').AsString);
      if ADOTable1.FieldByName('note').AsString<>'' then
        if ADOTable1.FieldByName('fknd').AsString<>'' then
          ZQuery1.FieldByName('wimemo').AsString:=ZQuery1.FieldByName('wimemo').AsString+'+'+Trim(ADOTable1.FieldByName('note').AsString)
      else
        ZQuery1.FieldByName('wimemo').AsString:=Trim(ADOTable1.FieldByName('note').AsString);
      if ADOTable1.FieldByName('dno').AsString='2' then
        dno:='03'
      else
        dno:=ADOTable1.FieldByName('dno').AsString;
      if Length(dno)=1 then
        dno:=StrZero(StrToInt(dno),2);
      ZReadOnlyQuery1.Close;
      ZReadOnlyQuery1.SQL.Text:='SELECT * FROM wastyle WHERE wano2='''+dno+'''';
      ZReadOnlyQuery1.Open;
      if not ZReadOnlyQuery1.Eof then
        waname:=ZReadOnlyQuery1.FieldByName('wastyle').Value
      else
        waname:='';
      ZReadOnlyQuery1.Close;

      ZQuery1.FieldByName('winame').AsString:=waname; //waname
      ZQuery1.FieldByName('wiitem').AsString:=ADOTable1.FieldByName('color').AsString;

      if ADOTable1.FieldByName('wno').AsString='C' then
        wawash:=''
      else
        begin
        ZReadOnlyQuery1.Close;
        ZReadOnlyQuery1.SQL.Text:='SELECT * FROM wawash WHERE wano6='''+StrZero(ADOTable1.FieldByName('wno').Value,2)+'''';
        ZReadOnlyQuery1.Open;
        if not ZReadOnlyQuery1.Eof then
          wawash:=ZReadOnlyQuery1.FieldByName('wawash').AsString
        else
          wawash:='';
        ZReadOnlyQuery1.Close;
        end;

      ZQuery1.FieldByName('wiwash').AsString:=wawash;
      ZQuery1.FieldByName('wiurge').AsString:='N';
      ZQuery1.FieldByName('widate').AsString:=TransDate(ADOTable1.FieldByName('date1').Value);
      ZQuery1.FieldByName('wimdate').AsString:=TransDate(ADOTable1.FieldByName('date2').Value);
      if ADOTable1.FieldByName('date3').AsString<>'' then
        ZQuery1.FieldByName('wiodate').AsString:=TransDate(ADOTable1.FieldByName('date3').AsString);
      ZQuery1.FieldByName('indate').AsString:=TransDate(ADOTable1.FieldByName('indate').AsString);
      if ZQuery1.FieldByName('indate').AsString<>'' then
        ZQuery1.FieldByName('wiplace').AsString:='*';
      ZQuery1.FieldByName('wiwamo').Value:=ADOTable1.FieldByName('money').Value;
      ZQuery1.FieldByName('wisum').Value:=ADOTable1.FieldByName('money').Value;
      ZQuery1.FieldByName('wiquty').Value:=1;
      ZQuery1.FieldByName('wiacc').AsString:='';
      {if ADOTable3.Locate('wano2',ADOTable1.FieldByName('wano2').AsString,[]) then //入庫位置
        begin
        wiplace:=ADOTable3.FieldByName('ADDR').AsString;
        indate:=TransDate(ADOTable3.FieldByName('DATE3').Value);
        ZQuery1.FieldByName('wiplace').AsString:=wiplace;
        //ZQuery1.FieldByName('indate').AsString:=indate;
        end;
        }
      ZQuery1.Post;
      if StrToInt(Edit1.Text)<>0 then
        if r>StrToInt(Edit1.Text) then break;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('wano').AsString+'轉換錯誤！';
    end;
    RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName)+' -> '+ADOTable1.FieldByName('manno').AsString+'('+IntToStr(r)+'/'+IntToStr(rcnt)+')';
    RzProgressStatus1.Percent:=Trunc((r/rcnt)*100);
    Etime:=now;
    RzStatusPane4.Caption:='費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.DataSource.DataSet.EnableControls;
  Etime:=now;
  RzStatusPane3.Caption:='結束：'+FormatDateTime('HH:MM:SS',Etime);
  RzStatusPane4.Caption:='轉換完成！共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));

  ADOTable2.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  d1, d7: String;
  d2, d3, d4, d5, d6: Integer;
begin
  Stime:=now;
  RzStatusPane2.Caption:='開始：'+FormatDateTime('HH:MM:SS',Stime);
  Panel_menu.Visible:=False;
  wwDBGrid1.Enabled:=False;
  wwDBGrid2.DataSource.DataSet.DisableControls;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM wo';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM wo';
  ZQuery1.Open;
  ADOTable1.Close;
 // ADOTable1.TableName:=dbfpath.Value+'\KDATA.DBF';
  ADOTable1.Open;
  rcnt:=ADOTable1.RecordCount;
  while not ADOTable1.Eof do
    begin 
    r:=ADOTable1.RecNo;
    Application.ProcessMessages;
    ZQuery1.Append;
    Try
      ZQuery1.FieldByName('widate').Value:=TransDate(ADOTable1.FieldByName('date1').Value);
      if ADOTable1.FieldByName('time').AsString='A' then
        begin
        d1:=ADOTable1.FieldByName('wano').AsString;
        d2:=ADOTable1.FieldByName('MONEY1').AsInteger + ADOTable1.FieldByName('MONEY3').AsInteger;
        d3:=ADOTable1.FieldByName('MONEY1').AsInteger;
        d4:=0;
        d5:=0;
        d6:=ADOTable1.FieldByName('MONEY3').AsInteger;
        d7:='00:00:00';
        end
      else
        begin
        d1:=ADOTable1.FieldByName('wano').AsString;
        d2:=ADOTable1.FieldByName('MONEY1').AsInteger+ADOTable1.FieldByName('MONEY2').AsInteger+ADOTable1.FieldByName('MONEY3').AsInteger;
        d3:=ADOTable1.FieldByName('MONEY').AsInteger;
        d4:=ADOTable1.FieldByName('MONEY1').AsInteger;
        d5:=ADOTable1.FieldByName('MONEY2').AsInteger;
        d6:=0;
        if Length(ADOTable1.FieldByName('time').AsString)=6 then
          d7:=Copy(ADOTable1.FieldByName('TIME').AsString,1,2)+':'+Copy(ADOTable1.FieldByName('TIME').AsString,3,2)+':'+Copy(ADOTable1.FieldByName('TIME').AsString,5,2)
        else
          d7:=ADOTable1.FieldByName('TIME').AsString;
        end;
      ZQuery1.FieldByName('crcode').Value:='0'+ADOTable1.FieldByName('MANNO').Value;
      ZQuery1.FieldByName('wicode').Value:=d1;
      ZQuery1.FieldByName('wototal').Value:=d2;
      ZQuery1.FieldByName('woptotal').Value:=d3;
      ZQuery1.FieldByName('worealmo').Value:=d4;
      ZQuery1.FieldByName('wocntmo').Value:=d5;
      ZQuery1.FieldByName('wopsen').Value:=d6;
      ZQuery1.FieldByName('witime').Value:=d7;
      ZQuery1.FieldByName('fritem').Value:='T';
      ZQuery1.Post;
    Except
      ZQuery1.Cancel;
      Caption:=d1+'轉換錯誤！';
    end;
    RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName)+' -> '+d1+'('+IntToStr(r)+'/'+IntToStr(rcnt)+')';
    RzProgressStatus1.Percent:=Trunc((r/rcnt)*100);
    Etime:=now;
    RzStatusPane4.Caption:='費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.DataSource.DataSet.EnableControls;
  Etime:=now;
  RzStatusPane3.Caption:='結束：'+FormatDateTime('HH:MM:SS',Etime);
  RzStatusPane4.Caption:='轉換完成！共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  no: String;
  kind, money: Integer;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM waitem';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM waitem';
  ZQuery1.Open;

  ADOTable1.Close; //顏色
  ADOTable1.TableName:='gdatac';
  ADOTable1.Open;
  ADOTable1.Sort:='colorno';
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      ZQuery1.FieldByName('wano3').Value:=ADOTable1.FieldByName('colorno').Value;
      ZQuery1.FieldByName('waitem').Value:=ADOTable1.FieldByName('colorna').AsString;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('dno').AsString+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  dno: String;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM wastyle';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM wastyle';
  ZQuery1.Open;

  ADOTable1.Close; //衣物片語
  ADOTable1.TableName:='gdataf';
  ADOTable1.Open;
  ADOTable1.Sort:='dno';
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      if ADOTable1.FieldByName('dno').AsString='2' then
        dno:='03'
      else
        dno:=ADOTable1.FieldByName('dno').AsString;
      if GfIsInt(dno) then
        ZQuery1.FieldByName('wano2').AsString:=StrZero(StrToInt(dno),2)
      else
        ZQuery1.FieldByName('wano2').AsString:=dno;
      ZQuery1.FieldByName('wastyle').AsString:=ADOTable1.FieldByName('dna').AsString;
      ADOQuery1.Close;
      ADOQuery1.SQL.Text:='SELECT * FROM edata WHERE dno='''+ADOTable1.FieldByName('dno').AsString+''' ORDER BY wno';
      ADOQuery1.Open;
      ZQuery1.FieldByName('wawsmO1').Value:=ADOQuery1.FieldByName('money').Value;
      ADOQuery1.Next;
      ZQuery1.FieldByName('wawsmO2').Value:=ADOQuery1.FieldByName('money').Value;
      ADOQuery1.Next;
      ZQuery1.FieldByName('wawsmO3').Value:=ADOQuery1.FieldByName('money').Value;
      ADOQuery1.Next;
      ZQuery1.FieldByName('wawsmO4').Value:=ADOQuery1.FieldByName('money').Value;
      ADOQuery1.Next;
      ZQuery1.FieldByName('wawsmO5').Value:=ADOQuery1.FieldByName('money').Value;
      ADOQuery1.Next;
      ZQuery1.FieldByName('wawsmO6').Value:=ADOQuery1.FieldByName('money').Value;
      ADOQuery1.Next;
      ZQuery1.FieldByName('wawsmO7').Value:=ADOQuery1.FieldByName('mb').Value;
      ADOQuery1.Close;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('dno').AsString+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  noteno: String;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM wamemo'; //waexkind
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM wamemo';
  ZQuery1.Open;

  ADOTable1.Close; //備註片語
  ADOTable1.TableName:='gdatag';
  ADOTable1.Open;
  ADOTable1.Sort:='noteno';
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      noteno:=ADOTable1.FieldByName('noteno').Value;
      ZQuery1.FieldByName('wano5').AsString:=StrZero(StrToInt(noteno),2);
      ZQuery1.FieldByName('wamemo').AsString:=ADOTable1.FieldByName('notena').AsString;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=noteno+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  waname, wawash, wimemo, wiplace, indate: String;
  dno: string;
begin
  Stime:=now;
  RzStatusPane2.Caption:='開始：'+FormatDateTime('HH:MM:SS',Stime);
  Panel_menu.Visible:=False;
  wwDBGrid1.Enabled:=False;
  wwDBGrid2.DataSource.DataSet.DisableControls;
  ZReadOnlyQuery1.Close;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM stbwio';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM stbwio';
  ZQuery1.Open;
  ADOTable1.Close;
  ADOTable1.TableName:='gdatadel';
  ADOTable1.Open;
  rcnt:=ADOTable1.RecordCount;
  while not ADOTable1.Eof do
    begin 
    r:=ADOTable1.RecNo;
    Application.ProcessMessages;
    try
      ZQuery1.Append;
      ZQuery1.FieldByName('wicode').AsString:=ADOTable1.FieldByName('wano').AsString;
      ZQuery1.FieldByName('wisno').AsString:='0'+ADOTable1.FieldByName('wano2').AsString;
      ZQuery1.FieldByName('crcode').AsString:=copy(ADOTable1.FieldByName('manno').AsString,2,5);
      if ADOTable1.FieldByName('fknd').AsString<>'' then
        ZQuery1.FieldByName('wimemo').AsString:=Trim(ADOTable1.FieldByName('fknd').AsString);
      if ADOTable1.FieldByName('note').AsString<>'' then
        if ADOTable1.FieldByName('fknd').AsString<>'' then
          ZQuery1.FieldByName('wimemo').AsString:=ZQuery1.FieldByName('wimemo').AsString+'+'+Trim(ADOTable1.FieldByName('note').AsString)
      else
        ZQuery1.FieldByName('wimemo').AsString:=Trim(ADOTable1.FieldByName('note').AsString);
      if ADOTable1.FieldByName('dno').AsString='2' then
        dno:='03'
      else
        dno:=ADOTable1.FieldByName('dno').AsString;
      if Length(dno)=1 then
        dno:=StrZero(StrToInt(dno),2);
      ZReadOnlyQuery1.Close;
      ZReadOnlyQuery1.SQL.Text:='SELECT * FROM wastyle WHERE wano2='''+dno+'''';
      ZReadOnlyQuery1.Open;
      if not ZReadOnlyQuery1.Eof then
        waname:=ZReadOnlyQuery1.FieldByName('wastyle').Value
      else
        waname:='';
      ZReadOnlyQuery1.Close;

      ZQuery1.FieldByName('winame').AsString:=waname; //waname
      ZQuery1.FieldByName('wiitem').AsString:=ADOTable1.FieldByName('color').AsString;

      if ADOTable1.FieldByName('wno').AsString='C' then
        wawash:=''
      else
        begin
        ZReadOnlyQuery1.Close;
        ZReadOnlyQuery1.SQL.Text:='SELECT * FROM wawash WHERE wano6='''+StrZero(ADOTable1.FieldByName('wno').Value,2)+'''';
        ZReadOnlyQuery1.Open;
        if not ZReadOnlyQuery1.Eof then
          wawash:=ZReadOnlyQuery1.FieldByName('wawash').AsString
        else
          wawash:='';
        ZReadOnlyQuery1.Close;
        end;

      ZQuery1.FieldByName('wiwash').AsString:=wawash;
      ZQuery1.FieldByName('wiurge').AsString:='N';
      ZQuery1.FieldByName('widate').AsString:=TransDate(ADOTable1.FieldByName('date1').Value);
      ZQuery1.FieldByName('wimdate').AsString:=TransDate(ADOTable1.FieldByName('date2').Value);
      if ADOTable1.FieldByName('date3').AsString<>'' then
        ZQuery1.FieldByName('wiodate').AsString:=TransDate(ADOTable1.FieldByName('date3').AsString);
      ZQuery1.FieldByName('indate').AsString:=TransDate(ADOTable1.FieldByName('indate').AsString); 
      if ZQuery1.FieldByName('indate').AsString<>'' then
        ZQuery1.FieldByName('wiplace').AsString:='*';
      ZQuery1.FieldByName('wiwamo').Value:=ADOTable1.FieldByName('money').Value;
      ZQuery1.FieldByName('wisum').Value:=ADOTable1.FieldByName('money').Value;
      ZQuery1.FieldByName('wiquty').Value:=1;
      ZQuery1.FieldByName('wiacc').AsString:='';
      {if ADOTable3.Locate('wano2',ADOTable1.FieldByName('wano2').AsString,[]) then //入庫位置
        begin
        wiplace:=ADOTable3.FieldByName('ADDR').AsString;
        indate:=TransDate(ADOTable3.FieldByName('DATE3').Value);
        ZQuery1.FieldByName('wiplace').AsString:=wiplace;
        //ZQuery1.FieldByName('indate').AsString:=indate;
        end;
        }
      ZQuery1.Post;
      if StrToInt(Edit1.Text)<>0 then
        if r>StrToInt(Edit1.Text) then break;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('wano').AsString+'轉換錯誤！';
    end;
    RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName)+' -> '+ADOTable1.FieldByName('manno').AsString+'('+IntToStr(r)+'/'+IntToStr(rcnt)+')';
    RzProgressStatus1.Percent:=Trunc((r/rcnt)*100);
    Etime:=now;
    RzStatusPane4.Caption:='費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.DataSource.DataSet.EnableControls;
  Etime:=now;
  RzStatusPane3.Caption:='結束：'+FormatDateTime('HH:MM:SS',Etime);
  RzStatusPane4.Caption:='轉換完成！共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime));

  ADOTable2.Close;
end;

end.
