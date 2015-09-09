unit wio_Get;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask, Jpeg,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  wwdbedit, ActnList, Wwdatsrc, RzButton, RzPanel, Wwdbgrid, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZConnection, MovePanel, Menus,
  RzBckgnd;

type
  TWioGetForm = class(TForm)
    ActionList1: TActionList;
    Action_F3: TAction;
    Action_F1: TAction;
    Action_F2: TAction;
    Action_F4: TAction;
    Action_Exit: TAction;
    ZQuery_wo: TZQuery;
    wwDS_wo: TwwDataSource;
    Action_F7: TAction;
    Action_F8: TAction;
    ZQuery_sum: TZReadOnlyQuery;
    Action_F10: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonAdd: TRzToolbarButton;
    RzToolbarButtonEdit: TRzToolbarButton;
    RzToolbarButtonQuery: TRzToolbarButton;
    RzToolbarButtonVIP: TRzToolbarButton;
    RzToolbarButtonDetail: TRzToolbarButton;
    RzToolbarButtonHold: TRzToolbarButton;
    RzToolbarButtonPay: TRzToolbarButton;
    Action_F12: TAction;
    RzToolbarButtonPlace: TRzToolbarButton;
    Panel_Pay: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    LabelP1: TLabel;
    Edit_Pay: TEdit;
    Edit_Discount: TEdit;
    DS_Qwio_temp: TDataSource;
    ZQuery_wio_temp: TZQuery;
    ZQuery_wio_tempcrcode: TStringField;
    ZQuery_wio_tempcrname: TStringField;
    ZQuery_wio_tempwicode: TStringField;
    ZQuery_wio_tempwisno: TStringField;
    ZQuery_wio_tempwiitem: TStringField;
    ZQuery_wio_tempwiname: TStringField;
    ZQuery_wio_tempwiwash: TStringField;
    ZQuery_wio_tempwiwamo: TFloatField;
    ZQuery_wio_tempwiurge: TStringField;
    ZQuery_wio_tempwimdate: TStringField;
    ZQuery_wio_tempwiquty: TIntegerField;
    ZQuery_wio_tempwisum: TFloatField;
    ZQuery_wio_tempwiacc: TStringField;
    ZQuery_wio_tempwimemo: TStringField;
    ZQuery_wio_tempwiplace: TStringField;
    ZQuery_wio_tempwiexkind: TStringField;
    ZQuery_wio_tempwiexmo: TFloatField;
    ZQuery_wio_tempwiotime: TTimeField;
    ZQuery_wio_tempwiday: TStringField;
    ZQuery_wio_tempwiodate: TStringField;
    ZQuery_wio_tempwidate: TStringField;
    ZQuery_wio_tempwimark: TStringField;
    ZQuery_wio_tempindate: TStringField;
    ZQuery_wio_tempmark: TStringField;
    ZQuery_wio_temppps: TIntegerField;
    Panel_Hold: TPanel;
    ZConnection1: TZConnection;
    MovePanel1: TMovePanel;
    wwDBGrid_Hold: TwwDBGrid;
    Label8: TLabel;
    Label3: TLabel;
    ZQuery: TZReadOnlyQuery;
    RzToolbarButtonEsc: TRzToolbarButton;
    Action_PgDn: TAction;
    Action_PgUp: TAction;
    RzPanel1: TRzPanel;
    Label15: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    GetMoney: TLabel;
    lbNoGet: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Hlbcrpsen: TLabel;
    Hlbcppsen: TLabel;
    lbNowMoney: TLabel;
    lbPay: TLabel;
    Image1: TImage;
    DBText4: TDBText;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Labelwisno: TLabel;
    Labelwis: TLabel;
    LabelWicode: TLabel;
    Labewic: TLabel;
    Label10: TLabel;
    DBText5: TDBText;
    Action_F5: TAction;
    RzToolbarButtonF5: TRzToolbarButton;
    RzToolbarButtonF66: TRzToolbarButton;
    Action_F6: TAction;
    Panel_Discount: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Edit_Discnt: TEdit;
    Panel_History: TPanel;
    Label14: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Action_F11: TAction;
    RzToolbarButtonF11: TRzToolbarButton;
    RadioButton3: TRadioButton;
    ZReadOnlyQuery_vip: TZReadOnlyQuery;
    ActionCtrlF3: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure Action_F7Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure Action_F8Execute(Sender: TObject);
    procedure Action_F12Execute(Sender: TObject);
    procedure Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_PayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid_HoldDblClick(Sender: TObject);
    procedure wwDBGrid_HoldKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F4Execute(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure Action_PgUpExecute(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure Action_F6Execute(Sender: TObject);
    procedure Edit_DiscntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F11Execute(Sender: TObject);
    procedure RadioButton1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ActionCtrlF3Execute(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { private declarations }
  public
    { public declarations }
    rfkey: String;
    Function GetCust(): Boolean;
    Function InsertLog(): Boolean;
    Function CalNotGet():Boolean;
    Function New_wo(): Boolean;
  end;

var
  WioGetForm: TWioGetForm;
  getitem, oldvalue: String;
  //GridStr: Array Of String;
  fkey: String;
  wisnod, ngquty, gmx, gmy: Integer;
  PayVal, DiscountVal, TotalVal, crmoneyVal: Real;
  tflag: Boolean;

//procedure Show_VIPForm(App:THandle);stdcall;external 'FormDll.dll';

implementation

uses WDModule, lcutils, QueryCust, wio_Add, wio_Detail, wio_Place,
  history1, history2, vip, wio_GetF2, ShowPic, history3, DailyRep, Custom;

{$R *.DFM}

Function TWioGetForm.GetCust():Boolean;
begin
  WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
  Hlbcrpsen.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value)+'%';
  Hlbcppsen.Caption:=FloatToStr(WDM.ZTableCompy.FieldByName('cppsen').Value)+'%';
  crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
  lbNowMoney.Caption:=FloatToStr(crmoneyVal);
  if crmoneyVal>=0 then
    lbNowMoney.Font.Color:=ClYellow
  else
    lbNowMoney.Font.Color:=ClRed;
  Caption:='收取件作業-'+WDM.ZQuery_cr.FieldByName('cradr').Value;
  if WDM.displayvip.Value=1 then
    begin
    ZReadOnlyQuery_vip.Close;
    ZReadOnlyQuery_vip.SQL.Clear;
    ZReadOnlyQuery_vip.SQL.Add('SELECT crcode,vpsdate,vpedate FROM vip');
    ZReadOnlyQuery_vip.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZReadOnlyQuery_vip.SQL.Add('ORDER BY vpsdate DESC');
    ZReadOnlyQuery_vip.Open;
    Caption:=Caption+'-VIP:'+ZReadOnlyQuery_vip.FieldByName('vpsdate').AsString+'~'+ZReadOnlyQuery_vip.FieldByName('vpedate').AsString;
    ZReadOnlyQuery_vip.Close;
    end;
end;

Function TWioGetForm.New_wo(): Boolean;
var
  crpsen, cppsen, psen: Real;
  fritem: String;
begin
  WDM.ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);
  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE crcode='''+WDM.crcode+'''';
  ZQuery_wo.Open;
  if fkey='' then
    fritem:='Q'; // Q.預收款
  Try
    ZQuery_wo.Append;
    ZQuery_wo.FieldByName('crcode').Value:=WDM.crcode;
    //ZQuery_wo.FieldByName('wicode').Value:='000000';
    ZQuery_wo.FieldByName('wototal').AsFloat:=StrToFloat(lbNowMoney.Caption);
    ZQuery_wo.FieldByName('woptotal').AsFloat:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
    {crpsen:=StrToFloat(copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1));
    cppsen:=StrToFloat(Copy(Hlbcppsen.Caption,1,length(Hlbcppsen.Caption)-1));
    if crpsen>=cppsen then
      psen:=crpsen
    else
      psen:=cppsen;}
    ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
    ZQuery_wo.FieldByName('worealmo').AsFloat:=PayVal;
    ZQuery_wo.FieldByName('wocntmo').AsFloat:=DiscountVal;
    ZQuery_wo.FieldByName('widate').Value:=ChinaDate1(Date);
    ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:mm:ss',Time);
    ZQuery_wo.FieldByName('fritem').AsString:=fritem;
    ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
    ZQuery_wo.Post;
  Except
    ShowMessage('WO資料庫建立錯誤！');
  end;
  try
    WDM.ZQuery_cr.Edit;
    WDM.ZQuery_cr.FieldByName('crmoney').AsFloat:=StrToFloat(lbNowMoney.Caption);
    WDM.ZQuery_cr.FieldByName('crmoney1').AsFloat:=crmoneyVal;
    WDM.ZQuery_cr.Post;
  Except
    ShowMessage('cr資料庫修改錯誤！');
  end;
