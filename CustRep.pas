unit CustRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxClass, frxDBSet, Db, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ActnList, Buttons, RzButton, RzPanel, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, Wwdatsrc, ComCtrls, StdCtrls, Mask, DBCtrls,
  ZAbstractTable, RzPrgres, frxDesgn;

type
  TCustRepForm = class(TForm)
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    ActionList1: TActionList;
    ActionF1: TAction;
    ActionF2: TAction;
    ActionF3: TAction;
    ActionF9: TAction;
    ZConnection1: TZConnection;
    frxReportF9: TfrxReport;
    frxDBDSWIO: TfrxDBDataset;
    frxDBDS_cr: TfrxDBDataset;
    frxDBDS_Compy: TfrxDBDataset;
    wwDStempwio: TwwDataSource;
    ActionESC: TAction;
    frxReportF8: TfrxReport;
    ActionF8: TAction;
    RzToolbarButtonF8: TRzToolbarButton;
    ZQueryWo: TZQuery;
    frxDBDataset2: TfrxDBDataset;
    ZQueryWowiosn: TLargeintField;
    ZQueryWocrcode: TStringField;
    ZQueryWowicode: TStringField;
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
    ZQueryWocrname: TStringField;
    ZQueryWocrtel: TStringField;
    ZQueryWoKind: TStringField;
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    wwDBGrid1: TwwDBGrid;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbDate1: TLabel;
    lbDate2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label2: TLabel;
    ZQuery_tempwio: TZQuery;
    Label6: TLabel;
    Edit_crcode: TEdit;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    ZQuery_tempwiowicode: TStringField;
    ZQuery_tempwiowisno: TStringField;
    ZQuery_tempwiocrcode: TStringField;
    ZQuery_tempwiowiitem: TStringField;
    ZQuery_tempwiowiname: TStringField;
    ZQuery_tempwiowiwash: TStringField;
    ZQuery_tempwiowiacc: TStringField;
    ZQuery_tempwiowimemo: TStringField;
    ZQuery_tempwiowiwamo: TFloatField;
    ZQuery_tempwiowiexkind: TStringField;
    ZQuery_tempwiowiexmo: TFloatField;
    ZQuery_tempwiowiquty: TIntegerField;
    ZQuery_tempwiowisum: TFloatField;
    ZQuery_tempwiowiurge: TStringField;
    ZQuery_tempwiowiday: TStringField;
    ZQuery_tempwiowimdate: TStringField;
    ZQuery_tempwiowiodate: TStringField;
    ZQuery_tempwiowiotime: TTimeField;
    ZQuery_tempwiowiplace: TStringField;
    ZQuery_tempwiowidate: TStringField;
    ZQuery_tempwiowimark: TStringField;
    ZQuery_tempwioindate: TStringField;
    ZQuery_tempwiomark: TStringField;
    ZQuery_tempwiowisel: TStringField;
    ZQuery_tempwiopps: TIntegerField;
    ZQuery_tempwiopicture: TStringField;
    ZQuery_tempwiowitime: TTimeField;
    ZQuery_tempwiocrname: TStringField;
    ZTableCompy: TZTable;
    ZTableCr: TZTable;
    ZQuery_tempwiocrtel: TStringField;
    ZQuery_tempwiocrmoney: TFloatField;
    wwDSCr: TwwDataSource;
    wwDSCompy: TwwDataSource;
    ZTableCrcrcode: TStringField;
    ZTableCrcrdate: TStringField;
    ZTableCrcrname: TStringField;
    ZTableCrcsex: TStringField;
    ZTableCrcrid: TStringField;
    ZTableCrcrtel: TStringField;
    ZTableCrcrtela: TStringField;
    ZTableCrcrtelb: TStringField;
    ZTableCrcradr: TStringField;
    ZTableCrcrmoney: TFloatField;
    ZTableCrcrpsen: TFloatField;
    ZTableCrcrdate2: TStringField;
    ZTableCrcrcnt: TFloatField;
    ZTableCrcrvip: TStringField;
    ZTableCrcrarea: TStringField;
    ZTableCrcurst: TStringField;
    ZTableCrcrs1: TStringField;
    ZTableCrcrs2: TStringField;
    ZTableCrcrmark: TStringField;
    ZTableCompycpname: TStringField;
    ZTableCompycpaddr: TStringField;
    ZTableCompycptel: TStringField;
    ZTableCompycppsen: TLargeintField;
    ZTableCompycpwino: TLargeintField;
    ZTableCompycpwisno: TLargeintField;
    ZTableCompycpwisno_d: TLargeintField;
    ZTableCompycpdayn: TLargeintField;
    ZTableCompycpqday: TLargeintField;
    ZTableCompyppaa: TStringField;
    ZTableCompyppcc: TStringField;
    ZTableCompygetitem: TStringField;
    ZTableCompygetdisplay: TStringField;
    ZTableCompyExpansion: TStringField;
    ZTableCompyexpmode: TStringField;
    ZTableCompyasmb: TStringField;
    ZTableCompysp300: TStringField;
    ZTableCompyexit: TStringField;
    ZTableCompyserialno: TStringField;
    ZQuery_wio: TZReadOnlyQuery;
    ZQuery_stbwio: TZReadOnlyQuery;
    RzProgressBar1: TRzProgressBar;
    ZQuery_tempwiocrtelb: TStringField;
    ZQueryWocrtelb: TStringField;
    frxDesigner1: TfrxDesigner;
    CtrlAltF8: TAction;
    CtrlAltF9: TAction;
    procedure ActionESCExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionF1Execute(Sender: TObject);
    procedure ActionF9Execute(Sender: TObject);
    procedure ZQueryWoCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit_crcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure ActionF8Execute(Sender: TObject);
    procedure Edit_crcodeExit(Sender: TObject);
    procedure CtrlAltF8Execute(Sender: TObject);
    procedure CtrlAltF9Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustRepForm: TCustRepForm;
  fkey, crcode: String;

