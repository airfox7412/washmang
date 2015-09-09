unit wio_Add_new;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids,
  ComCtrls, Buttons, Dialogs, Wwdbigrd, Wwdbgrid,
  ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset, DosMove,
  ImgList, ZAbstractTable, Math, RzButton, RzPanel, MovePanel, ZConnection,
  frxClass, frxDBSet, frxBarcode;

type
  TWioAddForm = class(TForm)
    ZQuery_wio_temp: TZQuery;
    DS_Qwio_temp: TDataSource;
    ActionList1: TActionList;
    Action_Exit: TAction;
    ZQuery_wio_tempwicode: TStringField;
    ZQuery_wio_tempwisno: TStringField;
    ZQuery_wio_tempcrcode: TStringField;
    ZQuery_wio_tempwiname: TStringField;
    ZQuery_wio_tempwiitem: TStringField;
    ZQuery_wio_tempwiacc: TStringField;
    ZQuery_wio_tempwimemo: TStringField;
    ZQuery_wio_tempwiwash: TStringField;
    ZQuery_wio_tempwiwamo: TFloatField;
    ZQuery_wio_tempwiexkind: TStringField;
    ZQuery_wio_tempwiexmo: TFloatField;
    ZQuery_wio_tempwiquty: TIntegerField;
    ZQuery_wio_tempwisum: TFloatField;
    ZQuery_wio_tempwiurge: TStringField;
    ZQuery_wio_tempwiday: TStringField;
    ZQuery_wio_tempwimdate: TStringField;
    ZQuery_wio_tempwiodate: TStringField;
    ZQuery_wio_tempwiotime: TTimeField;
    ZQuery_wio_tempwiplace: TStringField;
    ZQuery_wio_tempwidate: TStringField;
    ZQuery_wio_tempwimark: TStringField;
    ZQuery_wio_tempindate: TStringField;
    ZQuery_wio_tempmark: TStringField;
    Panel_Browse: TPanel;
    Panel_Insert: TPanel;
    Label_sno: TLabel;
    Label_color: TLabel;
    Label_name: TLabel;
    Label_mothe: TLabel;
    Label_price: TLabel;
    Label_q: TLabel;
    Label_mdate: TLabel;
    Label_sum: TLabel;
    Label_acc: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel_item: TPanel;
    Panel_style: TPanel;
    Panel_wash: TPanel;
    RG_wash: TRadioGroup;
    Panel_acc: TPanel;
    RG_acc: TRadioGroup;
    ZTable_acc: TZTable;
    Panel_cr: TPanel;
    Action_F1: TAction;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    CrMoneyLabel: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Action_F2: TAction;
    Panel_memo: TPanel;
    ZTable_memo: TZTable;
    ZQuery: TZReadOnlyQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonExit: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    Action_F12: TAction;
    RzToolbarButtonF12: TRzToolbarButton;
    Action_F9: TAction;
    Action_F5: TAction;
    RzToolbarButtonF5: TRzToolbarButton;
    lbAddQuty: TLabel;
    lbAddMoney: TLabel;
    lb_wicode: TLabel;
    lb_widate: TLabel;
    ZQuery_wo: TZQuery;
    ScrollBox1: TScrollBox;
    RG_item: TRadioGroup;
    ScrollBox2: TScrollBox;
    RG_style: TRadioGroup;
    Hlbcrpsen: TLabel;
    Hlbcppsen: TLabel;
    Panel_Pay: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LabelP1: TLabel;
    LabelP2: TLabel;
    Edit_Pay: TEdit;
    Edit_Discount: TEdit;
    ButtonSave: TButton;
    lbNowMoney: TLabel;
    lbPay: TLabel;
    Action_F3: TAction;
    RzToolbarButtonF3: TRzToolbarButton;
    ScrollBox3: TScrollBox;
    RG_memo: TRadioGroup;
    Action_F10: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
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
    ZQuery_wio_temppps: TIntegerField;
    Button1: TButton;
    ZQuery_wio_tempsno: TLargeintField;
    ZQuery_wio_temppicture: TStringField;
    Action_F4: TAction;
    Action_PgDn: TAction;
    RzToolbarButtonF4: TRzToolbarButton;
    Panel_EXKind: TPanel;
    Label11: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Edit_exkind: TEdit;
    Edit_exkp: TEdit;
    Panel_Ex: TPanel;
    RG_ExKind: TRadioGroup;
    RzToolbarButtonCF2: TRzToolbarButton;
    Action_CtrlF2: TAction;
    Action_CtrlF3: TAction;
    RzToolbarButtonCF3: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    Image1: TImage;
    RzToolbarButtonCP: TRzToolbarButton;
    Action_CP: TAction;
    ZQuery_wio_tempcrname: TStringField;
    ZQuery_wio_tempcrtel: TStringField;
    ZQuery_wio_tempcradr: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
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
    frxBarCodeObject1: TfrxBarCodeObject;
    ZQueryF9crmoney: TFloatField;
    ZQuery_wowiosn: TLargeintField;
    ZQuery_wocrcode: TStringField;
    ZQuery_wowicode: TStringField;
    ZQuery_wowototal: TFloatField;
    ZQuery_wowoptotal: TFloatField;
    ZQuery_woworealmo: TFloatField;
    ZQuery_wofrgetmo: TFloatField;
    ZQuery_wowocntmo: TFloatField;
    ZQuery_wowopsen: TFloatField;
    ZQuery_wowidate: TStringField;
    ZQuery_wowitime: TStringField;
    ZQuery_wosfname: TStringField;
    ZQuery_wofritem: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RG_itemClick(Sender: TObject);
    procedure RG_styleClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure RG_washClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_PayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F12Execute(Sender: TObject);
    procedure RG_accClick(Sender: TObject);
    procedure RG_memoClick(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure Edit_itemEnter(Sender: TObject);
    procedure Edit_itemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleEnter(Sender: TObject);
    procedure Edit_washEnter(Sender: TObject);
    procedure Edit_wamoEnter(Sender: TObject);
    procedure Edit_wamoExit(Sender: TObject);
    procedure Edit_urgeEnter(Sender: TObject);
    procedure Edit_mdateEnter(Sender: TObject);
    procedure Edit_qutyEnter(Sender: TObject);
    procedure Edit_qutyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_sumEnter(Sender: TObject);
    procedure Edit_accEnter(Sender: TObject);
    procedure Edit_accKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_memoEnter(Sender: TObject);
    procedure RzToolbarButtonF5Click(Sender: TObject);
    procedure RzToolbarButtonF9Click(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit_itemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_washKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_snoEnter(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure Edit_accKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_memoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkindEnter(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure Edit_exkindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkpEnter(Sender: TObject);
    procedure RG_ExKindClick(Sender: TObject);
    procedure Edit_memoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CtrlF2Execute(Sender: TObject);
    procedure Action_CtrlF3Execute(Sender: TObject);
    procedure Edit_washKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleChange(Sender: TObject);
    procedure RG_itemEnter(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ZQuery_wio_tempAfterScroll(DataSet: TDataSet);
    procedure Action_CPExecute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
    Function New_wo(): Boolean;
    Procedure CloseAllPanel();
    procedure SetSql_wio_temp();
    Function CalAddwio_temp(): Boolean;
    Function ShowItem(): Boolean;
    Function ShowStyle(): Boolean;
    Function ShowWash(): Boolean;
    Function ShowAcc(): Boolean;
    Function ShowMemo(): Boolean;
    Function ShowExKind(): Boolean;
    Function CalSum(): Boolean;
    Function WriteToWio(): Boolean;
    Function Add_wio_temp(): Boolean;
    Function Insert_wio_temp(): Boolean;
    Function Edit_wio_temp(): Boolean;
    Function Append_wio_temp(): Boolean;
    Function CloseAllBtn(flag: Boolean): Boolean;
    Function SaveWio_Temp(): Boolean;
    Function WriteWisno(): Boolean;
    Function RenewWisno(): Boolean;
  public
    { public declarations }
    HoldFlag: Boolean;
    rfkey: String;
  end;

var
  WioAddForm: TWioAddForm;
  widate, crcode, styleno: String;
  wicode, wisno, cpdayn: Integer;
  washpsno: Real;

  Tb2_Bookmark: String;
  //OldEditStr: Array of String;
  OldEditStr: String;

  oldvalue, q_crcode: String;
  pflag: Boolean;
  HintTop, pcnt: Integer;
  fkey, pname: String;
  PayVal, DiscountVal, TotalVal, crmoneyVal: Real;

implementation

uses WDModule, lcutils, GetCam, ShowPic;

{$R *.DFM}

Function TWioAddForm.CloseAllBtn(flag: Boolean): Boolean;
begin
  RzToolbarButtonF1.Visible:=flag;
  RzToolbarButtonF2.Visible:=flag;
  RzToolbarButtonF3.Visible:=flag;
  RzToolbarButtonF4.Visible:=flag;
  RzToolbarButtonF5.Visible:=flag;
  RzToolbarButtonF9.Visible:=flag;
  RzToolbarButtonF10.Visible:=flag;
  RzToolbarButtonF12.Visible:=flag;
  RzToolbarButtonCF2.Visible:=flag;
  RzToolbarButtonCF3.Visible:=flag;
  RzToolbarButtonCP.Visible:=flag;
end;

Function TWioAddForm.WriteWisno(): Boolean;
begin
  wisno:=wisno+1;
  if wisno>9999 then wisno:=1; //大於9999歸為1
end;

Function TWioAddForm.RenewWisno(): Boolean;
var
  fpath, oldpic, newpic: String;
begin
  fpath:=ExtractFilePath(Application.ExeName)+'Captures\';
  ZQuery_wio_temp.Close;
  ZQuery_wio_temp.SQL.Clear;
  ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
  ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQuery_wio_temp.SQL.Add('AND wicode='''+strZero(wicode,6)+'''');
  ZQuery_wio_temp.SQL.Add('ORDER BY sno');
  ZQuery_wio_temp.Open;
  wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger+1;
  ZQuery_wio_temp.First;
  while not ZQuery_wio_temp.Eof do
    begin
    oldpic:=ZQuery_wio_temp.FieldByName('picture').AsString;
    ZQuery_wio_temp.Edit;
    ZQuery_wio_temp.FieldByName('wisno').AsString:=strZero(wisno,4);
    newpic:=ZQuery_wio_temp.FieldByName('wicode').AsString+'_'+ZQuery_wio_temp.FieldByName('wisno').AsString+'.jpg';
    if oldpic<>'' then
      begin
      RenameFile(fpath+oldpic, fpath+newpic); //變更照片檔案名稱
      ZQuery_wio_temp.FieldByName('picture').AsString:=newpic;
      end;
    ZQuery_wio_temp.Post;
    WriteWisno();
    ZQuery_wio_temp.Next;
    end;
end;

Function TWioAddForm.Insert_wio_temp(): Boolean;
var
  price: Real;
  i, wamo, quty, pps: Integer;
  fname, wiitem, winame, wiwash, wiurge, wimemo, wiacc, mdate: String;
begin
  wamo:=StrToInt(Edit_wamo.Text);
  quty:=StrToInt(Edit_quty.Text);
  CalSum(); //計算折扣後小計
  price:=Round((StrToFloat(Edit_sum.Text)+0.5)/quty);
  wiitem:=Edit_item.Text;
  winame:=Edit_style.Text;
  wiwash:=Edit_wash.Text;
  wiurge:=Edit_urge.Text;
  wimemo:=Edit_memo.Text;
  wiacc:=Edit_acc.Text;
  pps:=StrToInt(Edit_pps.Text);
  mdate:=Edit_mdate.Text;
  fname:=strZero(wicode,6)+'_'+Edit_sno.Text+'.jpg';
  wisno:=StrToInt(Edit_sno.Text);
  if StrToInt(Edit_quty.Text)>1 then // 判斷有無展開
     begin
     for i:=1 to quty do
       begin
       ZQuery_wio_temp.Insert;
       ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
       ZQuery_wio_temp.FieldByName('crcode').Value:=crcode;
       ZQuery_wio_temp.FieldByName('wisno').Value:=strZero(wisno,4);
       ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
       ZQuery_wio_temp.FieldByName('winame').Value:=winame;
       ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
       ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
       ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
       ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
       ZQuery_wio_temp.FieldByName('wiwamo').Value:=wamo;
       ZQuery_wio_temp.FieldByName('wiquty').Value:=1;
       ZQuery_wio_temp.FieldByName('wisum').Value:=price;
       ZQuery_wio_temp.FieldByName('pps').Value:=pps;
       ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
       ZQuery_wio_temp.FieldByName('wimdate').Value:=mdate;
       ZQuery_wio_temp.Post;
       WriteWisno();
       end;
     end
   else
     begin
     ZQuery_wio_temp.Insert;
     ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
     ZQuery_wio_temp.FieldByName('crcode').Value:=crcode;
     ZQuery_wio_temp.FieldByName('wisno').Value:=Edit_sno.Text;
     ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
     ZQuery_wio_temp.FieldByName('winame').Value:=winame;
     ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
     ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
     ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
     ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
     ZQuery_wio_temp.FieldByName('wiwamo').Value:=wamo;
     ZQuery_wio_temp.FieldByName('wiquty').Value:=1;
     price:=StrToFloat(Edit_sum.Text);
     ZQuery_wio_temp.FieldByName('wisum').Value:=price;
     ZQuery_wio_temp.FieldByName('pps').Value:=pps;
     ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
     ZQuery_wio_temp.FieldByName('wimdate').Value:=mdate;
     if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
       ZQuery_wio_temp.FieldByName('picture').AsString:=fname;
     ZQuery_wio_temp.Post;  //寫入資料庫
     WriteWisno();
     end;
end;

Function TWioAddForm.Edit_wio_temp(): Boolean;
var
  price: Real;
  i, wamo, quty, pps: Integer;
  fname, wiitem, winame, wiwash, wiurge, wimemo, wiacc, mdate: String;
begin
  wamo:=StrToInt(Edit_wamo.Text);
  quty:=StrToInt(Edit_quty.Text);
  CalSum(); //計算折扣後小計
  //price:=Round((StrToFloat(Edit_sum.Text)+0.5)/quty);
  price:=StrToFloat(Edit_sum.Text);
  wiitem:=Edit_item.Text;
  winame:=Edit_style.Text;
  wiwash:=Edit_wash.Text;
  wiurge:=Edit_urge.Text;
  wimemo:=Edit_memo.Text;
  wiacc:=Edit_acc.Text;
  pps:=StrToInt(Edit_pps.Text);
  mdate:=Edit_mdate.Text;
  fname:=strZero(wicode,6)+'_'+Edit_sno.Text+'.jpg';

  ZQuery_wio_temp.Edit;
  ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
  ZQuery_wio_temp.FieldByName('winame').Value:=winame;
  ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
  ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
  ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
  ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
  ZQuery_wio_temp.FieldByName('wiwamo').Value:=wamo;
  ZQuery_wio_temp.FieldByName('wiquty').Value:=quty;
  ZQuery_wio_temp.FieldByName('wisum').Value:=price;
  ZQuery_wio_temp.FieldByName('pps').Value:=pps;
  ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
  ZQuery_wio_temp.FieldByName('wimdate').Value:=mdate;
  if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
    ZQuery_wio_temp.FieldByName('picture').Value:=fname;
  ZQuery_wio_temp.Post;  //寫入資料庫
end;

Function TWioAddForm.Append_wio_temp(): Boolean;
var
  wiwamo: Real;
  wiquty, wisum, wipps: Integer;
  wiitem, winame, wiwash, wiurge, wimemo, wiacc, wimdate: String;
begin
  wiitem:=ZQuery_wio_temp.FieldByName('wiitem').Value;
  winame:=ZQuery_wio_temp.FieldByName('winame').Value;
  wiwash:=ZQuery_wio_temp.FieldByName('wiwash').Value;
  wiacc:=ZQuery_wio_temp.FieldByName('wiacc').Value;
  wimemo:=ZQuery_wio_temp.FieldByName('wimemo').Value;
  wiurge:=ZQuery_wio_temp.FieldByName('wiurge').Value;
  wimdate:=ZQuery_wio_temp.FieldByName('wimdate').Value;
  wiwamo:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
  wiquty:=ZQuery_wio_temp.FieldByName('wiquty').Value;
  wisum:=ZQuery_wio_temp.FieldByName('wisum').Value;
  wipps:=ZQuery_wio_temp.FieldByName('pps').Value;
  ZQuery_wio_temp.Append;
  ZQuery_wio_temp.FieldByName('wisno').Value:=strZero(wisno,4);
  ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
  ZQuery_wio_temp.FieldByName('crcode').Value:=crcode;
  ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
  ZQuery_wio_temp.FieldByName('winame').Value:=winame;
  ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
  ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
  ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
  ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
  ZQuery_wio_temp.FieldByName('wiwamo').Value:=wiwamo;
  ZQuery_wio_temp.FieldByName('wiquty').Value:=wiquty;
  ZQuery_wio_temp.FieldByName('wisum').Value:=wisum;
  ZQuery_wio_temp.FieldByName('pps').Value:=wipps;
  ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
  ZQuery_wio_temp.FieldByName('wimdate').Value:=wimdate;
  ZQuery_wio_temp.Post;  //寫入資料庫
  WriteWisno();
end;

Function TWioAddForm.SaveWio_Temp(): Boolean;
var
  amount, wisum: Real;
  gquty: Integer;
begin
  if fKey='F1' then
    begin
    if (Edit_style.Text<>'') AND (Edit_wash.Text<>'') then
      begin
      Insert_wio_temp();
      wisum:=ZQuery_wio_temp.FieldByName('wisum').Value;
      Add_wio_temp();
      Edit_item.SetFocus;
      amount:=StrToFloat(lbNowMoney.Caption)-wisum;
      lbNowMoney.Caption:=FloatToStr(amount);
      if StrToFloat(lbNowMoney.Caption)>=0 then
        lbNowMoney.Font.Color:=ClYellow
      else
        lbNowMoney.Font.Color:=ClRed;

      gquty:=0; //計算收件數量與總金額
      amount:=0;
      ZQuery_wio_temp.First;
      while not ZQuery_wio_temp.Eof do
        begin
        if ZQuery_wio_temp.RecordCount>0 then
          begin
          gquty:=gquty+ZQuery_wio_temp.FieldByName('wiquty').AsInteger;
          amount:=amount+ZQuery_wio_temp.FieldByName('wisum').AsFloat;
          end;
        ZQuery_wio_temp.Next;
        end;
      lbAddMoney.Caption:=FloatToStr(amount);
      LabelP2.Caption:=lbAddMoney.Caption;
      lbAddQuty.Caption:=IntToStr(gquty);
      end
    else
      ShowMessage('衣物及洗法，不能空白！');
    if Length(Edit_quty.Text)>3 then
      ShowMessage('件數，不能大於999！');
    end;

  if fKey='F2' then
    begin
    if (Edit_style.Text<>'') AND (Edit_wash.Text<>'') then
      begin
      Edit_wio_temp();
      CloseAllPanel();
      wwDBGrid1.Enabled:=True;
      Panel_Insert.Visible:=False;
      Panel_cr.Visible:=True;
      RzToolbarButtonExit.Caption:='ESC.離開';
      CloseAllBtn(True);
      wwDBGrid1.SetFocus;
      fkey:='';
      end
    else
      ShowMessage('衣物及洗法，不能空白！');
    end;

  SetSql_wio_temp();
end;

Function TWioAddForm.WriteToWio(): Boolean;
var
  tmpwisno: Integer;
begin
  ZQuery_wio_temp.Close;
  ZQuery_wio_temp.SQL.Clear;
  ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
  ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQuery_wio_temp.SQL.Add('ORDER BY wisno Desc');
  ZQuery_wio_temp.Open;
  ZQuery_wio_temp.First;
  // 記錄最後的洗衣單號及整理編號
  WDM.ZTableCompy.Edit;
  WDM.ZTableCompy.FieldByName('cpwino').AsInteger:=wicode;
  WDM.ZTableCompy.FieldByName('cpwisno').AsInteger:=ZQuery_wio_temp.FieldByName('wisno').AsInteger;
  WDM.ZTableCompy.Post;

  WDM.ZQuery_wio.Open;
  While not ZQuery_wio_temp.Eof do
    begin
    WDM.ZQuery_wio.Insert;
    WDM.ZQuery_wio.FieldByName('wicode').Value:=ZQuery_wio_temp.FieldByName('wicode').Value;
    WDM.ZQuery_wio.FieldByName('wisno').Value:=ZQuery_wio_temp.FieldByName('wisno').Value;
    WDM.ZQuery_wio.FieldByName('crcode').Value:=ZQuery_wio_temp.FieldByName('crcode').Value;
    WDM.ZQuery_wio.FieldByName('wiitem').Value:=ZQuery_wio_temp.FieldByName('wiitem').Value;
    WDM.ZQuery_wio.FieldByName('winame').Value:=ZQuery_wio_temp.FieldByName('winame').Value;
    WDM.ZQuery_wio.FieldByName('wiwash').Value:=ZQuery_wio_temp.FieldByName('wiwash').Value;
    WDM.ZQuery_wio.FieldByName('wiacc').Value:=ZQuery_wio_temp.FieldByName('wiacc').Value;
    WDM.ZQuery_wio.FieldByName('wimemo').Value:=ZQuery_wio_temp.FieldByName('wimemo').Value;
    WDM.ZQuery_wio.FieldByName('wiwamo').Value:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
    WDM.ZQuery_wio.FieldByName('wiexkind').Value:=ZQuery_wio_temp.FieldByName('wiexkind').Value;
    WDM.ZQuery_wio.FieldByName('wiexmo').Value:=ZQuery_wio_temp.FieldByName('wiexmo').Value;
    WDM.ZQuery_wio.FieldByName('wiquty').Value:=ZQuery_wio_temp.FieldByName('wiquty').Value;
    WDM.ZQuery_wio.FieldByName('wisum').Value:=ZQuery_wio_temp.FieldByName('wisum').Value;
    WDM.ZQuery_wio.FieldByName('wiurge').Value:=ZQuery_wio_temp.FieldByName('wiurge').Value;
    WDM.ZQuery_wio.FieldByName('widay').Value:=ZQuery_wio_temp.FieldByName('widay').Value;
    WDM.ZQuery_wio.FieldByName('wimdate').Value:=ZQuery_wio_temp.FieldByName('wimdate').Value;
    WDM.ZQuery_wio.FieldByName('wiodate').Value:=ZQuery_wio_temp.FieldByName('wiodate').Value;
    WDM.ZQuery_wio.FieldByName('wiotime').Value:=ZQuery_wio_temp.FieldByName('wiotime').Value;
    WDM.ZQuery_wio.FieldByName('wiplace').Value:=ZQuery_wio_temp.FieldByName('wiplace').Value;
    WDM.ZQuery_wio.FieldByName('widate').Value:=ZQuery_wio_temp.FieldByName('widate').Value;
    WDM.ZQuery_wio.FieldByName('wimark').Value:=ZQuery_wio_temp.FieldByName('wimark').Value;
    WDM.ZQuery_wio.FieldByName('indate').Value:=ZQuery_wio_temp.FieldByName('indate').Value;
    WDM.ZQuery_wio.FieldByName('mark').Value:=ZQuery_wio_temp.FieldByName('mark').Value;
    WDM.ZQuery_wio.FieldByName('pps').Value:=ZQuery_wio_temp.FieldByName('pps').Value;
    WDM.ZQuery_wio.FieldByName('picture').Value:=ZQuery_wio_temp.FieldByName('picture').Value;
    WDM.ZQuery_wio.Post;
    ZQuery_wio_temp.Delete;
    end;
end;

Function TWioAddForm.CalSum(): Boolean;
var
  crpsen, cppsen, sum, psen: Real;
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
  WDM.ZQuerywastyle.Open;
  //Edit_sum.Text:=FloatToStr(Round((sum+0.5)*(1-psen)));
  Edit_pps.Text:=FloatToStr(psen*100);
  psen:=1-psen;
  Edit_sum.Text:=FloatToStr(Round((sum+0.5)*psen));
end;

Function TWioAddForm.ShowItem(): Boolean;
var
  page,rcnt: Integer;
begin
  page:=pcnt*70;
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM waitem ';//limit '+IntToStr(page)+', 70';
  ZQuery.Open;
  RG_item.Width:=900;
  RG_item.Items.Clear;
  rcnt:=ZQuery.RecordCount;
  while not ZQuery.Eof do
    begin
    RG_item.Items.Add(ZQuery.FieldByName('wano3').AsString+' '+ZQuery.FieldByName('waitem').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioAddForm.ShowStyle(): Boolean;
begin
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM wastyle ';
  ZQuery.Open;
  RG_style.Items.Clear;
  while not ZQuery.Eof do
    begin
    RG_style.Items.Add(ZQuery.FieldByName('wano2').AsString+' '+ZQuery.FieldByName('wastyle').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioAddForm.ShowWash(): Boolean;
begin
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM wawash ';
  ZQuery.Open;
  RG_wash.Items.Clear;
  while not ZQuery.Eof do
    begin
    RG_wash.Items.Add(ZQuery.FieldByName('wano6').AsString+' '+ZQuery.FieldByName('wawash').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioAddForm.ShowAcc(): Boolean;
begin
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM waacc ';
  ZQuery.Open;
  RG_acc.Items.Clear;
  while not ZQuery.Eof do
    begin
    RG_acc.Items.Add(ZQuery.FieldByName('wano4').AsString+' '+ZQuery.FieldByName('waacc').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioAddForm.ShowMemo(): Boolean;
begin
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM wamemo ';
  ZQuery.Open;
  RG_memo.Items.Clear;
  while not ZQuery.Eof do
    begin
    RG_memo.Items.Add(ZQuery.FieldByName('wano5').AsString+' '+ZQuery.FieldByName('wamemo').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioAddForm.ShowExKind(): Boolean;
var
  page,rcnt: Integer;
begin
  page:=pcnt*70;
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM waexkind ';//limit '+IntToStr(page)+', 70';
  ZQuery.Open;
  RG_ExKind.Items.Clear;
  rcnt:=ZQuery.RecordCount;
  while not ZQuery.Eof do
    begin
    RG_ExKind.Items.Add(ZQuery.FieldByName('wano7').AsString+' '+ZQuery.FieldByName('waexkind').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioAddForm.New_wo(): Boolean;
var
  crpsen, cppsen, psen: Real;
  fritem: String;
begin
  Try    
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE wicode='''+strZero(wicode,6)+'''';
    ZQuery_wo.Open;
    if ZQuery_wo.RecordCount=0 then
      begin
      ZQuery_wo.Insert;
      ZQuery_wo.FieldByName('crcode').Value:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
      ZQuery_wo.FieldByName('wicode').Value:=strZero(wicode,6);
      ZQuery_wo.FieldByName('wototal').AsFloat:=StrToFloat(lbNowMoney.Caption);
      ZQuery_wo.FieldByName('woptotal').AsFloat:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
      crpsen:=StrToFloat(copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1));
      cppsen:=StrToFloat(Copy(Hlbcppsen.Caption,1,length(Hlbcppsen.Caption)-1));
      if crpsen>=cppsen then
        psen:=crpsen
      else
        psen:=cppsen;
      ZQuery_wo.FieldByName('wopsen').AsFloat:=psen;
      ZQuery_wo.FieldByName('worealmo').AsFloat:=PayVal;
      ZQuery_wo.FieldByName('wocntmo').AsFloat:=DiscountVal;
      ZQuery_wo.FieldByName('widate').Value:=widate;
      ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:mm:ss',Time);
      ZQuery_wo.FieldByName('frgetmo').AsFloat:=StrToFloat(lbAddMoney.Caption);
      ZQuery_wo.FieldByName('fritem').AsString:='I'; // I.收件收款
      ZQuery_wo.FieldByName('sfname').AsString:='無名氏';
      ZQuery_wo.Post;
      end
    else
      begin
      ZQuery_wo.Edit;
      ZQuery_wo.FieldByName('woptotal').AsFloat:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
      ZQuery_wo.FieldByName('worealmo').AsFloat:=ZQuery_wo.FieldByName('worealmo').AsFloat+PayVal;     //付款
      ZQuery_wo.FieldByName('wocntmo').AsFloat:=ZQuery_wo.FieldByName('wocntmo').AsFloat+DiscountVal; //折扣
      ZQuery_wo.FieldByName('frgetmo').AsFloat:=StrToFloat(lbAddMoney.Caption);
      ZQuery_wo.FieldByName('wototal').AsFloat:=ZQuery_wo.FieldByName('woptotal').AsFloat+ZQuery_wo.FieldByName('worealmo').AsFloat+ZQuery_wo.FieldByName('wocntmo').AsFloat-ZQuery_wo.FieldByName('frgetmo').AsFloat;
      ZQuery_wo.FieldByName('widate').Value:=widate;
      ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:mm:ss',Time);
      ZQuery_wo.FieldByName('fritem').AsString:='I'; // I.收件收款
      ZQuery_wo.FieldByName('sfname').AsString:='無名氏';
      ZQuery_wo.Post;
      end;
  Except
    ShowMessage('WO資料庫建立錯誤！');
  end;
  try
    WDM.ZQuery_cr.Edit;
    WDM.ZQuery_cr.FieldByName('crmoney').AsFloat:=ZQuery_wo.FieldByName('wototal').AsFloat;
    crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
    WDM.ZQuery_cr.Post;
  Except
    ShowMessage('cr資料庫修改錯誤！');
  end;
end;

Function TWioAddForm.Add_wio_temp(): Boolean;
begin
  if wisno>9999 then wisno:=1;
  Panel_Insert.Height:=65;
  Panel_Insert.Visible:=True;
  Panel_Browse.Align:=alClient;
  Panel_Browse.BringToFront;
  Panel_cr.Visible:=False;
  Edit_sno.Text:=strZero(wisno,4);
  Edit_item.Text:='';
  Edit_style.Text:='';
  Edit_wash.Text:='';
  Edit_wamo.Text:='';
  Edit_urge.Text:='';
  Edit_mdate.Text:='';
  Edit_quty.Text:='';
  Edit_sum.Text:='';
  Edit_acc.Text:='';
  Edit_memo.Text:='';
  Edit_pps.Text:='';
  lb_widate.Caption:=widate;
end;

Function TwioAddForm.CalAddwio_temp(): Boolean;
var
  amount: Real;
  gquty, i: Integer;
  bm: TBookmark;
begin
  gquty:=0; //計算收件數量與總金額
  amount:=0;
  ZQuery_wio_temp.Open;
  bm:=ZQuery_wio_temp.GetBookmark;
  ZQuery_wio_temp.First;
  while not ZQuery_wio_temp.Eof do
    begin
    if ZQuery_wio_temp.RecordCount>0 then
      begin
      gquty:=gquty+ZQuery_wio_temp.FieldByName('wiquty').AsInteger;
      amount:=amount+ZQuery_wio_temp.FieldByName('wisum').AsFloat;
      end;
    ZQuery_wio_temp.Next;
    end;
  ZQuery_wio_temp.GotoBookmark(bm);
  lbAddMoney.Caption:=FloatToStr(amount);
  lbNowMoney.Caption:=FloatToStr(crmoneyVal-amount);
  if StrToFloat(lbNowMoney.Caption)>0 then
    lbNowMoney.Font.Color:=ClYellow
  else
    lbNowMoney.Font.Color:=ClRed;
  LabelP2.Caption:=lbAddMoney.Caption;
  lbAddQuty.Caption:=IntToStr(gquty);
end;

procedure TwioAddForm.SetSql_wio_temp();
begin
  ZQuery_wio_temp.Close;
  ZQuery_wio_temp.SQL.Clear;
  ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
  ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
  if HoldFlag=False then
    ZQuery_wio_temp.SQL.Add('AND wicode='''+strZero(wicode,6)+'''');
  ZQuery_wio_temp.SQL.Add('ORDER BY wisno DESC');
  ZQuery_wio_temp.Open;
end;

procedure TWioAddForm.CloseAllPanel();
begin
  Panel_item.SendToBack;
  Panel_style.SendToBack;
  Panel_wash.SendToBack;
  Panel_acc.SendToBack;
  Panel_memo.SendToBack;
end;

procedure TWioAddForm.FormCreate(Sender: TObject);
var
  userResponse, sno, wicode1:integer;
  fpath, oldpic, newpic: String;
begin
  fkey:='';
  PayVal:=0; //付款
  DiscountVal:=0;
  pflag:=False;
  HoldFlag:=False;
  HintTop:=200;

  crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
  crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
  lbNowMoney.Caption:=FloatToStr(crmoneyVal);
  if StrToFloat(lbNowMoney.Caption)>0 then
    lbNowMoney.Font.Color:=ClYellow
  else
    lbNowMoney.Font.Color:=ClRed;
  Hlbcrpsen.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value)+'%';
  cpdayn:=WDM.ZTableCompy.FieldByName('cpdayn').Value;
  Hlbcppsen.Caption:=FloatToStr(WDM.ZTableCompy.FieldByName('cppsen').Value)+'%';

  widate:=ChinaDate1(Date);
  wicode:=WDM.ZTableCompy.FieldByName('cpwino').AsInteger;
  wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger;
  wicode:=wicode+1;
  lb_wicode.Caption:=strZero(wicode,6);
  lb_widate.Caption:=widate;
  Panel_Pay.SendToBack;
  Panel_EXKind.SendToBack;
  Panel_Pay.Left:=Trunc((Width-Panel_Pay.Width)/2);
  Panel_Pay.Top:=Trunc((Height-Panel_Pay.Height)/2);
  WriteWisno();
end;

procedure TWioAddForm.Action_ExitExecute(Sender: TObject);
begin
  if (fKey='F1')OR(fKey='F2') then
    begin
    if ZQuery_wio_temp.RecordCount=0 then
      begin
      pname:=ExtractFilePath(Application.ExeName)+'Captures\'+pname;
      DeleteFile(Pchar(pname));
      Close;
      end
    else
      begin
      CloseAllPanel();
      CalAddwio_temp();
      wwDBGrid1.Enabled:=True;
      Panel_Insert.Visible:=False;
      Panel_Browse.Visible:=True;
      Panel_cr.Visible:=True;
      RzToolbarButtonExit.Caption:='ESC.離開';
      RzToolbarButtonExit.Width:=90;
      CloseAllBtn(True);
      wwDBGrid1.SetFocus;
      pname:=ZQuery_wio_temp.FieldByName('wicode').AsString+'_'+ZQuery_wio_temp.FieldByName('wisno').AsString+'.jpg';
      if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+pname) then
        begin
        ZQuery_wio_temp.Edit;
        ZQuery_wio_temp.FieldByName('picture').AsString:=pname;
        ZQuery_wio_temp.Post;
        end;
      if ZQuery_wio_temp.FieldByName('picture').AsString<>'' then
        begin
        pname:=ExtractFilePath(Application.ExeName)+'Captures\'+ZQuery_wio_temp.FieldByName('picture').AsString;
        if FileExists(pname) then
          begin
          Image1.Picture.LoadFromFile(pname);
          Image1.Visible:=True;
          wwDBGrid1.SetFocus;
          end;
        end
      else
        begin
        Image1.Visible:=False;
        wwDBGrid1.SetFocus;
        end;
      end;      
    fkey:='';
    end
  else if fKey='F5' then
    begin
    Panel_EXKind.SendToBack;
    Panel_Ex.SendToBack;
    Edit_exkind.Text:='';
    Edit_exkp.Text:='0';
    fkey:='';
    end
  else if fKey='F12' then
    begin
    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    fkey:='';
    end
  else
    Close;
end;

procedure TWioAddForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
var
  i: Integer;
begin
  if Highlight then
    AFont.Color:=ClWhite;
  if Field.FieldName='wiquty' then
    Field.Alignment:=taCenter;
  if Field.FieldName='wiurge' then
    begin
    Field.Alignment:=taCenter;
    if Field.Value='Y' then
      begin
      ABrush.Color:=ClRed;
      AFont.Color:=ClYellow;
      end
    else
      AFont.Color:=ClYellow;
    end;
end;

procedure TWioAddForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Panel_Insert.Visible then
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

procedure TWioAddForm.Action_F1Execute(Sender: TObject);
begin
  if fKey='' then
    begin
    fkey:='F1';
    wwDBGrid1.Enabled:=False;
    Add_wio_temp();
    Edit_item.SetFocus;
    CloseAllBtn(False);
    RzToolbarButtonExit.Caption:='ESC.完成收件';
    RzToolbarButtonExit.Width:=120;
    Edit_quty.ReadOnly:=False;
    end;
end;

procedure TWioAddForm.Action_F2Execute(Sender: TObject);
begin
  if fKey='' then
    begin
    fkey:='F2';
    ZQuery_wio_temp.Edit;
    Edit_sno.Text:=ZQuery_wio_temp.FieldByName('wisno').Value;
    Edit_item.Text:=ZQuery_wio_temp.FieldByName('wiitem').Value;
    Edit_style.Text:=ZQuery_wio_temp.FieldByName('winame').Value;
    Edit_wash.Text:=ZQuery_wio_temp.FieldByName('wiwash').Value;
    Edit_mdate.Text:=ZQuery_wio_temp.FieldByName('wimdate').Value;
    Edit_urge.Text:=ZQuery_wio_temp.FieldByName('wiurge').Value;
    Edit_memo.Text:=ZQuery_wio_temp.FieldByName('wimemo').Value;
    Edit_acc.Text:=ZQuery_wio_temp.FieldByName('wiacc').Value;
    Edit_wamo.Text:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
    Edit_quty.Text:=ZQuery_wio_temp.FieldByName('wiquty').Value;
    Edit_sum.Text:=ZQuery_wio_temp.FieldByName('wisum').Value;
    Edit_pps.Text:=ZQuery_wio_temp.FieldByName('pps').Value;
    Panel_Insert.Visible:=True;
    Edit_item.SetFocus;
    Panel_cr.Visible:=False;
    CloseAllBtn(False);
    RzToolbarButtonExit.Caption:='ESC.完成修改';
    RzToolbarButtonExit.Width:=120;
    Edit_quty.ReadOnly:=True;
    end;
end;

procedure TWioAddForm.RG_itemClick(Sender: TObject);
var
  l: Integer;
  allStr: String;
begin
  l:=Length(RG_item.Items.Strings[RG_item.ItemIndex])-3;
  allStr:=Edit_item.Text+SubStr(RG_item.Items.Strings[RG_item.ItemIndex],4,l);
  if Length(allStr)<=6 then Edit_item.Text:=allStr;
  if Length(allStr)>=6 then Edit_style.SetFocus;
end;

procedure TWioAddForm.RG_styleClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(RG_style.Items.Strings[RG_style.ItemIndex])-3;
  Edit_style.Text:=SubStr(RG_style.Items.Strings[RG_style.ItemIndex],4,l);
  Edit_wash.SetFocus;
end;

procedure TWioAddForm.RG_washClick(Sender: TObject);
var
  l: Integer;
  ivalue: String;
begin
  ivalue:=SubStr(RG_wash.Items.Strings[RG_wash.ItemIndex],1,2);
  l:=Length(RG_wash.Items.Strings[RG_wash.ItemIndex])-3;
  Edit_wash.Text:=SubStr(RG_wash.Items.Strings[RG_wash.ItemIndex],4,l);
  // 取得洗法金額
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wawash');
  ZQuery.SQL.Add('WHERE wawash='''+Edit_wash.Text+'''');
  ZQuery.Open;
  ivalue:=ZQuery.FieldByName('wano6').Value;

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wastyle');
  ZQuery.SQL.Add('WHERE wastyle='''+Edit_style.Text+'''');
  ZQuery.Open;
  Edit_wamo.Text:=FloatToStr(ZQuery.FieldByName('wawsm'+ivalue).Value);
  washpsno:=ZQuery.FieldByName('washpsno').Value;
  Edit_quty.Text:='1';
  Edit_urge.Text:='N';
  Edit_mdate.Text:=ChinaDate1(Date+cpdayn);
  WDM.ZQuerywastyle.Close;
  Edit_quty.SetFocus;
  Edit_quty.SelectAll;  
  CalSum();
end;

procedure TWioAddForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fkey<>'F10' then
    if ZQuery_wio_temp.RecordCount>0 then
      begin
      WriteToWio();
      if pflag then
        New_wo();
      end
    else
      begin
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE wicode='''+strZero(wicode,6)+'''';
      ZQuery_wo.Open;
      if ZQuery_wo.RecordCount>0 then
        begin
        ZQuery_wo.Edit;
        ZQuery_wo.FieldByName('wicode').AsString:='';
        ZQuery_wo.FieldByName('wototal').Value:=crmoneyVal+ZQuery_wo.FieldByName('worealmo').Value+ZQuery_wo.FieldByName('wocntmo').Value;
        ZQuery_wo.FieldByName('woptotal').Value:=crmoneyVal;
        ZQuery_wo.FieldByName('frgetmo').Value:=0;
        ZQuery_wo.FieldByName('fritem').AsString:='G';
        ZQuery_wo.Post;
        try
          WDM.ZQuery_cr.Edit;
          WDM.ZQuery_cr.FieldByName('crmoney').AsFloat:=StrToFloat(lbNowMoney.Caption);
          WDM.ZQuery_cr.Post;
        Except
          ShowMessage('cr資料庫修改錯誤！');
        end;
        end;
      end;
end;

procedure TWioAddForm.Edit_PayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_DOWN)OR(Key=VK_RIGHT) then
   begin
   Perform(WM_NextDlgCtl, 0, 0);
   Key:=0;
   end;
end;

procedure TWioAddForm.Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AddVal, NowVal: Real;
begin
  if (Key=VK_DOWN)OR(Key=VK_RIGHT) then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
  if (Key=VK_UP)OR(Key=VK_LEFT) then
    begin
    Perform(WM_NextDlgCtl, 1, 0);
    Key:=0;
    end;
  if (Key=VK_Return) AND (fKey='F12') then //收款後處理計算
    begin
    fkey:='';
    Panel_Pay.SendToBack;
    NowVal:=StrToFloat(lbNowMoney.Caption);
    PayVal:=StrToFloat(Edit_Pay.Text); //付款
    DiscountVal:=StrToFloat(Edit_Discount.Text); //折讓
    AddVal:=StrToFloat(lbAddMoney.Caption); //本次金額
    TotalVal:=NowVal+PayVal+DiscountVal;
    lbNowMoney.Caption:=FloatToStr(TotalVal);
    if StrToFloat(lbNowMoney.Caption)>0 then
      lbNowMoney.Font.Color:=ClYellow
    else
      lbNowMoney.Font.Color:=ClRed;
    lbPay.Caption:=Edit_Pay.Text;
    New_wo();
    pflag:=True;

    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    wwDBGrid1.SetFocus;
    RzToolbarButtonF10.Visible:=False;
    Key:=0;
    end;
end;

procedure TWioAddForm.Action_F12Execute(Sender: TObject);
var
  lack: Real;
begin
  if fKey='' then
    begin
    fkey:='F12';
    lack:=StrToFloat(lbNowMoney.Caption);
    if lack<0 then
      LabelP1.Font.Color:=ClRed
    else
      LabelP1.Font.Color:=ClWhite;
    LabelP1.Caption:=FloatToStr(lack);
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    Edit_Pay.SetFocus;
    Panel_Pay.BringToFront;
    New_wo();
    end;
end;

procedure TWioAddForm.RG_accClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(RG_acc.Items.Strings[RG_acc.ItemIndex])-3;
  Edit_acc.Text:=SubStr(RG_acc.Items.Strings[RG_acc.ItemIndex],4,l);
  Edit_memo.SetFocus;
end;

procedure TWioAddForm.RG_memoClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(RG_memo.Items.Strings[RG_memo.ItemIndex])-3;
  Edit_memo.Text:=SubStr(RG_memo.Items.Strings[RG_memo.ItemIndex],4,l);
  SaveWio_Temp();
end;

procedure TWioAddForm.Action_F3Execute(Sender: TObject);
var
  amount: Real;
  gquty, i: Integer;
  bm: TBookmark;
  fpath: String;
  wisum: Real;
begin
  if (fKey='') and (ZQuery_wio_temp.RecordCount>0) then
    begin
    if IDYES=MessageBox(handle,'是否刪除此筆衣物？','刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2)  then
      begin
      fpath:=ExtractFilePath(Application.ExeName)+'Captures\';
      DeleteFile(Pchar(fpath+ZQuery_wio_temp.FieldByName('picture').AsString));
      wisum:=ZQuery_wio_temp.FieldByName('wisum').AsFloat;
      ZQuery_wio_temp.Delete;
      RenewWisno();  // 重新排列編號

      gquty:=0; //計算收件數量與總金額
      amount:=0;
      ZQuery_wio_temp.First;
      while not ZQuery_wio_temp.Eof do
        begin
        if ZQuery_wio_temp.RecordCount>0 then
          begin
          gquty:=gquty+ZQuery_wio_temp.FieldByName('wiquty').AsInteger;
          amount:=amount+ZQuery_wio_temp.FieldByName('wisum').AsFloat;
          end;
        ZQuery_wio_temp.Next;
        end;
      lbAddMoney.Caption:=FloatToStr(amount);
      LabelP2.Caption:=lbAddMoney.Caption;
      lbAddQuty.Caption:=IntToStr(gquty);
      lbNowMoney.Caption:=FloatToStr(StrToFloat(lbNowMoney.Caption)+wisum);
      if StrToFloat(lbNowMoney.Caption)>0 then
        lbNowMoney.Font.Color:=ClYellow
      else
        lbNowMoney.Font.Color:=ClRed;
      SetSql_wio_temp();
      end;
    end;  
end;

procedure TWioAddForm.Action_F10Execute(Sender: TObject);
begin
  if (fKey='') and (pflag=False) then
    begin
    if MessageDlg('確定要保留？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
      begin
      fkey:='F10';
      ZQuery_wio_temp.First;
      While not ZQuery_wio_temp.Eof do
        begin
        ZQuery_wio_temp.Edit;
        ZQuery_wio_temp.FieldByName('wicode').Value:='';
        ZQuery_wio_temp.Post;
        ZQuery_wio_temp.Next;
        end;
      Try
        ZQuery_wo.Close;
        ZQuery_wo.SQL.Clear;
        ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE wicode='''+strZero(wicode,6)+'''';
        ZQuery_wo.Open;
        if ZQuery_wo.RecordCount>0 then
          begin
          ZQuery_wo.Edit;
          ZQuery_wo.FieldByName('wicode').Value:='';
          ZQuery_wo.FieldByName('wototal').Value:=ZQuery_wo.FieldByName('woptotal').Value+ZQuery_wo.FieldByName('frgetmo').Value;
          ZQuery_wo.FieldByName('frgetmo').Value:=0;
          ZQuery_wo.Post;
          end;
      Finally
        ZQuery_wo.Close;
        WDM.ZQuery_cr.Edit;
        WDM.ZQuery_cr.FieldByName('crmoney').Value:=StrToFloat(lbNowMoney.Caption)+StrToFloat(lbAddMoney.Caption);
        WDM.ZQuery_cr.Post;
      end;
      Close;
      end;
    end;  
end;

procedure TWioAddForm.Edit_itemEnter(Sender: TObject);
begin
  pcnt:=0;
  CloseAllPanel();
  OldEditStr:='';
  RG_item.Visible:=False;
  ShowItem();
  RG_item.Visible:=True;
  Panel_item.BringToFront;
  Panel_item.Top:=HintTop;
  Panel_item.Left:=0;
  Panel_item.Width:=800;
  Panel_item.Height:=300;
end;

procedure TWioAddForm.Edit_itemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_styleEnter(Sender: TObject);
begin
  CloseAllPanel();
  OldEditStr:='';
  RG_style.Visible:=False;
  ShowStyle();
  RG_style.Visible:=True;
  Panel_style.BringToFront;
  Panel_style.Top:=HintTop;
  Panel_style.Left:=0;
  Panel_style.Width:=800;
  Panel_style.Height:=300;
end;

procedure TWioAddForm.Edit_washEnter(Sender: TObject);
begin
  OldEditStr:='';
  CloseAllPanel();
  Panel_wash.BringToFront;
  Panel_wash.Top:=HintTop;
  Panel_wash.Left:=Edit_wash.Left;
  RG_wash.Visible:=False;
  ShowWash();
  RG_wash.Visible:=True;
end;

procedure TWioAddForm.Edit_wamoEnter(Sender: TObject);
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

procedure TWioAddForm.Edit_wamoExit(Sender: TObject);
begin
  if Edit_wamo.Text<>'' then
    CalSum();
end;

procedure TWioAddForm.Edit_urgeEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_mdateEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_qutyEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_qutyKeyDown(Sender: TObject; var Key: Word;
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

procedure TWioAddForm.Edit_sumEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_accEnter(Sender: TObject);
begin
  CloseAllPanel();
  OldEditStr:='';
  RG_acc.Visible:=False;
  ShowAcc();
  RG_acc.Visible:=True;
  Panel_acc.BringToFront;
  Panel_acc.Top:=HintTop;
  Panel_acc.Left:=Edit_acc.Left;
end;

procedure TWioAddForm.Edit_accKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_memoEnter(Sender: TObject);
begin
  CloseAllPanel();
  OldEditStr:='';
  RG_memo.Visible:=False;
  ShowMemo();
  RG_memo.Visible:=True;
  Panel_memo.BringToFront;
  Panel_memo.Top:=HintTop;
  Panel_memo.Left:=0;
  Panel_memo.Width:=800;
  Panel_memo.Height:=300;
end;

procedure TWioAddForm.RzToolbarButtonF5Click(Sender: TObject);
begin
  if fKey='' then
    begin
    ShowMessage('F5');
    end;
end;

procedure TWioAddForm.RzToolbarButtonF9Click(Sender: TObject);
begin
  if fKey='' then
    begin
    ShowMessage('F9');
    end;
end;

procedure TWioAddForm.ButtonSaveClick(Sender: TObject);
begin
  SaveWio_Temp();
end;

procedure TWioAddForm.Button1Click(Sender: TObject);
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

procedure TWioAddForm.Edit_itemKeyUp(Sender: TObject; var Key: Word;
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
    WDM.ZQuerywaItem.ParamByName('wano3').Value:=newvalue;
    WDM.ZQuerywaItem.Open;
    if WDM.ZQuerywaItem.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaItem.FieldByName('waitem').Value;
      Edit_item.Text:=OldEditStr+newvalue;
      OldEditStr:=OldEditStr+newvalue;
      if length(OldEditStr)>=6 then
        Perform(WM_NextDlgCtl, 0, 0);
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

procedure TWioAddForm.Edit_styleKeyUp(Sender: TObject; var Key: Word;
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

procedure TWioAddForm.Edit_washKeyUp(Sender: TObject; var Key: Word;
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
      end;
    WDM.ZQuerywawash.Close;
    // 取得洗法金額
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('SELECT * FROM wawash');
    ZQuery.SQL.Add('WHERE wawash='''+Edit_wash.Text+'''');
    ZQuery.Open;
    inputvalue:=ZQuery.FieldByName('wano6').Value;

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('SELECT * FROM wastyle');
    ZQuery.SQL.Add('WHERE wastyle='''+Edit_style.Text+'''');
    ZQuery.Open;
    wamo:=ZQuery.FieldByName('wawsm'+inputvalue).Value;
    washpsno:=ZQuery.FieldByName('washpsno').Value;

    Edit_wamo.Text:=FloatToStr(wamo);
    Edit_quty.Text:='1';
    Edit_urge.Text:='N';
    Edit_mdate.Text:=ChinaDate1(Date+cpdayn);
    WDM.ZQuerywastyle.Close;
    CalSum();
    Edit_quty.SetFocus;
    Key:=0;
    end;
end;

procedure TWioAddForm.Edit_styleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_snoEnter(Sender: TObject);
begin                          
  Perform(WM_NextDlgCtl, 0, 0);
end;

procedure TWioAddForm.Action_PgDnExecute(Sender: TObject);
begin
  SaveWio_Temp();
end;

procedure TWioAddForm.Action_F4Execute(Sender: TObject);
var
  amount, wisum: Real;
  gquty: Integer;
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    Append_wio_temp(); //複製增加
    //CalAddwio_temp();
    wisum:=ZQuery_wio_temp.FieldByName('wisum').Value;
    amount:=StrToFloat(lbNowMoney.Caption)-wisum;
    lbNowMoney.Caption:=FloatToStr(amount);
    if StrToFloat(lbNowMoney.Caption)>0 then
      lbNowMoney.Font.Color:=ClYellow
    else
      lbNowMoney.Font.Color:=ClRed;

    gquty:=0; //計算收件數量與總金額
    amount:=0;
    ZQuery_wio_temp.First;
    while not ZQuery_wio_temp.Eof do
      begin
      if ZQuery_wio_temp.RecordCount>0 then
        begin
        gquty:=gquty+ZQuery_wio_temp.FieldByName('wiquty').AsInteger;
        amount:=amount+ZQuery_wio_temp.FieldByName('wisum').AsFloat;
        end;
      ZQuery_wio_temp.Next;
      end;
    lbAddMoney.Caption:=FloatToStr(amount);
    LabelP2.Caption:=lbAddMoney.Caption;
    lbAddQuty.Caption:=IntToStr(gquty);

    SetSql_wio_temp();
    end;
end;

procedure TWioAddForm.Edit_accKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
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

procedure TWioAddForm.Edit_memoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_memo.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_memo.Text;
  if (length(newvalue)=2) then
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

    WDM.ZQuerywamemo.Close;
    Key:=0;
    SaveWio_Temp();
    end;
end;

procedure TWioAddForm.Edit_exkindEnter(Sender: TObject);
begin
  OldEditStr:='';
  RG_ExKind.Visible:=False;
  ShowExKind();
  RG_ExKind.Visible:=True;
  Panel_Ex.BringToFront;
  Panel_Ex.Top:=Panel_EXKind.Top-100;
  Panel_Ex.Left:=Panel_EXKind.Left+Panel_EXKind.Width+10;
  Panel_Ex.Height:=350;
end;

procedure TWioAddForm.Action_F5Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F5';
    Edit_exkind.Text:=ZQuery_wio_temp.FieldByName('wiexkind').Value;
    Edit_exkp.Text:=IntToStr(ZQuery_wio_temp.FieldByName('wiexmo').Value);
    Panel_EXKind.BringToFront;
    Edit_exkind.SetFocus;
    end;
end;

procedure TWioAddForm.Edit_exkindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  wamo: Real;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_exkind.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_exkind.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywaexkind.Close;
    WDM.ZQuerywaexkind.ParamByName('wano7').Value:=newvalue;
    WDM.ZQuerywaexkind.Open;
    if WDM.ZQuerywaexkind.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaexkind.FieldByName('waexkind').Value;
      Edit_exkind.Text:=OldEditStr+newvalue;
      Perform(WM_NextDlgCtl, 0, 0);
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_exkind.Text:=OldEditStr;
      Edit_exkind.SetFocus;
      end;
    WDM.ZQuerywaexkind.Close;
    Key:=0;
    end;
end;

procedure TWioAddForm.Edit_exkindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_DOWN)OR(Key=VK_RIGHT) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_exkpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  oldv: Integer;
begin
  if (Key=VK_DOWN)OR(Key=VK_RIGHT) then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
  if (Key=VK_UP)OR(Key=VK_LEFT) then
    begin
    Perform(WM_NextDlgCtl, 1, 0);
    Key:=0;
    end;
  if (Key=VK_Return) And (fKey='F5') then
    begin
    fkey:='';
    Panel_EXKind.SendToBack;
    ZQuery_wio_temp.Edit;
    ZQuery_wio_temp.FieldByName('wiexkind').Value:=Edit_exkind.Text;
    oldv:=ZQuery_wio_temp.FieldByName('wiexmo').Value;
    ZQuery_wio_temp.FieldByName('wiexmo').Value:=StrToInt(Edit_exkp.Text);
    ZQuery_wio_temp.FieldByName('wisum').Value:=ZQuery_wio_temp.FieldByName('wisum').Value+StrToInt(Edit_exkp.Text)-oldv;
    ZQuery_wio_temp.Post;
    end;
end;

procedure TWioAddForm.Edit_exkpEnter(Sender: TObject);
begin
  Panel_Ex.SendToBack;
end;

procedure TWioAddForm.RG_ExKindClick(Sender: TObject);
var
  l: Integer;
  ivalue: String;
begin
  ivalue:=SubStr(RG_ExKind.Items.Strings[RG_ExKind.ItemIndex],1,2);
  l:=Length(RG_ExKind.Items.Strings[RG_ExKind.ItemIndex])-3;
  Edit_exkind.Text:=SubStr(RG_ExKind.Items.Strings[RG_ExKind.ItemIndex],4,l);
  Panel_Ex.SendToBack;
  Edit_exkp.SetFocus;
end;

procedure TWioAddForm.Edit_memoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
  if Key=VK_Return then
    begin
    Key:=0;    
    SaveWio_Temp();
    end;
end;

procedure TWioAddForm.Action_CtrlF2Execute(Sender: TObject);
begin
  if fKey='' then
    begin
    rfkey:='CF2';
    Close;
    end;
end;

procedure TWioAddForm.Action_CtrlF3Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    rfkey:='CF3';
    Close;
    end;
end;

procedure TWioAddForm.Edit_washKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_styleChange(Sender: TObject);
begin
  Edit_wash.Text:='';
end;

procedure TWioAddForm.RG_itemEnter(Sender: TObject);
begin
  if fkey='F2' then
    Edit_item.Text:='';
end;

procedure TWioAddForm.Image1Click(Sender: TObject);
begin
  try
    ShowPicForm := TShowPicForm.Create(Application);
    ShowPicForm.picname:=ZQuery_wio_temp.FieldByName('picture').Value;
    ShowPicForm.ShowModal;
    FreeAndNil(ShowPicForm);
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioAddForm.ZQuery_wio_tempAfterScroll(DataSet: TDataSet);
var
  pname: String;
begin
  if fkey='' then
    begin
    if ZQuery_wio_temp.FieldByName('picture').AsString<>'' then
      begin
      pname:=ExtractFilePath(Application.ExeName)+'Captures\'+ZQuery_wio_temp.FieldByName('picture').Value;
      if FileExists(pname) then
        begin
        Image1.Picture.LoadFromFile(pname);
        Image1.Visible:=True;
        wwDBGrid1.SetFocus;
        end;
      end
    else
      begin
      Image1.Visible:=False;
      wwDBGrid1.SetFocus;
      end; 
    end;
end;

procedure TWioAddForm.Action_CPExecute(Sender: TObject);
begin
  if (ZQuery_wio_temp.RecordCount>0) AND(ZQuery_wio_temp.FieldByName('picture').AsString<>'') and (fkey='') then
    begin
    Image1Click(Self);
    wwDBGrid1.SetFocus;
    end
  else
    ShowMessage('沒有照片！');
end;

procedure TWioAddForm.Action_F9Execute(Sender: TObject);
begin
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio_temp');
  ZQueryF9.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQueryF9.SQL.Add('ORDER BY wisno');
  ZQueryF9.Open;
  (frxReport1.FindObject('Memo1')as TfrxMemoView).Text:=lbAddQuty.Caption+'件';
  (frxReport1.FindObject('Memo2')as TfrxMemoView).Text:=lbAddMoney.Caption;
  (frxReport1.FindObject('Memo3')as TfrxMemoView).Text:=FloatToStr(ZQuery_wo.FieldByName('wocntmo').AsFloat);
  (frxReport1.FindObject('Memo4')as TfrxMemoView).Text:=FloatToStr(ZQuery_wo.FieldByName('worealmo').AsFloat);
  if StrToFloat(lbNowMoney.Caption)>0 then
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:='0'
  else
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:=lbNowMoney.Caption;
  (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:=lbNowMoney.Caption;
  //frxReport1.ShowReport; //螢幕預覽
  frxReport1.PrepareReport;
  frxReport1.PrintOptions.ShowDialog := False; //不顯示對話框
  //frxReport1.PrintOptions.Printer := PrinterName; //指定印表機
  frxReport1.Print; //列印
end;

procedure TWioAddForm.FormShow(Sender: TObject);
var
  sno, wicode1:integer;
  fpath, oldpic, newpic: String;
begin
  if HoldFlag=False then //判斷有無保留資料
    begin 
    ZQuery_wio_temp.Close;
    ZQuery_wio_temp.SQL.Clear;
    ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
    ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQuery_wio_temp.Open;
    Panel_Browse.Align:=AlClient;
    Panel_Insert.Visible:=False;
    if ZQuery_wio_temp.RecordCount>0 then
       if MessageDlg('此客戶有保留資料是否叫出保留？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
         HoldFlag:=True
       else
         HoldFlag:=False;
    ZQuery_wio_temp.Close;
    end;
  SetSql_wio_temp();

  if HoldFlag=False then //不叫出保留資料
    begin
    Action_F1Execute(Self);
    {Add_wio_temp();
    fkey:='F1';
    Edit_item.SetFocus;
    CloseAllBtn(False);}
    end
  else                   //叫出保留資料並重新編排編號
    begin
    fpath:=ExtractFilePath(Application.ExeName)+'Captures\';
    ZQuery_wio_temp.First;
    while not ZQuery_wio_temp.Eof do
      begin
      oldpic:=ZQuery_wio_temp.FieldByName('picture').AsString;
      ZQuery_wio_temp.Edit;
      ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
      ZQuery_wio_temp.FieldByName('wisno').Value:=strZero(wisno,4);
      newpic:=ZQuery_wio_temp.FieldByName('wicode').AsString+'_'+ZQuery_wio_temp.FieldByName('wisno').AsString+'.jpg';
      if oldpic<>'' then
        begin
        RenameFile(fpath+oldpic, fpath+newpic);
        ZQuery_wio_temp.FieldByName('picture').AsString:=newpic;
        end;
      ZQuery_wio_temp.Post;
      WriteWisno();
      ZQuery_wio_temp.Next;
      end;
    SetSql_wio_temp();
    ZQuery_wio_temp.First;
    CloseAllPanel();
    CalAddwio_temp();
    wwDBGrid1.Enabled:=True;
    Panel_Insert.Visible:=False;
    Panel_Browse.Align:=alClient;
    Panel_Browse.Visible:=True;
    Panel_cr.Visible:=True;
    RzToolbarButtonExit.Caption:='ESC.離開';
    RzToolbarButtonExit.Width:=90;
    CloseAllBtn(True);
    wwDBGrid1.SetFocus;
    end;
end;

end.