end;

Function TWioGetForm.CalNotGet():Boolean;
begin
  ZQuery_sum.Close;
  ZQuery_sum.SQL.Clear;
  ZQuery_sum.SQL.Add('SELECT sum(wiquty) as s_quty FROM wio');
  ZQuery_sum.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_sum.SQL.Add('AND wiodate=''''');
  ZQuery_sum.Open;
  ngquty:=ZQuery_sum.FieldByName('s_quty').AsInteger;
  lbNoGet.Caption:=IntToStr(ngquty);
  ZQuery_sum.Close;
  Result:=True;
end;

Function TWioGetForm.InsertLog(): Boolean;
var
  PrevDate, pross: String;
begin
  PrevDate:=NextDate(ChinaDate(Date),WDM.proclog.Value);
  //PrevDate:=StringReplace(PrevDate,'/','',[rfReplaceAll, rfIgnoreCase]);
  Try
    WDM.ZQuery_pross_log.Close;  //刪除proclog天前之來客紀錄
    WDM.ZQuery_pross_log.SQL.Clear;
    WDM.ZQuery_pross_log.SQL.Add('DELETE FROM pross_log');
    WDM.ZQuery_pross_log.SQL.Add('WHERE pross_date < '''+PrevDate+'''');
    WDM.ZQuery_pross_log.ExecSQL;
    WDM.ZQuery_pross_log.Close;
    WDM.ZQuery_pross_log.SQL.Clear;
    WDM.ZQuery_pross_log.SQL.Add('SELECT * FROM pross_log');
    WDM.ZQuery_pross_log.Open;
    
    WDM.ZQuery_pross_log.Insert;
    WDM.ZQuery_pross_log.FieldByName('crcode').AsString:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
    if fkey='F1' then
      pross:='收件'
    else if fkey='F2' then
      pross:='取件'
    else
      pross:='';
    WDM.ZQuery_pross_log.FieldByName('pross').AsString:=pross;
    WDM.ZQuery_pross_log.FieldByName('pross_date').AsString:=ChinaDate1(date);
    WDM.ZQuery_pross_log.FieldByName('pross_time').AsString:=FormatDateTime('hh:mm:ss',Time);
    WDM.ZQuery_pross_log.Post;
    Result:=True;
  Except
    ShowMessage('執行記錄建立失敗');
    Result:=False;
  end;
end;

procedure TWioGetForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  Panel_Pay.SendToBack;
  Panel_Hold.SendToBack;
  Panel_Discount.SendToBack;
  Panel_History.SendToBack;
  
  lbNowMoney.Caption:='0';
  lbPay.Caption:='0';

  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  LabelWicode.Caption:=strZero(WDM.ZTableCompy.FieldByName('cpwino').AsInteger,6);
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  LabelWisno.Caption:=strZero(WDM.ZTableCompy.FieldByName('cpwisno').AsInteger,wisnod);
  Action_F3Execute(Self);
end;

procedure TWioGetForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(WioGetForm);
  RzPanel2.Color:=WDM.GTCOLOR.Value;
  fkey:='';
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  getitem:=WDM.ZTableCompy.FieldByName('getitem').Value;
  Panel_Pay.Left:=Trunc((Width-Panel_Pay.Width)/2);
  Panel_Pay.Top:=Trunc((Height-Panel_Pay.Height)/2);
  Panel_Hold.Left:=Trunc((Width-Panel_Hold.Width)/2);
  Panel_Hold.Top:=Trunc((Height-Panel_Hold.Height)/2);
  Panel_Discount.Left:=Trunc((Width-Panel_Discount.Width)/2);
  Panel_Discount.Top:=Trunc((Height-Panel_Discount.Height)/2);
  Panel_History.Left:=Trunc((Width-Panel_History.Width)/2);
  Panel_History.Top:=Trunc((Height-Panel_History.Height)/2);
end;

procedure TWioGetForm.Action_F3Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    try
      WDM.rfkey:='';
      QueryCustForm := TQueryCustForm.Create(Application);
      QueryCustForm.ShowModal;
      FreeAndNil(QueryCustForm);
      lbPay.Caption:='0';
      InsertLog();
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    if WDM.ZQuery_cr.RecordCount>0 then
      begin
      GetCust();
      if (WDM.ZQuery_cr.FieldByName('crvip').Value='Y')and(crmoneyVal>0)then
        Image1.Visible:=True
      else
        Image1.Visible:=False;
      CalNotGet();
      end;
      end;
  if WDM.rfkey='CF1' then
    Action_F1Execute(Self);
end;

procedure TWioGetForm.Action_F1Execute(Sender: TObject);
begin
  if (fkey='') and (WDM.ZQuery_cr.RecordCount>0) then
    begin
    try
      fkey:='F1';
      InsertLog();
      WioAddForm := TWioAddForm.Create(Application);
      WioAddForm.ShowModal;
      rfkey:=WioAddForm.rfkey;
      FreeAndNil(WioAddForm);
      WDM.ZQuery_cr.Close;
      WDM.ZQuery_cr.Open;
      GetCust();
      LabelWicode.Caption:=strZero(WDM.ZTableCompy.FieldByName('cpwino').AsInteger,6);
      LabelWisno.Caption:=strZero(WDM.ZTableCompy.FieldByName('cpwisno').AsInteger,wisnod);
      CalNotGet();
      fkey:='';
      //lb_wicode.Caption:='';
      //lb_widate.Caption:='';
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    if rfkey='CF2' then
      Action_F2Execute(Self);
    if rfkey='CF3' then
      Action_F3Execute(Self);
    end
  else
    ShowMessage('請先選擇客戶...');
end;

procedure TWioGetForm.Action_ExitExecute(Sender: TObject);
begin
  if fkey='F2' then
    begin
    RzToolbarButtonEdit.Visible:=True;
    RzToolbarButtonPlace.Visible:=True;
    RzToolbarButtonHold.Visible:=True;
    RzToolbarButtonEdit.Enabled:=True;
    RzToolbarButtonAdd.Visible:=True;
    RzToolbarButtonQuery.Visible:=True;
    RzToolbarButtonVIP.Visible:=True;
    RzToolbarButtonDetail.Visible:=True;
    RzToolbarButtonPay.Visible:=True;
    RzToolbarButtonPay.Caption:='F12.預收款';
    RzToolbarButtonEsc.Caption:='Esc.離開';
    RzToolbarButtonEsc.Width:=90;
    GetMoney.Caption:='0';
    lbNoGet.Caption:='0';
    //lb_wicode.Caption:='';
    //lb_widate.Caption:='';
    CalNotGet();
    end
  else if fkey='F6' then
    begin
    Panel_Discount.SendToBack;
    Edit_Discnt.Text:='0';
    fkey:='';
    end
  else if fkey='F10' then
    begin
    Panel_Hold.SendToBack;
    ZQuery_wio_temp.Close;
    fkey:='';
    end
  else if fkey='F11' then
    begin
    Panel_History.SendToBack;
    fkey:='';
    end
  else if fkey='F12' then
    begin
    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    fkey:='';
    end
  else
    Close;
end;

procedure TWioGetForm.Action_F7Execute(Sender: TObject);
begin
  if (fkey='') and (WDM.ZQuery_cr.RecordCount>0) then
    begin
    try
      WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
      WioDetailForm := TWioDetailForm.Create(Application);
      WioDetailForm.ShowModal;
      FreeAndNil(WioDetailForm);
      WDM.ZQuery_cr.Close;
      WDM.ZQuery_cr.SQL.Clear;
      WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
      WDM.ZQuery_cr.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
      WDM.ZQuery_cr.SQL.Add('AND crmark=''Y''');
      WDM.ZQuery_cr.Open;
      crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
      lbNowMoney.Caption:=FloatToStr(crmoneyVal);
      if crmoneyVal>=0 then
        lbNowMoney.Font.Color:=ClYellow
      else
        lbNowMoney.Font.Color:=ClRed;
      CalNotGet();
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end
  else
    ShowMessage('請先選擇客戶...');
