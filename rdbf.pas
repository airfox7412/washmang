unit rdbf;

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
    dbfpath: TProfileString;
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
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    RzSelectFolderDialog1: TRzSelectFolderDialog;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzProgressStatus1: TRzProgressStatus;
    RzStatusPane2: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    RzStatusPane4: TRzStatusPane;
    ADOTable2: TADOTable;
    Button2: TButton;
    RzOpenDialog1: TRzOpenDialog;
    ADOTable3: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

function TransDate(day: String): String;
var
  ystr,mstr,dstr: String;
begin
  if day<>'' then
    try
      yint:=StrToInt(Copy(day,1,4))-1911;
      ystr:=StrZero(yint,3);
      mstr:=Copy(day,6,2);
      dstr:=Copy(day,9,2);
      Result:=ystr+'/'+mstr+'/'+dstr;
    except
      Result:='';
    end
  else
    Result:=day;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  RzOpenDialog1.InitialDir:=dbfpath.Value;
  if RzOpenDialog1.Execute then
    begin
    ADOTable1.Close;
    ADOTable1.TableName:=RzOpenDialog1.FileName;
    RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName);
    ADOTable1.Open;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if RzSelectFolderDialog1.Execute then
    begin
    dbfpath.Value:=RzSelectFolderDialog1.SelectedPathName;
    Caption:='轉換程式-'+dbfpath.Value;
    ADOConnection1.Connected:=False;
    ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Password="";Persist Security Info=True;User ID=admin;Data Source=washdbf;Extended Properties="DSN=washdbf;DBQ='+dbfpath.Value+';DriverId=533;FIL=dBase 5.0;MaxBufferSize=2048;PageTimeout=5;UID=admin;";Initial Catalog='+dbfpath.Value;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ProfileFile1.Filename:=ExtractFilePath(Application.ExeName)+'Clothes.ini';
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=protocol.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Port:=myport.Value;
  ZConnection1.Catalog:=mydbname.Value;
  ZConnection1.Database:=mydbname.Value;

  Caption:='轉換程式-'+dbfpath.Value;
  RzSelectFolderDialog1.SelectedFolder.PathName:=dbfpath.Value;
  //ADOConnection1.Connected:=False;
  //ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Password="";Persist Security Info=True;User ID=admin;Extended Properties="DSN=dBASE Files;DBQ='+dbfpath.Value+';DefaultDir='+dbfpath.Value+';DriverId=533;MaxBufferSize=2048;PageTimeout=5;UID=admin;"';
  ADOConnection1.Connected:=True;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  discnt: String;
  vint: integer;
begin
  ADOTable1.Close;
  ADOTable1.TableName:=dbfpath.Value+'\cust.dbf';
  RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName);
  ADOTable1.Open;

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
  ADOTable1.TableName:=dbfpath.Value+'\CUST.DBF';
  ADOTable1.Open;
  rcnt:=ADOTable1.RecordCount;
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    r:=ADOTable1.RecNo;
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      vint:=StrToInt(ADOTable1.FieldByName('cstno').AsString);
      ZQuery1.FieldByName('crcode').Value:=StrZero(vint,5);
      ZQuery1.FieldByName('crname').Value:=ADOTable1.FieldByName('cstname').AsString;
      ZQuery1.FieldByName('cradr').Value:=ADOTable1.FieldByName('cstadd').AsString;
      ZQuery1.FieldByName('crtel').Value:=ADOTable1.FieldByName('csttel').AsString;
      ZQuery1.FieldByName('crtela').Value:=ADOTable1.FieldByName('cstmphon').AsString;
      ZQuery1.FieldByName('crmoney').Value:=ADOTable1.FieldByName('cstprea').Value;
      ZQuery1.FieldByName('crdate').Value:=TransDate(ADOTable1.FieldByName('cstcrtd').AsString);
      if(ADOTable1.FieldByName('cstshtkey').Value<>Null)and(ADOTable1.FieldByName('cstshtkey').Value<>'') then
        begin
        discnt:=StringReplace(ADOTable1.FieldByName('cstshtkey').Value,'*','',[rfReplaceAll]);
        discnt:=StringReplace(ADOTable1.FieldByName('cstshtkey').Value,'**','',[rfReplaceAll]); 
        discnt:=StringReplace(ADOTable1.FieldByName('cstshtkey').Value,'****','',[rfReplaceAll]);
        discnt:=StringReplace(ADOTable1.FieldByName('cstshtkey').Value,'+','',[rfReplaceAll]);
        ZQuery1.FieldByName('crpsen').Value:=StrToInt(discnt);
        ZQuery1.FieldByName('crvip').Value:='Y';
        end;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('cstname').AsString+'轉換錯誤！';
    end;
    RzStatusPane1.Caption:=ExtractFileName(ADOTable1.TableName)+' -> '+ADOTable1.FieldByName('cstname').AsString;
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
  i, j, money: Integer;
begin
  Panel_menu.Visible:=False;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='Delete FROM wastyle';
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Text:='SELECT * FROM wastyle';
  ZQuery1.Open;

  ADOTable1.Close; //衣物基本資料
  ADOTable1.TableName:=dbfpath.Value+'\ITM.DBF';
  ADOTable1.Open;
  ADOTable1.Sort:='itmno';
  ADOTable1.First;
  while not ADOTable1.Eof do
    begin
    Application.ProcessMessages;
    Try
      ZQuery1.Append;
      no:=Trim(ADOTable1.FieldByName('itmno').AsString);
      if Length(no)=1 then
        no:='0'+no;
      ZQuery1.FieldByName('wano2').Value:=no;
      ZQuery1.FieldByName('wastyle').Value:=ADOTable1.FieldByName('itmname').Value;
      ZQuery1.Post;
    except
      ZQuery1.Cancel;
      Caption:=ADOTable1.FieldByName('no').AsString+'轉換錯誤！';
    end;
    ADOTable1.Next;
    end;
  Panel_menu.Visible:=True;
end;

end.
