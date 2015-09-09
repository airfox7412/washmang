unit WDModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, DB, Wwdatsrc, Wwtable, Wwquery, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, ZAbstractTable,
  RzPanel, ExtCtrls, Wwdbgrid, Profile, ZSqlMonitor, AHMSystemClass,
  AHMTLogFile;

type
  TWDM = class(TDataModule)
    ZConnection1: TZConnection;
    ZQuery_cr: TZQuery;
    DS_cr: TDataSource;
    ZQuery_wio: TZQuery;
    ZQueryCust: TZQuery;
    DS_Cust: TDataSource;
    ZQuerywaItem: TZReadOnlyQuery;
    ZTableWio: TZTable;
    ZQuerywastyle: TZReadOnlyQuery;
    ZQuerywawash: TZReadOnlyQuery;
    ZTableCompy: TZTable;
    DS_Compy: TDataSource;
    DS_twio: TDataSource;
    ZQuerywaacc: TZReadOnlyQuery;
    ZQuerywamemo: TZReadOnlyQuery;
    ZQuery_wo: TZQuery;
    wwDS_wo: TwwDataSource;
    ZQuery_wowicode: TStringField;
    ZQuery_wocrcode: TStringField;
    ZQuery_wowototal: TFloatField;
    ZQuery_wowopsen: TFloatField;
    ZQuery_wowoptotal: TFloatField;
    ZQuery_woworealmo: TFloatField;
    ZQuery_wowoowimo: TFloatField;
    ZQuery_wowidate: TStringField;
    ZQuery_wowitime: TStringField;
    ZQuery_wocrname: TStringField;
    ZQuery_wocrtel: TStringField;
    wwDS_wio: TwwDataSource;
    ZTable_wio: TZTable;
    wwDS_pross_log: TwwDataSource;
    ZQuery_pross_log: TZQuery;
    ZQuery_pross_logsn: TLargeintField;
    ZQuery_pross_logcrcode: TStringField;
    ZQuery_pross_logpross: TStringField;
    ZQuery_pross_logpross_date: TStringField;
    ZQuery_pross_logpross_time: TStringField;
    ZQuery_pross_logcrname: TStringField;
    ZQuery_pross_logcrtel: TStringField;
    ZQuery_pross_logcradr: TStringField;
    ZQuery_wiowicode: TStringField;
    ZQuery_wiowisno: TStringField;
    ZQuery_wiocrcode: TStringField;
    ZQuery_wiowiname: TStringField;
    ZQuery_wiowiitem: TStringField;
    ZQuery_wiowiacc: TStringField;
    ZQuery_wiowimemo: TStringField;
    ZQuery_wiowiwash: TStringField;
    ZQuery_wiowiwamo: TFloatField;
    ZQuery_wiowiexkind: TStringField;
    ZQuery_wiowiexmo: TFloatField;
    ZQuery_wiowiquty: TIntegerField;
    ZQuery_wiowisum: TFloatField;
    ZQuery_wiowiurge: TStringField;
    ZQuery_wiowiday: TStringField;
    ZQuery_wiowimdate: TStringField;
    ZQuery_wiowiodate: TStringField;
    ZQuery_wiowiotime: TTimeField;
    ZQuery_wiowiplace: TStringField;
    ZQuery_wiowidate: TStringField;
    ZQuery_wiowimark: TStringField;
    ZQuery_wioindate: TStringField;
    ZQuery_wiomark: TStringField;
    ZQuery_wiopps: TIntegerField;
    ProfileFile1: TProfileFile;
    CAM: TProfileSection;
    CamIndex: TProfileInteger;
    ZQuery_wiopicture: TStringField;
    ZQuerywaexkind: TZReadOnlyQuery;
    ZQuery_crcrcode: TStringField;
    ZQuery_crcrdate: TStringField;
    ZQuery_crcrname: TStringField;
    ZQuery_crcsex: TStringField;
    ZQuery_crcrid: TStringField;
    ZQuery_crcrtel: TStringField;
    ZQuery_crcrtela: TStringField;
    ZQuery_crcrtelb: TStringField;
    ZQuery_crcradr: TStringField;
    ZQuery_crcrmoney: TFloatField;
    ZQuery_crcrpsen: TFloatField;
    ZQuery_crcrdate2: TStringField;
    ZQuery_crcrvip: TStringField;
    ZQuery_crcrarea: TStringField;
    ZQuery_crcurst: TStringField;
    ZQuery_crcrs1: TStringField;
    ZQuery_crcrs2: TStringField;
    MYSQL: TProfileSection;
    myuser: TProfileString;
    mypassword: TProfileString;
    myport: TProfileInteger;
    protocol: TProfileString;
    mydbname: TProfileString;
    ZQuerywaname: TZReadOnlyQuery;
    ZQuery_wiochange: TZQuery;
    DS_wiochange: TwwDataSource;
    ZQuery_wiochangewiosn: TLargeintField;
    ZQuery_wiochangecrcode: TStringField;
    ZQuery_wiochangewicode: TStringField;
    ZQuery_wiochangewisno: TStringField;
    ZQuery_wiochangeorgmoney: TFloatField;
    ZQuery_wiochangenewmoney: TFloatField;
    ZQuery_wiochangechgdate: TStringField;
    ZQuery_wiochangechgtime: TStringField;
    ZQuery_wiochangenote: TStringField;
    ZQuery_wiochangesfname: TStringField;
    ZQuery_wiochangechgmoney: TFloatField;
    ZQuery_wiochangecrname: TStringField;
    COLOR: TProfileSection;
    PCOLOR: TProfileInteger;
    PFCOLOR: TProfileInteger;
    GCOLOR: TProfileInteger;
    GFCOLOR: TProfileInteger;
    BCOLOR: TProfileInteger;
    BFCOLOR: TProfileInteger;
    PFONT: TProfileString;
    GFONT: TProfileString;
    BFONT: TProfileString;
    WCOLOR: TProfileInteger;
    WFCOLOR: TProfileInteger;
    WFONT: TProfileString;
    ZQuerywaadr: TZReadOnlyQuery;
    Picture: TProfileSection;
    PathName: TProfileString;
    PSIZE: TProfileInteger;
    GSIZE: TProfileInteger;
    WSIZE: TProfileInteger;
    BSIZE: TProfileInteger;
    GTCOLOR: TProfileInteger;
    GTFCOLOR: TProfileInteger;
    GTFONT: TProfileString;
    GTSIZE: TProfileInteger;
    StyleIndex: TProfileInteger;
    STYLE: TProfileSection;
    ZQuery_crcrmark: TStringField;
    GLCOLOR: TProfileInteger;
    PLABEL: TProfileSection;
    TopMargin: TProfileInteger;
    BottonMargin: TProfileInteger;
    LeftMargin: TProfileInteger;
    RightMargin: TProfileInteger;
    LWidth: TProfileString;
    nn: TProfileString;
    USBPath: TProfileString;
    ZQuery_wiowitime: TTimeField;
    ZQuery_wiowisel: TStringField;
    KIND: TProfileSection;
    NOGET: TProfileInteger;
    QUERY: TProfileInteger;
    Category: TProfileInteger;
    COMUSE: TProfileInteger;
    BARCODE: TProfileSection;
    position: TProfileInteger;
    mdetail: TProfileInteger;
    dday: TProfileInteger;
    ZSQLMonitor1: TZSQLMonitor;
    ZQuery_pross_logcrtelb: TStringField;
    qtype: TProfileInteger;
    newfuc: TProfileInteger;
    displayvip: TProfileInteger;
    ZQuery_crcrmoney1: TFloatField;
    ZQuery_crcrcnt: TFloatField;
    DKEY: TProfileSection;
    DelKey: TProfileString;
    AllDelKey: TProfileString;
    ZTableCust: TZTable;
    ZQueryvip: TZQuery;
    f319: TProfileBoolean;
    F5FLAG: TProfileInteger;
    ZQuery_emp: TZQuery;
    mp3file: TProfileString;
    proclog: TProfileInteger;
    h3day: TProfileInteger;
    mygod: TProfileInteger;
    F4FLAG: TProfileInteger;
    mlog: TProfileInteger;
    ZQuery_DailyM: TZQuery;
    DS_DailyM: TDataSource;
    vipset0: TProfileInteger;
    lkind: TProfileString;
    pkind: TProfileString;
    heat: TProfileInteger;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rfkey, crcode, fstr: String;
    wicode: String;
    WPath: String;
    loginid: String;
    function CheckUsbKey(key: Integer): Boolean;
    function CheckSerial(): Boolean;
    procedure FormColorSet(FormName: TForm);
  end;

