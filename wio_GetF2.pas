unit wio_GetF2;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask, Jpeg,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  wwdbedit, ActnList, Wwdatsrc, RzButton, RzPanel, Wwdbgrid, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZConnection, MovePanel, Menus,
  RzBckgnd, frxClass, frxDBSet, wwcheckbox, frxDesgn, Profile;

type
  TWioGetF2Form = class(TForm)
    ActionList1: TActionList;
    Action_Exit: TAction;
    Action_F5: TAction;
    Action_F6: TAction;
    ZQuery_wo: TZQuery;
    wwDS_wo: TwwDataSource;
    wwDS_wio: TwwDataSource;
    ZQuery_wio: TZQuery;
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
    Action_F11: TAction;
    ZQuery_sum: TZReadOnlyQuery;
    Action_F9: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonSAll: TRzToolbarButton;
    RzToolbarButtonSNAll: TRzToolbarButton;
    RzToolbarButtonPrint: TRzToolbarButton;
    RzToolbarButtonHistory: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    RzToolbarButtonPay: TRzToolbarButton;
    Action_F12: TAction;
    Panel_Pay: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    LabelP1: TLabel;
    Edit_Pay: TEdit;
    Edit_Discount: TEdit;
    ZConnection1: TZConnection;
    ZQuery_wiopicture: TStringField;
    Action_CtrlP: TAction;
    Panel_History: TPanel;
    Label10: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label3: TLabel;
    RzToolbarButtonCP: TRzToolbarButton;
    Action_CtrlF5: TAction;
    RzToolbarButtonCF5: TRzToolbarButton;
    Panel_EXKind: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit_exkind: TEdit;
    Edit_exkp: TEdit;
    Panel_Ex: TPanel;
    RG_ExKind: TRadioGroup;
    ZQuery: TZReadOnlyQuery;
    Action_CtrlF1: TAction;
    RzToolbarButtonCF1: TRzToolbarButton;
    Action_CtrlF3: TAction;
    RzToolbarButtonCF3: TRzToolbarButton;
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
    ZQueryF9crmoney: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    wwDBGrid1: TwwDBGrid;
    Panel_F9: TPanel;
    Label16: TLabel;
    RadioButtonF91: TRadioButton;
    RadioButtonF92: TRadioButton;
    ZQuery_wiowisel: TStringField;
    ZQueryF9wisel: TStringField;
    ZQuery1: TZQuery;
    RzPanel1: TRzPanel;
    Label15: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    GetQuty: TLabel;
    lbNoGet: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    lb_wino: TLabel;
    Hlbcrpsen: TLabel;
    Hlbcppsen: TLabel;
    lbNowMoney: TLabel;
    lbPay: TLabel;
    Image2: TImage;
    Image1: TImage;
    lbDiscount: TLabel;
    DBText4: TDBText;
    Label_tq: TLabel;
    Label26: TLabel;
    RzToolbarButtonN: TRzToolbarButton;
    RzToolbarButtonP: TRzToolbarButton;
    RzToolbarButtonC: TRzToolbarButton;
    PanelGet: TPanel;
    Label17: TLabel;
    Label27: TLabel;
    Edit_Getcnt: TEdit;
    RadioButtonF93: TRadioButton;
    ZQueryF9crtelb: TStringField;
    Action_F8: TAction;
    RzToolbarButtonF8: TRzToolbarButton;
    RzToolbarButtonF7: TRzToolbarButton;
    Action_F7: TAction;
    wwDBGrid2: TwwDBGrid;
    ZQueryGWio: TZQuery;
    wwDSGWio: TwwDataSource;
    ZQueryGWiowicode: TStringField;
    ZQueryGWiomoney: TFloatField;
    ZQuery2: TZQuery;
    ZQueryGWiowidate: TStringField;
    ZQueryGWiowi_date: TStringField;
    lb_Total: TLabel;
    Label19: TLabel;
    Label8: TLabel;
    lb_All: TLabel;
    Label28: TLabel;
    RzToolbarButton_star: TRzToolbarButton;
    Splitter1: TSplitter;
    GetF2_Left_Size: TProfileSection;
    ProfileFile1: TProfileFile;
    grid2_size: TProfileInteger;
    Label18: TLabel;
    GetMoney: TLabel;
    Action_CF9: TAction;
    ZQuery_wiowitime: TTimeField;
    Action_CA1: TAction;
    frxDesigner1: TfrxDesigner;
    RzToolbarButtonY: TRzToolbarButton;
    Label23: TLabel;
    LabelP2: TLabel;
    RzToolbarButtonCF7: TRzToolbarButton;
    Action_CtrlF7: TAction;
    ZReadOnlyQuery_vip: TZReadOnlyQuery;
    Panel_F4: TPanel;
    Label_wisno3: TLabel;
    Editsno3: TEdit;
    Action_F4: TAction;
    RzToolbarButtonGet: TRzToolbarButton;
    Label29: TLabel;
    RzToolbarButtonAF5: TRzToolbarButton;
    Action_AltF5: TAction;
    RzToolbarButtonAF6: TRzToolbarButton;
    Action_AltF6: TAction;
    ZQueryF9crvip: TStringField;
    ZQueryVip: TZQuery;
    GetKey: TProfileString;
    procedure Button3Click(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure Action_F6Execute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure Action_F11Execute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_F12Execute(Sender: TObject);
    procedure Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_PayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CtrlPExecute(Sender: TObject);
    procedure Action_CtrlF5Execute(Sender: TObject);
    procedure Edit_exkindEnter(Sender: TObject);
    procedure Edit_exkindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_ExKindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_CtrlF1Execute(Sender: TObject);
    procedure Action_CtrlF3Execute(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure RadioButton2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RadioButtonF91KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButtonF92KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButtonF91MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RadioButtonF92MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure RzToolbarButtonNClick(Sender: TObject);
    procedure RzToolbarButtonPClick(Sender: TObject);
    procedure RzToolbarButtonCClick(Sender: TObject);
    procedure RadioButtonF93MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButtonF93KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F8Execute(Sender: TObject);
    procedure Action_F7Execute(Sender: TObject);
    procedure wwDBGrid2RowChanged(Sender: TObject);
    procedure ZQueryGWioCalcFields(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid2Enter(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RzToolbarButton_starClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label20Click(Sender: TObject);
    procedure Action_CF9Execute(Sender: TObject);
    procedure Action_CA1Execute(Sender: TObject);
    procedure RzToolbarButtonYClick(Sender: TObject);
    procedure Action_CtrlF7Execute(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure Editsno3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_AltF5Execute(Sender: TObject);
    procedure Action_AltF6Execute(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_GetcntKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { private declarations }
    //fMouseOverRow: integer;
    //procedure SetMouseOverRow(const Value: integer) ;
    //property MouseOverRow : integer read fMouseOverRow write SetMouseOverRow;
    //procedure WMMinMaxInfo(var Message :TWMGetMinMaxInfo);
  public
    { public declarations }
    rfkey: String;
    Function GetCust(): Boolean;
    Function CalGetCount(): Boolean;
    Function CalNotGet():Boolean;
    Function ReadWio():Boolean;
    Function PayClear():Boolean;
    Function NotPay():Boolean;
    Function ClearPlace():Boolean;
    Function New_wo(kind: Integer): Boolean;
    Function ShowExKind(): Boolean;
    procedure Calwipcs(crcode,wicode: String);
    procedure ProcessGet(cnt: String);
    procedure SigGet(index: integer);
    procedure PrintF9(index: Integer);
    procedure SP300(flag: Boolean);
    Function Setpflag():Boolean;
  end;

var
  WioGetF2Form: TWioGetF2Form;
  getitem, oldvalue, exitstr: String;
  //GridStr: Array Of String;
  fkey,oldwicode, FBCode: String;
  ngquty, ngsum, gmx, gmy, wisnod: Integer;
  PayVal, DiscountVal, TotalVal, crmoneyVal, oldv, oldcrmoney: Real;
  tflag, sflag, gflag: Boolean;
  f4flag, f5flag: Integer;
  GetKB: String;

implementation

uses WDModule, lcutils, ShowPic, history1, history2, vip, wio_Add, wio_Detail;

{$R *.DFM}

procedure TWioGetF2Form.SigGet(index: integer);
begin
  if ((ZQuery_wio.FieldByName('wiplace').AsString<>'') OR (getitem='是'))and(ZQuery_wio.RecordCount>0) then
    if (ZQuery_wio.FieldByName('wiodate').AsString=ChinaDate1(Date))OR(ZQuery_wio.FieldByName('wiodate').AsString='') then
      begin
      if (ZQuery_wio.FieldByName('wiquty').AsInteger=1)or(fkey='F4') then
        begin
        ZQuery_wio.Edit;
        if (wwdbgrid1.IsSelected)and(fkey<>'F4') then
          begin
          ZQuery_wio.FieldByName('wiodate').AsString:='';
          ZQuery_wio.FieldByName('wiotime').Value:=Null;
          ZQuery_wio.FieldByName('wisel').AsString:='';
          //ZQuery_wio.FieldByName('mark').AsString:='';
          end
        else
          begin
          ZQuery_wio.FieldByName('wiodate').AsString:=ChinaDate1(date);
          ZQuery_wio.FieldByName('wiotime').Value:=time;
          ZQuery_wio.FieldByName('wisel').AsString:='S';
          //ZQuery_wio.FieldByName('mark').AsString:='*';
          end;
        ZQuery_wio.Post;
        if wwdbgrid1.IsSelected then
          wwdbgrid1.UnselectRecord
        else
          wwdbgrid1.SelectRecord;

        //CalGetCount();
        if index=1 then // Press Enter Key
          ZQuery_wio.Next;
        end //quty=1
      else //整號衣物數量>1
        begin
        if wwdbgrid1.IsSelected then
          begin
          ZQuery_wio.Edit;
          ZQuery_wio.FieldByName('wiodate').AsString:='';
          ZQuery_wio.FieldByName('wiotime').Value:=Null;
          ZQuery_wio.FieldByName('wisel').AsString:='';
          ZQuery_wio.Post;
          end
        else
          begin
          fkey:='G';
          PanelGet.BringToFront;
          Edit_Getcnt.Text:=IntToStr(ZQuery_wio.FieldByName('wiquty').AsInteger);
          Edit_Getcnt.SetFocus;
          wwDBGrid1.Enabled:=False;
          end;
        if wwdbgrid1.IsSelected then
          wwdbgrid1.UnselectRecord
        else
          wwdbgrid1.SelectRecord;
        end;
      CalGetCount();
      end;
end;

procedure TWioGetF2Form.ProcessGet(cnt: String);
var
  wicode,wisno,crcode,wiitem,winame,wiwash,wiacc,wimemo,widate,wimdate: String;
  wiurge,wiexkind,wiplace,wimark,wiodate,widay,indate: String;
  wiotime: TTime;
  pps,picture,mark: String;
  wiwamo,wisum,wiexmo,wismo,takem: Real;
  wiquty,cntint: Integer;
begin
  wicode:=ZQuery_wio.FieldByName('wicode').Value;
  wisno:=ZQuery_wio.FieldByName('wisno').Value;
  crcode:=ZQuery_wio.FieldByName('crcode').Value;
  wiitem:=ZQuery_wio.FieldByName('wiitem').Value;
  winame:=ZQuery_wio.FieldByName('winame').Value;
  wiwash:=ZQuery_wio.FieldByName('wiwash').Value;
  wiacc:=ZQuery_wio.FieldByName('wiacc').Value;
  wimemo:=ZQuery_wio.FieldByName('wimemo').Value;
  wiwamo:=ZQuery_wio.FieldByName('wiwamo').Value;
  wiexkind:=ZQuery_wio.FieldByName('wiexkind').Value;
  wiexmo:=ZQuery_wio.FieldByName('wiexmo').Value;
  wiquty:=ZQuery_wio.FieldByName('wiquty').Value;
  wisum:=ZQuery_wio.FieldByName('wisum').Value;
  wiurge:=ZQuery_wio.FieldByName('wiurge').Value;
  widay:=ZQuery_wio.FieldByName('widay').Value;
  wimdate:=ZQuery_wio.FieldByName('wimdate').Value;
  //wiodate:=ZQuery_wio.FieldByName('wiodate').Value;
  //wiotime:=ZQuery_wio.FieldByName('wiotime').Value;
  wiplace:=ZQuery_wio.FieldByName('wiplace').Value;
  widate:=ZQuery_wio.FieldByName('widate').Value;
  wimark:=ZQuery_wio.FieldByName('wimark').Value;
  indate:=ZQuery_wio.FieldByName('indate').Value;
  mark:=ZQuery_wio.FieldByName('mark').Value;
  pps:=ZQuery_wio.FieldByName('pps').Value;
  picture:=ZQuery_wio.FieldByName('picture').Value;

  Try
    cntint:=StrToInt(cnt);
    wisum:=wisum-wiexmo;
    //---------------------------20130408修改
    if wiquty=cntint then
      takem:=wisum
    else
      begin
      wismo:=Rounda(wisum/wiquty,0);
      takem:=wismo*cntint;
      end;
    //---------------------------20130408修改
    ZQuery_wio.Edit;
    ZQuery_wio.FieldByName('wiquty').Value:=cntint;
    ZQuery_wio.FieldByName('wisum').Value:=takem; //20130408取件小計金額
    ZQuery_wio.FieldByName('wiodate').Value:=ChinaDate1(Date);
    ZQuery_wio.FieldByName('wiotime').Value:=time;
    ZQuery_wio.FieldByName('wisel').AsString:='S';
    //ZQuery_wio.FieldByName('mark').AsString:='*';
    ZQuery_wio.Post;
    wwDBGrid1.SelectRecord;
    wiquty:=wiquty-cntint;
    wiitem:=copy('*'+wiitem,1,6);
    if wiquty>0 then
      begin
      ZQuery_wio.Insert;
      ZQuery_wio.FieldByName('wicode').Value:=wicode;
      ZQuery_wio.FieldByName('wisno').Value:=wisno;
      ZQuery_wio.FieldByName('crcode').Value:=crcode;
      ZQuery_wio.FieldByName('wiitem').Value:=wiitem;
      ZQuery_wio.FieldByName('winame').Value:=winame;
      ZQuery_wio.FieldByName('wiwash').Value:=wiwash;
      ZQuery_wio.FieldByName('wiwamo').Value:=wiwamo;
      ZQuery_wio.FieldByName('wiquty').Value:=wiquty;
      ZQuery_wio.FieldByName('wisum').Value:=wisum-takem+wiexmo; //20130408剩餘小計金額
      ZQuery_wio.FieldByName('wiurge').Value:=wiurge;
      ZQuery_wio.FieldByName('wiacc').Value:=wiacc;
      ZQuery_wio.FieldByName('wimemo').Value:=wimemo;
      ZQuery_wio.FieldByName('wiexkind').Value:=wiexkind;
      ZQuery_wio.FieldByName('wiexmo').Value:=wiexmo;
      ZQuery_wio.FieldByName('widay').Value:=widay;
      ZQuery_wio.FieldByName('wimdate').Value:=wimdate;
      //ZQuery_wio.FieldByName('wiodate').Value:='';
      //ZQuery_wio.FieldByName('wiotime').Value:=Null;
      ZQuery_wio.FieldByName('wiplace').Value:=wiplace;
      ZQuery_wio.FieldByName('widate').Value:=widate;
      ZQuery_wio.FieldByName('wimark').Value:=wimark;
      ZQuery_wio.FieldByName('indate').Value:=indate;
      ZQuery_wio.FieldByName('mark').Value:=mark;
      ZQuery_wio.FieldByName('pps').Value:=pps;
      ZQuery_wio.FieldByName('picture').Value:=picture;
      ZQuery_wio.Post;
      end;
  except
    ShowMessage('取件錯誤！');
  end;
end;

procedure TWioGetF2Form.Calwipcs(crcode,wicode: String);
var
  nget: String;
begin
  if oldwicode<>wicode then
    begin
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT wicode,crcode,wiodate FROM wio');
    ZQuery1.SQL.Add('WHERE crcode='''+crcode+'''');
    if sflag then
      ZQuery1.SQL.Add('AND ((wiodate='''')OR(wimemo like ''未付%''))');
    ZQuery1.SQL.Add('GROUP BY wicode');
    ZQuery1.Open;
    lb_wino.Caption:=IntToStr(ZQuery1.RecordCount);
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT sum(wiquty)as quty, sum(wisum)as sum FROM wio');
    ZQuery1.SQL.Add('WHERE wicode='''+wicode+'''');
    ZQuery1.SQL.Add('AND (wiodate='''')');
    ZQuery1.Open;
    Label_tq.Caption:=IntToStr(ZQuery1.FieldByName('quty').AsInteger);
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT sum(wiquty)as quty, sum(wisum)as sum FROM wio');
    ZQuery1.SQL.Add('WHERE wicode='''+wicode+'''');
    ZQuery1.Open;
    lb_All.Caption:=IntToStr(ZQuery1.FieldByName('quty').AsInteger);
    lb_total.Caption:=IntToStr(ZQuery1.FieldByName('sum').AsInteger);
    ZQuery1.Close;
    oldwicode:=wicode;
  end;
end;

procedure TWioGetF2Form.PrintF9(index: Integer);
var
  quty: Integer;
  sum: Real;
  today: String;
begin
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.Enabled:=True;
  frxReport1.LoadFromFile(WDM.WPath+'Report\F2Report.rep');
  Panel_F9.SendToBack;
  if index=1 then
    begin
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQueryF9.SQL.Add('AND wiodate='''+ChinaDate1(Date)+'''');
    ZQueryF9.SQL.Add('AND (wisel=''S'')');
    ZQueryF9.SQL.Add('ORDER BY wicode,wisno');
    ZQueryF9.Open;
    (frxReport1.FindObject('Memo8')as TfrxMemoView).Text:='取件列印';
    end
  else if index=2 then
    begin
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQueryF9.SQL.Add('AND wiodate=''''');
    ZQueryF9.SQL.Add('ORDER BY wicode,wisno');
    ZQueryF9.Open;
    (frxReport1.FindObject('Memo8')as TfrxMemoView).Text:='未取列印';
    end
  else
    begin
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
    //ZQueryF9.SQL.Add('AND wiodate=''''');
    ZQueryF9.SQL.Add('ORDER BY wicode,wisno');
    ZQueryF9.Open;
    (frxReport1.FindObject('Memo8')as TfrxMemoView).Text:=ZQuery_wio.FieldByName('wimdate').AsString+'補單';
    end;
  quty:=0;
  sum:=0;
  today:=ChinaDate1(Date);
  ZQueryF9.First;
  while not ZQueryF9.Eof do
    begin
    quty:=quty+ZQueryF9.FieldByName('wiquty').Value;
    sum:=sum+ZQueryF9.FieldByName('wisum').Value;
    ZQueryF9.Next;
    end;
  (frxReport1.FindObject('Memo1')as TfrxMemoView).Text:=IntToStr(quty)+'件';
  (frxReport1.FindObject('Memo2')as TfrxMemoView).Text:=FloatToStr(sum);
  (frxReport1.FindObject('Memo3')as TfrxMemoView).Text:=lbDiscount.Caption;
  (frxReport1.FindObject('Memo4')as TfrxMemoView).Text:=lbPay.Caption;
  if StrToFloat(lbNowMoney.Caption)>=0 then
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:='0'
  else
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:=lbNowMoney.Caption;
  if index=3 then
    (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:=ZQuery_wio.FieldByName('wicode').AsString
  else
    (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:='未取:'+lbNoGet.Caption+'件';

  (frxReport1.FindObject('VPEDATE')as TfrxMemoView).Text:=''; //VIP到期日

  if ZQueryF9.FieldByName('crvip').AsString='Y' then
    begin
    try
      ZQueryVip.Close;
      ZQueryVip.SQL.Clear;
      ZQueryVip.SQL.Add('SELECT * FROM vip');
      ZQueryVip.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
      ZQueryVip.SQL.Add('ORDER BY vpcode DESC');
      ZQueryVip.Open;
      (frxReport1.FindObject('VPEDATE')as TfrxMemoView).Text:=ZQueryVip.FieldByName('vpedate').AsString;
    except

    end;
    ZQueryVip.Close; //取得VIP到期日
    end;
    //frxReport1.ShowReport;
    frxReport1.PrepareReport;
    frxReport1.PrintOptions.ShowDialog := False; //不顯示對話框
    //frxReport1.PrintOptions.Printer := PrinterName; //指定印表機
    frxReport1.Print; //列印

    if (index=3)AND(WDM.ZTableCompy.FieldByName('SP300').AsString='是') then
      SP300(True)
    else
      SP300(False);
    fkey:='';
    wwDBGrid1.SetFocus;
end;

procedure TWioGetF2Form.SP300(flag: Boolean);
var
  F: TextFile;
  i, j, k, rno: Integer;
begin
  if flag then
    begin
    AssignFile(F, 'LPT2');// LPT2,COM1,COM2...
    Rewrite(F);
    Write(F, #14); // 字型擴展
    Write(F, #27+'0'); // Set 1/8-inch line feed
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
    ZQueryF9.SQL.Add('ORDER BY wicode,wisno');
    ZQueryF9.Open;
    ZQueryF9.First;
    i:=0;
    rno:=0;
    while not ZQueryF9.Eof do
      begin
      rno:=rno+ZQueryF9.FieldByName('wiquty').AsInteger;
      ZQueryF9.Next;
      end;
    ZQueryF9.First;
    while not ZQueryF9.Eof do
      begin
      for j:=1 to ZQueryF9.FieldByName('wiquty').AsInteger do
        begin
        i:=i+1;
        Writeln(F, ZQueryF9.FieldByName('wicode').AsString+'-'+IntToStr(i)+'-'+ZQueryF9.FieldByName('widate').AsString);
        Writeln(F, Copy(ZQueryF9.FieldByName('wiwash').AsString,1,2)+' '+IntToStr(rno)+ZQueryF9.FieldByName('crname').AsString+' '+ZQueryF9.FieldByName('winame').AsString);//+' '+ZQueryF9.FieldByName('wiitem').AsString);
        Write(F, #27+'a'+chr(5));
        Write(F, #27+'d0'); //切刀
        Write(F, #27+'j'+chr(52)); //Feed paper n lines n/72 inch.
        end;
      k:=1;
      if Pos('2',ZQueryF9.FieldByName('winame').AsString)<>0 then
        k:=2;
      if Pos('3',ZQueryF9.FieldByName('winame').AsString)<>0 then
        k:=3;
      if k<>1 then
        for j:=2 to k do
          begin
          i:=i+1;
          Writeln(F, ZQueryF9.FieldByName('wicode').AsString+'-'+IntToStr(i)+'-'+ZQueryF9.FieldByName('widate').AsString);
          Writeln(F, Copy(ZQueryF9.FieldByName('wiwash').AsString,1,2)+' '+IntToStr(rno)+ZQueryF9.FieldByName('crname').AsString+' '+ZQueryF9.FieldByName('winame').AsString);//+' '+ZQueryF9.FieldByName('wiitem').AsString);
          Write(F, #27+'a'+chr(5));
          Write(F, #27+'d0'); //切刀
          Write(F, #27+'j'+chr(52)); //Feed paper n lines n/72 inch.
          end;
      ZQueryF9.Next;
      end;
    ZQueryF9.Close;
    CloseFile(F);
  end;
end;

Function TWioGetF2Form.ShowExKind(): Boolean;
begin
  ZQuery.Close;
  ZQuery.SQL.Text:='SELECT * FROM waexkind ';//limit '+IntToStr(page)+', 70';
  ZQuery.Open;
  RG_ExKind.Items.Clear;
  while not ZQuery.Eof do
    begin
    RG_ExKind.Items.Add(ZQuery.FieldByName('wano7').AsString+' '+ZQuery.FieldByName('waexkind').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

Function TWioGetF2Form.New_wo(kind: Integer): Boolean;
var
  crpsen, cppsen, psen: Real;
  fritem: String;
begin
  WDM.ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);
  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE crcode='''+WDM.crcode+'''';
  ZQuery_wo.Open;
  if kind=1 then
    begin
    fritem:='O'; // O.取件修改
    Try
      ZQuery_wo.Insert;
      ZQuery_wo.FieldByName('crcode').AsString:=WDM.crcode;
      //ZQuery_wo.FieldByName('wicode').Value:='000000';
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
      ZQuery_wo.FieldByName('widate').AsString:=ChinaDate1(Date);
      ZQuery_wo.FieldByName('witime').AsString:=FormatDateTime('hh:mm:ss',Time);
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
      crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
      WDM.ZQuery_cr.Post;
    Except
      ShowMessage('cr資料庫修改錯誤！');
    end;
    end
  else if kind=2 then
    begin
    Try
      ZQuery_wo.Insert;
      ZQuery_wo.FieldByName('crcode').Value:=WDM.crcode;
      ZQuery_wo.FieldByName('wicode').Value:=ZQuery_wio.FieldByName('wicode').AsString;
      ZQuery_wo.FieldByName('wisno').Value:=ZQuery_wio.FieldByName('wisno').AsString;
      ZQuery_wo.FieldByName('wototal').AsFloat:=crmoneyVal;
      ZQuery_wo.FieldByName('woptotal').AsFloat:=oldcrmoney;
      ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
      ZQuery_wo.FieldByName('worealmo').AsFloat:=0;
      ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
      ZQuery_wo.FieldByName('widate').Value:=ChinaDate1(Date);
      ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:mm:ss',Time);
      ZQuery_wo.FieldByName('frgetmo').AsFloat:=ZQuery_wio.FieldByName('wiexmo').Value;
      ZQuery_wo.FieldByName('fritem').AsString:='G'; // P.加工收款
      ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
      ZQuery_wo.Post;
    Except
      ShowMessage('加工紀錄錯誤！');
    end;
    end;
end;

Function TWioGetF2Form.Setpflag():Boolean;
begin
  ZQuery_wio.Edit;
  if (ZQuery_wio.FieldByName('mark').AsString='N') or (ZQuery_wio.FieldByName('mark').AsString='') then
    ZQuery_wio.FieldByName('mark').AsString:='Y'
  else
    ZQuery_wio.FieldByName('mark').AsString:='N';
  ZQuery_wio.Post;
end;

Function TWioGetF2Form.ClearPlace():Boolean;
var
  wimemo: String;
begin
  //if (ZQuery_wio.FieldByName('wiplace').AsString='付清')OR(ZQuery_wio.FieldByName('wiplace').AsString='未付') then
    //begin
    ZQuery_wio.Edit;
    //ZQuery_wio.FieldByName('wiplace').AsString:='';
    wimemo:=ZQuery_wio.FieldByName('wimemo').AsString;
    wimemo:=StringReplace(wimemo,'未付','',[]);
    wimemo:=StringReplace(wimemo,'付清','',[]);
    ZQuery_wio.FieldByName('wimemo').AsString:=wimemo;
    ZQuery_wio.Post;
    //end;
end;

Function TWioGetF2Form.PayClear():Boolean;
var
  wimemo: String;
begin
  ZQuery_wio.Edit;
  wimemo:=StringReplace(ZQuery_wio.FieldByName('wimemo').AsString,'未付','',[rfReplaceAll, rfIgnoreCase]);
  wimemo:=StringReplace(wimemo,'付清','',[rfReplaceAll, rfIgnoreCase]);
  ZQuery_wio.FieldByName('wimemo').AsString:='付清'+wimemo;
  ZQuery_wio.Post;
  Result:=True;
end;

Function TWioGetF2Form.NotPay():Boolean;
var
  wimemo: String;
begin
  ZQuery_wio.Edit;
  wimemo:=StringReplace(ZQuery_wio.FieldByName('wimemo').AsString,'未付','',[rfReplaceAll, rfIgnoreCase]);
  wimemo:=StringReplace(wimemo,'付清','',[rfReplaceAll, rfIgnoreCase]);
  ZQuery_wio.FieldByName('wimemo').AsString:='未付'+wimemo;
  ZQuery_wio.Post;
  Result:=True;
end;

Function TWioGetF2Form.ReadWio():Boolean;
begin
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_wio.SQL.Add('AND (wiodate is Null OR wiodate='''' OR wimemo like ''未付%'')');
  ZQuery_wio.SQL.Add('ORDER BY wicode, wisno');
  ZQuery_wio.Open;
  GetQuty.Caption:='';
  GetMoney.Caption:='';
  Result:=True;
end;

Function TWioGetF2Form.CalNotGet():Boolean;
begin
  ZQuery_sum.Close;
  ZQuery_sum.SQL.Clear;
  ZQuery_sum.SQL.Add('SELECT sum(wiquty)as s_quty, sum(wisum)as s_sum FROM wio');
  ZQuery_sum.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_sum.SQL.Add('AND wiodate=''''');
  ZQuery_sum.Open;
  ngquty:=ZQuery_sum.FieldByName('s_quty').AsInteger;
  ngsum:=ZQuery_sum.FieldByName('s_sum').AsInteger;
  ZQuery_sum.Close;
  lbNoGet.Caption:=IntToStr(ngquty);
  Result:=True;
end;

Function TWioGetF2Form.CalGetCount(): Boolean;
var
  amount: Real;
  gquty, i: Integer;
  bm: TBookmark;
begin
  //計算取件數量與總金額
  gquty:=0;
  amount:=0;
  {with wwDBGrid1, wwDBGrid1.DataSource.DataSet do
  begin
      bm:=GetBookmark;
      DisableControls;     //Disable controls to improve performance
      for i:= 0 to SelectedList.Count-1 do
        begin
        GotoBookmark(SelectedList.items[i]);
        gquty:=gquty+wwDBGrid1.DataSource.DataSet.FieldByName('wiquty').AsInteger;
        amount:=amount+wwDBGrid1.DataSource.DataSet.FieldByName('wisum').AsFloat;
        //Freebookmark(SelectedList.items[i]);
        end;
      EnableControls;      //Reenable controls
      GotoBookmark(bm);
   end;}

  ZQuery_sum.Close;
  ZQuery_sum.SQL.Clear;
  ZQuery_sum.SQL.Add('SELECT sum(wiquty) as s_quty, sum(wisum)as s_sum FROM wio');
  ZQuery_sum.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_sum.SQL.Add('AND wiodate='''+ChinaDate1(Date)+'''');
  ZQuery_sum.SQL.Add('AND wisel=''S''');
  //ZQuery_sum.SQL.Add('AND mark=''*''');
  ZQuery_sum.Open;
  gquty:=ZQuery_sum.FieldByName('s_quty').AsInteger;
  amount:=ZQuery_sum.FieldByName('s_sum').AsFloat;
  ZQuery_sum.Close;

  GetQuty.Caption:=IntToStr(gquty);
  GetMoney.Caption:=FloatToStr(amount);
  LabelP2.Caption:=GetMoney.Caption;    //本次金額
  lbNoGet.Caption:=IntToStr(ngquty-gquty);
  Result:=True;
end;

Function TWioGetF2Form.GetCust():Boolean;
begin
  //DBGrid1.SelectedRows.Clear;
  WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
  Hlbcrpsen.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value)+'%';
  Hlbcppsen.Caption:=FloatToStr(WDM.ZTableCompy.FieldByName('cppsen').Value)+'%';
  Caption:='取件作業-'+WDM.ZQuery_cr.FieldByName('cradr').AsString+'-電腦號：'+WDM.ZQuery_cr.FieldByName('crtelb').AsString;
  
  if WDM.displayvip.Value=1 then
    begin
    ZReadOnlyQuery_vip.Close;
    ZReadOnlyQuery_vip.SQL.Clear;
    ZReadOnlyQuery_vip.SQL.Add('SELECT crcode,vpsdate,vpedate FROM vip');
    ZReadOnlyQuery_vip.SQL.Add('WHERE crcode='''+WDM.ZQuery_cr.FieldByName('crcode').AsString+'''');
    ZReadOnlyQuery_vip.SQL.Add('ORDER BY vpsdate DESC');
    ZReadOnlyQuery_vip.Open;
    Caption:=Caption+'-VIP:'+ZReadOnlyQuery_vip.FieldByName('vpsdate').AsString+'~'+ZReadOnlyQuery_vip.FieldByName('vpedate').AsString;
    ZReadOnlyQuery_vip.Close;
    end;
end;

procedure TWioGetF2Form.Button3Click(Sender: TObject);
begin
  //Notebook1.PageIndex:=1;
  //Edit1.SetFocus;
end;

procedure TWioGetF2Form.Action_F5Execute(Sender: TObject);
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    fkey:='F5';
    wwDBGrid1.DataSource.DataSet.DisableControls;
    {ZQuery_wio.First;
    while not ZQuery_wio.Eof do
      begin
      if (ZQuery_wio.FieldByName('wiplace').AsString<>'') OR (getitem='是') then
        if (ZQuery_wio.FieldByName('wiodate').AsString=ChinaDate1(Date))OR(ZQuery_wio.FieldByName('wiodate').AsString='') then
          begin
          ZQuery_wio.Edit;
          ZQuery_wio.FieldByName('wiodate').AsString:=ChinaDate1(date);
          ZQuery_wio.FieldByName('wiotime').Value:=time;
          ZQuery_wio.FieldByName('wisel').AsString:='S';
          ZQuery_wio.FieldByName('mark').AsString:='*';
          amount:=amount+ZQuery_wio.FieldByName('wisum').AsFloat;
          ZQuery_wio.Post;
          wwDBGrid1.SelectRecord;
          end;
      ZQuery_wio.Next;
      end;}
    if WDM.ZTableCompy.FieldByName('getdisplay').AsString='1' then
      begin
      Try
        ZQuery1.Close;
        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('UPDATE wio');
        //ZQuery1.SQL.Add('SET wiodate='''+ChinaDate1(date)+''',wiotime='''+FormatDateTime('hhnnss',Time)+''',wisel=''S'',mark=''*''');
        ZQuery1.SQL.Add('SET wiodate='''+ChinaDate1(date)+''',wiotime='''+FormatDateTime('hhnnss',Time)+''',wisel=''S''');
        ZQuery1.SQL.Add('WHERE (crcode='''+WDM.crcode+''')');
        ZQuery1.SQL.Add('AND(wicode='''+ZQueryGWio.FieldByName('wicode').AsString+''')');
        ZQuery1.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
        if getitem<>'是' then
          ZQuery1.SQL.Add('AND(wiplace<>'''')');
        ZQuery1.ExecSQL;
        ZQuery_wio.Close;
        ZQuery_wio.Open;
        ZQuery_wio.First;
        CalGetCount();
      except
        ShowMsg('執行錯誤！');
      end; //Try
      end
    else
      begin
      Try
        ZQuery1.Close;
        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('UPDATE wio');
        //ZQuery1.SQL.Add('SET wiodate='''+ChinaDate1(date)+''',wiotime='''+FormatDateTime('hhnnss',Time)+''',wisel=''S'',mark=''*''');
        ZQuery1.SQL.Add('SET wiodate='''+ChinaDate1(date)+''',wiotime='''+FormatDateTime('hhnnss',Time)+''',wisel=''S''');
        ZQuery1.SQL.Add('WHERE (crcode='''+WDM.crcode+''')');
        ZQuery1.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
        if getitem<>'是' then
          ZQuery1.SQL.Add('AND(wiplace<>'''')');
        ZQuery1.ExecSQL;
        ZQuery_wio.Close;
        ZQuery_wio.SQL.Clear;
        ZQuery_wio.SQL.Add('SELECT * FROM wio');
        ZQuery_wio.SQL.Add('WHERE (crcode='''+WDM.crcode+''')');
        ZQuery_wio.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
        ZQuery_wio.SQL.Add('ORDER BY wicode,wisno');
        ZQuery_wio.Open;
        ZQuery_wio.First;
        CalGetCount();
      except
        ShowMsg('執行錯誤！');
      end; //Try
      end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    fkey:='';
    end;
end;

procedure TWioGetF2Form.Action_F6Execute(Sender: TObject);
var
  amount: real;
  s: Integer;
  bm: TBookmark;
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    fkey:='F6';
    wwDBGrid1.DataSource.DataSet.DisableControls;
    {for s:=0 to wwDBGrid1.SelectedList.Count-1 do
      begin
      ZQuery_wio.GotoBookmark(wwDBGrid1.SelectedList.Items[s]);
      if (ZQuery_wio.FieldByName('wiplace').AsString<>'') OR (getitem='是') then
          if (ZQuery_wio.FieldByName('wiodate').AsString=ChinaDate1(Date))OR(ZQuery_wio.FieldByName('wiodate').AsString='') then
            begin
            ZQuery_wio.Edit;
            ZQuery_wio.FieldByName('wiodate').AsString:='';
            ZQuery_wio.FieldByName('wiotime').Value:=Null;
            ZQuery_wio.FieldByName('wisel').AsString:='';
            ZQuery_wio.FieldByName('mark').AsString:='';
            ZQuery_wio.Post;
            end;
      end;
    wwDBGrid1.SelectedList.Clear;}
    Try
      ZQuery1.Close;
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('UPDATE wio');
      //ZQuery1.SQL.Add('SET wiodate='''',wiotime=Null,wisel='''',mark=''''');
      ZQuery1.SQL.Add('SET wiodate='''',wiotime=Null,wisel=''''');
      ZQuery1.SQL.Add('WHERE (crcode='''+WDM.crcode+''')');
      ZQuery1.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
      if getitem<>'是' then
        ZQuery1.SQL.Add('AND(wiplace<>'''')');
      ZQuery1.ExecSQL;
      ZQuery_wio.Close;
      ZQuery_wio.Open;
      ZQuery_wio.First;
      CalNotGet();
      CalGetCount();
    except
      ShowMsg('執行錯誤！');
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    fkey:='';
    end;
end;

procedure TWioGetF2Form.Action_ExitExecute(Sender: TObject);
var
  s: Integer;
begin
  if fkey='F4' then
    begin
    Panel_F4.SendToBack;
    wwDBGrid1.Enabled:=True;
    fkey:='';
    FBCode:='';
    end
  else if fkey='F9' then
    begin
    Panel_F9.SendToBack;
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
  else if fkey='CF5' then
    begin
    fkey:='';
    Panel_EXKind.SendToBack;
    Panel_Ex.SendToBack;
    Edit_exkind.Text:='';
    Edit_exkp.Text:='0';
    end
  else if fkey='G' then
    begin
    fkey:='';
    if wwdbgrid1.IsSelected then
       wwdbgrid1.UnselectRecord;
    PanelGet.SendToBack;
    end
  else
    Close;

  wwDBGrid1.Enabled:=True;
  wwDBGrid1.SetFocus;
end;

procedure TWioGetF2Form.Action_F11Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F11';
    //Panel_History.Visible:=True;
    Panel_History.BringToFront;
    RadioButton1.SetFocus;
    end;
end;

procedure TWioGetF2Form.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    Panel_F9.BringToFront;
    RadioButtonF91.SetFocus;
    end;
end;

procedure TWioGetF2Form.Action_F12Execute(Sender: TObject);
var
  lack: Real;
begin
  if fkey='' then
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
    MoneyBox(WDM.COMUSE.Value); //錢櫃
    end;
end;

procedure TWioGetF2Form.Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AddVal, NowVal: Real;
begin
  if (Key=VK_Return) AND (fkey='F12')  then
    begin
    fkey:='';
    Panel_Pay.SendToBack; //收款後處理計算
    NowVal:=StrToFloat(lbNowMoney.Caption);
    PayVal:=StrToFloat(Edit_Pay.Text); //付款
    DiscountVal:=StrToFloat(Edit_Discount.Text); //折讓
    TotalVal:=NowVal+PayVal+DiscountVal;
    lbPay.Caption:=FloatToStr(StrToFloat(lbPay.Caption)+StrToFloat(Edit_Pay.Text));
    lbDiscount.Caption:=FloatToStr(StrToFloat(lbDiscount.Caption)+StrToFloat(Edit_Discount.Text));
    lbNowMoney.Caption:=FloatToStr(TotalVal);
    if TotalVal>=0 then
      lbNowMoney.Font.Color:=ClYellow
    else
      lbNowMoney.Font.Color:=ClRed;
    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    New_wo(1);
    wwDBGrid1.SetFocus;
    Key:=0;
    end;  
  if (Key=VK_Up)or(Key=VK_Left) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 1, 0);
    end;
end;

procedure TWioGetF2Form.Edit_PayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)or(Key=VK_Down)or(Key=VK_Right) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    Edit_Discount.SelectAll;
    end;
end;

procedure TWioGetF2Form.Action_CtrlPExecute(Sender: TObject);
begin
  if (ZQuery_wio.RecordCount>0) AND(ZQuery_wio.FieldByName('picture').AsString<>'') and (fkey='') then
    begin
    Image1Click(Self);
    wwDBGrid1.SetFocus;
    end
  else
    ShowMessage('沒有照片！');
end;

procedure TWioGetF2Form.Action_CtrlF5Execute(Sender: TObject);
begin
  if (fkey='')and(ZQuery_wio.FieldByName('wiodate').AsString='') then
    begin
    fkey:='CF5';
    wwDBGrid1.Enabled:=False;
    Edit_exkind.Text:=ZQuery_wio.FieldByName('wiexkind').AsString;
    Edit_exkp.Text:=FloatToStr(ZQuery_wio.FieldByName('wiexmo').Value);
    Edit_exkind.SetFocus;
    Panel_EXKind.BringToFront;
    end
end;

procedure TWioGetF2Form.Edit_exkindEnter(Sender: TObject);
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

procedure TWioGetF2Form.Edit_exkindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return)OR(Key=VK_DOWN)OR(Key=VK_RIGHT) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioGetF2Form.Edit_exkindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  wamo: Real;
begin
  if fkey='CF5' then 
    if OldEditStr<>'' then
      newvalue:=StringReplace(Edit_exkind.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
    else
      newvalue:=Edit_exkind.Text;
    if (length(newvalue)=2) then
      begin
      WDM.ZQuerywaexkind.Close;
      WDM.ZQuerywaexkind.ParamByName('wano7').AsString:=newvalue;
      WDM.ZQuerywaexkind.Open;
      if WDM.ZQuerywaexkind.RecordCount>0 then
        begin
        newvalue:=WDM.ZQuerywaexkind.FieldByName('waexkind').AsString;
        Edit_exkind.Text:=OldEditStr+newvalue;
        Edit_exkp.Text:=WDM.ZQuerywaexkind.FieldByName('waexmo').Value;
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

procedure TWioGetF2Form.Edit_exkpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fkey='CF5' then
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
    if (Key=VK_Return) then
      begin
      fkey:='';
      wwDBGrid1.Enabled:=True;
      Panel_Ex.SendToBack;
      Panel_EXKind.SendToBack;
      ZQuery_wio.Edit;
      ZQuery_wio.FieldByName('wiexkind').AsString:=Edit_exkind.Text;
      oldv:=ZQuery_wio.FieldByName('wiexmo').Value;
      ZQuery_wio.FieldByName('wiexmo').Value:=StrToInt(Edit_exkp.Text);
      ZQuery_wio.FieldByName('wisum').Value:=ZQuery_wio.FieldByName('wisum').Value+StrToInt(Edit_exkp.Text)-oldv;
      ZQuery_wio.Post;
      wwDBGrid1.SetFocus;
      try
        WDM.ZQuery_cr.Edit;
        oldcrmoney:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
        WDM.ZQuery_cr.FieldByName('crmoney').AsFloat:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat+oldv-StrToInt(Edit_exkp.Text);
        crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
        lbNowMoney.Caption:=FloatToStr(crmoneyVal);
        WDM.ZQuery_cr.Post;
      Except
        ShowMessage('cr修改錯誤！');
      end;
      New_wo(2); //取件加工記錄
      end;
    end;
end;

procedure TWioGetF2Form.RG_ExKindClick(Sender: TObject);
var
  ivalue: String;
begin
  if fkey='CF5' then
    begin
    ivalue:=SubStr(RG_ExKind.Items.Strings[RG_ExKind.ItemIndex],1,2);
    WDM.ZQuerywaexkind.Close;
    WDM.ZQuerywaexkind.ParamByName('wano7').Value:=ivalue;
    WDM.ZQuerywaexkind.Open;
    if WDM.ZQuerywaexkind.RecordCount>0 then
      begin
      Edit_exkind.Text:=WDM.ZQuerywaexkind.FieldByName('waexkind').Value;
      Edit_exkp.Text:=WDM.ZQuerywaexkind.FieldByName('waexmo').Value;
      end;
    WDM.ZQuerywaexkind.Close;
    Panel_Ex.SendToBack;
    Edit_exkp.SetFocus;
    end;
end;

procedure TWioGetF2Form.FormCreate(Sender: TObject);
begin
  ProfileFile1.FileName:=WDM.WPath+'Clothes.ini';
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  GetKB:=GetKey.Value;
  FBCode:='';
  f4flag:=WDM.f4flag.Value;
  f5flag:=WDM.f5flag.Value;
  if f4flag=1 then
    begin
    RzToolbarButtonGet.Visible:=False;
    Action_F4.Enabled:=False;
    end;
  if f5flag=1 then
    begin
    RzToolbarButtonSAll.Visible:=False;
    Action_F5.Enabled:=False;
    end;
  Panel_Pay.SendToBack;
  Panel_History.SendToBack;
  Panel_EXKind.SendToBack;
  Panel_Ex.SendToBack;
  Panel_F9.SendToBack;
  PanelGet.SendToBack;
  Panel_F4.SendToBack;

  GetCust();
  if WDM.ZQuery_cr.FieldByName('crvip').AsString='Y' then
    Image2.Visible:=True
  else
    Image2.Visible:=False;
  crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
  lbNowMoney.Caption:=FloatToStr(crmoneyVal);
  if crmoneyVal<0 then
    lbNowMoney.Font.Color:=ClRed
  else
    lbNowMoney.Font.Color:=ClYellow;

  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  getitem:=WDM.ZTableCompy.FieldByName('getitem').AsString;
  exitstr:=WDM.ZTableCompy.FieldByName('exit').AsString;
  //lb_wicode.Caption:='';

  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_wio.SQL.Add('AND (wiodate='''' OR wimemo like ''未付%'')');
  ZQuery_wio.SQL.Add('ORDER BY wicode,wisno');
  ZQuery_wio.Open;
  CalNotGet();
  lbPay.Caption:='0';
  lbDiscount.Caption:='0';
  lb_total.Caption:='0';
  ZQuery_wio.Next;
  ZQuery_wio.First;

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='GetF2'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
  wwDBGrid2.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid2.IniAttributes.SectionName:='GetF2_Left';
  wwDBGrid2.LoadFromIniFile;

  if WDM.ZTableCompy.FieldByName('getdisplay').AsString='1' then
    begin
    ZQueryGWio.Close;
    ZQueryGWio.SQL.Clear;
    ZQueryGWio.SQL.Add('SELECT * FROM wio');
    ZQueryGWio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQueryGWio.SQL.Add('AND (wiodate='''' OR wimemo like ''未付%'')');
    ZQueryGWio.SQL.Add('GROUP BY wicode');
    ZQueryGWio.SQL.Add('ORDER BY wicode');
    ZQueryGWio.Open;
    wwDBGrid2.Width:=grid2_size.Value;
    RzToolbarButton_star.Enabled:=False;
    RzToolbarButton_star.Visible:=False;
    end
  else
    begin
    wwDBGrid2.Width:=0;
    RzToolbarButton_star.Enabled:=True;
    RzToolbarButton_star.Visible:=True;
    end;
  sflag:=True;
  Calwipcs(ZQuery_wio.FieldByName('crcode').AsString,ZQuery_wio.FieldByName('wicode').AsString);
  gflag:=False;
end;

procedure TWioGetF2Form.Action_CtrlF1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    rfkey:='CF1';
    Close;
    end;
end;

procedure TWioGetF2Form.Action_CtrlF3Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    rfkey:='CF3';
    Close;
    end;
end;

procedure TWioGetF2Form.Image1Click(Sender: TObject);
begin
  try
    ShowPicForm := TShowPicForm.Create(Application);
    ShowPicForm.PicName:=ZQuery_wio.FieldByName('picture').AsString;
    ShowPicForm.ShowModal;
    FreeAndNil(ShowPicForm);
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioGetF2Form.RadioButton2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    try
      WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
      Panel_History.SendToBack;
      History2Form := THistory2Form.Create(Application);
      History2Form.ShowModal;
      FreeAndNil(History2Form);
      wwDBGrid1.SetFocus;
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetF2Form.RadioButton1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    try
      Panel_History.SendToBack;
      History1Form := THistory1Form.Create(Application);
      History1Form.ShowModal;
      FreeAndNil(History1Form);
      wwDBGrid1.SetFocus;
      wwDBGrid1.UnselectAll;
      FormCreate(Self);
      fkey:='';
    except
      on E: Exception do MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioGetF2Form.RadioButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  try
    Panel_History.SendToBack;
    History1Form := THistory1Form.Create(Application);
    History1Form.ShowModal;
    FreeAndNil(History1Form);
    wwDBGrid1.SetFocus;
    wwDBGrid1.UnselectAll;
    FormCreate(Self);
    fkey:='';
  except
    on E: Exception do MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioGetF2Form.RadioButton2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  try
    Panel_History.SendToBack;
    History2Form := THistory2Form.Create(Application);
    History2Form.ShowModal;
    FreeAndNil(History2Form);
    wwDBGrid1.SetFocus;
    fkey:='';
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioGetF2Form.wwDBGrid1DblClick(Sender: TObject);
begin
  SigGet(0);
end;

procedure TWioGetF2Form.wwDBGrid1RowChanged(Sender: TObject);
var
  crcode,wicode,picname: String;
begin
  //lb_widate.Caption:=ZQuery_wio.FieldByName('widate').AsString;
  crcode:=ZQuery_wio.FieldByName('crcode').AsString;
  wicode:=ZQuery_wio.FieldByName('wicode').AsString;
  if fkey='' then
    begin
    if ZQuery_wio.FieldByName('picture').AsString<>'' then
      begin
      picname:=ExtractFilePath(Application.ExeName)+'Captures\'+ZQuery_wio.FieldByName('picture').AsString;
      if FileExists(picname) then
        begin
        Image1.Picture.LoadFromFile(picname);
        Image1.Visible:=True;
        end;
      end
    else
      Image1.Visible:=False;
    wwDBGrid1.SetFocus;
    Calwipcs(crcode,wicode);
    end;
end;

procedure TWioGetF2Form.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName='wicode' then
    AFont.Color:=ClYellow;
  if Field.FieldName='wiodate' then
    begin
    if Field.Value=ChinaDate1(Date) then
       AFont.Color:=clYellow;
    end;
  if Field.FieldName='wimemo' then
    begin
    if Field.Value='未付' then
       AFont.Color:=clRed;
    if highlight then
       AFont.Color:=clWhite;
    end;
  {if (not highlight) and (Sender as TwwDBGrid).isSelected then
    begin
    ABrush.Color:= clYellow;
    AFont.Color:= clBlack;
    end;
  if (highlight) and (Sender as TwwDBGrid).isSelected then
    begin
    ABrush.Color:= clLime;
    AFont.Color:= clBlack;
    end;}
end;

procedure TWioGetF2Form.RadioButtonF91KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    PrintF9(1);
    end;
end;

procedure TWioGetF2Form.RadioButtonF91MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PrintF9(1);
end;

procedure TWioGetF2Form.RadioButtonF92KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    PrintF9(2);
    end;
end;

procedure TWioGetF2Form.RadioButtonF92MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PrintF9(2);
end;

procedure TWioGetF2Form.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(WioGetF2Form);
  fkey:='';
  oldwicode:='';
  Panel_Pay.Left:=Trunc((Width-Panel_Pay.Width)/2);
  Panel_Pay.Top:=Trunc((Height-Panel_Pay.Height)/2);
  Panel_History.Left:=Trunc((Width-Panel_History.Width)/2);
  Panel_History.Top:=Trunc((Height-Panel_History.Height)/2);
  Panel_EXKind.Left:=Trunc((Width-Panel_EXKind.Width)/2);
  Panel_EXKind.Top:=Trunc((Height-Panel_EXKind.Height)/2);
  Panel_F9.Left:=Trunc((Width-Panel_F9.Width)/2);
  Panel_F9.Top:=Trunc((Height-Panel_F9.Height)/2);
  PanelGet.Left:=Trunc((Width-PanelGet.Width)/2);
  PanelGet.Top:=Trunc((Height-PanelGet.Height)/2);
  Panel_F4.Left:=Trunc((Width-Panel_F4.Width)/2);
  Panel_F4.Top:=Trunc((Height-Panel_F4.Height)/2);

  if WDM.ZTableCompy.FieldByName('getdisplay').AsString='1' then
    wwDBGrid2.SetFocus
  else
    wwDBGrid1.SetFocus;
end;

procedure TWioGetF2Form.RzToolbarButtonNClick(Sender: TObject);
begin
  //if (ZQuery_wio.FieldByName('wiodate').AsString<>'') then
  if fkey='' then
      notPay();
end;

procedure TWioGetF2Form.RzToolbarButtonPClick(Sender: TObject);
begin
  //if (ZQuery_wio.FieldByName('wiodate').AsString<>'') then
  if fkey='' then
    PayClear();
end;

procedure TWioGetF2Form.RzToolbarButtonCClick(Sender: TObject);
begin
  //ClearPlace();
end;

procedure TWioGetF2Form.RadioButtonF93MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PrintF9(3);
end;

procedure TWioGetF2Form.RadioButtonF93KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    PrintF9(3);
    end;
end;

procedure TWioGetF2Form.Action_F7Execute(Sender: TObject);
var
  bm: TBookmark;
  wimemo: String;
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    fkey:='F7';
    //wwDBGrid1.DataSource.DataSet.DisableControls;
    ZQuery_wio.First;
    while not ZQuery_wio.Eof do
      begin
      Application.ProcessMessages;
      //if (ZQuery_wio.FieldByName('wiplace').AsString<>'') OR (getitem='是') then
        //if ZQuery_wio.FieldByName('wiodate').AsString=ChinaDate1(Date) then
          //begin
          ZQuery_wio.Edit;
          //ZQuery_wio.FieldByName('wiplace').AsString:='未付'; 
          wimemo:=StringReplace(ZQuery_wio.FieldByName('wimemo').AsString,'未付','',[rfReplaceAll, rfIgnoreCase]);
          wimemo:=StringReplace(wimemo,'付清','',[rfReplaceAll, rfIgnoreCase]);
          ZQuery_wio.FieldByName('wimemo').AsString:='未付'+wimemo;
          ZQuery_wio.Post;
          //wwDBGrid1.SelectRecord;
          //end;
      ZQuery_wio.Next;
      end;
    ZQuery_wio.First;
    //wwDBGrid1.DataSource.DataSet.EnableControls;
    fkey:='';
    end;
end;

procedure TWioGetF2Form.Action_F8Execute(Sender: TObject);
var
  bm: TBookmark;
  wimemo: String;
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    fkey:='F8';
    wwDBGrid1.DataSource.DataSet.DisableControls;
    ZQuery_wio.First;
    while not ZQuery_wio.Eof do
      begin                       
      Application.ProcessMessages;
      //if (ZQuery_wio.FieldByName('wiplace').AsString<>'') OR (getitem='是') then
        //if ZQuery_wio.FieldByName('wiodate').AsString=ChinaDate1(Date) then
          //begin
          ZQuery_wio.Edit;
          //ZQuery_wio.FieldByName('wiplace').AsString:='付清';
          wimemo:=StringReplace(ZQuery_wio.FieldByName('wimemo').AsString,'未付','',[rfReplaceAll, rfIgnoreCase]);
          wimemo:=StringReplace(wimemo,'付清','',[rfReplaceAll, rfIgnoreCase]);
          ZQuery_wio.FieldByName('wimemo').AsString:='付清'+wimemo;
          ZQuery_wio.Post;
          //wwDBGrid1.SelectRecord;
          //end;
      ZQuery_wio.Next;
      end;
    ZQuery_wio.First;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    fkey:='';
    end;
end;

procedure TWioGetF2Form.wwDBGrid2RowChanged(Sender: TObject);
begin
  ZQuery2.Close;
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('SELECT sum(wiquty)as quty FROM wio');
  ZQuery2.SQL.Add('WHERE wicode='''+ZQueryGWio.FieldByName('wicode').AsString+'''');
  ZQuery2.SQL.Add('ORDER BY wicode,wisno');
  ZQuery2.Open;
  Label_tq.Caption:=IntToStr(ZQuery2.FieldByName('quty').AsInteger);
  ZQuery2.Close;

  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_wio.SQL.Add('AND wicode='''+ZQueryGWio.FieldByName('wicode').AsString+'''');
  //ZQuery_wio.SQL.Add('AND (wiodate='''' OR wiplace=''未付'')');
  ZQuery_wio.SQL.Add('ORDER BY wicode,wisno');
  ZQuery_wio.Open;
  wwDBGrid1.SelectedList.Clear;
  while not ZQuery_wio.Eof do
    begin
    if (ZQuery_wio.FieldByName('wiodate').AsString=ChinaDate1(Date)) then
      wwDBGrid1.SelectedList.Add(ZQuery_wio.GetBookmark);
    ZQuery_wio.Next;
    end;
  ZQuery_wio.First;
  wwDBGrid2.SetFocus;
end;

procedure TWioGetF2Form.ZQueryGWioCalcFields(DataSet: TDataSet);
begin
  ZQuery2.Close;
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('SELECT sum(wisum) as total FROM wio');
  ZQuery2.SQL.Add('WHERE wicode='''+ZQueryGWio.FieldByName('wicode').AsString+'''');
  //ZQuery2.SQL.Add('AND (wiodate='''' OR wiplace=''未付'')');
  ZQuery2.Open;
  ZQueryGWio.FieldByName('wi_date').Value:=Copy(ZQueryGWio.FieldByName('widate').AsString,5,5);
  ZQueryGWio.FieldByName('money').Value:=ZQuery2.FieldByName('total').Value;
  ZQuery2.Close;
end;

procedure TWioGetF2Form.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if (((ssCtrl in Shift)AND(key=VK_Left))OR(key=VK_SUBTRACT)OR(key=VK_TAB)OR(key=VK_SPACE))AND(wwDBGrid1.Focused) then
  if ((key=VK_SUBTRACT)OR(key=VK_SPACE))AND((wwDBGrid1.Focused)OR(wwDBGrid2.Focused)) then
    begin
    if wwDBGrid1.Focused then
      begin
      wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
      wwDBGrid2.SetFocus;
      wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect,dgAlwaysShowSelection];
      end
    else
      begin
      wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect,dgAlwaysShowSelection];
      wwDBGrid1.SetFocus;
      wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
      end;
    end;  
  if (key=106) then //*
    begin
    RzToolbarButton_starClick(Self);
    end;
  if (key=107) then //+
    begin
    rfkey:='CF1';
    Close;
    end;
end;

procedure TWioGetF2Form.wwDBGrid2Enter(Sender: TObject);
begin
  wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  wwDBGrid2.SetFocus;
  wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect,dgAlwaysShowSelection];
end;

procedure TWioGetF2Form.wwDBGrid1Enter(Sender: TObject);
begin
  {wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect,dgAlwaysShowSelection];
  wwDBGrid1.SetFocus;
  wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];}
  //焦點進入處
end;

procedure TWioGetF2Form.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName='money' then
    begin
    AFont.Color:=ClAqua;
    AFont.Style:=[fsBold];
    end;
end;

procedure TWioGetF2Form.RzToolbarButton_starClick(Sender: TObject);
begin
  if fkey='' then
    begin
    sflag:=not sflag;
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    if sflag then
      begin
      ZQuery_wio.SQL.Add('AND (wiodate='''' OR wimemo like ''未付%'')');
      RzToolbarButton_star.Caption:='＊.含已取件';
      end
    else
      RzToolbarButton_star.Caption:='＊.只未取件';
    ZQuery_wio.SQL.Add('ORDER BY wicode,wisno');
    ZQuery_wio.Open;
    lbPay.Caption:='0';
    lbDiscount.Caption:='0';
    lb_total.Caption:='0';
    Calwipcs(ZQuery_wio.FieldByName('crcode').AsString,ZQuery_wio.FieldByName('wicode').AsString);
    CalNotGet();
    end;
end;

procedure TWioGetF2Form.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ret: Word;
begin
  if exitstr='是' then
    ret:=MessageBox(handle,PChar('存檔離開？'),'存檔',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2)
  else
    ret:=idYes;

  if ret=idNo then
    Action:=caNone
  else
    begin
    {ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT wicode,crcode,wisel FROM wio');
    ZQuery1.SQL.Add('WHERE crcode='''+WDM.crcode+''' AND wisel=''S''');
    ZQuery1.Open;
    while not ZQuery1.Eof do
      begin
      ZQuery1.Edit;
      ZQuery1.FieldByName('wisel').AsString:='';
      ZQuery1.Post;
      ZQuery1.Next;
      end;}
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE wio');
    ZQuery1.SQL.Add('SET wisel=''''');
    ZQuery1.SQL.Add('WHERE crcode='''+WDM.crcode+''' AND wisel=''S''');
    ZQuery1.ExecSQL;
    if (WDM.ZTableCompy.FieldByName('getdisplay').AsString='1') then
      begin
      wwDBGrid2.SaveToIniFile;
      if (grid2_size.Value<>wwDBGrid2.Width) then
        grid2_size.Value:=wwDBGrid2.Width;
      end;
    end;
end;

procedure TWioGetF2Form.Label20Click(Sender: TObject);
begin
  gflag:=not gflag;
  if gflag then
    begin
    Label20.Caption:='總未取額';
    lbNoGet.Width:=59;
    lbNoGet.Caption:=IntToStr(ngsum);
    end
  else
    begin
    Label20.Caption:='總未取';
    lbNoGet.Width:=34;
    lbNoGet.Caption:=IntToStr(ngquty);
    end;
end;

procedure TWioGetF2Form.Action_CF9Execute(Sender: TObject);
begin
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio');
  ZQueryF9.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQueryF9.SQL.Add('AND wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
  ZQueryF9.SQL.Add('ORDER BY wisno');
  ZQueryF9.Open;
  SP300(True);
end;

procedure TWioGetF2Form.Action_CA1Execute(Sender: TObject);
begin
  frxReport1.LoadFromFile(WDM.WPath+'Report\F2Report.rep');
  frxReport1.DesignReport;
end;

procedure TWioGetF2Form.RzToolbarButtonYClick(Sender: TObject);
begin
  if fkey='' then
    Setpflag();
end;

procedure TWioGetF2Form.Action_CtrlF7Execute(Sender: TObject);
var
  bm: TBookMark;
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    bm:=ZQuery_wio.GetBookmark;
    WDM.fstr:='CF7';
    WDM.wicode:=ZQuery_wio.FieldByName('wicode').AsString;
    //WDM.wisno:=ZQuery_wio.FieldByName('wisno').AsString;
    WioDetailForm := TWioDetailForm.Create(Application);
    WioDetailForm.ShowModal;
    FreeAndNil(WioDetailForm);
    WDM.ZQuery_cr.Close;
    WDM.ZQuery_cr.Open;
    crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
    lbNowMoney.Caption:=FloatToStr(crmoneyVal);
    if crmoneyVal<0 then
      lbNowMoney.Font.Color:=ClRed
    else
      lbNowMoney.Font.Color:=ClYellow;
    ZQuery_wio.Close;
    ZQuery_wio.Open;
    ZQuery_wio.GotoBookmark(bm);
    end;
end;

procedure TWioGetF2Form.Action_F4Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F4';
    wwDBGrid1.Enabled:=False;
    Panel_F4.BringToFront;
    Editsno3.SetFocus;
    end
end;

procedure TWioGetF2Form.Editsno3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  str1: String;
  sint1: Integer;
begin
  if (fkey='F4')AND(Key=VK_Return) then
    begin
    Key:=0;
    str1:=Editsno3.Text;
    //str1:=copy(Editsno3.Text,WDM.position.Value,wisnod); //手機處理
    //str1:=StrZero(StrToInt(Editsno3.Text),wisnod); //手機處理
    //sint1:=Length(str1);
    //str1:=copy(str1,WDM.position.Value,wisnod);
    if ZQuery_wio.Locate('wisno',vararrayof([str1]),[]) then
      SigGet(1)
    else
      begin
      Windows.Beep(1000, 300);
      Windows.Beep(800, 600);
      ShowMessage('非此客人衣物'); //20150727
      end;
    FBCode:='';
    Editsno3.Text:='';
    Editsno3.SetFocus;
    end;
end;

procedure TWioGetF2Form.Action_AltF5Execute(Sender: TObject);
var
  bm: TBookmark;
  crcode, wicode: string;
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    fkey:='AF5';
    bm:=wwDBGrid1.DataSource.DataSet.GetBookmark;
    wwDBGrid1.DataSource.DataSet.DisableControls;
    if WDM.ZTableCompy.FieldByName('getdisplay').AsString='2' then
      begin
      Try
        crcode:=WDM.crcode;
        wicode:=ZQuery_wio.FieldByName('wicode').AsString;
        ZQuery1.Close;
        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('UPDATE wio');
        ZQuery1.SQL.Add('SET wiodate='''+ChinaDate1(date)+''',wiotime='''+FormatDateTime('hhnnss',Time)+''',wisel=''S''');
        ZQuery1.SQL.Add('WHERE (crcode='''+crcode+''')');
        ZQuery1.SQL.Add('AND(wicode='''+wicode+''')');
        ZQuery1.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
        if getitem<>'是' then
          ZQuery1.SQL.Add('AND(wiplace<>'''')');
        ZQuery1.ExecSQL;
        
        ZQuery_wio.Close;
        ZQuery_wio.SQL.Clear;
        ZQuery_wio.SQL.Add('SELECT * FROM wio');
        ZQuery_wio.SQL.Add('WHERE (crcode='''+crcode+''')');
        ZQuery_wio.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
        ZQuery_wio.SQL.Add('ORDER BY wicode,wisno');
        ZQuery_wio.Open;
        ZQuery_wio.First;
        CalGetCount();
        oldwicode:='';
        Calwipcs(crcode,wicode);
      except
        ShowMsg('執行錯誤！');
      end; //Try
      end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    wwDBGrid1.DataSource.DataSet.GotoBookmark(bm);
    fkey:='';
    end;
end;

procedure TWioGetF2Form.Action_AltF6Execute(Sender: TObject);
var
  amount: real;
  s: Integer;
  bm: TBookmark;
  crcode, wicode: String;
begin
  if (fkey='')and(ZQuery_wio.RecordCount>0) then
    begin
    fkey:='AF6';
    bm:=wwDBGrid1.DataSource.DataSet.GetBookmark;
    wwDBGrid1.DataSource.DataSet.DisableControls;
    Try
      crcode:=WDM.crcode;
      wicode:=ZQuery_wio.FieldByName('wicode').AsString;
      ZQuery1.Close;
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('UPDATE wio');
      ZQuery1.SQL.Add('SET wiodate='''',wiotime=Null,wisel=''''');
      ZQuery1.SQL.Add('WHERE (crcode='''+crcode+''')');
      ZQuery1.SQL.Add('AND(wicode='''+wicode+''')');
      ZQuery1.SQL.Add('AND((wiodate='''+ChinaDate1(Date)+''')OR(wiodate=''''))');
      if getitem<>'是' then
        ZQuery1.SQL.Add('AND(wiplace<>'''')');
      ZQuery1.ExecSQL;
      ZQuery_wio.Close;
      ZQuery_wio.Open;
      ZQuery_wio.First;
      CalNotGet();
      CalGetCount();
      oldwicode:='';
      Calwipcs(crcode,wicode);
    except
      ShowMsg('執行錯誤！');
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    wwDBGrid1.DataSource.DataSet.Gotobookmark(bm);
    fkey:='';
    end;
end;

procedure TWioGetF2Form.FormKeyUp(Sender: TObject; var Key: Word;
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
    begin
    FBCode:=UpperCase(FBCode+Char(Key));
    end;
  //Caption:='取件作業'+FBCode;
end;

procedure TWioGetF2Form.wwDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='')AND(Key=VK_RETURN) then
    begin
    Key:=0;
    SigGet(1);
    FBCode:='';
    end
  else if Key=78 then // Press N
    begin
    //if (ZQuery_wio.FieldByName('wiodate').AsString<>'') then
      notPay();
    end
  else if Key=80 then // Press P
    begin
    //if (ZQuery_wio.FieldByName('wiodate').AsString<>'') then
      PayClear();
    end
  else if Key=67 then // Press C
    begin
    ClearPlace();
    end
  else if Key=89 then //Press Y
    begin
    setpflag();
    end;
end;

procedure TWioGetF2Form.Edit_GetcntKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cntstr: String;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    cntstr:=Edit_Getcnt.Text;
    if (StrToInt(cntstr)<=ZQuery_wio.FieldByName('wiquty').AsInteger)and(StrToInt(cntstr)>0) then
      begin
      ProcessGet(cntstr);
      ZQuery_wio.Next;
      CalGetCount();
      Edit_Getcnt.Text:='0';
      PanelGet.SendToBack;
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      fkey:='';
      end;
    end;
end;

end.