end;

procedure TWioGetForm.Action_F2Execute(Sender: TObject);
begin
  if (WDM.ZQuery_cr.RecordCount>0) then
    begin
    try
      fkey:='F2';
      InsertLog();
      WioGetF2Form := TWioGetF2Form.Create(Application);
      WioGetF2Form.ShowModal;
      rfkey:=WioGetF2Form.rfkey;
      FreeAndNil(WioGetF2Form);
      CalNotGet();
      lbNowMoney.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crmoney').AsFloat);
      lbPay.Caption:='0';
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    if rfkey='CF1' then
      Action_F1Execute(Self);
    if rfkey='CF3' then
      Action_F3Execute(Self);
    end
  else
    ShowMessage('請先選擇客戶...');
end;

procedure TWioGetForm.Action_F10Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    ZQuery_wio_temp.Close;
    ZQuery_wio_temp.Open;
    if ZQuery_wio_temp.RecordCount=0 then
      begin
      ShowMessage('沒有保留的資料！');
      ZQuery_wio_temp.Close;
      end
    else
      begin
      fkey:='F10';
      Panel_Hold.BringToFront;
      wwDBGrid_Hold.SetFocus;
      end;
    end;
end;

procedure TWioGetForm.Action_F8Execute(Sender: TObject);
begin
  if fkey='' then
    try
      WioPlaceForm := TWioPlaceForm.Create(Application);
      WioPlaceForm.ShowModal;
      FreeAndNil(WioPlaceForm);
    except
      on E: Exception do MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetForm.Action_F12Execute(Sender: TObject);
