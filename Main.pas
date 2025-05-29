unit MAIN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, Buttons, StdCtrls, ComCtrls, jpeg, ActnList,
  ImgList, RzButton, RzPanel, JustOne, RzLstBox, RzStatus, AHMSystemClass,
  AHMTAppStarter, AHMDialogClass, FileCtrl, Db, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TMainForm = class(TForm)
    ImageList1: TImageList;
    ImageList3: TImageList;
    ActionList1: TActionList;
    Action_F1: TAction;
    Action_F2: TAction;
    Action_F3: TAction;
    Action_F4: TAction;
    imlMain: TImageList;
    imlTray: TImageList;
    sbrMain: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    RzResourceStatus1: TRzResourceStatus;
    stsSection: TRzGlyphStatus;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    Action_About: TAction;
    Action_ESC: TAction;
    RzPanelF3: TRzPanel;
    RzListBox1: TRzListBox;
    RzPanelF4: TRzPanel;
    RzListBox2: TRzListBox;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    RzToolbarButtonF4: TRzToolbarButton;
    Image1: TImage;
    XJustOne1: TXJustOne;
    AHMAppStarter1: TAHMAppStarter;
    ZQueryCust: TZQuery;
    ZQuery1: TZQuery;
    procedure FormActivate(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_QuitExecute(Sender: TObject);
    procedure RzListBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RzListBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzListBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetFunc3();
    procedure SetFunc4();
    procedure F3Menu();
    procedure F4Menu();
    procedure ProcessVip();
  end;

var
  MainForm: TMainForm;
  TPage, err : integer;
  fflag: Boolean;
  fkey, FBCode: String;
  uflag: array[0..19] of Integer=(1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,0,1,1);
  f3: array[0..10] of String=
      ('1.收件日報表','2.客戶明細報表','3.營業統計報表','4.應收款額報表',
       '5.衣物綜合報表','6.歷史衣物報表','7.客戶排行報表','8.金額異動報表',
       '9.貴賓卡統計','A.來客記錄表','B.整批送件');
  f4: array[0..8] of String=
      ('1.客戶資料','2.員工資料','3.片語資料','4.門市基本資料',
       '5.攝影機裝置','6.預約資料','7.權限管理資料','8.修復及重整','9.離開');
implementation

uses ShellApi, WDModule, lcutils, QueryCust, wio_Get, Pross_log, GetCam, Wio_Place,
  Company, wio_GetF2, Phrase, Aboutb, Custom, history1, Changelog,
  DailyRep, CustRep, VipRep, HistoryRep, YearsRep, GetRep,
  CustRank, CustArrears, trans, Booking, Employee, Login, BatchSend, Egroup,
  CheckLogFile;

{$R *.DFM}

function StrCmpLogicalW(psz1, psz2: PWideChar): Integer; stdcall;
    external 'shlwapi.dll';

function CheckUersRight(): Boolean;
var
  i: Integer;
begin
  WDM.ZQuery_emp.Close;
  WDM.ZQuery_emp.SQL.Clear;
  WDM.ZQuery_emp.SQL.Add('SELECT * FROM egroup as a, employee as b');
  WDM.ZQuery_emp.SQL.Add('WHERE b.eid='''+WDM.loginid+'''');
  WDM.ZQuery_emp.SQL.Add('AND b.egroup=a.gid');
  WDM.ZQuery_emp.Open;
  for i:=0 to 18 do
    uflag[i]:=WDM.ZQuery_emp.Fields[2+i].AsInteger;
  WDM.ZQuery_emp.Close;
  Result:=True;  
end;

function LogicalCompare(List: TStringList; Index1, Index2: Integer): Integer;
begin
  Result := StrCmpLogicalW(PWideChar(List[Index1]), PWideChar(List[Index2]));
end;

function CheckLog():Boolean;
var
  SL: TStringList;
  SR: TSearchRec;
  logpath, fname1, fname2: String;
begin
  logpath:=ExtractFilePath(Application.ExeName)+'Log\';
  fname1:=FormatDateTime('yyyymmdd',now);
  SL := TStringList.Create;
  try
    if FindFirst(logpath + '*.log', faAnyFile and (not faDirectory) and (not faHidden), SR) = 0 then
    try
      repeat
        SL.Add(logpath + SR.Name)
      until FindNext(SR) <> 0;
    finally
      FindClose(SR);
    end;
    SL.CustomSort(LogicalCompare);
    SL.Sort;
    fname2:=SL.Strings[SL.Count-1];
    fname2:=ChangeFileExt(ExtractFileName(fname2),'');
    fname2:=copy(fname2,1,8);
    //ShowMessage(logpath+'->'+fname2);
  finally
    SL.Free;
    if StrToInt(fname1)>=StrToInt(fname2) then
      Result:=False
    else
      Result:=True;
  end;
end;

function KillApp(const sCapt: PChar): Boolean;
var AppHandle: THandle;
begin
  AppHandle:=FindWindow(Nil, sCapt);
  Result:=PostMessage(AppHandle, WM_QUIT, 0, 0);
end;

procedure TMainForm.ProcessVip();
var
  eDate, eTime, vipedate: String;
  crmoney: Real;
begin
  eDate:=ChinaDate1(Date);
  eTime:=FormatDateTime('hh:nn:ss',Now());
  Try
    WDM.ZQueryvip.Close;
    WDM.ZQueryvip.SQL.Clear;
    WDM.ZQueryvip.SQL.Add('SELECT a.crcode, a.vpcode, max(a.vpedate) as edate, b.crmoney FROM vip as a');
    WDM.ZQueryvip.SQL.Add('LEFT JOIN cr as b ON a.crcode = b.crcode');
    WDM.ZQueryvip.SQL.Add('WHERE b.crmoney>0');
    WDM.ZQueryvip.SQL.Add('GROUP BY a.crcode');
    WDM.ZQueryvip.Open;
    While not WDM.ZQueryvip.Eof do
      begin
      vipedate:=WDM.ZQueryvip.FieldByName('edate').AsString;
      if vipedate<eDate then
        begin
        ZQueryCust.Close;
        ZQueryCust.SQL.Clear;
        ZQueryCust.SQL.Add('SELECT crcode, crmoney FROM cr');
        ZQueryCust.SQL.Add('WHERE crcode=''' + WDM.ZQueryvip.FieldByName('crcode').AsString + '''');
        ZQueryCust.Open;
        if not ZQueryCust.Eof then
          crmoney:=ZQueryCust.FieldByName('crmoney').Value;

        ZQueryCust.Close;
        ZQueryCust.SQL.Clear;
        ZQueryCust.SQL.Add('UPDATE cr');
        ZQueryCust.SQL.Add('SET crmoney=0, crmoney1='+FloatToStr(crmoney)+',crdate2='''+eDate+''',');
        ZQueryCust.SQL.Add('crvip=''N'', crpsen=0');
        ZQueryCust.SQL.Add('WHERE crcode=''' + WDM.ZQueryvip.FieldByName('crcode').AsString + '''');
        ZQueryCust.ExecSQL;

        ZQuery1.Close;
        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('INSERT INTO pross_vip');
        ZQuery1.SQL.Add('(crcode,pross,n_money,o_money,pross_date,pross_time,sfname)');
        ZQuery1.SQL.Add('VALUES('''+WDM.ZQueryvip.FieldByName('crcode').AsString+''',''VIP'',');
        ZQuery1.SQL.Add('0,'+FloatToStr(crmoney)+',');
        ZQuery1.SQL.Add(''''+eDate+''','''+eTime+''',');
        ZQuery1.SQL.Add(''''+WDM.loginid+''')');
        ZQuery1.ExecSQL;
        end;
      WDM.ZQueryvip.Next;
      end;
    WDM.ZQueryvip.Close;
  Except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TMainForm.SetFunc3();
var
  i: integer;
begin
  RzListBox1.Clear;
  for i:=0 to 10 do
   RzListBox1.Items.Add(f3[i])
end;

procedure TMainForm.SetFunc4();
var
  i: integer;
begin
  RzListBox2.Clear;
  for i:=0 to 8 do
    RzListBox2.Items.Add(f4[i])
end;

procedure TMainForm.F3Menu();
begin
  RzPanelF3.Visible:=False;
  if (RzListBox1.ItemIndex=0)and(uflag[RzListBox1.ItemIndex]=1) then //收件日報
    try
      DailyRepForm := TDailyRepForm.Create(Application);
      DailyRepForm.ShowModal;
      FreeAndNil(DailyRepForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=1)and(uflag[RzListBox1.ItemIndex]=1) then //客戶明細報表
    try
      CustRepForm := TCustRepForm.Create(Application);
      CustRepForm.ShowModal;
      FreeAndNil(CustRepForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=2)and(uflag[RzListBox1.ItemIndex]=1) then //營業統計
    try
      YearRepForm := TYearRepForm.Create(Application);
      YearRepForm.ShowModal;
      FreeAndNil(YearRepForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=3)and(uflag[RzListBox1.ItemIndex]=1) then //應收款項
    try
      CustArrearsForm := TCustArrearsForm.Create(Application);
      CustArrearsForm.ShowModal;
      FreeAndNil(CustArrearsForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=4)and(uflag[RzListBox1.ItemIndex]=1) then //衣物綜合
    try
      GetRepForm := TGetRepForm.Create(Application);
      GetRepForm.ShowModal;
      FreeAndNil(GetRepForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=5)and(uflag[RzListBox1.ItemIndex]=1) then //歷史衣物
    try
      HistoryRepForm := THistoryRepForm.Create(Application);
      HistoryRepForm.ShowModal;
      FreeAndNil(HistoryRepForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=6)and(uflag[RzListBox1.ItemIndex]=1) then //客戶排行
    try
      CustRankForm := TCustRankForm.Create(Application);
      CustRankForm.ShowModal;
      FreeAndNil(CustRankForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=7)and(uflag[RzListBox1.ItemIndex]=1) then //金額異動報表
    try
      ChangelogForm := TChangelogForm.Create(Application);
      ChangelogForm.ShowModal;
      FreeAndNil(ChangelogForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=8)and(uflag[RzListBox1.ItemIndex]=1) then  //貴賓卡統計
    begin
    try
      VipRepForm := TVipRepForm.Create(Application);
      VipRepForm.ShowModal;
      FreeAndNil(VipRepForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end
  else if (RzListBox1.ItemIndex=9)and(uflag[RzListBox1.ItemIndex]=1) then //來客記錄
    try
      Pross_logForm := TPross_logForm.Create(Application);
      Pross_logForm.ShowModal;
      FreeAndNil(Pross_logForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else if (RzListBox1.ItemIndex=10)and(uflag[RzListBox1.ItemIndex]=1) then //整批送件
    try
      batchForm := TbatchForm.Create(Application);
      batchForm.ShowModal;
      FreeAndNil(batchForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
  else
    //ShowMessage('無使用權限！');
  fkey:='';
end;

procedure TMainForm.F4Menu();
begin
  RzPanelF4.Visible:=False;
  if (RzListBox2.ItemIndex=0)and(uflag[RzListBox2.ItemIndex+11]=1) then //客戶資料
    try
      WDM.crcode:='';
      CustForm := TCustForm.Create(Application);
      CustForm.ShowModal;
      FreeAndNil(CustForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else if (RzListBox2.ItemIndex=1)and(uflag[RzListBox2.ItemIndex+11]=1) then //員工資料
    try
      EmpForm := TEmpForm.Create(Application);
      EmpForm.ShowModal;
      FreeAndNil(EmpForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else if (RzListBox2.ItemIndex=2)and(uflag[RzListBox2.ItemIndex+11]=1) then //片語資料
    try
      PhraseForm := TPhraseForm.Create(Application);
      PhraseForm.ShowModal;
      FreeAndNil(PhraseForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else if (RzListBox2.ItemIndex=3)and(uflag[RzListBox2.ItemIndex+11]=1) then //門市基本資料
    try
      CompanyForm := TCompanyForm.Create(Application);
      CompanyForm.ShowModal;
      FreeAndNil(CompanyForm);
      RzToolbar1.Color:=WDM.BCOLOR.Value;
      RzToolbar1.Font.Color:=WDM.BFCOLOR.Value;
      RzToolbar1.Font.Name:=WDM.BFONT.Value;
      RzToolbar1.Font.Size:=WDM.BSIZE.Value;

      RzPanelF3.Color:=WDM.BCOLOR.Value;
      RzPanelF3.Font.Color:=WDM.BFCOLOR.Value;
      RzPanelF3.Font.Name:=WDM.BFONT.Value;

      RzPanelF4.Color:=WDM.BCOLOR.Value;
      RzPanelF4.Font.Color:=WDM.BFCOLOR.Value;
      RzPanelF4.Font.Name:=WDM.BFONT.Value;
      if FileExists(WDM.PathName.Value) then
        Image1.Picture.LoadFromFile(WDM.PathName.Value);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else if (RzListBox2.ItemIndex=4)and(uflag[RzListBox2.ItemIndex+11]=1) then //攝影機設定
    try
      GetCamForm := TGetCamForm.Create(Application);
      GetCamForm.ShowModal;
      FreeAndNil(GetCamForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  {else if RzListBox2.ItemIndex=5 then //資料移轉
    try
      TransForm := TTransForm.Create(Application);
      TransForm.ShowModal;
      FreeAndNil(TransForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end}
  else if (RzListBox2.ItemIndex=5)and(uflag[RzListBox2.ItemIndex+11]=1) then //客戶預約資料
    try
      BookingForm := TBookingForm.Create(Application);
      BookingForm.ShowModal;
      FreeAndNil(BookingForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else if (RzListBox2.ItemIndex=6)and(uflag[RzListBox2.ItemIndex+11]=1) then //權限管理資料
    try
      EgroupForm := TEgroupForm.Create(Application);
      EgroupForm.ShowModal;
      FreeAndNil(EgroupForm);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else if (RzListBox2.ItemIndex=7)and(uflag[RzListBox2.ItemIndex+11]=1) then
    AHMAppStarter1.Programs.Items[0].Execute
  else if RzListBox2.ItemIndex=8 then
    Close
  else
    //ShowMessage('此功能暫不開放！');
  fkey:='';
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  sL : TStrings;
  logfile: String;
begin
  {logfile:=ExtractFilePath(Application.ExeName)+'Log\'+FormatDateTime('yyyymmdd',now)+'.log';
  if not FileExists(logfile) then
    begin
    sL := TStringList.Create;
    sL.SaveToFile(logfile);
    sL.Free;
    end;}

  WDM.ZQuery_DailyM.Close;
  WDM.ZQuery_DailyM.SQL.Clear;
  WDM.ZQuery_DailyM.SQL.Add('INSERT INTO dailymonitor ');
  WDM.ZQuery_DailyM.SQL.Add('(ondt)');
  WDM.ZQuery_DailyM.SQL.Add('VALUES ('''+ChinaDate1(now)+FormatDateTime(' hh:nn:ss',time)+''')');
  WDM.ZQuery_DailyM.ExecSQL();

  if CheckLog() then
    begin
    ShowMessage('今天日期不正常，程式無法開啟！');
    WDM.ZQuery_DailyM.Close;
    WDM.ZQuery_DailyM.SQL.Clear;
    WDM.ZQuery_DailyM.SQL.Add('SELECT * FROM dailymonitor ');
    WDM.ZQuery_DailyM.SQL.Add('ORDER BY sn DESC');
    WDM.ZQuery_DailyM.Open;
    WDM.ZQuery_DailyM.Edit;
    WDM.ZQuery_DailyM.FieldByName('offdt').Asstring:=ChinaDate1(now)+FormatDateTime(' hh:nn:ss',time);
    WDM.ZQuery_DailyM.Post;
    WDM.ZQuery_DailyM.Close;
    Application.Terminate;
    end;
  //WinExec('ClothesUpDate.exe', sw_Normal);
  if WDM.CheckUsbKey(0) then
    try
      AboutBox := TAboutBox.Create(Application);
      AboutBox.ShowModal;
      FreeAndNil(AboutBox);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end
  else
    begin
    MessageDlg('請插入USB保護鎖！'+#13+#10+'再重新啟動程式...', mtError,[mbOK], 0);
    Application.Terminate;
    end;
  AHMAppStarter1.Programs.Items[0].DefaultPath:=WDM.WPath;
end;

procedure TMainForm.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  for i:=0 to MainForm.ComponentCount -1 do
    begin
    if MainForm.Components[i] is TRzPanel then
      begin
      (MainForm.Components[i] as TRzPanel).Color:=WDM.BCOLOR.Value;
      (MainForm.Components[i] as TRzPanel).Font.Color:=WDM.BFCOLOR.Value;
      (MainForm.Components[i] as TRzPanel).Font.Name:=WDM.BFONT.Value;
      (MainForm.Components[i] as TRzPanel).Font.Size:=WDM.BSIZE.Value;
      end;
    if MainForm.Components[i] is TRzToolbar then
      begin
      (MainForm.Components[i] as TRzToolbar).Color:=WDM.BCOLOR.Value;
      (MainForm.Components[i] as TRzToolbar).Font.Color:=WDM.BFCOLOR.Value;
      (MainForm.Components[i] as TRzToolbar).Font.Name:=WDM.BFONT.Value;
      (MainForm.Components[i] as TRzToolbar).Font.Size:=WDM.BSIZE.Value;
      end;
    end;
  
  if FileExists(WDM.PathName.Value) then
    Image1.Picture.LoadFromFile(WDM.PathName.Value);

  if (WDM.newfuc.Value=1) then
    begin
    try
      LoginForm := TLoginForm.Create(Application);
      LoginForm.ShowModal;
      FreeAndNil(LoginForm);
      // 取功能權限
      CheckUersRight();
      //SetFunc3();
      //SetFunc4();
    except
      on E: Exception do
        MessageDlg ('登入視窗錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end;

  CheckForm := TCheckForm.Create(Application);
  CheckForm.ShowModal;
  FreeAndNil(CheckForm);

  if WDM.vipset0.Value=1 then
    begin
    ProcessVip();
    end;
  MainForm.SetFocus;
end;

procedure TMainForm.Action_F1Execute(Sender: TObject);
begin
  RzPanelF3.Visible:=False;
  RzPanelF4.Visible:=False;
  if WDM.CheckSerial() then
    try
      WioGetForm := TWioGetForm.Create(Application);
      WioGetForm.ShowModal;
      FreeAndNil(WioGetForm);
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TMainForm.Action_F3Execute(Sender: TObject);
begin
  if WDM.CheckSerial() then
    begin
    fkey:='F3';
    stsSection.Caption:='F3.報表管理';
    RzPanelF3.Visible:=True;
    RzPanelF3.Left:=RzToolbarButtonF3.Left;
    RzPanelF4.Visible:=False;
    RzListBox1.ItemIndex:=0;
    RzListBox1.SetFocus;
    end;
end; 

procedure TMainForm.Action_F4Execute(Sender: TObject);
begin
  if WDM.CheckSerial() then
    begin
    fkey:='F4';
    stsSection.Caption:='F4.系統管理';
    RzPanelF4.Visible:=True;
    RzPanelF4.Left:=RzToolbarButtonF4.Left;
    RzPanelF3.Visible:=False;
    RzListBox2.ItemIndex:=0;
    RzListBox2.SetFocus;
    end;
end;

procedure TMainForm.Action_F2Execute(Sender: TObject);
begin  
  RzPanelF3.Visible:=False;
  RzPanelF4.Visible:=False;
  if WDM.CheckSerial() then
    try
      WioPlaceForm := TWioPlaceForm.Create(Application);
      WioPlaceForm.ShowModal;
      FreeAndNil(WioPlaceForm);
      fkey:='';
    except
      on E: Exception do
           MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TMainForm.Action_ExitExecute(Sender: TObject);
begin
  if fkey='F3' then
     begin
     RzPanelF3.Visible:=False;
     fkey:='';
     end
  else if fkey='F4' then
     begin
     RzPanelF4.Visible:=False;
     fkey:='';
     end
  else
    Close;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ret :word;
begin
  Beep();
  ret := MessageDlg('確定要離開本系統？', mtWarning, [mbYes, mbNo], 0);
  case Ret of
     mrYes:
       begin
       //killtask('ClothesUpDate.exe');
       WDM.ZQuery_DailyM.Close;
       WDM.ZQuery_DailyM.SQL.Clear;
       WDM.ZQuery_DailyM.SQL.Add('SELECT * FROM dailymonitor ');
       WDM.ZQuery_DailyM.SQL.Add('ORDER BY sn DESC');
       WDM.ZQuery_DailyM.Open;
       WDM.ZQuery_DailyM.Edit;
       WDM.ZQuery_DailyM.FieldByName('offdt').Asstring:=ChinaDate1(now)+FormatDateTime(' hh:nn:ss',time);
       WDM.ZQuery_DailyM.Post;
       WDM.ZQuery_DailyM.Close;

       Action := caFree;
       KillApp(Pchar('Remind'));
       //SendMessage(FindWindow(nil,'Remind'),WM_Close,0,0);
       end;
     mrNo: Action := caNone;
  end;
end;

procedure TMainForm.Action_QuitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.RzListBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    Case RzListBox1.ItemIndex of
      0..10: F3Menu();
      else keybd_event(VK_ESCAPE,0,0,0);
    end;
end;

procedure TMainForm.RzListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  F3Menu();
end;

procedure TMainForm.RzListBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    Case RzListBox2.ItemIndex of
      0..8: F4Menu();
      else keybd_event(VK_ESCAPE,0,0,0);
    end;
end;

procedure TMainForm.RzListBox2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  F4Menu();
end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='')and(Key=VK_RETURN)and(Length(FBCode)>1) then
    begin
    SimKB(FBCode);
    FBCode:='';
    end
  else
    FBCode:=UpperCase(FBCode+Char(Key));
  Key:=0;
end;

end.
