unit DailyRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxClass, frxDBSet, Db, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ActnList, Buttons, RzButton, RzPanel, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, Wwdatsrc, ComCtrls, StdCtrls, Mask, frxDesgn,
  ZAbstractTable, DBCtrls;

type
  TDailyRepForm = class(TForm)
    RzToolbarF12: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    RzToolbarButtonF8: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    RzToolbarButtonF7: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    RzToolbarButtonF10: TRzToolbarButton;
    RzToolbarButtonF5: TRzToolbarButton;
    ActionList1: TActionList;
    ActionF1: TAction;
    ActionF2: TAction;
    ActionF3: TAction;
    ActionF5: TAction;
    ActionF8: TAction;
    ActionF9: TAction;
    ActionF10: TAction;
    ActionF7: TAction;
    ZConnection1: TZConnection;
    frxReportF9: TfrxReport;
    frxDBDSWio: TfrxDBDataset;
    frxDBDS_cr: TfrxDBDataset;
    frxDBDS_Compy: TfrxDBDataset;
    ZQueryWio: TZQuery;
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
    ZQueryWiocrmoney: TFloatField;
    wwDSWio: TwwDataSource;
    ActionESC: TAction;
    frxReportLabel: TfrxReport;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery_sumname: TZQuery;
    frxReportF3: TfrxReport;
    frxDBDSSumName: TfrxDBDataset;
    ZQuery_sumnamesumname: TStringField;
    ZQuery_sumnamesumwash: TStringField;
    ZQuery_sumnamesumwamo: TFloatField;
    ZQuery_sumnamesumquty: TFloatField;
    ZQuery_sumnamesumsum: TFloatField;
    ZQuery_sumnamesumosum: TIntegerField;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    PanelStick: TPanel;
    Label6: TLabel;
    ListBox1: TListBox;
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    wwDBGrid1: TwwDBGrid;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbquty: TLabel;
    lbDate1: TLabel;
    lbDate2: TLabel;
    frxReportF5: TfrxReport;
    ZQuery_wo: TZQuery;
    ZQuery_wio: TZQuery;
    PanelMonth: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    MaskEditMonth: TMaskEdit;
    PanelWicode: TPanel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditwicodeS: TEdit;
    EditwicodeE: TEdit;
    frxReportF7: TfrxReport;
    frxDBDS_wio: TfrxDBDataset;
    ZQuery_wiowicode: TStringField;
    ZQuery_wiowisno: TStringField;
    ZQuery_wiocrcode: TStringField;
    ZQuery_wiowiitem: TStringField;
    ZQuery_wiowiname: TStringField;
    ZQuery_wiowiwash: TStringField;
    ZQuery_wiowiacc: TStringField;
    ZQuery_wiowimemo: TStringField;
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
    ZQuery_wiowisel: TStringField;
    ZQuery_wiopps: TIntegerField;
    ZQuery_wiopicture: TStringField;
    ZQuery_wiocrname: TStringField;
    ZQuery_wio5: TZQuery;
    frxReportF8: TfrxReport;
    ZQuery_Monthly: TZQuery;
    frxDBDS_Monthly: TfrxDBDataset;
    frxReportF10: TfrxReport;
    ZQueryWioExkind: TZQuery;
    frxDBDSWioExkind: TfrxDBDataset;
    ZQueryWioExkindwicode: TStringField;
    ZQueryWioExkindwisno: TStringField;
    ZQueryWioExkindcrcode: TStringField;
    ZQueryWioExkindwiitem: TStringField;
    ZQueryWioExkindwiname: TStringField;
    ZQueryWioExkindwiwash: TStringField;
    ZQueryWioExkindwiacc: TStringField;
    ZQueryWioExkindwimemo: TStringField;
    ZQueryWioExkindwiwamo: TFloatField;
    ZQueryWioExkindwiexkind: TStringField;
    ZQueryWioExkindwiexmo: TFloatField;
    ZQueryWioExkindwiquty: TIntegerField;
    ZQueryWioExkindwisum: TFloatField;
    ZQueryWioExkindwiurge: TStringField;
    ZQueryWioExkindwiday: TStringField;
    ZQueryWioExkindwimdate: TStringField;
    ZQueryWioExkindwiodate: TStringField;
    ZQueryWioExkindwiotime: TTimeField;
    ZQueryWioExkindwiplace: TStringField;
    ZQueryWioExkindwidate: TStringField;
    ZQueryWioExkindwimark: TStringField;
    ZQueryWioExkindindate: TStringField;
    ZQueryWioExkindmark: TStringField;
    ZQueryWioExkindwisel: TStringField;
    ZQueryWioExkindpps: TIntegerField;
    ZQueryWioExkindcrname: TStringField;
    ZQueryWioExkindcrtel: TStringField;
    frxDBDSWo: TfrxDBDataset;
    ZQueryWo: TZQuery;
    ZQueryWowiosn: TLargeintField;
    ZQueryWocrcode: TStringField;
    ZQueryWowicode: TStringField;
    ZQueryWowisno: TStringField;
    ZQueryWowototal: TFloatField;
    ZQueryWowoptotal: TFloatField;
    ZQueryWoworealmo: TFloatField;
    ZQueryWofrgetmo: TFloatField;
    ZQueryWowocntmo: TFloatField;
    ZQueryWowopsen: TFloatField;
    ZQueryWowidate: TStringField;
    ZQueryWowitime: TStringField;
    ZQueryWosfname: TStringField;
    ZQueryWofritem: TStringField;
    ZQueryWoKind: TStringField;
    ZQueryWodiffmoney: TFloatField;
    ZQuery_wiocrtel: TStringField;
    ZQuery_wiocrmoney: TFloatField;
    ZQueryWiocrtel2: TStringField;
    RzToolbarButtonF11: TRzToolbarButton;
    ActionF11: TAction;
    frxDBDS_Wo: TfrxDBDataset;
    ZQueryF5: TZQuery;
    ZQueryF5wiosn: TLargeintField;
    ZQueryF5crcode: TStringField;
    ZQueryF5wicode: TStringField;
    ZQueryF5wisno: TStringField;
    ZQueryF5wototal: TFloatField;
    ZQueryF5woptotal: TFloatField;
    ZQueryF5worealmo: TFloatField;
    ZQueryF5frgetmo: TFloatField;
    ZQueryF5wocntmo: TFloatField;
    ZQueryF5wopsen: TFloatField;
    ZQueryF5widate: TStringField;
    ZQueryF5witime: TStringField;
    ZQueryF5sfname: TStringField;
    ZQueryF5fritem: TStringField;
    ZQueryF5crname: TStringField;
    ZQueryF5Kind: TStringField;
    ZQueryWocrtelb: TStringField;
    ZQueryWioExkindcrtelb: TStringField;
    ZQueryF5crtelb: TStringField;
    ZQueryF5crtel: TStringField;
    CtrlAlt1: TAction;
    CtrlAlt2: TAction;
    CtrlAlt3: TAction;
    frxDesigner1: TfrxDesigner;
    ActionF4: TAction;
    CtrlAltF10: TAction;
    CtrlAltF9: TAction;
    CtrlAltF7: TAction;
    ZQueryWiocrvip: TStringField;
    CtrlAltF5: TAction;
    PanelWash: TPanel;
    Label16: TLabel;
    ZTableWawash: TZTable;
    DSWash: TDataSource;
    ZTableWawashwano6: TStringField;
    ZTableWawashwawash: TStringField;
    ListBoxWash: TListBox;
    ButtonPrint: TButton;
    CtrlAlt8: TAction;
    CtrlAltF3: TAction;
    ZQuery_sumnamesumwsmo7: TFloatField;
    ZQueryWio_bak: TZQuery;
    frxDBDSWioBak: TfrxDBDataset;
    ZQueryWio_baksno: TLargeintField;
    ZQueryWio_bakwicode: TStringField;
    ZQueryWio_bakwisno: TStringField;
    ZQueryWio_bakcrcode: TStringField;
    ZQueryWio_bakwiitem: TStringField;
    ZQueryWio_bakwiname: TStringField;
    ZQueryWio_bakwiwash: TStringField;
    ZQueryWio_bakwiacc: TStringField;
    ZQueryWio_bakwimemo: TStringField;
    ZQueryWio_bakwiwamo: TFloatField;
    ZQueryWio_bakwiexkind: TStringField;
    ZQueryWio_bakwiexmo: TFloatField;
    ZQueryWio_bakwiquty: TIntegerField;
    ZQueryWio_bakwisum: TFloatField;
    ZQueryWio_bakwiurge: TStringField;
    ZQueryWio_bakwiday: TStringField;
    ZQueryWio_bakwimdate: TStringField;
    ZQueryWio_bakwiodate: TStringField;
    ZQueryWio_bakwiotime: TTimeField;
    ZQueryWio_bakwiplace: TStringField;
    ZQueryWio_bakwidate: TStringField;
    ZQueryWio_bakwitime: TTimeField;
    ZQueryWio_bakwimark: TStringField;
    ZQueryWio_bakindate: TStringField;
    ZQueryWio_bakmark: TStringField;
    ZQueryWio_baktno: TStringField;
    ZQueryWio_bakpps: TIntegerField;
    ZQueryWio_bakpicture: TStringField;
    ZQueryWio_bakcrvip: TStringField;
    ZQueryWio_bakcrname: TStringField;
    ZQueryWio_bakcrtel: TStringField;
    ZQueryWio_bakcrmoney: TIntegerField;
    ActionF12: TAction;
    RzToolbarButtonF12: TRzToolbarButton;
    frxReportF12: TfrxReport;
    frxDBDS_DailyM: TfrxDBDataset;
    procedure ActionESCExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionF1Execute(Sender: TObject);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF2Execute(Sender: TObject);
    procedure ActionF9Execute(Sender: TObject);
    procedure ActionF3Execute(Sender: TObject);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ZQuery_sumnameCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure ActionF5Execute(Sender: TObject);
    procedure ActionF8Execute(Sender: TObject);
    procedure ActionF7Execute(Sender: TObject);
    procedure EditwicodeSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditwicodeEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditMonthKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF10Execute(Sender: TObject);
    procedure ZQueryWoCalcFields(DataSet: TDataSet);
    procedure ActionF11Execute(Sender: TObject);
    procedure ZQueryF5CalcFields(DataSet: TDataSet);
    procedure CtrlAlt1Execute(Sender: TObject);
    procedure CtrlAlt2Execute(Sender: TObject);
    procedure CtrlAlt3Execute(Sender: TObject);
    procedure ActionF4Execute(Sender: TObject);
    procedure CtrlAltF10Execute(Sender: TObject);
    procedure CtrlAltF9Execute(Sender: TObject);
    procedure CtrlAltF7Execute(Sender: TObject);
    procedure CtrlAltF5Execute(Sender: TObject);
    procedure ButtonPrintClick(Sender: TObject);
    procedure CtrlAlt8Execute(Sender: TObject);
    procedure CtrlAltF3Execute(Sender: TObject);
    procedure ActionF12Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fstr: string;
    procedure ProcessF3();
    procedure ProcessF4();
    procedure ProcessF5();
    procedure PrintF3();
    procedure PrintF5();
    procedure PrintF7();
    procedure PrintF8();
    procedure PrintF9();
    procedure PrintF10(kind: Integer);
    procedure PrintF11();
    procedure PrintF12();
    procedure QueryGrid();
  end;