var
  lack: Real;
begin
  if (fkey='') then
    begin
    fkey:='F12';
    Label3.Caption:='預收款';
    //lack:=StrToFloat(lbNowMoney.Caption);
    lack:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
    if lack>=0 then
      LabelP1.Font.Color:=ClWhite
    else
      LabelP1.Font.Color:=ClRed;
    LabelP1.Caption:=FloatToStr(lack);
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    Edit_Pay.SetFocus;
    Panel_Pay.BringToFront;
    MoneyBox(WDM.COMUSE.Value); //錢櫃
    end
  else
    ShowMessage('請先選擇客戶...');
end;

procedure TWioGetForm.Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AddVal, NowVal: Real;
begin
  if (Key=VK_Return) AND (fkey='F12') then
    begin
    fkey:='';
    Panel_Pay.SendToBack; //收款後處理計算
    NowVal:=StrToFloat(lbNowMoney.Caption);
    PayVal:=StrToFloat(Edit_Pay.Text); //付款
    DiscountVal:=StrToFloat(Edit_Discount.Text); //折讓
    TotalVal:=NowVal+PayVal+DiscountVal;
    lbPay.Caption:=FloatToStr(StrToFloat(lbPay.Caption)+StrToFloat(Edit_Pay.Text));
    lbNowMoney.Caption:=FloatToStr(TotalVal);
    if TotalVal>=0 then
      lbNowMoney.Font.Color:=ClYellow
    else
      lbNowMoney.Font.Color:=ClRed;
    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    New_wo();
    Key:=0;
    end;
  if (Key=VK_Up)or(Key=VK_Left) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 1, 0);
    end;
