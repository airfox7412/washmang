unit wio_Detail;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  Wwdbgrid, wwdbedit, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzButton, RzPanel, Jpeg, frxClass,
  frxDBSet, ZConnection, Wwdatsrc, frxDesgn;

type
  TWioDetailForm = class(TForm)
    ZQuery_wio: TZQuery;
    DS_Qwio: TDataSource;
    ActionList1: TActionList;
    Action_Exit: TAction;
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
    ZQuery_wiowiplace: TStringField;
    ZQuery_wiowimark: TStringField;
    ZQuery_wiomark: TStringField;
    ZQuery_wiopps: TIntegerField;
    ZQuery_wioSelected: TIntegerField;
    Panel3_Browse: TPanel;
    wwDBGrid1: TwwDBGrid;
    ZQuery_wiowimdate: TStringField;
    ZQuery_wiowiodate: TStringField;
    ZQuery_wiowiotime: TTimeField;
    ZQuery_wiowidate: TStringField;
    ZQuery_wioindate: TStringField;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonExit: TRzToolbarButton;
    Action_F1: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    Panel_Search: TPanel;
    Label1: TLabel;
    Edit_Query: TEdit;
    Action_F2: TAction;
    Action_F9: TAction;
    Action_F11: TAction;
    RzToolbarButtonF11: TRzToolbarButton;
    ZQuery_wiopicture: TStringField;
    Action_CrtlP: TAction;
    ZQuery: TZQuery;
    RzToolbarButtonCP: TRzToolbarButton;
    Action_PgDn: TAction;
    Action_CF1: TAction;
    Action_CF2: TAction;
    frxDBDataset2: TfrxDBDataset;
    ZQueryF9: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    FloatField2: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField3: TFloatField;
    IntegerField2: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    TimeField1: TTimeField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    ZQueryF9crmoney: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Panel_item: TPanel;
    Panel_wash: TPanel;
    Panel_style: TPanel;
    Panel_acc: TPanel;
    Panel_memo: TPanel;
    ZConnection1: TZConnection;
    RzToolbarButtonF4: TRzToolbarButton;
    Action_F4: TAction;
    PanelWisno: TPanel;
    Label_wisno: TLabel;
    Label23: TLabel;
    EditWisno: TEdit;
    PanelWicode: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    EditWicode: TEdit;
    RzToolbarButtonF3: TRzToolbarButton;
    Action_F3: TAction;
    RzToolbarButtonCtrlF3: TRzToolbarButton;
    Action_CtrlF3: TAction;
    ZQueryWio_change: TZQuery;
    ZQuery_wo: TZQuery;
    RzPanel_Insert: TRzPanel;
    Label_sno: TLabel;
    Label_color: TLabel;
    Label_name: TLabel;
    Label_mothe: TLabel;
    Label_price: TLabel;
    Label_q: TLabel;
    Label_mdate: TLabel;
    Label_sum: TLabel;
    Label_acc: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonSave: TButton;
    Edit_sno: TEdit;
    Edit_item: TEdit;
    Edit_style: TEdit;
    Edit_wash: TEdit;
    Edit_wamo: TEdit;
    Edit_urge: TEdit;
    Edit_mdate: TEdit;
    Edit_quty: TEdit;
    Edit_sum: TEdit;
    Edit_acc: TEdit;
    Edit_memo: TEdit;
    Edit_pps: TEdit;
    Button1: TButton;
    RzPanel_cr: TRzPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    lbAddQuty: TLabel;
    lbAddMoney: TLabel;
    lb_wicode: TLabel;
    lb_widate: TLabel;
    Hlbcrpsen: TLabel;
    Hlbcppsen: TLabel;
    lbNowMoney: TLabel;
    lbPay: TLabel;
    RzPanel_crshow: TRzPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    CrMoneyLabel: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label11: TLabel;
    DBText8: TDBText;
    Label21: TLabel;
    DBText11: TDBText;
    Label22: TLabel;
    DBText12: TDBText;
    Image1: TImage;
    Label12: TLabel;
    DBText9: TDBText;
    LB_item: TListBox;
    LB_memo: TListBox;
    LB_style: TListBox;
    LB_acc: TListBox;
    LB_wash: TListBox;
    DBText10: TDBText;
    Action_Ins: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
    Action_F10: TAction;
    frxReportF10: TfrxReport;
    DBText13: TDBText;
    Label26: TLabel;
    ZQuery_wiocrtelb: TStringField;
    Action_F5: TAction;
    RzToolbarButtonF5: TRzToolbarButton;
    ZQueryF9crtelb: TStringField;
    wwDSCr: TwwDataSource;
    ZQuery_cr: TZQuery;
    frxDesigner1: TfrxDesigner;
    Action_CA1: TAction;
    ZQuery_wiowitime: TTimeField;
    ZQuery_wiowisel: TStringField;
    Label14: TLabel;
    Label_Amount: TLabel;
    ZQuery_temp: TZQuery;
    RzToolbarButtonCF7: TRzToolbarButton;
    Action_CF8: TAction;
    RzPanel_CF7: TRzPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label_crcode: TLabel;
    Label_wicode: TLabel;
    Label31: TLabel;
    Edit_crcode: TEdit;
    Button2: TButton;
    ZQueryChgWio: TZQuery;
    RzToolbarButtonF6: TRzToolbarButton;
    Action_F6: TAction;
    Label30: TLabel;
    lbAddQuty2: TLabel;
    ZQuery_wio_bak: TZQuery;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField4: TFloatField;
    StringField28: TStringField;
    StringField29: TStringField;
    IntegerField3: TIntegerField;
    FloatField5: TFloatField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    FloatField6: TFloatField;
    IntegerField4: TIntegerField;
    StringField34: TStringField;
    TimeField2: TTimeField;
    TimeField3: TTimeField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    LargeintField1: TLargeintField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Edit_QueryChange(Sender: TObject);
    procedure Action_F11Execute(Sender: TObject);
    procedure Action_CrtlPExecute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure Edit_washKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_washEnter(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Edit_itemEnter(Sender: TObject);
    procedure Edit_itemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_itemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleEnter(Sender: TObject);
    procedure Edit_accEnter(Sender: TObject);
    procedure Edit_memoEnter(Sender: TObject);
    procedure Edit_styleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_washKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_accKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_qutyEnter(Sender: TObject);
    procedure Edit_wamoExit(Sender: TObject);
    procedure Edit_wamoEnter(Sender: TObject);
    procedure Edit_urgeEnter(Sender: TObject);
    procedure Edit_mdateEnter(Sender: TObject);
    procedure Edit_urgeChange(Sender: TObject);
    procedure Edit_qutyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_accKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_sumEnter(Sender: TObject);
    procedure Edit_memoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_memoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LB_itemClick(Sender: TObject);
    procedure LB_itemEnter(Sender: TObject);
    procedure LB_styleClick(Sender: TObject);
    procedure LB_washClick(Sender: TObject);
    procedure LB_accClick(Sender: TObject);
    procedure LB_memoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure ZQuery_wioAfterScroll(DataSet: TDataSet);
    procedure EditWisnoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F4Execute(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure EditWicodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CtrlF3Execute(Sender: TObject);
    procedure Edit_qutyExit(Sender: TObject);
    procedure Edit_styleChange(Sender: TObject);
    procedure Action_InsExecute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure Edit_QueryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CA1Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_CF8Execute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit_crcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F6Execute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    Procedure ShowItem();
    Procedure ShowStyle();
    Procedure ShowWash();
    Procedure ShowAcc();
    Procedure ShowMemo();
    Procedure CloseAllPanel();
    Function CalSum(): Boolean;
    Procedure Calwio();
    procedure Edit_wio();
    procedure PrintF9();
    procedure PrintF10();
    Procedure AddDel_wio();
  end;

Function Rounda(Value: Extended; Len: Integer): Extended;

var
  WioDetailForm: TWioDetailForm;

  widate, wimdate, crcode, styleno: String;
  wicode, wisno, cpdayn, cpqday: Integer;
  washpsno: Real;

  OldEditStr: String;
  oldvalue, q_crcode: String;
  HintTop, pcnt, wisnod, picno: Integer;
  fkey, pname: String;
  PayVal, DiscountVal, TotalVal, crmoneyVal: Real;
  ppaa, menuflag, gflag: Boolean;
  sdate, edate, YearStr: String;
  
implementation

uses WDModule, LCUtils, GetCam, ShowPic, PPreview, history3;

{$R *.DFM}

Function Rounda(Value: Extended; Len: Integer): Extended;
begin
  Result:= StrToFloat(Format('%1.'+IntToStr(Len)+'f',[Value]));
end;

procedure TWioDetailForm.AddDel_wio();
begin
  ZQuery_wio_bak.Close;
  ZQuery_wio_bak.SQL.Clear;
  ZQuery_wio_bak.SQL.Add('SELECT * FROM wio_bak');
  ZQuery_wio_bak.Open();
  ZQuery_wio_bak.Insert;
  ZQuery_wio_bak.FieldByName('wicode').Value:=ZQuery_wio.FieldByName('wicode').Value;
  ZQuery_wio_bak.FieldByName('wisno').Value:=ZQuery_wio.FieldByName('wisno').Value;
  ZQuery_wio_bak.FieldByName('crcode').Value:=ZQuery_wio.FieldByName('crcode').Value;
  ZQuery_wio_bak.FieldByName('wiitem').Value:=ZQuery_wio.FieldByName('wiitem').Value;
  ZQuery_wio_bak.FieldByName('winame').Value:=ZQuery_wio.FieldByName('winame').Value;
  ZQuery_wio_bak.FieldByName('wiwash').Value:=ZQuery_wio.FieldByName('wiwash').Value;
  ZQuery_wio_bak.FieldByName('wiacc').Value:=ZQuery_wio.FieldByName('wiacc').Value;
  ZQuery_wio_bak.FieldByName('wimemo').Value:=ZQuery_wio.FieldByName('wimemo').Value;
  ZQuery_wio_bak.FieldByName('wiwamo').Value:=ZQuery_wio.FieldByName('wiwamo').Value;
  ZQuery_wio_bak.FieldByName('wiexkind').Value:=ZQuery_wio.FieldByName('wiexkind').Value;
  ZQuery_wio_bak.FieldByName('wiexmo').Value:=ZQuery_wio.FieldByName('wiexmo').Value;
  ZQuery_wio_bak.FieldByName('wiquty').Value:=ZQuery_wio.FieldByName('wiquty').Value;
  ZQuery_wio_bak.FieldByName('wisum').Value:=ZQuery_wio.FieldByName('wisum').Value;
  ZQuery_wio_bak.FieldByName('wiurge').Value:=ZQuery_wio.FieldByName('wiurge').Value;
  ZQuery_wio_bak.FieldByName('widay').Value:=ZQuery_wio.FieldByName('widay').Value;
  ZQuery_wio_bak.FieldByName('wimdate').Value:=ZQuery_wio.FieldByName('wimdate').Value;
  ZQuery_wio_bak.FieldByName('wiodate').Value:=ZQuery_wio.FieldByName('wiodate').Value;
  ZQuery_wio_bak.FieldByName('wiotime').Value:=ZQuery_wio.FieldByName('wiotime').Value;
  ZQuery_wio_bak.FieldByName('wiplace').Value:=ZQuery_wio.FieldByName('wiplace').Value;
  ZQuery_wio_bak.FieldByName('widate').Value:=ZQuery_wio.FieldByName('widate').Value;
  ZQuery_wio_bak.FieldByName('witime').Value:=ZQuery_wio.FieldByName('witime').Value;
  ZQuery_wio_bak.FieldByName('wimark').AsString:=ZQuery_wio.FieldByName('wimark').AsString+' 明細刪除';
  ZQuery_wio_bak.FieldByName('indate').AsString:=ChinaDate1(Date);//ZQuery_wio.FieldByName('indate').Value;
  ZQuery_wio_bak.FieldByName('mark').Value:=ZQuery_wio.FieldByName('mark').Value;
  ZQuery_wio_bak.FieldByName('pps').Value:=ZQuery_wio.FieldByName('pps').Value;
  ZQuery_wio_bak.FieldByName('picture').Value:=ZQuery_wio.FieldByName('picture').Value;
  ZQuery_wio_bak.Post;
  ZQuery_wio_bak.Close;
end;

Procedure TWioDetailForm.Calwio();
begin
  //計算洗單數量與洗單金額
  ZQuery_temp.Close;
  ZQuery_temp.SQL.Clear;
  ZQuery_temp.SQL.Add('SELECT sum(wiquty)as wioquty,sum(wisum)as wiosum FROM wio');
  ZQuery_temp.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
  ZQuery_temp.Open;
  lbAddQuty.Caption:=IntToStr(ZQuery_temp.FieldByName('wioquty').AsInteger);
  lbAddQuty2.Caption:=IntToStr(ZQuery_temp.FieldByName('wioquty').AsInteger);
  lbAddMoney.Caption:=FloatToStr(ZQuery_temp.FieldByName('wiosum').AsFloat);
  Label_Amount.Caption:=lbAddMoney.Caption;
  ZQuery_temp.Close;
end;

procedure TWioDetailForm.PrintF10();
begin
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio');
  ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
  ZQueryF9.Open;
  try
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF10.preview:=PreviewForm.frxPreview1;
    frxReportF10.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TWioDetailForm.PrintF9();
var
  quty, wamo: Real;
begin
  quty:=0;
  wamo:=0;
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio');
  ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
  ZQueryF9.Open;
  while not ZQueryF9.Eof do
    begin
    quty:=quty+ZQueryF9.FieldByName('wiquty').Value;
    wamo:=wamo+ZQueryF9.FieldByName('wiwamo').Value;
    ZQueryF9.Next;
    end;

  frxReport1.LoadFromFile(WDM.WPath+'Report\DetailReport.rep');
  (frxReport1.FindObject('Memo1')as TfrxMemoView).Text:=FloatToStr(quty)+'件';
  (frxReport1.FindObject('Memo2')as TfrxMemoView).Text:=FloatToStr(wamo);
  (frxReport1.FindObject('Memo3')as TfrxMemoView).Text:='0';
  (frxReport1.FindObject('Memo4')as TfrxMemoView).Text:='0';
  lbNowMoney.Caption:=FloatToStr(ZQuery_cr.FieldByName('crmoney').Value);
  if StrToFloat(lbNowMoney.Caption)>=0 then
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:='0'
  else
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:=lbNowMoney.Caption;
  //frxReport1.ShowReport;
  frxReport1.PrepareReport;
  frxReport1.PrintOptions.ShowDialog := False; //不顯示對話框
  //frxReport1.PrintOptions.Printer := PrinterName; //指定印表機
  frxReport1.Print; //列印
end;

procedure TWioDetailForm.CloseAllPanel();
begin
  Panel_item.SendToBack;
  Panel_style.SendToBack;
  Panel_wash.SendToBack;
  Panel_acc.SendToBack;
  Panel_memo.SendToBack;
end;

procedure TWioDetailForm.ShowItem();
var
  rcnt: Integer;
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waitem');
  ZQuery.SQL.Add('ORDER BY wano3');
  ZQuery.Open;
  
  LB_item.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_item.Items.Add(ZQuery.FieldByName('wano3').AsString+'.'+ZQuery.FieldByName('waitem').AsString+'    ');
    ZQuery.Next;
    end;
  //rcnt:=Trunc(ZQuery.RecordCount/11);
  //LB_item.Columns:=rcnt;
  ZQuery.Close;
  Panel_item.Top:=HintTop;
  Panel_item.Left:=0;
  Panel_item.Width:=795;
  Panel_item.Height:=250;
end;

procedure TWioDetailForm.ShowStyle();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wastyle');
  ZQuery.SQL.Add('ORDER BY wano2');
  ZQuery.Open;

  LB_style.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_style.Items.Add(ZQuery.FieldByName('wano2').AsString+'.'+ZQuery.FieldByName('wastyle').AsString+'    ');
    ZQuery.Next;
    end;
  ZQuery.Close;
  Panel_style.Top:=HintTop;
  Panel_style.Left:=0;
  Panel_style.Width:=795;
  Panel_style.Height:=250;
end;

procedure TWioDetailForm.ShowWash();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wawash');
  ZQuery.SQL.Add('ORDER BY wano6');
  ZQuery.Open;

  LB_wash.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_wash.Items.Add(ZQuery.FieldByName('wano6').AsString+'.'+ZQuery.FieldByName('wawash').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
  Panel_wash.Top:=HintTop;
  Panel_wash.Left:=Edit_wash.Left;
  Panel_wash.Width:=130;
  Panel_wash.Height:=220;
end;

procedure TWioDetailForm.ShowAcc();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waacc');
  ZQuery.SQL.Add('ORDER BY wano4');
  ZQuery.Open;

  LB_acc.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_acc.Items.Add(ZQuery.FieldByName('wano4').AsString+'.'+ZQuery.FieldByName('waacc').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;  

  Panel_acc.Top:=HintTop;
  Panel_acc.Left:=0;
  Panel_acc.Width:=795;
  Panel_acc.Height:=250;
end;

procedure TWioDetailForm.ShowMemo();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wamemo');
  ZQuery.SQL.Add('ORDER BY wano5');
  ZQuery.Open;

  LB_memo.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_memo.Items.Add(ZQuery.FieldByName('wano5').AsString+'.'+ZQuery.FieldByName('wamemo').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
  Panel_memo.Top:=HintTop;
  Panel_memo.Left:=0;
  Panel_memo.Width:=795;
  Panel_memo.Height:=250;
end;

Function TWioDetailForm.CalSum(): Boolean;
var
  am, crpsen, cppsen, sum, psen: Real;
begin
  crpsen:=StrToFloat(copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1))/100;
  cppsen:=StrToFloat(Copy(Hlbcppsen.Caption,1,length(Hlbcppsen.Caption)-1))/100;
  sum:=StrToFloat(Edit_wamo.Text)*StrToFloat(Edit_quty.Text);
  if crpsen>=cppsen then
    psen:=crpsen
  else
    psen:=cppsen;
  if washpsno<>0 then
    psen:=washpsno/100;
  Edit_pps.Text:=FloatToStr(psen*100);
  psen:=1-psen;
  am:=sum*psen;
  Edit_sum.Text:=FloatToStr(Rounda(am,0));
end;

procedure TWioDetailForm.Edit_wio();
var
  price, oldprice, wamo: Real;
  quty, pps: Integer;
  wicode, wisno, datestr, timestr: String;
  fname, wiitem, winame, wiwash, wiurge, wimemo, wiacc, mdate: String;
begin
  wicode:=ZQuery_wio.FieldByName('wicode').AsString;
  wisno:=ZQuery_wio.FieldByName('wisno').AsString;
  wamo:=StrToFloat(Edit_wamo.Text);
  quty:=StrToInt(Edit_quty.Text);
  price:=StrToFloat(Edit_sum.Text);
  wiitem:=Edit_item.Text;
  winame:=Edit_style.Text;
  wiwash:=Edit_wash.Text;
  wiurge:=Edit_urge.Text;
  wimemo:=Edit_memo.Text;
  wiacc:=Edit_acc.Text;
  pps:=StrToInt(Edit_pps.Text);
  mdate:=Edit_mdate.Text;
  fname:=ZQuery_wio.FieldByName('wicode').Value+'_'+Edit_sno.Text+'.jpg';
  oldprice:=ZQuery_wio.FieldByName('wisum').Value;

  ZQuery_wio.Edit;
  ZQuery_wio.FieldByName('wiitem').Value:=wiitem;
  ZQuery_wio.FieldByName('winame').Value:=winame;
  ZQuery_wio.FieldByName('wiwash').Value:=wiwash;
  ZQuery_wio.FieldByName('wiurge').Value:=wiurge;
  ZQuery_wio.FieldByName('wimemo').Value:=wimemo;
  ZQuery_wio.FieldByName('wiacc').Value:=wiacc;
  ZQuery_wio.FieldByName('wiwamo').Value:=wamo;
  ZQuery_wio.FieldByName('wimdate').Value:=mdate;
  ZQuery_wio.FieldByName('wiquty').Value:=quty;
  ZQuery_wio.FieldByName('wisum').Value:=price;
  ZQuery_wio.FieldByName('pps').Value:=pps;
  ZQuery_wio.Post;  //寫入資料庫

  datestr:=ChinaDate1(Date);
  timestr:=FormatDateTime('hh:mm:ss',Time);
  //寫入異動記錄
  ZQueryWio_change.Close;
  ZQueryWio_change.SQL.Clear;
  ZQueryWio_change.SQL.Add('SELECT * FROM wio_change');
  ZQueryWio_change.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQueryWio_change.Open;
  ZQueryWio_change.Insert;
  ZQueryWio_change.FieldByName('crcode').AsString:=WDM.crcode;
  ZQueryWio_change.FieldByName('wicode').AsString:=wicode;
  ZQueryWio_change.FieldByName('wisno').AsString:=wisno;
  ZQueryWio_change.FieldByName('orgmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value;
  ZQueryWio_change.FieldByName('newmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value+oldprice-price;
  ZQueryWio_change.FieldByName('chgdate').AsString:=datestr;
  ZQueryWio_change.FieldByName('chgtime').AsString:=timestr;
  ZQueryWio_change.FieldByName('note').AsString:='明細修改';
  ZQueryWio_change.FieldByName('sfname').AsString:=WDM.loginid;
  ZQueryWio_change.Post;
  ZQueryWio_change.Close;

  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE crcode='''+WDM.crcode+'''';
  ZQuery_wo.Open;
  ZQuery_wo.Insert; //新增記錄
  ZQuery_wo.FieldByName('crcode').Value:=WDM.crcode;
  ZQuery_wo.FieldByName('wicode').Value:=wicode;
  ZQuery_wo.FieldByName('wisno').Value:=wisno;
  ZQuery_wo.FieldByName('wototal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value+oldprice-price;
  ZQuery_wo.FieldByName('woptotal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value;
  ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
  ZQuery_wo.FieldByName('worealmo').AsFloat:=0;
  ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
  ZQuery_wo.FieldByName('widate').Value:=datestr;
  ZQuery_wo.FieldByName('witime').Value:=timestr;
  ZQuery_wo.FieldByName('frgetmo').AsFloat:=0;
  ZQuery_wo.FieldByName('fritem').AsString:='E'; //明細修改
  ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
  ZQuery_wo.Post;
  ZQuery_wo.Close;

  ZQuery_cr.Edit;
  ZQuery_cr.FieldByName('crmoney').Value:=ZQuery_cr.FieldByName('crmoney').Value+oldprice-price;
  ZQuery_cr.Post;
end;

procedure TWioDetailForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (Field.FieldName='wicode') or (Field.FieldName='wisum') then
    begin
    //AFont.Size:=16;
    AFont.Color:=ClYellow;
    end;
  if Field.FieldName='wisno' then
    begin
    if wwDBGrid1.DataSource.DataSet.FieldByName('wiodate').AsString='' then
      AFont.Color:=ClYellow
    else
      if not Highlight then
        AFont.Color:=ClRed;
    end;
  if Field.FieldName='wiquty' then
    Field.Alignment:=taCenter;
  if (Field.FieldName='wiurge') or (Field.FieldName='crcode') then
    begin
    Field.Alignment:=taCenter;
    if Field.Value='Y' then
      begin
      AFont.Color:=ClRed;
      AFont.Style:=[fsBold];
      end
    else
      begin
      AFont.Color:=ClYellow;
      end;
    end;
end;

procedure TWioDetailForm.Action_ExitExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    Panel_Search.SendToBack;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F2' then
    begin
    fkey:='';
    Action_PgDn.Enabled:=False;
    CloseAllPanel();
    RzPanel_Insert.Visible:=False;
    RzPanel_cr.Visible:=False;
    RzPanel_crshow.Visible:=True;
    RzToolbarButtonExit.Caption:='ESC.離開';
    RzToolbarButtonExit.Width:=90;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F3' then
    begin
    fkey:='';
    PanelWicode.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F4' then
    begin
    fkey:='';
    PanelWisno.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='CF7' then
    begin
    fkey:='';
    RzPanel_CF7.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else
    Close;
end;

procedure TWioDetailForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(WioDetailForm);
  ZQuery_wio.Open;
  wwDBGrid1.SetFocus;

  //crcode:=ZQuery_cr.FieldByName('crcode').Value;
  WDM.ZQueryCust.Locate('crcode',vararrayof([WDM.crcode]),[]);
  if WDM.ZQueryCust.FieldByName('crmoney').Value<0 then
    DBText4.Font.Color:=ClRed
  else
    DBText4.Font.Color:=ClYellow;

  fkey:='';
  RzToolbarButtonF1.Visible:=True;
  RzToolbarButtonF2.Visible:=True;
  RzToolbarButtonF9.Visible:=True;
  RzToolbarButtonF11.Visible:=True;
  RzToolbarButtonCP.Visible:=True;

  Panel_Search.Left:=Trunc((Width-Panel_Search.Width)/2);
  Panel_Search.Top:=Trunc((Height-Panel_Search.Height)/2);
  PanelWisno.Left:=Trunc((Width-PanelWisno.Width)/2);
  PanelWisno.Top:=Trunc((Height-PanelWisno.Height)/2);
  PanelWicode.Left:=Trunc((Width-PanelWicode.Width)/2);
  PanelWicode.Top:=Trunc((Height-PanelWicode.Height)/2);
  RzPanel_CF7.Left:=Trunc((Width-RzPanel_CF7.Width)/2);
  RzPanel_CF7.Top:=Trunc((Height-RzPanel_CF7.Height)/2);
  if WDM.fstr='CF7' then
    begin
    WDM.fstr:='';
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE wicode='''+WDM.wicode+'''');
    ZQuery_wio.SQL.Add('order by widate desc, wicode desc, wisno desc');
    ZQuery_wio.Open;
    end;
end;

procedure TWioDetailForm.Action_F1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    Panel_Search.BringToFront;
    Edit_Query.SetFocus;
    end;
end;

procedure TWioDetailForm.Edit_QueryChange(Sender: TObject);
begin
  {
  if fkey='F1' then
    begin
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    ZQuery_wio.SQL.Add('WHERE (wicode like ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR crcode LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR wisno LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR widate LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR wiitem LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR winame LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR wiwash LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR wiacc LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR wiplace LIKE ''%'+Edit_Query.Text+'%''');
    ZQuery_wio.SQL.Add('OR wimemo LIKE ''%'+Edit_Query.Text+'%'')');
    //ZQuery_wio.SQL.Add('AND widate BETWEEN '''+sdate+''' AND '''+edate+'''');
    ZQuery_wio.SQL.Add('order by widate desc, wicode desc, wisno desc');
    ZQuery_wio.Open;
    end;
    }
end;

procedure TWioDetailForm.Action_F11Execute(Sender: TObject);
var
  picPath, prename,code,sno: String;
begin
  if (fkey='') then
    begin
    picPath:=WDM.WPath+'Captures\';
    code:=ZQuery_wio.FieldByName('wicode').Value;
    sno:=ZQuery_wio.FieldByName('wisno').Value;
    prename:=code+'_'+sno+'_';
    try
      pname:=prename+StrZero(picno,2)+'.jpg';
      GetCamForm := TGetCamForm.Create(Application);
      GetCamForm.Caption:=pname;
      GetCamForm.BitBtn2.Enabled:=True;
      GetCamForm.ShowModal;
      FreeAndNil(GetCamForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
  if FileExists(picPath+pname) then
    begin
    Image1.Picture.LoadFromFile(picPath+pname);
    Image1.Visible:=True;
    picno:=picno+1;
    end
  else
    Image1.Visible:=False;
    end;
end;

procedure TWioDetailForm.Action_CrtlPExecute(Sender: TObject);
begin
  if (fkey='') then
    if (ZQuery_wio.FieldByName('picture').AsString<>'') then
      begin
      Image1Click(Self);
      wwDBGrid1.SetFocus;
      end
    else
      ShowMessage('沒有照片！');
end;

procedure TWioDetailForm.Action_F2Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    //if (ZQuery_wio.FieldByName('wiodate').Value='')AND(Pos('*',ZQuery_wio.FieldByName('wiitem').Value)<=0) then
    if (ZQuery_wio.FieldByName('wiodate').Value='') then
      begin
      fkey:='F2';
      Action_PgDn.Enabled:=True;
      menuflag:=False;
      wwDBGrid1.Enabled:=False;
      ZQuery_wio.Edit;
      Edit_sno.Text:=ZQuery_wio.FieldByName('wisno').Value;
      Edit_item.Text:=ZQuery_wio.FieldByName('wiitem').Value;
      Edit_style.Text:=ZQuery_wio.FieldByName('winame').Value;
      Edit_wash.Text:=ZQuery_wio.FieldByName('wiwash').Value;
      Edit_mdate.Text:=ZQuery_wio.FieldByName('wimdate').Value;
      Edit_urge.Text:=ZQuery_wio.FieldByName('wiurge').Value;
      Edit_memo.Text:=ZQuery_wio.FieldByName('wimemo').Value;
      Edit_acc.Text:=ZQuery_wio.FieldByName('wiacc').Value;
      Edit_wamo.Text:=ZQuery_wio.FieldByName('wiwamo').Value;
      Edit_quty.Text:=ZQuery_wio.FieldByName('wiquty').Value;
      Edit_sum.Text:=ZQuery_wio.FieldByName('wisum').Value;
      Edit_pps.Text:=ZQuery_wio.FieldByName('pps').Value;
      RzPanel_crshow.Visible:=False;
      RzPanel_cr.Visible:=True;
      RzPanel_Insert.Visible:=True;
      Edit_item.SetFocus;
      //CloseAllBtn(False);
      RzToolbarButtonExit.Caption:='ESC.離開修改';
      RzToolbarButtonExit.Width:=120;
      crmoneyVal:=ZQuery_cr.FieldByName('crmoney').AsFloat;
      lbNowMoney.Caption:=FloatToStr(crmoneyVal);
      end
    else
      ShowMessage('本件已取件，不可修改！');
    end;
end;

procedure TWioDetailForm.ButtonSaveClick(Sender: TObject);
begin
  CloseAllPanel();
  Edit_wio();
  fkey:='';
  RzPanel_Insert.Visible:=False;
  RzPanel_cr.Visible:=False;
  RzPanel_crshow.Visible:=True;
  RzToolbarButtonExit.Caption:='ESC.離開';
  RzToolbarButtonExit.Width:=90;
  wwDBGrid1.Enabled:=True;
  wwDBGrid1.SetFocus;
end;

procedure TWioDetailForm.Edit_washKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  wamo: Real;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_wash.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_wash.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywawash.Close;
    WDM.ZQuerywawash.ParamByName('wano6').Value:=newvalue;
    WDM.ZQuerywawash.Open;
    if WDM.ZQuerywawash.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywawash.FieldByName('wawash').Value;
      Edit_wash.Text:=OldEditStr+newvalue;
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_wash.Text:=OldEditStr;
      Edit_wash.SetFocus;
      Exit;
      end;
    WDM.ZQuerywawash.Close;
    Try
      // 取得洗法金額
      ZQuery.Close;
      ZQuery.SQL.Clear;
      ZQuery.SQL.Add('SELECT * FROM wawash');
      ZQuery.SQL.Add('WHERE wawash='''+Edit_wash.Text+'''');
      ZQuery.Open;
      inputvalue:=Copy(ZQuery.FieldByName('wano6').Value,2,1);
      ZQuery.Close;
      ZQuery.SQL.Clear;
      ZQuery.SQL.Add('SELECT * FROM wastyle');
      ZQuery.SQL.Add('WHERE wastyle='''+Edit_style.Text+'''');
      ZQuery.Open;
      wamo:=ZQuery.FieldByName('wawsmo'+inputvalue).Value;
      washpsno:=ZQuery.FieldByName('washpsno').Value;
      Edit_wamo.Text:=FloatToStr(wamo);
      WDM.ZQuerywastyle.Close;
    except
      ShowMessage('無此衣物代碼！');
    end;
    //Edit_quty.Text:='1';
    //Edit_urge.Text:='N';
    //Edit_mdate.Text:=ChinaDate1(Date+cpdayn);
    CalSum();
    Edit_sum.SetFocus;
    Key:=0;
    end;
end;

procedure TWioDetailForm.Edit_washEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    ShowWash();
    Panel_wash.BringToFront;
    end;
end;

procedure TWioDetailForm.Image1DblClick(Sender: TObject);
begin
  Action_CrtlPExecute(Self);
end;

procedure TWioDetailForm.Image1Click(Sender: TObject);
begin
  try
    ShowPicForm := TShowPicForm.Create(Application);
    ShowPicForm.PicName:=ZQuery_wio.FieldByName('wicode').AsString+'_'+ZQuery_wio.FieldByName('wisno').AsString+'_';
    ShowPicForm.ShowModal;
    FreeAndNil(ShowPicForm);
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioDetailForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  Panel_Search.SendToBack;
  PanelWisno.SendToBack;
  PanelWicode.SendToBack;
  RzPanel_CF7.SendToBack;

  HintTop:=250;
  CloseAllPanel();
  gflag:=false;
  
  if WDM.ZTableCompy.FieldByName('ppaa').AsString='是' then //顯示片語
    ppaa:=True
  else
    ppaa:=False;
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  //WDM.ZTableCust.Close;
  //WDM.ZTableCust.Open;
  //YearStr:=Copy(ChinaDate1(date),1,3);
  //sdate:=StrZero((StrToInt(YearStr)-1),3)+'/01/01';
  //edate:=YearStr+'/12/31';
  YearStr:=Copy(ChinaDate1(date),1,3);
  sdate:=ChinaDate1(date-WDM.dday.Value);
  edate:=ChinaDate1(date);
  Caption:=Caption+'('+sdate+'-'+edate+')';
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  //ZQuery_wio.SQL.Add('WHERE wicode=''1''');
  ZQuery_wio.SQL.Add('WHERE widate BETWEEN '''+sdate+''' AND '''+edate+'''');
  ZQuery_wio.SQL.Add('AND wiodate=''''');
  ZQuery_wio.SQL.Add('ORDER BY widate DESC, wicode DESC, wisno DESC');
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='DetailF7'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
  if wisnod>=5 then
    begin
    Label_wisno.Caption:='洗號';
    Label23.Caption:='洗號查詢';
    RzToolbarButtonF4.Caption:='F4.洗號查詢';
    Edit_sno.Left:=3;
    Edit_sno.Width:=60;
    end;
  ZQuery_cr.Open;  
end;

procedure TWioDetailForm.Action_F9Execute(Sender: TObject);
var
  bm: TBookMark;
begin
  wwDBGrid1.DataSource.DataSet.DisableControls;
  bm:=ZQuery_wio.GetBookmark;
  PrintF9();
  ZQuery_wio.GotoBookmark(bm);
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

procedure TWioDetailForm.wwDBGrid1RowChanged(Sender: TObject);
var
  crcode, code, sno, picname, picpath: String;
begin
  Calwio(); //計算洗單金額
  WDM.crcode:=ZQuery_wio.FieldByName('crcode').AsString;
  ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);

  crmoneyVal:=ZQuery_cr.FieldByName('crmoney').AsFloat;
  lbNowMoney.Caption:=FloatToStr(crmoneyVal);
  if StrToFloat(lbNowMoney.Caption)>0 then
    lbNowMoney.Font.Color:=ClYellow
  else
    lbNowMoney.Font.Color:=ClRed;
  Hlbcrpsen.Caption:=FloatToStr(ZQuery_cr.FieldByName('crpsen').Value)+'%';
  cpdayn:=WDM.ZTableCompy.FieldByName('cpdayn').Value;
  Hlbcppsen.Caption:=FloatToStr(WDM.ZTableCompy.FieldByName('cppsen').Value)+'%';

  widate:=ChinaDate1(Date);
  wicode:=WDM.ZTableCompy.FieldByName('cpwino').AsInteger;
  wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger;
  wicode:=wicode+1;
  lb_wicode.Caption:=strZero(wicode,6);
  lb_widate.Caption:=widate;

  WDM.ZQueryCust.Locate('crcode',vararrayof([crcode]),[]);
  if WDM.ZQueryCust.FieldByName('crmoney').Value<0 then
    DBText4.Font.Color:=ClRed
  else
    DBText4.Font.Color:=ClYellow;

  crcode:=ZQuery_wio.FieldByName('crcode').AsString;
  code:=ZQuery_wio.FieldByName('wicode').AsString;
  sno:=ZQuery_wio.FieldByName('wisno').AsString;
  picpath:=WDM.WPath+'Captures\';
  picname:=picpath+code+'_'+sno+'_01.jpg';
  picno:=1;
  if fkey='' then
    begin
    if FileExists(picname) then
      begin
      Image1.Picture.LoadFromFile(picname);
      Image1.Visible:=True;
      end
    else
      Image1.Visible:=False;
    end;
end;

procedure TWioDetailForm.Edit_itemEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    ShowItem();
    Panel_item.BringToFront;
    end;
end;

procedure TWioDetailForm.Edit_itemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioDetailForm.Edit_itemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_item.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_item.Text;
  if (length(newvalue)=2) then
    begin
    if IsLeadByteTw(Char(newvalue[1])) then exit;
    WDM.ZQuerywaItem.ParamByName('wano3').Value:=newvalue;
    WDM.ZQuerywaItem.Open;
    if WDM.ZQuerywaItem.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaItem.FieldByName('waitem').Value;
      Edit_item.Text:=OldEditStr+newvalue;
      OldEditStr:=OldEditStr+newvalue;
      if length(OldEditStr)>=6 then
        begin
        Edit_item.Text:=Copy(Edit_item.Text,1,6);
        Perform(WM_NextDlgCtl, 0, 0);
        end;
      end
    else
      begin
      ShowMessage('沒有( '+inputvalue+' )此種代碼！');
      Edit_item.SetFocus;
      Edit_item.Text:=OldEditStr;
      end;
    WDM.ZQuerywaItem.Close;
    end;
end;

procedure TWioDetailForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if RzPanel_Insert.Visible then
    begin
    if (Key=VK_Return) then
        begin
        if (Edit_item.Focused=False)AND(Edit_style.Focused=False)AND(Edit_wash.Focused=False)AND
           (Edit_quty.Focused=False)AND(Edit_acc.Focused=False)AND(Edit_memo.Focused=False) then
          begin
          Perform(WM_NextDlgCtl, 0, 0);
          Key:=0;
          end;
        end;
    if (Key=VK_DOWN)OR(Key=VK_RIGHT) then
        begin
        Perform(WM_NextDlgCtl, 0, 0);
        Key:=0;
        end;
    if ((Key=VK_UP)OR(Key=VK_LEFT))AND(Edit_item.Focused=False) then
        begin
        Perform(WM_NextDlgCtl, 1, 0);
        Key:=0;
        end;
    end;
end;

procedure TWioDetailForm.Edit_styleEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    ShowStyle();
    Panel_style.BringToFront;
    end;
end;

procedure TWioDetailForm.Edit_accEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    ShowAcc();
    Panel_acc.BringToFront;
    menuflag:=False;
    end;
end;

procedure TWioDetailForm.Edit_memoEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    ShowMemo();
    Panel_memo.BringToFront;
    menuflag:=False;
    end;
end;

procedure TWioDetailForm.Edit_styleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioDetailForm.Edit_washKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioDetailForm.Edit_accKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioDetailForm.Edit_styleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue: String;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_style.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_style.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywastyle.Close;
    WDM.ZQuerywastyle.ParamByName('wano2').Value:=newvalue;
    WDM.ZQuerywastyle.Open;
    if WDM.ZQuerywastyle.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywastyle.FieldByName('wastyle').Value;
      Edit_style.Text:=newvalue;
      Perform(WM_NextDlgCtl, 0, 0);
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_style.Text:=OldEditStr;
      Edit_style.SetFocus;
      end;
    WDM.ZQuerywastyle.Close;
    Key:=0;
  end;
end;

procedure TWioDetailForm.Edit_qutyEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioDetailForm.Edit_wamoEnter(Sender: TObject);
begin
  if Edit_style.Text='' then
    begin
    ShowMessage('請輸入衣物名稱！');
    Edit_style.SetFocus;
    end
  else if Edit_wash.Text='' then
    begin
    ShowMessage('請輸入洗法！');
    Edit_wash.SetFocus;
    end
  else
    CloseAllPanel();
end;

procedure TWioDetailForm.Edit_wamoExit(Sender: TObject);
begin
  if Edit_wamo.Text<>'' then
    CalSum();
end;

procedure TWioDetailForm.Edit_urgeEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioDetailForm.Edit_mdateEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioDetailForm.Edit_urgeChange(Sender: TObject);
var
  d, md, dcnt: Integer;
  mdate: TDate;
begin
  mdate:=Date;
  if Edit_urge.Text='Y' then
    begin
    md:=cpqday;
    mdate:=mdate+md;
    if DayOfWeek(mdate)=1 then
      md:=cpqday+1;
    end
  else
    begin
    md:=cpdayn;
    for d:=0 to cpdayn-1 do
      begin
      mdate:=Date+d;
      if DayOfWeek(mdate)=1 then
        md:=md+1;
      end;
    end;
  Edit_mdate.Text:=ChinaDate1(date+md);
end;

procedure TWioDetailForm.Edit_qutyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sum,crpsen,cppsen,psen: Real;
begin
  if (Key=VK_Return) then
    begin
    CalSum(); //計算折扣後小計
    Perform(WM_NextDlgCtl, 0, 0);
    Edit_sum.SelectAll;
    end;
end;

procedure TWioDetailForm.Edit_qutyExit(Sender: TObject);
begin
  CalSum();
end;

procedure TWioDetailForm.Edit_accKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
  if menuflag then
    exit;
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_acc.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_acc.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywaacc.Close;
    WDM.ZQuerywaacc.ParamByName('wano4').Value:=newvalue;
    WDM.ZQuerywaacc.Open;
    if WDM.ZQuerywaacc.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaacc.FieldByName('waacc').Value;
      Edit_acc.Text:=OldEditStr+newvalue;
      Perform(WM_NextDlgCtl, 0, 0);
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_acc.Text:=OldEditStr;
      Edit_acc.SetFocus;
      end;
    WDM.ZQuerywaacc.Close;
    Key:=0;
    end;
end;

procedure TWioDetailForm.Edit_sumEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioDetailForm.Edit_memoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    ButtonSaveClick(Self);
    Key:=0;
    end;
end;

procedure TWioDetailForm.Edit_memoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue: String;
begin
  if menuflag then
    exit;
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_memo.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_memo.Text;
  if (length(newvalue)=2) then
    begin
    if not IsLeadByteTw(Char(newvalue[1])) then
      begin
      WDM.ZQuerywamemo.Close;
      WDM.ZQuerywamemo.ParamByName('wano5').Value:=newvalue;
      WDM.ZQuerywamemo.Open;
      if WDM.ZQuerywamemo.RecordCount>0 then
        begin
        newvalue:=WDM.ZQuerywamemo.FieldByName('wamemo').Value;
        Edit_memo.Text:=OldEditStr+newvalue;
        end
      else
        begin
        ShowMessage('沒有( '+newvalue+' )此種代碼！');
        Edit_memo.Text:=OldEditStr;
        Edit_memo.SetFocus;
        end;
      end
    else
      Edit_memo.Text:=OldEditStr+newvalue;
    WDM.ZQuerywamemo.Close;
    Key:=0;
    //ButtonSaveClick(Self);
    end;
end;

procedure TWioDetailForm.LB_itemClick(Sender: TObject);
var
  l: Integer;
  allStr: String;
begin
  l:=Length(LB_item.Items.Strings[LB_item.ItemIndex])-3;
  allStr:=Edit_item.Text+Trim(SubStr(LB_item.Items.Strings[LB_item.ItemIndex],4,l));
  if Length(allStr)<6 then
    Edit_item.Text:=allStr;
  if Length(allStr)>=6 then
    begin
    Edit_item.Text:=Copy(allStr,1,6);
    Edit_style.SetFocus;
    end;
end;

procedure TWioDetailForm.LB_itemEnter(Sender: TObject);
begin
  if fkey='F2' then
    Edit_item.Text:='';
end;

procedure TWioDetailForm.LB_styleClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(LB_style.Items.Strings[LB_style.ItemIndex])-3;
  Edit_style.Text:=SubStr(LB_style.Items.Strings[LB_style.ItemIndex],4,l);
  Edit_wash.SetFocus;
end;

procedure TWioDetailForm.LB_washClick(Sender: TObject);
var
  l: Integer;
  ivalue: String;
begin
  ivalue:=SubStr(LB_wash.Items.Strings[LB_wash.ItemIndex],1,2);
  l:=Length(LB_wash.Items.Strings[LB_wash.ItemIndex])-3;
  Edit_wash.Text:=SubStr(LB_wash.Items.Strings[LB_wash.ItemIndex],4,l);
  // 取得洗法金額
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wawash');
  ZQuery.SQL.Add('WHERE wawash='''+Edit_wash.Text+'''');
  ZQuery.Open;
  ivalue:=Copy(ZQuery.FieldByName('wano6').Value,2,1);

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wastyle');
  ZQuery.SQL.Add('WHERE wastyle='''+Edit_style.Text+'''');
  ZQuery.Open;
  Edit_wamo.Text:=FloatToStr(ZQuery.FieldByName('wawsmo'+ivalue).Value);
  washpsno:=ZQuery.FieldByName('washpsno').Value;
  //Edit_quty.Text:='1';
  // Edit_urge.Text:='N';
  //Edit_mdate.Text:=ChinaDate1(Date+cpdayn);
  WDM.ZQuerywastyle.Close;
  CalSum();
  Edit_sum.SetFocus;
  Edit_sum.SelectAll;
end;

procedure TWioDetailForm.LB_accClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(LB_acc.Items.Strings[LB_acc.ItemIndex])-3;
  Edit_acc.Text:=SubStr(LB_acc.Items.Strings[LB_acc.ItemIndex],4,l);
  Edit_memo.SetFocus;
end;

procedure TWioDetailForm.LB_memoClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(LB_memo.Items.Strings[LB_memo.ItemIndex])-3;
  Edit_memo.Text:=SubStr(LB_memo.Items.Strings[LB_memo.ItemIndex],4,l);
  ButtonSaveClick(Self);
end;

procedure TWioDetailForm.Button1Click(Sender: TObject);
begin
  try
    pname:=lb_wicode.Caption+'_'+Edit_sno.Text+'.jpg';
    GetCamForm := TGetCamForm.Create(Application);
    GetCamForm.Caption:=pname;
    GetCamForm.BitBtn2.Enabled:=True;
    GetCamForm.ShowModal;
    FreeAndNil(GetCamForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioDetailForm.Action_PgDnExecute(Sender: TObject);
begin
  if fkey='F2' then
    begin
    ButtonSaveClick(Self);
    Action_PgDn.Enabled:=False;
    end;
end;

procedure TWioDetailForm.ZQuery_wioAfterScroll(DataSet: TDataSet);
begin
{  if ZQuery_cr.FieldByName('crmoney').AsFloat>=0 then
    DBText4.Font.Color:=ClYellow
  else
    DBText4.Font.Color:=ClRed;}
end;

procedure TWioDetailForm.EditWisnoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  wisno: String;
begin
  if (Key=VK_Return)and(EditWisno.Text<>'') then
    begin
    Key:=0;
    //wisno:=StrZero(StrToInt(EditWisno.Text),wisnod);
    wisno:=EditWisno.Text;
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE wisno like ''%'+wisno+'%''');
    //ZQuery_wio.SQL.Add('AND widate BETWEEN '''+sdate+''' AND '''+edate+'''');
    ZQuery_wio.SQL.Add('order by widate desc, wicode desc, wisno desc');
    ZQuery_wio.Open;
    PanelWisno.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    fkey:='';
    end;
end;

procedure TWioDetailForm.Action_F4Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F4';
    EditWisno.Text:='';
    EditWisno.SetFocus;
    EditWisno.SelectAll;
    PanelWisno.BringToFront;
    end;
end;

procedure TWioDetailForm.Action_F3Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F3';
    EditWicode.Text:='';
    EditWicode.SetFocus;
    EditWicode.SelectAll;
    PanelWicode.BringToFront;
    end;
end;

procedure TWioDetailForm.EditWicodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  wicode: String;
begin
  if (Key=VK_Return)and(EditWicode.Text<>'') then
    begin
    Key:=0;
    wicode:=StrZero(StrToInt(EditWicode.Text),6);
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE wicode='''+wicode+'''');
    //ZQuery_wio.SQL.Add('AND widate BETWEEN '''+sdate+''' AND '''+edate+'''');
    ZQuery_wio.SQL.Add('order by widate desc, wicode desc, wisno desc');
    ZQuery_wio.Open;
    PanelWicode.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    fkey:='';
    end;
end;

procedure TWioDetailForm.Action_CtrlF3Execute(Sender: TObject);
var
  msg: String;
  wicode, wisno, datestr, timestr: String;
  oldprice: Real;
begin
  if ZQuery_wio.FieldByName('wiodate').AsString='' then
    begin
    msg:='確定刪除此件('+ZQuery_wio.FieldByName('wisno').AsString+')資料？';
    if IDYES=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
      begin
      AddDel_wio();
      wicode:=ZQuery_wio.FieldByName('wicode').AsString;
      wisno:=ZQuery_wio.FieldByName('wisno').AsString;
      oldprice:=ZQuery_wio.FieldByName('wisum').Value;
      datestr:=ChinaDate1(Date);
      timestr:=FormatDateTime('hh:mm:ss',Time);
      //寫入異動記錄
      ZQueryWio_change.Close;
      ZQueryWio_change.SQL.Clear;
      ZQueryWio_change.SQL.Add('SELECT * FROM wio_change');
      ZQueryWio_change.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
      ZQueryWio_change.Open;
      ZQueryWio_change.Insert;
      ZQueryWio_change.FieldByName('crcode').AsString:=WDM.crcode;
      ZQueryWio_change.FieldByName('wicode').AsString:=wicode;
      ZQueryWio_change.FieldByName('wisno').AsString:=wisno;
      ZQueryWio_change.FieldByName('orgmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value;
      ZQueryWio_change.FieldByName('newmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value+oldprice;
      ZQueryWio_change.FieldByName('chgdate').AsString:=datestr;
      ZQueryWio_change.FieldByName('chgtime').AsString:=timestr;
      ZQueryWio_change.FieldByName('note').AsString:='明細刪除';
      ZQueryWio_change.FieldByName('sfname').AsString:=WDM.loginid;
      ZQueryWio_change.Post;
      ZQueryWio_change.Close;

      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE crcode='''+WDM.crcode+'''';
      ZQuery_wo.Open;
      ZQuery_wo.Insert; //新增記錄
      ZQuery_wo.FieldByName('crcode').Value:=WDM.crcode;
      ZQuery_wo.FieldByName('wicode').Value:=wicode;
      ZQuery_wo.FieldByName('wisno').Value:=wisno;
      ZQuery_wo.FieldByName('wototal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value+oldprice;
      ZQuery_wo.FieldByName('woptotal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value;
      //ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
      //ZQuery_wo.FieldByName('worealmo').AsFloat:=oldprice;
      //ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
      ZQuery_wo.FieldByName('widate').Value:=datestr;
      ZQuery_wo.FieldByName('witime').Value:=timestr;
      //ZQuery_wo.FieldByName('frgetmo').AsFloat:=0;
      ZQuery_wo.FieldByName('fritem').AsString:='D'; //明細刪除
      ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
      ZQuery_wo.Post;
      ZQuery_wo.Close;

      ZQuery_cr.Edit;
      ZQuery_cr.FieldByName('crmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').AsFloat+oldprice;
      ZQuery_cr.Post;
      DeleteFile(PChar(WDM.WPath+'Captures\'+ZQuery_wio.FieldByName('wicode').AsString+'_'+ZQuery_wio.FieldByName('wisno').AsString+'*.jpg'));
      ZQuery_wio.Delete;
      end;
    end
  else
    ShowMessage('已取件無法刪除！');
end;

procedure TWioDetailForm.Edit_styleChange(Sender: TObject);
begin
  Edit_wash.Text:='';
end;

procedure TWioDetailForm.Action_InsExecute(Sender: TObject);
begin
  if Edit_acc.Focused then
    begin
    menuflag:=not menuflag;
    if menuflag then
      Panel_acc.SendToBack
    else
      Panel_acc.BringToFront;
    end
  else if Edit_memo.Focused then
    begin
    menuflag:=not menuflag;
    if menuflag then
      Panel_memo.SendToBack
    else
      Panel_memo.BringToFront;
    end;
end;

procedure TWioDetailForm.Action_F10Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F10';
    PrintF10();
    fkey:='';
    end;
end;

procedure TWioDetailForm.Action_F5Execute(Sender: TObject);
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

procedure TWioDetailForm.Edit_QueryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i,l,a,j: integer;
  sarray: array of string;
begin
  if (fkey='F1')and(Key=VK_Return) then
    begin
    fkey:='';
    Panel_Search.SendToBack;
    a:=1;
    l:=length(Edit_Query.Text);
    for i:=0 to l-1 do
      begin
      if copy(Edit_Query.Text,i,1)='+' then
      a:=a+1;
      end;
    SetLength(sarray, a);
    a:=0;
    j:=0;
    for i:=0 to l-1 do
      begin
      if copy(Edit_Query.Text,i,1)='+' then
        begin
        sarray[a]:=copy(Edit_Query.Text,j,i-1);
        j:=i+1;
        a:=a+1;
        end;
      end;
    sarray[a]:=copy(Edit_Query.Text,j,i-1);
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    ZQuery_wio.SQL.Add('WHERE ');
    if a=1 then
      begin
      ZQuery_wio.SQL.Add('(wiitem LIKE ''%'+sarray[0]+'%''');
      ZQuery_wio.SQL.Add('AND winame LIKE ''%'+sarray[1]+'%'')');
      end
    else
      begin
      ZQuery_wio.SQL.Add('(wiitem LIKE ''%'+sarray[0]+'%''');
      ZQuery_wio.SQL.Add('OR winame LIKE ''%'+sarray[0]+'%'')');
      end;
    ZQuery_wio.SQL.Add('order by widate desc, wicode desc, wisno desc');
    ZQuery_wio.Open;

    Edit_Query.Text:='';
    Key:=0;
    end;
end;

procedure TWioDetailForm.Action_CA1Execute(Sender: TObject);
begin
  frxReport1.LoadFromFile(WDM.WPath+'Report\DetailReport.rep');
  frxReport1.DesignReport;
end;

procedure TWioDetailForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WDM.crcode:=ZQuery_wio.FieldByName('crcode').AsString;
end;

procedure TWioDetailForm.Action_CF8Execute(Sender: TObject);
begin
  fkey:='CF7';
  Label_crcode.Caption:=ZQuery_wio.FieldByName('crcode').AsString+' '+ZQuery_cr.FieldByName('crname').AsString;
  Label_wicode.Caption:=ZQuery_wio.FieldByName('wicode').AsString;
  RzPanel_CF7.BringToFront;
  Edit_crcode.SetFocus;
end;

procedure TWioDetailForm.Edit_crcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newCr: String;
begin
  if (Key=VK_Return)and(Edit_crcode.Text<>'') then
    begin
    Key:=0;
    newCr:=StrZero(StrToInt(Edit_crcode.Text),5);
    Edit_crcode.Text:=newCr;
    Button2.SetFocus;
    end;
end;

procedure TWioDetailForm.Button2Click(Sender: TObject);
var
  newCr,oldCr,oldWicode: String;
  datestr,timestr: String;
  awisum: Real;
begin
  if Edit_crcode.Text<>'' then
    begin
    fkey:='';
    oldCr:=ZQuery_wio.FieldByName('crcode').AsString;
    oldWicode:=ZQuery_wio.FieldByName('wicode').AsString;
    newCr:=Edit_crcode.Text;
    awisum:=0;
    ZQueryChgWio.Close;
    ZQueryChgWio.SQL.Clear;
    ZQueryChgWio.SQL.Add('SELECT crcode,wicode,wisum FROM wio ');
    ZQueryChgWio.SQL.Add('WHERE wicode='''+oldWicode+'''');
    ZQueryChgWio.Open;
    While not ZQueryChgWio.Eof do
      begin
      ZQueryChgWio.Edit;
      ZQueryChgWio.FieldByName('crcode').AsString:=newCr;
      awisum:=awisum+ZQueryChgWio.FieldByName('wisum').AsFloat;
      ZQueryChgWio.Post;
      ZQueryChgWio.Next;
      end;
    ZQueryChgWio.Close;
  
    datestr:=ChinaDate1(Date);
    timestr:=FormatDateTime('hh:mm:ss',Time);
    ZQuery_cr.Locate('crcode',vararrayof([oldCr]),[]);
    ZQuery_cr.Edit;
    ZQuery_cr.FieldByName('crmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').AsFloat+awisum;
    ZQuery_cr.Post;
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE crcode='''+oldCr+'''';
    ZQuery_wo.Open;
    ZQuery_wo.Insert; //新增記錄
    ZQuery_wo.FieldByName('crcode').Value:=oldCr;
    ZQuery_wo.FieldByName('wicode').Value:=oldWicode;
    ZQuery_wo.FieldByName('wisno').Value:='';
    ZQuery_wo.FieldByName('wototal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value;
    ZQuery_wo.FieldByName('woptotal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value-awisum;
    ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
    ZQuery_wo.FieldByName('worealmo').AsFloat:=0;
    ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
    ZQuery_wo.FieldByName('widate').Value:=datestr;
    ZQuery_wo.FieldByName('witime').Value:=timestr;
    ZQuery_wo.FieldByName('frgetmo').AsFloat:=-awisum;
    ZQuery_wo.FieldByName('fritem').AsString:='T'; //客戶轉移修改
    ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
    ZQuery_wo.Post;

    ZQuery_cr.Locate('crcode',vararrayof([newCr]),[]);
    ZQuery_cr.Edit;
    ZQuery_cr.FieldByName('crmoney').AsFloat:=ZQuery_cr.FieldByName('crmoney').AsFloat-awisum;
    ZQuery_cr.Post;
    ZQuery_wo.Insert; //新增記錄
    ZQuery_wo.FieldByName('crcode').Value:=newCr;
    ZQuery_wo.FieldByName('wicode').Value:=oldWicode;
    ZQuery_wo.FieldByName('wisno').Value:='';
    ZQuery_wo.FieldByName('wototal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value;
    ZQuery_wo.FieldByName('woptotal').AsFloat:=ZQuery_cr.FieldByName('crmoney').Value+awisum;
    ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
    ZQuery_wo.FieldByName('worealmo').AsFloat:=0;
    ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
    ZQuery_wo.FieldByName('widate').Value:=datestr;
    ZQuery_wo.FieldByName('witime').Value:=timestr;
    ZQuery_wo.FieldByName('frgetmo').AsFloat:=awisum;
    ZQuery_wo.FieldByName('fritem').AsString:='T'; //客戶轉移修改
    ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
    ZQuery_wo.Post;
    RzPanel_CF7.SendToBack;
    ShowMessage('洗單轉移客戶處理完畢！');
    end
  else
    Edit_crcode.SetFocus;  
  ZQuery_wio.Close;
  ZQuery_wio.Open;
  wwDBGrid1.SetFocus;
end;

procedure TWioDetailForm.Action_F6Execute(Sender: TObject);
begin
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE widate BETWEEN '''+sdate+''' AND '''+edate+'''');
  if gflag=false then
    begin
    Action_F6.Caption:='F6.未取';
    WioDetailForm.Caption:='衣物收件明細-全部';
    end
  else
    begin
    ZQuery_wio.SQL.Add('AND wiodate=''''');
    WioDetailForm.Caption:='衣物收件明細-未取';
    Action_F6.Caption:='F6.全部';
    end;

  ZQuery_wio.SQL.Add('ORDER BY widate DESC, wicode DESC, wisno DESC');
  ZQuery_wio.Open;                         
  Caption:=Caption+'('+sdate+'-'+edate+')';
  gflag:=not gflag;
end;

end.