var
  DailyRepForm: TDailyRepForm;
  fkey: String;
  t1,t2,t3,t4,t5,t6,t7,t8,t9,t10: Real;
  wisnod: Integer;
  uflag: Boolean;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

function CheckUersRight(): Boolean;
var
  i: Integer;
begin
  WDM.ZQuery_emp.Close;
  WDM.ZQuery_emp.SQL.Clear;
  WDM.ZQuery_emp.SQL.Add('SELECT * FROM employee');
  WDM.ZQuery_emp.SQL.Add('WHERE eid='''+WDM.loginid+'''');
  WDM.ZQuery_emp.Open;
  if WDM.ZQuery_emp.FieldByName('egroup').AsInteger=0 then
    uflag:=True
  else
    uflag:=False;
  WDM.ZQuery_emp.Close;
  Result:=True;
end;

procedure TDailyRepForm.QueryGrid();
begin
  lbDate1.Caption:=MaskEditDate1.Text;
  lbDate2.Caption:=MaskEditDate2.Text;
  PanelDateSet.SendToBack;

  ZReadOnlyQuery1.Close;
  ZReadOnlyQuery1.SQL.Clear;
  ZReadOnlyQuery1.SQL.Add('SELECT sum(wiquty)as sumquty FROM wio');
  ZReadOnlyQuery1.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
  ZReadOnlyQuery1.Open;
  lbquty.Caption:=IntToStr(ZReadOnlyQuery1.FieldByName('sumquty').AsInteger)+'件';

  ZQueryWio.Close;
  ZQueryWio.SQL.Clear;
  ZQueryWio.SQL.Add('SELECT * FROM wio');
  ZQueryWio.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
  ZQueryWio.SQL.Add('ORDER BY wicode, wisno');
  ZQueryWio.Open;
end;

procedure TDailyRepForm.ProcessF4();
var
  winame, wiwash, ymStr: String;
  wiwamo, wisum, sumwsmo4: Real;
  d,wiquty: Integer;
begin
  ZQuery_sumname.Close;
  ZQuery_sumname.SQL.Clear;
  ZQuery_sumname.SQL.Add('DELETE FROM sumname');
  ZQuery_sumname.ExecSQL;

  for d:=1 to 31 do
    begin
    ymStr:=Copy(lbDate1.Caption,1,7)+StrZero(d,2);
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT winame,wiwash,wiwamo FROM wio');
    ZQuery1.SQL.Add('WHERE widate='''+ymStr+'''');
    ZQuery1.SQL.Add('GROUP BY winame,wiwash');
    ZQuery1.Open;
    while not ZQuery1.Eof do
      begin
      winame:=Copy(ZQuery1.FieldByName('winame').AsString,1,8);
      wiwash:=ZQuery1.FieldByName('wiwash').AsString;
      wiwamo:=ZQuery1.FieldByName('wiwamo').AsFloat;
      sumwsmo4:=0;
      ZQuery2.Close;
      ZQuery2.SQL.Clear;
      ZQuery2.SQL.Add('SELECT sum(wiquty)as a,sum(wisum)as b FROM wio');
      ZQuery2.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
      ZQuery2.SQL.Add('AND winame='''+winame+''' AND wiwash='''+wiwash+'''');
      ZQuery2.Open;
      if not ZQuery2.Eof then
        begin
        wiquty:=ZQuery2.FieldByName('a').AsInteger;
        wisum:=ZQuery2.FieldByName('b').AsFloat;
        ZQuery_sumname.Close;
        ZQuery_sumname.SQL.Clear;
        ZQuery_sumname.SQL.Add('INSERT INTO sumname');
        ZQuery_sumname.SQL.Add('(sumname,sumwash,sumwamo,sumquty,sumsum,sumwsmo4,widate) VALUE(');
        ZQuery_sumname.SQL.Add(''''+winame+''',');
        ZQuery_sumname.SQL.Add(''''+wiwash+''',');
        ZQuery_sumname.SQL.Add(''''+FloatToStr(wiwamo)+''',');
        ZQuery_sumname.SQL.Add(''''+IntToStr(wiquty)+''',');
        ZQuery_sumname.SQL.Add(''''+FloatToStr(wisum)+''',');
        ZQuery_sumname.SQL.Add(''''+FloatToStr(sumwsmo4)+''',');
        ZQuery_sumname.SQL.Add(''''+ymStr+''')');
        ZQuery_sumname.ExecSQL;
        end;
      ZQuery1.Next;
      end; // while
    end; // for
end;

procedure TDailyRepForm.ProcessF3();
var
  winame, wiwash, washstr: String;
  wiwamo, wisum: Real;
  i, wiquty: Integer;
  wsmo7: Real;
begin
  ZQuery_sumname.Close;
  ZQuery_sumname.SQL.Clear;
  ZQuery_sumname.SQL.Add('DELETE FROM sumname');
  ZQuery_sumname.ExecSQL;

  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT winame,wiwash,wiwamo FROM wio');
  ZQuery1.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
  washstr:='''00''';
  for i:=0 to ListBoxWash.Items.Count-1 do
    begin
    if ListBoxWash.Selected[i]=WDM.f319.Value then
      washstr:=washstr+','''+ListBoxWash.Items.Strings[i]+'''';
    end;
  ZQuery1.SQL.Add('AND wiwash in ('+washstr+')');
  ZQuery1.SQL.Add('GROUP BY winame,wiwash');
  ZQuery1.Open;
  while not ZQuery1.Eof do
    begin
    winame:=Copy(ZQuery1.FieldByName('winame').AsString,1,8);
    wiwash:=ZQuery1.FieldByName('wiwash').AsString;
    wiwamo:=ZQuery1.FieldByName('wiwamo').AsFloat;
    ZQuery2.Close;
    ZQuery2.SQL.Clear;
    ZQuery2.SQL.Add('SELECT sum(wiquty)as a,sum(wisum)as b,(SELECT wawsmO7 from wastyle WHERE wastyle='''+winame+''')as c FROM wio');
    ZQuery2.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQuery2.SQL.Add('AND winame='''+winame+''' AND wiwash='''+wiwash+'''');
    ZQuery2.Open;
    if not ZQuery2.Eof then
      begin
      wiquty:=ZQuery2.FieldByName('a').AsInteger;
      wisum:=ZQuery2.FieldByName('b').AsFloat;
      wsmo7:= wiquty * ZQuery2.FieldByName('c').AsFloat;
      ZQuery_sumname.Close;
      ZQuery_sumname.SQL.Clear;
      ZQuery_sumname.SQL.Add('INSERT INTO sumname');
      ZQuery_sumname.SQL.Add('(sumname,sumwash,sumwamo,sumquty,sumsum,sumwsmo7) VALUE(');
      ZQuery_sumname.SQL.Add(''''+winame+''',');
      ZQuery_sumname.SQL.Add(''''+wiwash+''',');
      ZQuery_sumname.SQL.Add(''''+FloatToStr(wiwamo)+''',');
      ZQuery_sumname.SQL.Add(''''+IntToStr(wiquty)+''',');
      ZQuery_sumname.SQL.Add(''''+FloatToStr(wisum)+''',');
      ZQuery_sumname.SQL.Add(''''+FloatToStr(wsmo7)+''')');
      ZQuery_sumname.ExecSQL;
      end;
    ZQuery1.Next;
    end;
  ZQuery_sumname.Close;
  ZQuery_sumname.SQL.Clear;
  ZQuery_sumname.SQL.Add('SELECT * FROM sumname');
  ZQuery_sumname.Open;
end;

procedure TDailyRepForm.PrintF3();
begin
  try
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF3.LoadFromFile(WDM.WPath+'Report\DailyRepAll3.rep');
    (frxReportF3.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    frxReportF3.preview:=PreviewForm.frxPreview1;
    frxReportF3.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TDailyRepForm.ProcessF5();
begin
  try
    ZQueryF5.Close;
    ZQueryF5.SQL.Clear;
    ZQueryF5.SQL.Add('SELECT * FROM wo');
    ZQueryF5.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQueryF5.SQL.Add('AND binary fritem in (''V'',''I'',''O'',''Q'',''X'',''x'')');
    ZQueryF5.SQL.Add('AND (worealmo<>0 OR wocntmo<>0)');
    ZQueryF5.SQL.Add('ORDER BY widate,witime');
    ZQueryF5.Open;

    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo FROM wo');
    ZQuery_wo.SQL.Add('WHERE binary fritem in (''V'',''W'',''X'')');
    ZQuery_wo.SQL.Add('AND widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuery_wo.Open;
    t1:=ZQuery_wo.FieldByName('trealmo').AsFloat;

    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo,sum(wocntmo)as tcntmo FROM wo');
    ZQuery_wo.SQL.Add('WHERE binary fritem in (''I'',''E'',''Q'',''O'',''x'')');
    ZQuery_wo.SQL.Add('AND widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuery_wo.Open;
    t2:=ZQuery_wo.FieldByName('trealmo').AsFloat;
    t3:=ZQuery_wo.FieldByName('tcntmo').AsFloat;
    t4:=t1+t2;

    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT sum(frgetmo)as tgetmo FROM wo');
    ZQuery_wo.SQL.Add('WHERE binary fritem in (''P'',''G'')');
    ZQuery_wo.SQL.Add('AND widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuery_wo.Open;
    t5:=ZQuery_wo.FieldByName('tgetmo').AsFloat;
    (frxReportF5.FindObject('Memo17')as TfrxMemoView).Text:=FormatFloat('#,##0',t3);

    ZQuery_wio5.Close;
    ZQuery_wio5.SQL.Clear;
    ZQuery_wio5.SQL.Add('SELECT sum(wisum)as tsum FROM wio');
    ZQuery_wio5.SQL.Add('WHERE wiodate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuery_wio5.Open;
    t6:=ZQuery_wio5.FieldByName('tsum').AsFloat;

    ZQuery_wio5.Close;
    ZQuery_wio5.SQL.Clear;
    ZQuery_wio5.SQL.Add('SELECT sum(wiwamo*wiquty)as twamo, sum(wisum)as tsum, sum(wiquty)as tquty, sum(wiexmo)as texmo FROM wio');
    ZQuery_wio5.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuery_wio5.Open;
    t7:=ZQuery_wio5.FieldByName('twamo').AsFloat;
    t8:=ZQuery_wio5.FieldByName('tsum').AsFloat-ZQuery_wio5.FieldByName('texmo').AsFloat;
    //t9:=t1-t2+t3;
    t9:=t7-t8;
    t10:=ZQuery_wio5.FieldByName('tquty').AsFloat;
    ZQuery_wio5.Close;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TDailyRepForm.PrintF5();
begin
  wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    frxReportF5.LoadFromFile(WDM.WPath+'Report\DailyRepAll5.rep');
    ProcessF5();
    (frxReportF5.FindObject('Memo12')as TfrxMemoView).Text:=FormatFloat('#,##0',t1);
    (frxReportF5.FindObject('Memo13')as TfrxMemoView).Text:=FormatFloat('#,##0',t2);
    (frxReportF5.FindObject('Memo14')as TfrxMemoView).Text:=FormatFloat('#,##0',t3); //現金折讓
    (frxReportF5.FindObject('Memo11')as TfrxMemoView).Text:=FormatFloat('#,##0',t4);
    (frxReportF5.FindObject('Memo17')as TfrxMemoView).Text:=FormatFloat('#,##0',t5);
    (frxReportF5.FindObject('Memo16')as TfrxMemoView).Text:=FormatFloat('#,##0',t6);
    (frxReportF5.FindObject('Memo18')as TfrxMemoView).Text:=FormatFloat('#,##0',t7);
    (frxReportF5.FindObject('Memo19')as TfrxMemoView).Text:=FormatFloat('#,##0',t8);
    (frxReportF5.FindObject('Memo15')as TfrxMemoView).Text:=FormatFloat('#,##0',t9);
    (frxReportF5.FindObject('Memo20')as TfrxMemoView).Text:=FormatFloat('#,##0',t10);
    //(frxReportF5.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    (frxReportF5.FindObject('Memo_Widate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    PreviewForm:=TPreviewForm.Create(Application);
    frxReportF5.preview:=PreviewForm.frxPreview1;
    frxReportF5.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

procedure TDailyRepForm.PrintF7();
var
  sicode, eicode: String;
begin
  sicode:=StrZero(StrToInt(EditwicodeS.Text),6);
  eicode:=StrZero(StrToInt(EditwicodeE.Text),6);
  try
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    ZQuery_wio.SQL.Add('WHERE wicode>='''+sicode+''' AND wicode<='''+eicode+'''');
    ZQuery_wio.SQL.Add('ORDER BY wicode');
    ZQuery_wio.Open;
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF7.LoadFromFile(WDM.WPath+'Report\DailyRepAll7.rep');
    (frxReportF7.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
    frxReportF7.preview:=PreviewForm.frxPreview1;
    frxReportF7.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TDailyRepForm.PrintF8();
var
  widate: TDateTime;
  widStr: String;
  i, mday: Integer;
  x0,x00: Real;
  m0, m1, m2, m3, m4, m5, m6, m7, m8, m9: Real;
  m10, m11: Integer;
begin
  widate:=StrToDate(MaskEditMonth.Text+'/01');
  mday:=GetMonthDay(widate);
  try
    ZQuery_Monthly.Close;
    ZQuery_Monthly.SQL.Clear;
    ZQuery_Monthly.SQL.Add('DELETE FROM monthly');
    ZQuery_Monthly.ExecSQL;

    for i:=1 to mday do
      begin
      widStr:=MaskEditMonth.Text+'/'+StrZero(i,2);
      m0:=0; m1:=0; m2:=0; m3:=0; m4:=0; m5:=0;
      m6:=0; m7:=0; m8:=0; m9:=0; m10:=0; m11:=0;
      x0:=0; x00:=0;
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE BINARY fritem in (''V'',''X'',''W'')');
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      m1:=ZQuery_wo.FieldByName('trealmo').AsFloat; //VIP實收額
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(wocntmo)as tcntmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE fritem in (''V'',''W'')');
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      m0:=ZQuery_wo.FieldByName('tcntmo').AsFloat; //VIP折讓額
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT wocntmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE BINARY fritem=''X''');
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      while not ZQuery_wo.Eof do
        begin
        x00:=ZQuery_wo.FieldByName('wocntmo').AsFloat; //VIP折讓額
        //20131011修改 if x00<0 then x00:=x00*-1;
        x0:=x0+x00;
        ZQuery_wo.Next;
        end;
      ZQuery_wo.Close;
      m0:=m0+x0;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo,sum(wocntmo)as tcntmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE BINARY fritem in (''x'',''I'',''E'',''Q'',''O'')');
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      m2:=ZQuery_wo.FieldByName('trealmo').AsFloat; //現金實收額
      m3:=ZQuery_wo.FieldByName('tcntmo').AsFloat;  //現金折讓額
      ZQuery_wo.Close;
      {ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(frgetmo)as tgetmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE fritem in (''P'',''G'')');
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      m9:=ZQuery_wo.FieldByName('tgetmo').AsFloat; //衣物加工額
      ZQuery_wo.Close;}

      ZQuery_wio5.Close;
      ZQuery_wio5.SQL.Clear;
      ZQuery_wio5.SQL.Add('SELECT sum(wiwamo*wiquty)as twamo, sum(wiquty)as tquty, sum(wisum)as tsum, sum(wiexmo)as texmo FROM wio');
      ZQuery_wio5.SQL.Add('WHERE widate='''+widStr+'''');
      ZQuery_wio5.Open;
      m9:=ZQuery_wio5.FieldByName('texmo').AsFloat;   //衣物加工額
      m5:=ZQuery_wio5.FieldByName('twamo').AsFloat;   //衣物設定額
      m6:=ZQuery_wio5.FieldByName('tsum').AsFloat-m9; //衣物實際額
      m7:=m5-m6;                                      //衣物折扣額
      m8:=ZQuery_wio5.FieldByName('tquty').AsInteger; //衣物總件數
      ZQuery_wio5.Close;
      ZQuery_wio5.SQL.Clear;
      ZQuery_wio5.SQL.Add('SELECT sum(wisum)as tsum FROM wio');
      ZQuery_wio5.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio5.Open;
      m4:=ZQuery_wio5.FieldByName('tsum').AsFloat; //衣物取件額
      {ZQuery_wio5.Close;
      ZQuery_wio5.SQL.Clear;
      ZQuery_wio5.SQL.Add('SELECT sum(wiquty)as tquty FROM wio');
      ZQuery_wio5.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio5.SQL.Add('AND wiwash=''水洗''');
      ZQuery_wio5.Open;
      m8:=ZQuery_wio5.FieldByName('tquty').AsInteger;
      ZQuery_wio5.Close;
      ZQuery_wio5.SQL.Clear;
      ZQuery_wio5.SQL.Add('SELECT sum(wiquty)as tquty FROM wio');
      ZQuery_wio5.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio5.SQL.Add('AND wiwash=''乾洗''');
      ZQuery_wio5.Open;
      m9:=ZQuery_wio5.FieldByName('tquty').AsInteger;
      ZQuery_wio5.Close;
      ZQuery_wio5.SQL.Clear;
      ZQuery_wio5.SQL.Add('SELECT sum(wiquty)as tquty FROM wio');
      ZQuery_wio5.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio5.SQL.Add('AND wiwash=''整燙''');
      ZQuery_wio5.Open;
      m10:=ZQuery_wio5.FieldByName('tquty').AsInteger;
      ZQuery_wio5.Close;}

      //新增至每日日期統計
      ZQuery_Monthly.Close;
      ZQuery_Monthly.SQL.Clear;
      ZQuery_Monthly.SQL.Add('INSERT INTO monthly');
      ZQuery_Monthly.SQL.Add('(widate,m1,m0,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11) VALUE(');
      ZQuery_Monthly.SQL.Add(''''+widStr+''',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m1)+',');       //VIP實收
      ZQuery_Monthly.SQL.Add(FloatToStr(m0)+',');       //VIP折讓
      ZQuery_Monthly.SQL.Add(FloatToStr(m2)+',');       //現金實收
      ZQuery_Monthly.SQL.Add(FloatToStr(m3)+',');       //現金折讓
      ZQuery_Monthly.SQL.Add(FloatToStr(m4)+',');       //衣物總件
      ZQuery_Monthly.SQL.Add(FloatToStr(m5)+',');       //衣物設定
      ZQuery_Monthly.SQL.Add(FloatToStr(m6)+',');       //衣物實際
      ZQuery_Monthly.SQL.Add(FloatToStr(m7)+',');       //衣物折扣
      ZQuery_Monthly.SQL.Add(FloatToStr(m8)+',');       //衣物取件
      ZQuery_Monthly.SQL.Add(FloatToStr(m9)+',');       //衣物加工
      ZQuery_Monthly.SQL.Add(IntToStr(m10)+',');
      ZQuery_Monthly.SQL.Add(IntToStr(m11)+')');
      ZQuery_Monthly.ExecSQL;
      end;
    // 顯示報表開始
    ZQuery_Monthly.Close;
    ZQuery_Monthly.SQL.Clear;
    ZQuery_Monthly.SQL.Add('SELECT * FROM monthly');
    ZQuery_Monthly.SQL.Add('WHERE widate BETWEEN '''+MaskEditMonth.Text+'/01'' AND '''+MaskEditMonth.Text+'/31''');
    ZQuery_Monthly.SQL.Add('ORDER BY widate');
    ZQuery_Monthly.Open;
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF9.LoadFromFile(WDM.WPath+'Report\DailyRepAll8.rep');
    (frxReportF8.FindObject('MemoDate')as TfrxMemoView).Text:=MaskEditMonth.Text;
    frxReportF8.preview:=PreviewForm.frxPreview1;
    frxReportF8.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TDailyRepForm.PrintF9();
var
  i: integer;
  washstr: string;
begin
  washstr:='''00''';
  wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    ZQueryWio.Close;
    ZQueryWio.SQL.Clear;
    ZQueryWio.SQL.Add('SELECT * FROM wio');
    ZQueryWio.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    for i:=0 to ListBoxWash.Items.Count-1 do
      begin
      if ListBoxWash.Selected[i]=WDM.f319.Value then
        washstr:=washstr+','''+ListBoxWash.Items.Strings[i]+'''';
      end;
    ZQueryWio.SQL.Add('AND wiwash in ('+washstr+')');
    ZQuerywio.SQL.Add('ORDER BY wicode, wisno');
    ZQuerywio.Open;
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF9.LoadFromFile(WDM.WPath+'Report\DailyRepAll9.rep');
    (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);

    ZQueryWio.Close;
    ZQueryWio.SQL.Clear;
    ZQueryWio.SQL.Add('SELECT * FROM wio');
    ZQueryWio.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuerywio.SQL.Add('ORDER BY wicode, wisno');
    ZQuerywio.Open;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

procedure TDailyRepForm.PrintF10(kind: Integer);
begin
  wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    ProcessF3();
    PreviewForm := TPreviewForm.Create(Application);
    if kind=0 then
      frxReportF10.LoadFromFile(WDM.WPath+'Report\DailyRepAll0.rep')
    else if kind=1 then
      begin
      frxReportF10.LoadFromFile(WDM.WPath+'Report\DailyRepAll1.rep');
      if wisnod=5 then
        begin
        (frxReportF10.FindObject('Memo14')as TfrxMemoView).Text:='洗號';
        (frxReportF10.FindObject('Memo65')as TfrxMemoView).Text:='洗號';
        (frxReportF10.FindObject('Memo93')as TfrxMemoView).Text:='洗號';
        end;
      end
    else if kind=2 then
      frxReportF10.LoadFromFile(WDM.WPath+'Report\DailyRepAll2.rep');

    (frxReportF10.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    ProcessF5();
    (frxReportF10.FindObject('Memo102')as TfrxMemoView).Text:=FormatFloat('#,##0',t1);
    (frxReportF10.FindObject('Memo103')as TfrxMemoView).Text:=FormatFloat('#,##0',t2);
    (frxReportF10.FindObject('Memo104')as TfrxMemoView).Text:=FormatFloat('#,##0',t3);
    (frxReportF10.FindObject('Memo101')as TfrxMemoView).Text:=FormatFloat('#,##0',t4);
    (frxReportF10.FindObject('Memo107')as TfrxMemoView).Text:=FormatFloat('#,##0',t5);
    (frxReportF10.FindObject('Memo106')as TfrxMemoView).Text:=FormatFloat('#,##0',t6);
    (frxReportF10.FindObject('Memo108')as TfrxMemoView).Text:=FormatFloat('#,##0',t7);
    (frxReportF10.FindObject('Memo109')as TfrxMemoView).Text:=FormatFloat('#,##0',t8);
    (frxReportF10.FindObject('Memo105')as TfrxMemoView).Text:=FormatFloat('#,##0',t9);
    (frxReportF10.FindObject('Memo110')as TfrxMemoView).Text:=FormatFloat('#,##0',t10);

    ZQueryWioExkind.Close; //加工明細
    ZQueryWioExkind.SQL.Clear;
    ZQueryWioExkind.SQL.Add('SELECT * FROM wio');
    ZQueryWioExkind.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQueryWioExkind.SQL.Add('AND wiexkind<>''''');
    ZQueryWioExkind.SQL.Add('ORDER BY wicode, wisno');
    ZQueryWioExkind.Open;

    ZQueryWo.Close; //金額異動明細
    ZQueryWo.SQL.Clear;
    ZQueryWo.SQL.Add('SELECT * FROM wo');
    ZQueryWo.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    if WDM.mdetail.Value=1 then
      ZQueryWo.SQL.Add('AND ((fritem=''E'')or(fritem=''D'')or(fritem=''Z'')or(fritem=''C'')or(fritem=''x''))');
    ZQueryWo.SQL.Add('ORDER BY widate, witime, wicode, wisno');
    ZQueryWo.Open; //X VIP刪除

    ZQueryWio_bak.Close; //收件刪除項目  
    ZQueryWio_bak.SQL.Clear;
    ZQueryWio_bak.SQL.Add('SELECT * FROM wio_bak');
    ZQueryWio_bak.SQL.Add('WHERE indate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQueryWio_bak.Open;

    frxReportF10.preview:=PreviewForm.frxPreview1;
    frxReportF10.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

procedure TDailyRepForm.PrintF11();
begin
  {wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    ProcessF3();
    PreviewForm := TPreviewForm.Create(Application);
    if wisnod=5 then
      begin
      (frxReportF11.FindObject('Memo14')as TfrxMemoView).Text:='洗號';
      (frxReportF11.FindObject('Memo65')as TfrxMemoView).Text:='洗號';
      (frxReportF11.FindObject('Memo93')as TfrxMemoView).Text:='洗號';
      end;
    (frxReportF11.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    ProcessF5();
    (frxReportF11.FindObject('Memo102')as TfrxMemoView).Text:=FormatFloat('#,##0',t1);
    (frxReportF11.FindObject('Memo103')as TfrxMemoView).Text:=FormatFloat('#,##0',t2);
    (frxReportF11.FindObject('Memo104')as TfrxMemoView).Text:=FormatFloat('#,##0',t3);
    (frxReportF11.FindObject('Memo101')as TfrxMemoView).Text:=FormatFloat('#,##0',t4);
    (frxReportF11.FindObject('Memo107')as TfrxMemoView).Text:=FormatFloat('#,##0',t5);
    (frxReportF11.FindObject('Memo106')as TfrxMemoView).Text:=FormatFloat('#,##0',t6);
    (frxReportF11.FindObject('Memo108')as TfrxMemoView).Text:=FormatFloat('#,##0',t7);
    (frxReportF11.FindObject('Memo109')as TfrxMemoView).Text:=FormatFloat('#,##0',t8);
    (frxReportF11.FindObject('Memo105')as TfrxMemoView).Text:=FormatFloat('#,##0',t9);
    (frxReportF11.FindObject('Memo110')as TfrxMemoView).Text:=FormatFloat('#,##0',t10);

    ZQueryWioExkind.Close; //加工明細
    ZQueryWioExkind.SQL.Clear;
    ZQueryWioExkind.SQL.Add('SELECT * FROM wio');
    ZQueryWioExkind.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQueryWioExkind.SQL.Add('AND wiexkind<>''''');
    ZQueryWioExkind.SQL.Add('ORDER BY wicode, wisno');
    ZQueryWioExkind.Open;

    ZQueryWo.Close; //金額異動明細
    ZQueryWo.SQL.Clear;
    ZQueryWo.SQL.Add('SELECT * FROM wo');
    ZQueryWo.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQueryWo.SQL.Add('ORDER BY widate, witime, wicode, wisno');
    ZQueryWo.Open;

    frxReportF11.preview:=PreviewForm.frxPreview1;
    frxReportF11.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  wwDBGrid1.DataSource.DataSet.EnableControls;}
end;

procedure TDailyRepForm.PrintF12();
var
  i: integer;
begin
  wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    WDM.ZQuery_DailyM.Close;
    WDM.ZQuery_DailyM.SQL.Clear;
    WDM.ZQuery_DailyM.SQL.Add('SELECT * FROM dailymonitor');
    WDM.ZQuery_DailyM.SQL.Add('WHERE SUBSTRING(ondt,1,9) between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    WDM.ZQuery_DailyM.SQL.Add('ORDER BY sn');
    WDM.ZQuery_DailyM.Open;
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF12.LoadFromFile(WDM.WPath+'Report\DailyRepOnOff.rep');
    (frxReportF12.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    frxReportF12.preview:=PreviewForm.frxPreview1;
    frxReportF12.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);

    {ZQueryWio.Close;
    ZQueryWio.SQL.Clear;
    ZQueryWio.SQL.Add('SELECT * FROM wio');
    ZQueryWio.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' AND '''+lbDate2.Caption+'''');
    ZQuerywio.SQL.Add('ORDER BY wicode, wisno');
    ZQuerywio.Open;}
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

procedure TDailyRepForm.ActionESCExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else if fkey='F2' then
    begin
    fkey:='';
    PanelStick.SendToBack;
    end
  else if fkey='F7' then
    begin
    fkey:='';
    PanelWicode.SendToBack;
    end
  else if fkey='F8' then
    begin
    fkey:='';
    PanelMonth.SendToBack;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    PanelWash.SendToBack;
    end
  else
    Close;
  wwDBGrid1.SetFocus;
end;

procedure TDailyRepForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  PanelDateSet.SendToBack;
  PanelStick.SendToBack;
  PanelMonth.SendToBack;
  PanelWicode.SendToBack;
  PanelWash.SendToBack;

  ListBox1.ItemIndex:=0;
  lbDate1.Caption:=ChinaDate1(Date);
  lbDate2.Caption:=ChinaDate1(Date);
  MaskEditDate1.Text:=ChinaDate1(Date);
  MaskEditDate2.Text:=ChinaDate1(Date);
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='DR'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
end;

procedure TDailyRepForm.ActionF1Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F1';
    PanelDateSet.BringToFront;
    MaskEditDate1.SetFocus;
    end
  else
    QueryGrid();
end;

procedure TDailyRepForm.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin  
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TDailyRepForm.MaskEditDate2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    fkey:='';
    QueryGrid();
    wwDBGrid1.SetFocus;
    Key:=0;
    if fstr='F5' then
      ActionF5Execute(Self);
    end;
end;

procedure TDailyRepForm.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    wwDBGrid1.DataSource.DataSet.DisableControls;
    try
      PreviewForm := TPreviewForm.Create(Application);
      if (ListBox1.ItemIndex=0)OR(ListBox1.ItemIndex=1) then
        begin
        if ListBox1.ItemIndex=0 then
          frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel21.rep')
        else if ListBox1.ItemIndex=1 then
          frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel22.rep');
        frxReportLabel.preview:=PreviewForm.frxPreview1;
        frxReportLabel.ShowReport; //螢幕預覽
        PreviewForm.ShowModal;
        FreeAndNil(PreviewForm);
        end
      else
        begin
        frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel23.rep');
        frxReportLabel.preview:=PreviewForm.frxPreview1;
        frxReportLabel.ShowReport; //螢幕預覽
        PreviewForm.ShowModal;
        FreeAndNil(PreviewForm);
        end
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    PanelStick.SendToBack;
    fkey:='';
    end;
end;

procedure TDailyRepForm.ActionF2Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F2';
    ListBox1.SetFocus;
    PanelStick.BringToFront;
    end;
end;

procedure TDailyRepForm.ActionF9Execute(Sender: TObject);
var
  cb: TCheckBox;
begin
  if fkey='' then
    begin
    fkey:='F9';
    ZTableWawash.Open;
    ListBoxWash.Items.Clear;
    while not ZTableWawash.Eof do
      begin
      ListBoxWash.Items.Add(ZTableWawash.FieldByName('wawash').AsString);
      ZTableWawash.Next;
      end;
    ListBoxWash.Height:=28*ZTableWawash.RecordCount;
    ZTableWawash.Close;
    PanelWash.Height:=ListBoxWash.Height+80;
    ButtonPrint.Top:=PanelWash.Height-35;
    ListBoxWash.SetFocus;
    PanelWash.BringToFront;
    end;
end;

procedure TDailyRepForm.ActionF3Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F3';
    ZTableWawash.Open;
    ListBoxWash.Items.Clear;
    while not ZTableWawash.Eof do
      begin
      ListBoxWash.Items.Add(ZTableWawash.FieldByName('wawash').AsString);
      ZTableWawash.Next;
      end;
    ListBoxWash.Height:=28*ZTableWawash.RecordCount;
    ZTableWawash.Close;
    PanelWash.Height:=ListBoxWash.Height+80;
    ButtonPrint.Top:=PanelWash.Height-35;
    ListBoxWash.SetFocus;
    PanelWash.BringToFront;
    end;
end;

procedure TDailyRepForm.ListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    PreviewForm := TPreviewForm.Create(Application);
    if (ListBox1.ItemIndex=0)OR(ListBox1.ItemIndex=1) then
      begin
      if ListBox1.ItemIndex=0 then
        frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel21.rep')
      else if ListBox1.ItemIndex=1 then
        frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel22.rep');
      frxReportLabel.preview:=PreviewForm.frxPreview1;
      frxReportLabel.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
      end
    else
      begin
      frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel23.rep');
      frxReportLabel.preview:=PreviewForm.frxPreview1;
      frxReportLabel.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
      end
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  wwDBGrid1.DataSource.DataSet.EnableControls;
  PanelStick.SendToBack;
  fkey:='';
end;

procedure TDailyRepForm.ZQuery_sumnameCalcFields(DataSet: TDataSet);
begin
  ZQuery_sumname.FieldByName('sumosum').AsFloat:=ZQuery_sumname.FieldByName('sumwamo').AsFloat*ZQuery_sumname.FieldByName('sumquty').AsInteger;
end;

procedure TDailyRepForm.FormActivate(Sender: TObject);
begin
  CheckUersRight();
  WDM.FormColorSet(DailyRepForm);
  fkey:='';
  WDM.ZQueryCust.Close;
  WDM.ZQueryCust.Open;
  ZQueryWio.Close;
  ZQueryWio.SQL.Clear;
  ZQueryWio.SQL.Add('SELECT * FROM wio');
  ZQueryWio.SQL.Add('WHERE widate=''1''');
  ZQueryWio.SQL.Add('ORDER BY wicode, wisno');
  ZQueryWio.Open;
  
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;

  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
  PanelStick.Left:=Trunc((Width-PanelStick.Width)/2);
  PanelStick.Top:=Trunc((Height-PanelStick.Height)/2);
  PanelMonth.Left:=Trunc((Width-PanelMonth.Width)/2);
  PanelMonth.Top:=Trunc((Height-PanelMonth.Height)/2);
  PanelWicode.Left:=Trunc((Width-PanelWicode.Width)/2);
  PanelWicode.Top:=Trunc((Height-PanelWicode.Height)/2);
  PanelWash.Left:=Trunc((Width-PanelWash.Width)/2);
  PanelWash.Top:=Trunc((Height-PanelWash.Height)/2);
  ActionF1Execute(Self);
end;

procedure TDailyRepForm.ActionF5Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F5';
    PrintF5();
    fkey:='';
    if fstr='F5' then
      Close;
    end;
end;

procedure TDailyRepForm.ActionF8Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F8';
    MaskEditMonth.Text:=ChinaDate1(Date);
    MaskEditMonth.SetFocus;
    MaskEditMonth.SelStart:=6;
    PanelMonth.BringToFront;
    end;
end;

procedure TDailyRepForm.ActionF7Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F7';
    EditwicodeS.SetFocus;
    PanelWicode.BringToFront;
    end;
end;

procedure TDailyRepForm.EditwicodeSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TDailyRepForm.EditwicodeEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    PanelWicode.SendToBack;
    PrintF7();
    end;
end;

procedure TDailyRepForm.MaskEditMonthKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    PanelMonth.SendToBack;
    PrintF8();
    end;
end;

procedure TDailyRepForm.ActionF10Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F10';
    PrintF10(WDM.Category.Value);
    fkey:='';
    end;
end;

procedure TDailyRepForm.ZQueryWoCalcFields(DataSet: TDataSet);
begin
  if ZQueryWo.FieldByName('woptotal').Value<=0 then
    ZQueryWo.FieldByName('diffmoney').Value:=-(ZQueryWo.FieldByName('woptotal').Value-ZQueryWo.FieldByName('wototal').Value)
  else
    ZQueryWo.FieldByName('diffmoney').Value:=ZQueryWo.FieldByName('wototal').Value-ZQueryWo.FieldByName('woptotal').Value;

  if ZQueryWo.FieldByName('fritem').AsString='I' then
    begin
    if (ZQueryWo.FieldByName('worealmo').Value=0) then
      if (ZQueryWo.FieldByName('wocntmo').Value=0) then
        ZQueryWo.FieldByName('Kind').AsString:='收件'
      else
        ZQueryWo.FieldByName('Kind').AsString:='收-折讓'
    else
      ZQueryWo.FieldByName('Kind').AsString:='收件收款';
    end
  else if ZQueryWo.FieldByName('fritem').AsString='O' then
    begin
    if (ZQueryWo.FieldByName('worealmo').Value=0) then
      if (ZQueryWo.FieldByName('wocntmo').Value=0) then
        ZQueryWo.FieldByName('Kind').AsString:='取件'
      else
        ZQueryWo.FieldByName('Kind').AsString:='取-折讓'
    else
      ZQueryWo.FieldByName('Kind').AsString:='取件收款';
    end
  else if ZQueryWo.FieldByName('fritem').AsString='A' then
    ZQueryWo.FieldByName('Kind').AsString:='收件修改'
  else if ZQueryWo.FieldByName('fritem').AsString='B' then
    ZQueryWo.FieldByName('Kind').AsString:='取件修改'
  else if ZQueryWo.FieldByName('fritem').AsString='Q' then
    ZQueryWo.FieldByName('Kind').AsString:='預收款'
  else if ZQueryWo.FieldByName('fritem').AsString='R' then
    ZQueryWo.FieldByName('Kind').AsString:='無單收款'
  else if ZQueryWo.FieldByName('fritem').AsString='V' then
    ZQueryWo.FieldByName('Kind').AsString:='VIP收款'
  else if ZQueryWo.FieldByName('fritem').AsString='W' then
    ZQueryWo.FieldByName('Kind').AsString:='VIP修改'
  else if ZQueryWo.FieldByName('fritem').AsString='X' then
    ZQueryWo.FieldByName('Kind').AsString:='VIP刪除'
  else if ZQueryWo.FieldByName('fritem').AsString='Z' then
    ZQueryWo.FieldByName('Kind').AsString:='修改客額'
  else if ZQueryWo.FieldByName('fritem').AsString='E' then
    ZQueryWo.FieldByName('Kind').AsString:='明細修改'
  else if ZQueryWo.FieldByName('fritem').AsString='D' then
    ZQueryWo.FieldByName('Kind').AsString:='明細刪除'
  else if ZQueryWo.FieldByName('fritem').AsString='P' then
    ZQueryWo.FieldByName('Kind').AsString:='收件加工'
  else if ZQueryWo.FieldByName('fritem').AsString='G' then
    ZQueryWo.FieldByName('Kind').AsString:='取件加工'
  else if ZQueryWo.FieldByName('fritem').AsString='x' then
    ZQueryWo.FieldByName('Kind').AsString:='收件放棄'
  else if ZQueryWo.FieldByName('fritem').AsString='C' then
    ZQueryWo.FieldByName('Kind').AsString:='客戶刪除'
  else
    ZQueryWo.FieldByName('Kind').AsString:='無類別'
end;

procedure TDailyRepForm.ActionF11Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F11';
    PrintF11();
    fkey:='';
    end;
end;

procedure TDailyRepForm.ZQueryF5CalcFields(DataSet: TDataSet);
begin
  if ZQueryF5.FieldByName('fritem').AsString='I' then
    begin
    if (ZQueryF5.FieldByName('worealmo').Value=0) then
      if (ZQueryF5.FieldByName('wocntmo').Value=0) then
        ZQueryF5.FieldByName('Kind').AsString:='收件'
      else
        ZQueryF5.FieldByName('Kind').AsString:='收-折讓'
    else
      ZQueryF5.FieldByName('Kind').AsString:='收件收款';
    end
  else if ZQueryF5.FieldByName('fritem').AsString='O' then
    begin
    if (ZQueryF5.FieldByName('worealmo').Value=0) then
      if (ZQueryF5.FieldByName('wocntmo').Value=0) then
        ZQueryF5.FieldByName('Kind').AsString:='取件'
      else
        ZQueryF5.FieldByName('Kind').AsString:='取-折讓'
    else
      ZQueryF5.FieldByName('Kind').AsString:='取件收款';
    end
  else if ZQueryF5.FieldByName('fritem').AsString='A' then
    ZQueryF5.FieldByName('Kind').AsString:='收件修改'
  else if ZQueryF5.FieldByName('fritem').AsString='B' then
    ZQueryF5.FieldByName('Kind').AsString:='取件修改'
  else if ZQueryF5.FieldByName('fritem').AsString='Q' then
    ZQueryF5.FieldByName('Kind').AsString:='預收款'
  else if ZQueryF5.FieldByName('fritem').AsString='R' then
    ZQueryF5.FieldByName('Kind').AsString:='無單收款'
  else if ZQueryF5.FieldByName('fritem').AsString='V' then
    ZQueryF5.FieldByName('Kind').AsString:='VIP收款'
  else if ZQueryF5.FieldByName('fritem').AsString='W' then
    ZQueryF5.FieldByName('Kind').AsString:='VIP修改'
  else if ZQueryF5.FieldByName('fritem').AsString='X' then
    ZQueryF5.FieldByName('Kind').AsString:='VIP刪除'
  else if ZQueryF5.FieldByName('fritem').AsString='Z' then
    ZQueryF5.FieldByName('Kind').AsString:='修改客額'
  else if ZQueryF5.FieldByName('fritem').AsString='E' then
    ZQueryF5.FieldByName('Kind').AsString:='明細修改'
  else if ZQueryF5.FieldByName('fritem').AsString='D' then
    ZQueryF5.FieldByName('Kind').AsString:='明細刪除'
  else if ZQueryF5.FieldByName('fritem').AsString='P' then
    ZQueryF5.FieldByName('Kind').AsString:='收件加工'
  else if ZQueryF5.FieldByName('fritem').AsString='G' then
    ZQueryF5.FieldByName('Kind').AsString:='取件加工'
  else if ZQueryF5.FieldByName('fritem').AsString='C' then
    ZQueryF5.FieldByName('Kind').AsString:='客戶刪除'
  else if ZQueryF5.FieldByName('fritem').AsString='x' then
    ZQueryF5.FieldByName('Kind').AsString:='收件放棄'
  else
    ZQueryF5.FieldByName('Kind').AsString:='無類別'
end;

procedure TDailyRepForm.CtrlAlt1Execute(Sender: TObject);
begin
  frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel21.rep');
  frxReportLabel.DesignReport;
end;

procedure TDailyRepForm.CtrlAlt2Execute(Sender: TObject);
begin
  frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel22.rep');
  frxReportLabel.DesignReport;
end;

procedure TDailyRepForm.CtrlAlt3Execute(Sender: TObject);
begin
  frxReportLabel.LoadFromFile(WDM.WPath+'Report\DailyLabel23.rep');
  frxReportLabel.DesignReport;
end;

procedure TDailyRepForm.ActionF4Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    ProcessF4();
end;

procedure TDailyRepForm.CtrlAltF10Execute(Sender: TObject);
begin
  if WDM.Category.Value=0 then
      frxReportF10.LoadFromFile(WDM.WPath+'Report\DailyRepAll0.rep')
  else if WDM.Category.Value=1 then
      frxReportF10.LoadFromFile(WDM.WPath+'Report\DailyRepAll1.rep');
  frxReportF10.DesignReport;
end;

procedure TDailyRepForm.CtrlAltF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\DailyRepAll9.rep');
  frxReportF9.DesignReport;
end;

procedure TDailyRepForm.CtrlAltF7Execute(Sender: TObject);
begin
  frxReportF7.LoadFromFile(WDM.WPath+'Report\DailyRepAll7.rep');
  frxReportF7.DesignReport;
end;

procedure TDailyRepForm.CtrlAltF5Execute(Sender: TObject);
begin
  frxReportF5.LoadFromFile(WDM.WPath+'Report\DailyRepAll5.rep');
  frxReportF5.DesignReport;
end;

procedure TDailyRepForm.ButtonPrintClick(Sender: TObject);
begin
  PanelWash.SendToBack;
  if fkey='F9' then
    PrintF9()
  else if fkey='F3' then
    begin
    try
      ProcessF3();
    except
      on E: Exception do
        MessageDlg ('統計錯誤:'+E.Message, mtError,[mbOK], 0);
    end;
    try
      PrintF3();
    except
      on E: Exception do
        MessageDlg ('列印錯誤:'+E.Message, mtError,[mbOK], 0);
    end;
    end;
  fkey:='';
end;

procedure TDailyRepForm.CtrlAlt8Execute(Sender: TObject);
begin
  frxReportF8.LoadFromFile(WDM.WPath+'Report\DailyRepAll8.rep');
  frxReportF8.DesignReport;
end;

procedure TDailyRepForm.CtrlAltF3Execute(Sender: TObject);
begin
  frxReportF3.LoadFromFile(WDM.WPath+'Report\DailyRepAll3.rep');
  frxReportF3.DesignReport;
end;

procedure TDailyRepForm.ActionF12Execute(Sender: TObject);
begin
  if (fkey='') and (uflag=True) then
    begin
    fkey:='F12';
    PrintF12();
    fkey:='';
    end;
end;

end.