end;

procedure TWioGetForm.Edit_PayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)or(Key=VK_Down)or(Key=VK_Right) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    Edit_Discount.SelectAll;
    end;

end;

procedure TWioGetForm.wwDBGrid_HoldDblClick(Sender: TObject);
var
  crcode: String;
begin
  Panel_Hold.SendToBack;
  WDM.crcode:=ZQuery_wio_temp.FieldByName('crcode').Value;
  WDM.ZQuery_cr.Close;
  WDM.ZQuery_cr.SQL.Clear;
  WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
  WDM.ZQuery_cr.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  WDM.ZQuery_cr.SQL.Add('AND crmark=''Y''');
  WDM.ZQuery_cr.Open;
  ZQuery_wio_temp.Close;
  fkey:='';
  try
      WioAddForm := TWioAddForm.Create(Application);
      WioAddForm.HoldFlag:=True;
      WioAddForm.ShowModal;
      FreeAndNil(WioAddForm);      
      LabelWicode.Caption:=strZero(WDM.ZTableCompy.FieldByName('cpwino').AsInteger,6);
      LabelWisno.Caption:=strZero(WDM.ZTableCompy.FieldByName('cpwisno').AsInteger,wisnod);
      CalNotGet();
      crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
      lbNowMoney.Caption:=FloatToStr(crmoneyVal);      
      if crmoneyVal<0 then
        lbNowMoney.Font.Color:=ClRed
      else
        lbNowMoney.Font.Color:=ClYellow;
      fkey:='';
      //lb_wicode.Caption:='';
      //lb_widate.Caption:='';
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetForm.wwDBGrid_HoldKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
     wwDBGrid_HoldDblClick(Self);
end;