implementation

uses WDModule, lcutils, QueryCust, PPreview;

{$R *.DFM}

procedure TCustRepForm.ActionESCExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else if fkey='F3' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else
    Close;
  wwDBGrid1.SetFocus;  
end;

procedure TCustRepForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  MaskEditDate1.Text:=ChinaDate1(Date);
  MaskEditDate2.Text:=ChinaDate1(Date);
  lbDate1.Caption:=MaskEditDate1.Text;
  lbDate2.Caption:=MaskEditDate2.Text;

  ZTableCompy.Open;
  ZTableCr.Open;

  ZQuery_tempwio.Close;
  ZQuery_tempwio.SQL.Clear;
  ZQuery_tempwio.SQL.Add('SELECT * FROM wio');
  ZQuery_tempwio.SQL.Add('WHERE crcode=''00000''');
  ZQuery_tempwio.SQL.Add('ORDER BY wicode, wisno');
  ZQuery_tempwio.Open;
end;

procedure TCustRepForm.ActionF1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    PanelDateSet.BringToFront;
    Edit_crcode.SetFocus;
    Button1.Enabled:=True;
    end;
end;

procedure TCustRepForm.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
  if (Key=VK_UP) then
    Perform(WM_NextDlgCtl, 1, 0);
end;

procedure TCustRepForm.ActionF9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    ZQueryWo.Close;
    ZQueryWo.SQL.Clear;
    ZQueryWo.SQL.Add('SELECT * FROM wo');
    ZQueryWo.SQL.Add('WHERE crcode='''+WDM.ZQueryCust.FieldByName('crcode').AsString+'''');
    ZQueryWo.SQL.Add('AND widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQueryWo.SQL.Add('ORDER BY widate Desc,witime Desc');
    ZQueryWo.Open;
    try
      PreviewForm := TPreviewForm.Create(Application);
      frxReportF9.LoadFromFile(WDM.WPath+'Report\CustRepF9.rep');
      frxReportF9.preview:=PreviewForm.frxPreview1;
      //frxReport1.PrintOptions.ShowDialog:= False; //不顯示對話框
      //frxReport1.PrintOptions.Printer:= '';
      (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
      frxReportF9.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end;
end;

procedure TCustRepForm.ZQueryWoCalcFields(DataSet: TDataSet);
begin
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
  else
    ZQueryWo.FieldByName('Kind').AsString:='無類別'
end;

procedure TCustRepForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(CustRepForm);  
  fkey:='';
  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
  PanelDateSet.SendToBack;
  wwDBGrid1.SetFocus;
end;

procedure TCustRepForm.MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
  if (Key=VK_UP) then
    Perform(WM_NextDlgCtl, 1, 0);
end;

procedure TCustRepForm.SpeedButton1Click(Sender: TObject);
begin
  try
    QueryCustForm := TQueryCustForm.Create(Application);
    QueryCustForm.ShowModal;
    FreeAndNil(QueryCustForm);
    Edit_crcode.Text:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
    //ZTableCr.Locate('crcode',Edit_crcode.Text,[]);
  except
    on E: Exception do
      MessageDlg ('Error: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TCustRepForm.Edit_crcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
end;

procedure TCustRepForm.Button1Click(Sender: TObject);
var
  wicode,wisno,crcode,wiitem,winame,wiwash,wiacc,wimemo,wiexkind: String;
  wiurge,widay,wimdate,wiodate,wiplace,widate,wimark,indate,mark,pps,picture: String;
  rno,rcnt: Integer;
begin
  Button1.Enabled:=False;
  wwDBGrid1.DataSource.DataSet.DisableControls;
  ZQuery_tempwio.Close;
  ZQuery_tempwio.SQL.Text:='DELETE FROM tempwio';
  ZQuery_tempwio.ExecSQL;

  ZQuery_tempwio.Close;
  ZQuery_tempwio.SQL.Clear;
  ZQuery_tempwio.SQL.Add('SELECT * FROM tempwio');
  ZQuery_tempwio.SQL.Add('WHERE crcode='''+Edit_crcode.Text+'''');
  ZQuery_tempwio.SQL.Add('AND widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
  ZQuery_tempwio.SQL.Add('ORDER BY wicode desc, wisno desc');
  ZQuery_tempwio.Open;

  WDM.ZQueryCust.Close;
  //WDM.ZQueryCust.SQL.Clear;
  //WDM.ZQueryCust.SQL.Add('SELECT * FROM cr');
  //WDM.ZQueryCust.SQL.Add('WHERE crcode='''+Edit_crcode.Text+'''');
  WDM.ZQueryCust.Open;
  WDM.ZQueryCust.Locate('crcode',vararrayof([Edit_crcode.Text]),[]);
  
  lbDate1.Caption:=MaskEditDate1.Text;
  lbDate2.Caption:=MaskEditDate2.Text;

  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+Edit_crcode.Text+'''');
  ZQuery_wio.SQL.Add('AND widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
  ZQuery_wio.Open;
  rcnt:=ZQuery_wio.RecordCount;
  while not ZQuery_wio.Eof do
    begin
    try
      wicode:=ZQuery_wio.FieldByName('wicode').AsString;
      wisno:=ZQuery_wio.FieldByName('wisno').AsString;
      crcode:=ZQuery_wio.FieldByName('crcode').AsString;
      wiitem:=ZQuery_wio.FieldByName('wiitem').AsString;
      winame:=ZQuery_wio.FieldByName('winame').AsString;
      wiwash:=ZQuery_wio.FieldByName('wiwash').AsString;
      wiacc:=ZQuery_wio.FieldByName('wiacc').AsString;
      wimemo:=ZQuery_wio.FieldByName('wimemo').AsString;
      wiexkind:=ZQuery_wio.FieldByName('wiexkind').AsString;
      wiurge:=ZQuery_wio.FieldByName('wiurge').AsString;
      widay:=ZQuery_wio.FieldByName('widay').AsString;
      wimdate:=ZQuery_wio.FieldByName('wimdate').AsString;
      wiodate:=ZQuery_wio.FieldByName('wiodate').AsString;
      wiplace:=ZQuery_wio.FieldByName('wiplace').AsString;
      widate:=ZQuery_wio.FieldByName('widate').AsString;
      wimark:=ZQuery_wio.FieldByName('wimark').AsString;
      indate:=ZQuery_wio.FieldByName('indate').AsString;
      mark:=ZQuery_wio.FieldByName('mark').AsString;
      pps:=ZQuery_wio.FieldByName('pps').AsString;
      picture:=ZQuery_wio.FieldByName('picture').AsString;

      ZQuery_tempwio.Append;
      ZQuery_tempwio.FieldByName('wicode').AsString:=wicode;
      ZQuery_tempwio.FieldByName('wisno').AsString:=wisno;
      ZQuery_tempwio.FieldByName('crcode').AsString:=crcode;
      ZQuery_tempwio.FieldByName('wiitem').AsString:=wiitem;
      ZQuery_tempwio.FieldByName('winame').AsString:=winame;
      ZQuery_tempwio.FieldByName('wiwash').AsString:=wiwash;
      ZQuery_tempwio.FieldByName('wiacc').AsString:=wiacc;
      ZQuery_tempwio.FieldByName('wimemo').AsString:=wimemo;
      ZQuery_tempwio.FieldByName('wiwamo').Value:=ZQuery_wio.FieldByName('wiwamo').Value;
      ZQuery_tempwio.FieldByName('wiexkind').AsString:=wiexkind;
      ZQuery_tempwio.FieldByName('wiexmo').Value:=ZQuery_wio.FieldByName('wiexmo').Value;
      ZQuery_tempwio.FieldByName('wiquty').Value:=ZQuery_wio.FieldByName('wiquty').Value;
      ZQuery_tempwio.FieldByName('wisum').Value:=ZQuery_wio.FieldByName('wisum').Value;
      ZQuery_tempwio.FieldByName('wiurge').AsString:=wiurge;
      ZQuery_tempwio.FieldByName('widay').AsString:=widay;
      ZQuery_tempwio.FieldByName('wimdate').AsString:=wimdate;
      ZQuery_tempwio.FieldByName('wiodate').AsString:=wiodate;
      ZQuery_tempwio.FieldByName('wiotime').Value:=ZQuery_wio.FieldByName('wiotime').Value;
      ZQuery_tempwio.FieldByName('wiplace').AsString:=wiplace;
      ZQuery_tempwio.FieldByName('widate').AsString:=widate;
      ZQuery_tempwio.FieldByName('witime').Value:=ZQuery_wio.FieldByName('witime').Value;
      ZQuery_tempwio.FieldByName('wimark').AsString:=wimark;
      ZQuery_tempwio.FieldByName('indate').AsString:=indate;
      ZQuery_tempwio.FieldByName('mark').AsString:=mark;
      ZQuery_tempwio.FieldByName('pps').AsString:=pps;
      ZQuery_tempwio.FieldByName('picture').AsString:=picture;
      ZQuery_tempwio.Post;
    except
      Caption:=wisno+'轉換錯誤！';
    end;
    Application.ProcessMessages;
    rno:=ZQuery_wio.RecNo;
    RzProgressBar1.Percent:=Trunc((rno/rcnt)*100);
    ZQuery_wio.Next;
    end;
  ZQuery_wio.Close;

  ZQuery_stbwio.Close;
  ZQuery_stbwio.SQL.Clear;
  ZQuery_stbwio.SQL.Add('SELECT * FROM stbwio');
  ZQuery_stbwio.SQL.Add('WHERE crcode='''+Edit_crcode.Text+'''');
  ZQuery_stbwio.SQL.Add('AND widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
  ZQuery_stbwio.Open;
  rcnt:=ZQuery_stbwio.RecordCount;
  while not ZQuery_stbwio.Eof do
    begin
    try
      wicode:=ZQuery_stbwio.FieldByName('wicode').AsString;
      wisno:=ZQuery_stbwio.FieldByName('wisno').AsString;
      crcode:=ZQuery_stbwio.FieldByName('crcode').AsString;
      wiitem:=ZQuery_stbwio.FieldByName('wiitem').AsString;
      winame:=ZQuery_stbwio.FieldByName('winame').AsString;
      wiwash:=ZQuery_stbwio.FieldByName('wiwash').AsString;
      wiacc:=ZQuery_stbwio.FieldByName('wiacc').AsString;
      wimemo:=ZQuery_stbwio.FieldByName('wimemo').AsString;
      wiexkind:=ZQuery_stbwio.FieldByName('wiexkind').AsString;
      wiurge:=ZQuery_stbwio.FieldByName('wiurge').AsString;
      widay:=ZQuery_stbwio.FieldByName('widay').AsString;
      wimdate:=ZQuery_stbwio.FieldByName('wimdate').AsString;
      wiodate:=ZQuery_stbwio.FieldByName('wiodate').AsString;
      wiplace:=ZQuery_stbwio.FieldByName('wiplace').AsString;
      widate:=ZQuery_stbwio.FieldByName('widate').AsString;
      wimark:=ZQuery_stbwio.FieldByName('wimark').AsString;
      indate:=ZQuery_stbwio.FieldByName('indate').AsString;
      mark:=ZQuery_stbwio.FieldByName('mark').AsString;
      pps:=ZQuery_stbwio.FieldByName('pps').AsString;
      picture:=ZQuery_stbwio.FieldByName('picture').AsString;

      ZQuery_tempwio.Append;
      ZQuery_tempwio.FieldByName('wicode').AsString:=wicode;
      ZQuery_tempwio.FieldByName('wisno').AsString:=wisno;
      ZQuery_tempwio.FieldByName('crcode').AsString:=crcode;
      ZQuery_tempwio.FieldByName('wiitem').AsString:=wiitem;
      ZQuery_tempwio.FieldByName('winame').AsString:=winame;
      ZQuery_tempwio.FieldByName('wiwash').AsString:=wiwash;
      ZQuery_tempwio.FieldByName('wiacc').AsString:=wiacc;
      ZQuery_tempwio.FieldByName('wimemo').AsString:=wimemo;
      ZQuery_tempwio.FieldByName('wiwamo').Value:=ZQuery_stbwio.FieldByName('wiwamo').Value;
      ZQuery_tempwio.FieldByName('wiexkind').AsString:=wiexkind;
      ZQuery_tempwio.FieldByName('wiexmo').Value:=ZQuery_stbwio.FieldByName('wiexmo').Value;
      ZQuery_tempwio.FieldByName('wiquty').Value:=ZQuery_stbwio.FieldByName('wiquty').Value;
      ZQuery_tempwio.FieldByName('wisum').Value:=ZQuery_stbwio.FieldByName('wisum').Value;
      ZQuery_tempwio.FieldByName('wiurge').AsString:=wiurge;
      ZQuery_tempwio.FieldByName('widay').AsString:=widay;
      ZQuery_tempwio.FieldByName('wimdate').AsString:=wimdate;
      ZQuery_tempwio.FieldByName('wiodate').AsString:=wiodate;
      ZQuery_tempwio.FieldByName('wiotime').Value:=ZQuery_stbwio.FieldByName('wiotime').Value;
      ZQuery_tempwio.FieldByName('wiplace').AsString:=wiplace;
      ZQuery_tempwio.FieldByName('widate').AsString:=widate;
      ZQuery_tempwio.FieldByName('witime').Value:=ZQuery_stbwio.FieldByName('witime').Value;
      ZQuery_tempwio.FieldByName('wimark').AsString:=wimark;
      ZQuery_tempwio.FieldByName('indate').AsString:=indate;
      ZQuery_tempwio.FieldByName('mark').AsString:=mark;
      ZQuery_tempwio.FieldByName('pps').AsString:=pps;
      ZQuery_tempwio.FieldByName('picture').AsString:=picture;
      ZQuery_tempwio.Post;
    except
      Caption:='歷史檔'+wisno+'轉換錯誤！';
    end;
    Application.ProcessMessages;
    rno:=ZQuery_stbwio.RecNo;
    RzProgressBar1.Percent:=Trunc((rno/rcnt)*100);
    ZQuery_stbwio.Next;
    end;
  ZQuery_stbwio.Close;

  ZQuery_tempwio.First;
  wwDBGrid1.DataSource.DataSet.EnableControls;
  PanelDateSet.SendToBack;
  fkey:='';
end;

procedure TCustRepForm.ActionF8Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    wwDBGrid1.DataSource.DataSet.DisableControls;
    try
      PreviewForm := TPreviewForm.Create(Application);
      frxReportF8.LoadFromFile(WDM.WPath+'Report\CustRepF8.rep');
      frxReportF8.preview:=PreviewForm.frxPreview1;
      (frxReportF8.FindObject('MemoDate')as TfrxMemoView).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
      frxReportF8.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    end;
end;

procedure TCustRepForm.Edit_crcodeExit(Sender: TObject);
begin                                                       
  if (Edit_crcode.Text<>'')AND(Length(Edit_crcode.Text)<5) then
    begin
    Edit_crcode.Text:=StrZero(StrToInt(Edit_crcode.Text),5);    
    //ZTableCr.Locate('crcode',vararrayof([Edit_crcode.Text]),[]);
    end;
end;

procedure TCustRepForm.CtrlAltF8Execute(Sender: TObject);
begin
  frxReportF8.LoadFromFile(WDM.WPath+'Report\CustRepF8.rep');
  frxReportF8.DesignReport;
end;

procedure TCustRepForm.CtrlAltF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\CustRepF9.rep');
  frxReportF9.DesignReport;
end;

end.