var
  WDM: TWDM;
  DevicePath, prgstr: string;

implementation

{$R *.DFM}

uses Lcutils;

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

function SetCal(W_HKey: string; W_LKey: string; new_HKey: string; new_LKey: string; InPath: string): Integer; stdcall; external 'miki.dll';

function TWDM.CheckUsbKey(key:Integer): Boolean;
begin
  if (LowerCase(ParamStr(1))='tony') or (LowerCase(ParamStr(1))='0939599120') then
    Result:=True
  else
    if FindPort(0,DevicePath)<>0 then
      begin
      if key=1 then
        MessageDlg('沒有找到保護鎖，請插入USB保護鎖！'+#13+#10+'無法使用...', mtError,[mbOK], 0);
      Result:=False;
      end
    else
      Result:=True;
end;

function TWDM.CheckSerial(): Boolean;
var
  mylen, sno: integer;
  outstring, keystr1, keystr2, snostr: string;
begin
  if (LowerCase(ParamStr(1))='tony') or (LowerCase(ParamStr(1))='0939599120') then
    Result:=True
  else
    begin
  //從保護鎖讀取指定位址的資料.
  //以下範例是從第 0 個位址讀取 10 BYTES 資料. 傳出來的資料是一個字串
    snostr:=ZTableCompy.FieldByName('serialno').AsString;
    sno:=StrToInt(snostr);
    keystr1:=StrZero(sno,8);
    keystr2:='FFFFFFFF';
    mylen := 10; //這裡為要讀取字串的長度
    outstring := StringOfChar(' ', mylen);
    if YReadString(outstring, 0, mylen, keystr1, keystr2, DevicePath)=0 then
      begin
      if outstring=snostr then
        Result:=True
      else
        Result:=False;
      end
    else
      Result:=False;
    end;
end;

procedure TWDM.FormColorSet(FormName: TForm);
var
  i: Integer;
begin
  ZTableCompy.Close;
  ZTableCompy.Open;
  for i:=0 to FormName.ComponentCount -1 do
    begin
    if FormName.Components[i] is TRzPanel then
      begin
      (FormName.Components[i] as TRzPanel).Color:=PCOLOR.Value;
      (FormName.Components[i] as TRzPanel).Font.Color:=PFCOLOR.Value;
      (FormName.Components[i] as TRzPanel).Font.Name:=PFONT.Value;
      (FormName.Components[i] as TRzPanel).Font.Size:=PSIZE.Value;
      end;
    if FormName.Components[i] is TwwDBGrid then
      begin
      (FormName.Components[i] as TwwDBGrid).PaintOptions.ActiveRecordColor:=GLCOLOR.Value;
      (FormName.Components[i] as TwwDBGrid).Color:=GCOLOR.Value;
      (FormName.Components[i] as TwwDBGrid).Font.Color:=GFCOLOR.Value;
      (FormName.Components[i] as TwwDBGrid).Font.Name:=GFONT.Value;
      (FormName.Components[i] as TwwDBGrid).Font.Size:=GSIZE.Value;
      (FormName.Components[i] as TwwDBGrid).TitleColor:=GTCOLOR.Value;
      (FormName.Components[i] as TwwDBGrid).TitleFont.Color:=GTFCOLOR.Value;
      (FormName.Components[i] as TwwDBGrid).TitleFont.Name:=GTFONT.Value;
      (FormName.Components[i] as TwwDBGrid).TitleFont.Size:=GTSIZE.Value;
      end;
    if FormName.Components[i] is TPanel then
      begin
      (FormName.Components[i] as TPanel).Color:=WCOLOR.Value;
      (FormName.Components[i] as TPanel).Font.Color:=WFCOLOR.Value;
      (FormName.Components[i] as TPanel).Font.Name:=WFONT.Value;
      (FormName.Components[i] as TPanel).Font.Size:=WSIZE.Value;
      end;
    if FormName.Components[i] is TRzToolbar then
      begin
      (FormName.Components[i] as TRzToolbar).Color:=BCOLOR.Value;
      (FormName.Components[i] as TRzToolbar).Font.Color:=BFCOLOR.Value;
      (FormName.Components[i] as TRzToolbar).Font.Name:=BFONT.Value;
      (FormName.Components[i] as TRzToolbar).Font.Size:=BSIZE.Value;
      end;
    end;
end;

procedure TWDM.DataModuleCreate(Sender: TObject);
var
  Path:Array[0..64] of char;
  DllPath: String;
  SearchRec: TSearchRec;
  size : Longint;
  i: Integer;
  ZTablename: String;
begin
  WPath:=ExtractFilePath(Application.ExeName);
  ProfileFile1.Filename:=WPath+'Clothes.ini';
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=protocol.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Port:=myport.Value;
  ZConnection1.Catalog:=mydbname.Value;
  ZConnection1.Database:=mydbname.Value;
  
  ZSQLMonitor1.FileName:=WPath+'Log\'+FormatDateTime('yyyymmdd_hhmmss',now)+'.log';
  ZSQLMonitor1.AutoSave:=True;
  ZSQLMonitor1.Active:=True;
  for i:=0 to WDM.ComponentCount -1 do
    begin
    if WDM.Components[i] is TZTable then
      begin
      ZTablename:=(WDM.Components[i] as TZTable).TableName;
      (WDM.Components[i] as TZTable).TableName:=StringReplace(ZTablename,mydbname.Value,'',[rfReplaceAll, rfIgnoreCase]);
      end;
    end;
  {if not FileExists(ExtractFilePath(Application.ExeName)+'ClothesUpDate.exe') then
    begin
    ShowMessage('缺少ClothesUpDate.exe程式'+#13+#10+'請下載！');
    Application.Terminate;
    end;}
  
  try
    ZTableCompy.Open;
  except
    on E: Exception do
      begin
      MessageDlg('[門市資料]開啟錯誤:程式即將關閉！', mtError,[mbOK], 0);
      Application.Terminate;
      end;
  end;

  //判斷是不是有插入保護鎖 如果有的話將保護鎖的位址, 儲存到 DevicePath
  //DevicePath 要設定為公用變數, 因為後面的應用都會使用到這個 DevicePath
  GetSystemDirectory(Path, 64); //取得系統路徑
  DllPath:=ExpandFileName(Path+'\miki.dll');
  CopyFile(pChar(DllPath), pChar(ExtractFilePath(Application.ExeName)+'\miki.dll'),false);
  DllPath:=ExtractFilePath(Application.ExeName)+'\miki.dll';
  try
    FindFirst(DllPath, faAnyFile, SearchRec);
    size:=SearchRec.Size;
    if size<>53248 then
      begin
      MessageDlg('您使用的是非法軟體！'+#13+#10+'本系統將關閉...', mtError,[mbOK], 0);
      Application.Terminate;
      end;
   except
     MessageDlg('您使用的是非法軟體！'+#13+#10+'本系統將關閉...', mtError,[mbOK], 0);
     Application.Terminate;
   end; //try
   //DeleteFile(DllPath);

   //偵測USB KEY
   DevicePath := StringOfChar(' ', 260); //Space(260);
   if FindPort(0, DevicePath)=0 then
     begin
     if not CheckSerial() then
        begin
        MessageDlg('您使用的USB序號不正確！'+#13+#10+'本系統將關閉...', mtError,[mbOK], 0);
        Application.Terminate;
        end
     end;
  //若資料表無此欄位，則增加此欄位...
  ZTableCust.Open;
  if not Assigned(ZTableCust.FindField('crmoney1')) then
    begin
    ZQueryCust.Close;
    ZQueryCust.SQL.Clear;
    ZQueryCust.SQL.Add('ALTER TABLE cr ADD COLUMN crmoney1 FLOAT NULL DEFAULT ''0'' AFTER crmoney');
    ZQueryCust.ExecSQL;
    end;
  ZTableCust.Close;
  //若資料表無此欄位，則增加此欄位...
  
  ZQueryCust.Close;
  ZQueryCust.SQL.Clear;
  ZQueryCust.SQL.Add('SELECT * FROM cr');
  //ZQueryCust.SQL.Add('WHERE crmark=''Y''');
  ZQueryCust.Open;
end;

end.