procedure TWioGetForm.Action_F4Execute(Sender: TObject);
begin  
  if (fkey='') and (WDM.ZQuery_cr.RecordCount>0) then
    begin
    try
      WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').Value;
      VIPForm := TVIPForm.Create(Application);
      VIPForm.ShowModal;
      FreeAndNil(VIPForm);
      WDM.ZQuery_cr.Close;
      WDM.ZQuery_cr.Open;
      GetCust();
      if WDM.ZQuery_cr.FieldByName('crvip').Value='Y' then
        Image1.Visible:=True
      else
        Image1.Visible:=False;
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end
  else
    ShowMessage('請先選擇客戶...');    
end;

procedure TWioGetForm.Action_PgDnExecute(Sender: TObject);
begin
  if not WDM.ZQuery_cr.Eof then
    WDM.ZQuery_cr.Next;
end;

procedure TWioGetForm.Action_PgUpExecute(Sender: TObject);
begin
  if not WDM.ZQuery_cr.Bof then
    WDM.ZQuery_cr.Prior;
end;

procedure TWioGetForm.Action_F5Execute(Sender: TObject);
begin
  try
    History3Form := THistory3Form.Create(Application);
    History3Form.ShowModal;
    FreeAndNil(History3Form);
  except
    on E: Exception do
    MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TWioGetForm.Action_F6Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F6';
    Edit_Discnt.Text:=copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1);
    Edit_Discnt.SetFocus;
    Panel_Discount.BringToFront;
    end;
end;

procedure TWioGetForm.Edit_DiscntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    fkey:='';
    Hlbcrpsen.Caption:=Edit_Discnt.Text+'%';
    WDM.ZQuery_cr.Edit;
    WDM.ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit_Discnt.Text);
    WDM.ZQuery_cr.Post;
    Hlbcrpsen.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value)+'%'; //個人折扣
    Panel_Discount.SendToBack;
    Key:=0;
    end;
end;

procedure TWioGetForm.Action_F11Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F11';
    //Panel_History.Visible:=True;
    Panel_History.BringToFront;
    RadioButton1.SetFocus;
    end;
end;

procedure TWioGetForm.RadioButton1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    try
      Panel_History.SendToBack;
      History1Form := THistory1Form.Create(Application);
      History1Form.ShowModal;
      FreeAndNil(History1Form);
      fkey:='';
    except
      on E: Exception do MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetForm.RadioButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  try
      Panel_History.SendToBack;
      History1Form := THistory1Form.Create(Application);
      History1Form.ShowModal;
      FreeAndNil(History1Form);
      fkey:='';
    except
      on E: Exception do MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetForm.RadioButton2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    try
      Panel_History.SendToBack;
      History2Form := THistory2Form.Create(Application);
      History2Form.ShowModal;
      FreeAndNil(History2Form);
      fkey:='';
    except
      on E: Exception do MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetForm.RadioButton2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  try
    Panel_History.SendToBack;
    History2Form := THistory2Form.Create(Application);
    History2Form.ShowModal;
    FreeAndNil(History2Form);
    fkey:='';
  except
    on E: Exception do MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioGetForm.RadioButton3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    try
      Panel_History.SendToBack;
      DailyRepForm := TDailyRepForm.Create(Application);
      DailyRepForm.fstr:='F5';
      DailyRepForm.ShowModal;
      FreeAndNil(DailyRepForm);
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end
    end;
end;

procedure TWioGetForm.RadioButton3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  try
    Panel_History.SendToBack;
    DailyRepForm := TDailyRepForm.Create(Application);
    DailyRepForm.fstr:='F5';
    DailyRepForm.ShowModal;
    FreeAndNil(DailyRepForm);
    fkey:='';
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end
end;

procedure TWioGetForm.ActionCtrlF3Execute(Sender: TObject);
begin
  try
    CustForm := TCustForm.Create(Application);
    CustForm.ShowModal;
    FreeAndNil(CustForm);
    WDM.ZQuery_cr.Close;
    WDM.ZQuery_cr.SQL.Clear;
    WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
    WDM.ZQuery_cr.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    WDM.ZQuery_cr.SQL.Add('AND crmark=''Y''');
    WDM.ZQuery_cr.Open;
    lbNowMoney.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crmoney').AsFloat);
  except
    on E: Exception do
      MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioGetForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='')and(Key=VK_RETURN)and(Length(FBCode)>1) then
    begin
    if SimKB(FBCode) then Key:=0;
    FBCode:='';
    end
  else if (Char(Key)='&')OR(Char(Key)='(')OR(Char(Key)='q') then
    FBCode:=''
  else
    FBCode:=UpperCase(FBCode+Char(Key));
end;

end.
