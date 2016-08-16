unit Custom;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, frxClass, frxDBSet, ZDataset, Db,
  ZAbstractRODataset, ZAbstractDataset, ZConnection, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, Buttons, RzButton, RzPanel, ExtCtrls, Mask, wwdbedit;

type
  TCustForm = class(TForm)
    ActionList1: TActionList;
    Action_F3: TAction;
    Action_F1: TAction;
    Action_F2: TAction;
    Action_PgDn: TAction;
    Action_F9: TAction;
    Action_Exit: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    RzToolbarButtonPD: TRzToolbarButton;
    DS_QCust: TDataSource;
    ZConnection1: TZConnection;
    Action_CtrlDel: TAction;
    RzToolbarButtonESC: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    PanelFind: TPanel;
    Label11: TLabel;
    SearchEdit: TEdit;
    ZQuery_cr: TZQuery;
    Action_CtrlR: TAction;
    Action_CtrlA: TAction;
    Action_F6: TAction;
    PanelCrmoney: TPanel;
    Label2: TLabel;
    Action_F4: TAction;
    Action_F5: TAction;
    RzToolbarButtonF4: TRzToolbarButton;
    RzToolbarButtonF5: TRzToolbarButton;
    ZQuery_wio: TZQuery;
    frxReportF459: TfrxReport;
    frxDBDatasetCr: TfrxDBDataset;
    frxDBDatasetCompy: TfrxDBDataset;
    RzPanel1: TRzPanel;
    DBTextcrmoney: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    PanelAdrs: TPanel;
    Edit2: TEdit;
    Edit9: TEdit;
    DBText1: TDBText;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit10: TEdit;
    Action_CtrlEnd: TAction;
    Action_CtrlHome: TAction;
    Action_F11: TAction;
    Image1: TImage;
    Action_CP: TAction;
    EditCrmoney: TEdit;
    ZQuery: TZQuery;
    ZQuery_wo: TZQuery;
    ZQuery_pcr: TZQuery;
    ZQuery_pcrcrcode: TStringField;
    ZQuery_pcrcrname: TStringField;
    ZQuery_pcrcrtel: TStringField;
    ZQuery_pcrcradr: TStringField;
    ZQuery_pcrcrmoney: TFloatField;
    ZQuery_pcrcrvip: TStringField;
    ZQuery_pcrcrnotget: TIntegerField;
    ZQuery_pcrcrpnotget: TIntegerField;
    ZQuery_pcrcrdate: TStringField;
    ZQuery_pcrcsex: TStringField;
    ZQuery_pcrcrid: TStringField;
    ZQuery_pcrcrtela: TStringField;
    ZQuery_pcrcrtelb: TStringField;
    ZQuery_pcrcrpsen: TFloatField;
    ZQuery_pcrcrdate2: TStringField;
    ZQuery_pcrcrcnt: TFloatField;
    ZQuery_pcrcrarea: TStringField;
    ZQuery_pcrcurst: TStringField;
    ZQuery_pcrcrs1: TStringField;
    ZQuery_pcrcrs2: TStringField;
    ZQuery_pcrcrmark: TStringField;
    ZQuery_rcr: TZQuery;
    LB_Adrs: TListBox;
    Panel_Print: TPanel;
    Label19: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    CheckBox3: TCheckBox;
    Edit_Area: TEdit;
    PanelName: TPanel;
    LB_name: TListBox;
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_CtrlDelExecute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchEditChange(Sender: TObject);
    procedure Action_CtrlRExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_CtrlAExecute(Sender: TObject);
    procedure Action_F6Execute(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
    procedure Edit10Enter(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CtrlHomeExecute(Sender: TObject);
    procedure Action_CtrlEndExecute(Sender: TObject);
    procedure Action_F11Execute(Sender: TObject);
    procedure Action_CPExecute(Sender: TObject);
    procedure EditCrmoneyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F4Execute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure ZQuery_pcrCalcFields(DataSet: TDataSet);
    procedure LB_nameClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure New_wo();
    procedure CloseAllPanel();
    procedure ShowName();
    procedure ShowAdr();
    procedure EnableEdit(act: Integer);
    procedure CheckCr();
  end;

var
  CustForm: TCustForm;
  fkey, OldEditStr, NewEditStr, crcode: String;
  crmoney, newcrmoney: Real;
  ppaa, dataflag: Boolean;
  bm: TBookMark;
  newadr: String;
  
implementation

uses WDModule, lcutils, PPreview, GetCam, ShowPic;

{$R *.DFM}

procedure TCustForm.CheckCr();
var
  IStr: String;
begin
  IStr:=Edit2.Text;
  IStr:=StringReplace(IStr, '許', '許\\',[rfReplaceAll, rfIgnoreCase]);
  IStr:=StringReplace(IStr, '功', '功\\',[rfReplaceAll, rfIgnoreCase]);
  IStr:=StringReplace(IStr, '蓋', '蓋\\',[rfReplaceAll, rfIgnoreCase]);
  ZQuery_rcr.Close;
  ZQuery_rcr.SQL.Clear;
  ZQuery_rcr.SQL.Add('SELECT crcode,crname,crtel FROM cr');
  ZQuery_rcr.SQL.Add('WHERE crname='''+IStr+'''');
  ZQuery_rcr.SQL.Add('AND crtel='''+Edit4.Text+'''');
  ZQuery_rcr.SQL.Add('AND crmark=''Y''');
  ZQuery_rcr.Open;
  if not ZQuery_rcr.Eof then
    begin
    crcode:=ZQuery_rcr.FieldByName('crcode').AsString;
    dataflag:=False;
    end
  else
    dataflag:=True;

  if Edit6.Text<>'' then
    begin
    ZQuery_rcr.Close;
    ZQuery_rcr.SQL.Clear;
    ZQuery_rcr.SQL.Add('SELECT crcode,crname,crtel FROM cr');
    ZQuery_rcr.SQL.Add('WHERE crname='''+IStr+'''');
    ZQuery_rcr.SQL.Add('AND crtelb='''+Edit6.Text+'''');
    ZQuery_rcr.SQL.Add('AND crmark=''Y''');
    ZQuery_rcr.Open;
    if not ZQuery_rcr.Eof then
      begin
      crcode:=ZQuery_rcr.FieldByName('crcode').AsString;
      dataflag:=False;
      end
    else
      dataflag:=True;
    ZQuery_rcr.Close;
    end;
end;

procedure TCustForm.EnableEdit(act: Integer);
var
  aflag: Boolean;
begin
  if act=0 then
    aflag:=False
  else
    aflag:=True;
  Edit1.Enabled:=aflag;
  Edit2.Enabled:=aflag;
  Edit3.Enabled:=aflag;
  Edit4.Enabled:=aflag;
  Edit5.Enabled:=aflag;
  Edit6.Enabled:=aflag;
  Edit7.Enabled:=aflag;
  Edit8.Enabled:=aflag;
  Edit9.Enabled:=aflag;
  Edit10.Enabled:=aflag;
end;

procedure TCustForm.New_wo();
begin
  Try
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT * FROM wo');
    ZQuery_wo.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQuery_wo.Open;
    ZQuery_wo.Append;
    ZQuery_wo.FieldByName('crcode').Value:=WDM.crcode;
    ZQuery_wo.FieldByName('wototal').AsFloat:=newcrmoney;
    ZQuery_wo.FieldByName('woptotal').AsFloat:=crmoney;
    ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
    ZQuery_wo.FieldByName('worealmo').AsFloat:=0;
    ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
    ZQuery_wo.FieldByName('widate').Value:=ChinaDate1(Date);
    ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:mm:ss',Time);
    ZQuery_wo.FieldByName('fritem').AsString:='Z'; // Z.修改客額
    ZQuery_wo.FieldByName('sfname').AsString:='無名氏';
    ZQuery_wo.Post;
    ZQuery_wo.Close;
  Except
    ShowMessage('WO建立錯誤！');
  end;
end;

procedure TCustForm.ShowName();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waname');
  ZQuery.SQL.Add('ORDER BY wano1');
  ZQuery.Open;
  LB_name.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_name.Items.Add(ZQuery.FieldByName('wano1').AsString+'.'+ZQuery.FieldByName('waname').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

procedure TCustForm.ShowAdr();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waadr');
  ZQuery.SQL.Add('ORDER BY wano8');
  ZQuery.Open;
  LB_Adrs.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_Adrs.Items.Add(ZQuery.FieldByName('wano8').AsString+' '+ZQuery.FieldByName('waadr').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
end;

procedure TCustForm.CloseAllPanel();
begin
  PanelName.SendToBack;
  PanelAdrs.SendToBack;
  Panel_Print.SendToBack;
end;

procedure TCustForm.Action_F1Execute(Sender: TObject);
var
  lno: Integer;
begin
  if (fkey='')AND(ZQuery_cr.RecordCount<=100) then
    begin
    fkey:='F1';
    dataflag:=True;
    EnableEdit(1);
    ZQuery_rcr.Close;
    ZQuery_rcr.SQL.Clear;
    ZQuery_rcr.SQL.Add('SELECT crcode FROM cr');
    ZQuery_rcr.SQL.Add('WHERE crmark=''Y''');
    ZQuery_rcr.SQL.Add('ORDER BY crcode DESC');
    ZQuery_rcr.Open;
    if ZQuery_rcr.FieldByName('crcode').AsString='' then
      lno:=1
    else
      lno:=StrToInt(ZQuery_rcr.FieldByName('crcode').AsString)+1;
    ZQuery_rcr.Close;

    ZQuery_cr.Append;
    ZQuery_cr.FieldByName('crcode').Value:=StrZero(lno,5);
    ZQuery_cr.FieldByName('crdate').Value:=ChinaDate1(date);
    ZQuery_cr.FieldByName('crvip').Value:='N';
    ZQuery_cr.FieldByName('crmoney').Value:=0;
    ZQuery_cr.FieldByName('crmark').Value:='Y';
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    Edit7.Text:='';
    Edit8.Text:='';
    Edit9.Text:='';
    Edit10.Text:='0';
    Edit1.SetFocus;
    wwDBGrid1.Enabled:=False;
    end // >30筆資料
  else
    begin
    ShowMessage('抱歉！此評估版本[客戶資料]筆數有限制！');
    ZQuery_cr.Cancel;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TCustForm.Action_F2Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F2';
    EnableEdit(1);
    ZQuery_cr.Edit;
    wwDBGrid1.Enabled:=False;
    Edit2.SetFocus;
    end;
end;

procedure TCustForm.Action_CtrlDelExecute(Sender: TObject);
var
  msg: String;
  bflag: Boolean;
begin
  if fkey='' then
    begin
    fkey:='CD';
    msg:='確定刪除客戶('+ZQuery_cr.FieldByName('crcode').AsString+')資料？';
    if IDYES=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
      begin
      ZQuery_cr.Edit;
      ZQuery_cr.FieldByName('crmark').AsString:='N';
      ZQuery_cr.Post;
      if ZQuery_cr.RecNo<>ZQuery_cr.RecordCount then
        begin
        bm:=ZQuery_cr.GetBookmark;
        bflag:=True;
        end
      else
        bflag:=False;
      ZQuery_cr.Close;
      ZQuery_cr.Open;
      if bflag then
        ZQuery_cr.GotoBookmark(bm);
      end;
    fkey:='';
    end
  else if fkey='CR' then
    begin
    ZQuery_cr.Delete;
    end;

end;

procedure TCustForm.Action_ExitExecute(Sender: TObject);
begin
  CloseAllPanel();
  if (fkey='F1') or (fkey='F2') then
    begin
    Action_PgDnExecute(Self);
    //EnableEdit(0);
    //fkey:='';
    //ZQuery_cr.Cancel;
    //wwDBGrid1.Enabled:=True;
    //wwDBGrid1.SetFocus;
    end
  else if fkey='F3' then
    begin
    fkey:='';
    PanelFind.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F6' then
    begin
    fkey:='';
    PanelCrMoney.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end 
  else if fkey='F9' then
    begin
    fkey:='';
    Panel_Print.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='CR' then
    begin
    fkey:='';
    RzToolbarButtonF1.Visible:=True;
    RzToolbarButtonF2.Visible:=True;
    RzToolbarButtonF3.Visible:=True;
    RzToolbarButtonF9.Visible:=True;
    RzToolbarButtonPD.Visible:=True;
    RzPanel1.Enabled:=True;

    ZQuery_cr.Close;
    ZQuery_cr.SQL.Clear;
    ZQuery_cr.SQL.Add('SELECT * FROM cr');
    ZQuery_cr.SQL.Add('WHERE crmark=''Y''');
    ZQuery_cr.SQL.Add('ORDER BY crcode');
    ZQuery_cr.Open;
    end
  else
    Close;
end;

procedure TCustForm.Action_PgDnExecute(Sender: TObject);
var
  ret :word;
begin
  if (fkey='F1')or(fkey='F2') then
    begin
    CloseAllPanel();
    ret:=MessageDlg('資料完成,是否存檔?', mtWarning, [mbYes, mbNo, mbCancel], 0);
    if ret=mrYes then
      begin
      if (Edit2.Text='') and (Edit4.Text='') then
        begin
        ShowMessage('姓名或電話必需輸入其一！');
        Edit2.SetFocus;
        Exit;
        end;
      if (fkey='F1') then
        CheckCr() //判斷是否有重覆資料
      else
        dataflag:=True;
      if not dataflag then
        begin
        ShowMessage('客編：'+crcode+'-已經有資料'+#13+#10+'無法存檔！');
        Edit4.SetFocus;
        Exit;
        end
      else //新增或修改 無重覆資料
        begin
        ZQuery_cr.FieldByName('curst').AsString:=Edit1.Text;
        ZQuery_cr.FieldByName('crname').AsString:=Edit2.Text;
        ZQuery_cr.FieldByName('csex').AsString:=Edit3.Text;
        ZQuery_cr.FieldByName('crtel').AsString:=Edit4.Text;
        ZQuery_cr.FieldByName('crtela').AsString:=Edit5.Text;
        ZQuery_cr.FieldByName('crtelb').AsString:=Edit6.Text;
        ZQuery_cr.FieldByName('crid').AsString:=Edit7.Text;
        ZQuery_cr.FieldByName('crarea').AsString:=Edit8.Text;
        ZQuery_cr.FieldByName('cradr').AsString:=Edit9.Text;
        ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit10.Text);
        ZQuery_cr.Post;
        WDM.crcode:=ZQuery_cr.FieldByName('crcode').AsString;
        fkey:='';
        WDM.fstr:='';
        EnableEdit(0);
        wwDBGrid1.Enabled:=True;
        wwDBGrid1.SetFocus;
        end;
      end
    else if ret=mrNo then
      begin
      fkey:='';
      ZQuery_cr.Cancel;
      EnableEdit(0);
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end
    else
      Edit4.SetFocus;
    end; // fkey
end;

procedure TCustForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(CustForm);

  PanelFind.Left:=Trunc((Width-PanelFind.Width)/2);
  PanelFind.Top:=Trunc((Height-PanelFind.Height)/2);
  PanelCrmoney.Left:=Trunc((Width-PanelCrmoney.Width)/2);
  PanelCrmoney.Top:=Trunc((Height-PanelCrmoney.Height)/2);
  Panel_Print.Left:=Trunc((Width-Panel_Print.Width)/2);
  Panel_Print.Top:=Trunc((Height-Panel_Print.Height)/2);
  CloseAllPanel();
end;

procedure TCustForm.Action_F3Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F3';
    wwDBGrid1.Enabled:=False;
    PanelFind.Visible:=True;
    PanelFind.BringToFront;
    SearchEdit.Text:='';
    SearchEdit.SetFocus;
    end;
end;

procedure TCustForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  EnableEdit(0);
  ShowName();
  PanelName.Height:=415;
  PanelName.Width:=360;
  ShowAdr();
  LB_Adrs.Width:=600;
  ZQuery_cr.Close;
  ZQuery_cr.SQL.Clear;
  ZQuery_cr.SQL.Add('SELECT * FROM cr');
  ZQuery_cr.SQL.Add('WHERE crmark=''Y''');
  ZQuery_cr.SQL.Add('ORDER BY crcode');
  ZQuery_cr.Open;
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  if WDM.ZTableCompy.FieldByName('ppaa').AsString='是' then //顯示片語
    ppaa:=True
  else
    ppaa:=False;
end;

procedure TCustForm.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    if SearchEdit.Text=''then
      begin
      ZQuery_cr.Close;
      ZQuery_cr.SQL.Clear;
      ZQuery_cr.SQL.Add('SELECT * FROM cr');      
      ZQuery_cr.SQL.Add('WHERE crmark=''Y''');
      ZQuery_cr.SQL.Add('ORDER BY crcode');
      ZQuery_cr.Open;
      end;
    fkey:='';  
    PanelFind.Visible:=False;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TCustForm.SearchEditChange(Sender: TObject);
var
  instr: String;
begin
  instr:=SearchEdit.Text;
  instr:=StringReplace(instr, '許', '許\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '功', '功\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '蓋', '蓋\\',[rfReplaceAll, rfIgnoreCase]);
  ZQuery_cr.Close;
  ZQuery_cr.SQL.Clear;
  ZQuery_cr.SQL.Add('SELECT * FROM cr');
  ZQuery_cr.SQL.Add('WHERE (crcode like ''%'+instr+'%''');
  ZQuery_cr.SQL.Add('OR crname LIKE ''%'+instr+'%''');
  ZQuery_cr.SQL.Add('OR crtel LIKE ''%'+instr+'%''');
  ZQuery_cr.SQL.Add('OR crtela LIKE ''%'+instr+'%''');
  ZQuery_cr.SQL.Add('OR crtelb LIKE ''%'+instr+'%''');
  ZQuery_cr.SQL.Add('OR cradr LIKE ''%'+instr+'%''');
  ZQuery_cr.SQL.Add('OR curst LIKE ''%'+instr+'%'')');
  ZQuery_cr.SQL.Add('AND crmark=''Y''');
  ZQuery_cr.SQL.Add('ORDER BY crcode');
  ZQuery_cr.Open;
  if ZQuery_cr.RecordCount>0 then
    ZQuery_cr.First;
end;

procedure TCustForm.Action_CtrlRExecute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='CR';
    ZQuery_cr.Close;
    ZQuery_cr.SQL.Text:='SELECT * FROM cr WHERE crmark=''N''';
    ZQuery_cr.Open;
    RzPanel1.Enabled:=False;
    RzToolbarButtonF1.Visible:=False;
    RzToolbarButtonF2.Visible:=False;
    RzToolbarButtonF3.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    //RzToolbarButtonCD.Visible:=False;
    RzToolbarButtonPD.Visible:=False;
    end;
end;

procedure TCustForm.FormShow(Sender: TObject);
var
  fname: String;
begin
  fkey:='';
  fname:=ZQuery_cr.FieldByName('crcode').AsString+'.jpg';
  if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
    begin
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Captures\'+fname);
    Image1.Visible:=True;
    end
  else
    Image1.Visible:=False;
  Edit1.Text:=ZQuery_cr.FieldByName('curst').AsString;
  Edit2.Text:=ZQuery_cr.FieldByName('crname').AsString;
  Edit3.Text:=ZQuery_cr.FieldByName('csex').AsString;
  Edit4.Text:=ZQuery_cr.FieldByName('crtel').AsString;
  Edit5.Text:=ZQuery_cr.FieldByName('crtela').AsString;
  Edit6.Text:=ZQuery_cr.FieldByName('crtelb').AsString;
  Edit7.Text:=ZQuery_cr.FieldByName('crid').AsString;
  Edit8.Text:=ZQuery_cr.FieldByName('crarea').AsString;
  Edit9.Text:=ZQuery_cr.FieldByName('cradr').AsString;
  Edit10.Text:=ZQuery_cr.FieldByName('crpsen').AsString;

  Panelname.SendToBack;
  PanelAdrs.SendToBack;
  PanelFind.SendToBack;
  PanelCrmoney.SendToBack;
  wwDBGrid1.SetFocus;
  if WDM.fstr='F1' then //建立新客戶
    Action_F1Execute(Self);
end;

procedure TCustForm.Action_CtrlAExecute(Sender: TObject);
var
  maxcrcode: String;
begin
  if fkey='CR' then
    begin
    ZQuery_pcr.Close;
    ZQuery_pcr.SQL.Clear;
    ZQuery_pcr.SQL.Add('SELECT * FROM cr');
    ZQuery_pcr.SQL.Add('WHERE crmark=''Y''');
    ZQuery_pcr.SQL.Add('ORDER BY crcode DESC');
    ZQuery_pcr.Open;
    maxcrcode:=ZQuery_pcr.FieldByName('crcode').AsString;
    ZQuery_pcr.Close;
    ZQuery_pcr.SQL.Clear;
    ZQuery_pcr.SQL.Add('SELECT * FROM cr');
    ZQuery_pcr.SQL.Add('WHERE crmark=''Y'' AND crcode='''+ZQuery_cr.FieldByName('crcode').AsString+'''');
    ZQuery_pcr.SQL.Add('ORDER BY crcode DESC');
    ZQuery_pcr.Open;
    if ZQuery_pcr.Eof then
      begin
      ZQuery_cr.Edit;
      ZQuery_cr.FieldByName('crmark').AsString:='Y';
      ZQuery_cr.Post;
      ShowMessage('編號'+ZQuery_cr.FieldByName('crcode').AsString+'已復原！');
      end
    else
      ShowMessage('原資料已有此編號'+ZQuery_cr.FieldByName('crcode').AsString+'無法復原！');
    ZQuery_pcr.Close;  
    Action_ExitExecute(Self);
    end
end;

procedure TCustForm.Action_F6Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F6';
    wwDBGrid1.Enabled:=False;
    EditCrmoney.Text:=ZQuery_cr.FieldByName('crmoney').Value;
    EditCrmoney.SetFocus;
    EditCrmoney.SelStart:=Length(EditCrmoney.Text);
    PanelCrmoney.BringToFront;
    WDM.crcode:=ZQuery_cr.FieldByName('crcode').AsString;
    crmoney:=ZQuery_cr.FieldByName('crmoney').AsFloat;
    end;
end;

procedure TCustForm.wwDBGrid1RowChanged(Sender: TObject);
var
  fname: String;
begin
  if ZQuery_cr.FieldByName('crmoney').AsFloat>=0 then
    DBTextcrmoney.Font.Color:=ClYellow
  else
    DBTextcrmoney.Font.Color:=ClRed;
  Edit1.Text:=ZQuery_cr.FieldByName('curst').AsString;
  Edit2.Text:=ZQuery_cr.FieldByName('crname').AsString;
  Edit3.Text:=ZQuery_cr.FieldByName('csex').AsString;
  Edit4.Text:=ZQuery_cr.FieldByName('crtel').AsString;
  Edit5.Text:=ZQuery_cr.FieldByName('crtela').AsString;
  Edit6.Text:=ZQuery_cr.FieldByName('crtelb').AsString;
  Edit7.Text:=ZQuery_cr.FieldByName('crid').AsString;
  Edit8.Text:=ZQuery_cr.FieldByName('crarea').AsString;
  Edit9.Text:=ZQuery_cr.FieldByName('cradr').AsString;
  Edit10.Text:=ZQuery_cr.FieldByName('crpsen').AsString;
  fname:=ZQuery_cr.FieldByName('crcode').AsString+'.jpg';
  if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
    begin
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Captures\'+fname);
    Image1.Visible:=True;
    end
  else
    Image1.Visible:=False;
end;

procedure TCustForm.Action_F5Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    wwDBGrid1.DataSource.DataSet.DisableControls;
    try
      ZQuery_pcr.Close;
      ZQuery_pcr.SQL.Clear;
      ZQuery_pcr.SQL.Add('SELECT * FROM cr');
      ZQuery_pcr.SQL.Add('WHERE crmark=''Y''');
      ZQuery_pcr.SQL.Add('AND crmoney<0');
      ZQuery_pcr.SQL.Add('ORDER BY crmoney');
      ZQuery_pcr.Open;
      (frxReportF459.FindObject('MemoTitle')as TfrxMemoView).Text:='☆☆☆客戶欠款統計報表☆☆☆';
      (frxReportF459.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
      (frxReportF459.FindObject('MemoSum')as TfrxMemoView).Text:='總計餘額:';
      PreviewForm:=TPreviewForm.Create(Application);
      frxReportF459.preview:=PreviewForm.frxPreview1;
      frxReportF459.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
      ZQuery_pcr.Close;
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    end;
end;

procedure TCustForm.Edit2Enter(Sender: TObject);
begin
  if (ppaa) then
    begin
    OldEditStr:=Edit2.Text;
    CloseAllPanel();
    PanelName.BringToFront;
    end;
end;

procedure TCustForm.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue: String;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit2.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit2.Text;
    
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywaname.ParamByName('wano1').AsString:=newvalue;
    WDM.ZQuerywaname.Open;
    if WDM.ZQuerywaname.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaname.FieldByName('waname').AsString;
      if Length(Edit2.Text)>2 then
        newvalue:=Copy(Edit2.Text,1,Length(Edit2.Text)-2)+newvalue;
      if length(newvalue)>=8 then
        begin
        Edit2.Text:=Copy(newvalue,1,8);
        Perform(WM_NextDlgCtl, 0, 0);
        end
      else
        Edit2.Text:=newvalue;
      OldEditStr:=Edit2.Text;
      Edit2.SelStart:=Length(newvalue);
      end;
    WDM.ZQuerywaname.Close;
    end;
end;

procedure TCustForm.Edit9Enter(Sender: TObject);
begin
  if (ppaa) then
    begin
    OldEditStr:=Edit9.Text;
    CloseAllPanel();
    Edit9.SelStart:=Length(Edit9.Text);
    PanelAdrs.BringToFront;
    end;
end;

procedure TCustForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='F1')or(fkey='F2') then
    if (Key=VK_UP)AND(Edit1.Focused=False) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 1, 0);
        end
    else if (Key=VK_DOWN)AND(Edit10.Focused=False) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 0, 0);
        end;
end;

procedure TCustForm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if (Key=VK_Left)or(Key=VK_Right)or(Key=VK_Delete) then
    OldEditStr:=Edit2.Text
  else if (Key=VK_Back) then
    OldEditStr:=Copy(Edit2.Text,1,Length(Edit2.Text)-1);} 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit9KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  nlInt, olInt: Integer;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit9.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit9.Text;
  
  if (Key=VK_Left)or(Key=VK_Right)or(Key=VK_Delete) then
    begin
    OldEditStr:=Edit9.Text;
    Key:=0;
    end
  else if (Key=VK_Back) then
    begin
    OldEditStr:=Copy(Edit9.Text,1,Length(Edit9.Text)-1);
    Key:=0;
    end
  else if (Key=VK_Return) then
    begin
    Key:=0;
    if (OldEditStr=Edit9.Text)or(newvalue='') then
      begin      
      Perform(WM_NextDlgCtl, 0, 0);
      Exit;
      end;
    nlInt:=Length(Edit9.Text);
    olInt:=Length(OldEditStr);
    if (nlInt-olInt)>=2 then
      begin
      inputvalue:=Copy(Edit9.Text,nlInt-1,2);
      if not IsLeadByteTw(Char(inputvalue[1])) then
        begin
        WDM.ZQuerywaadr.ParamByName('wano8').Value:=inputvalue;
        WDM.ZQuerywaadr.Open;
        if WDM.ZQuerywaadr.RecordCount>0 then
          newvalue:=WDM.ZQuerywaadr.FieldByName('waadr').Value
        else
          newvalue:='';
        WDM.ZQuerywaadr.Close;
        end
      else
        newvalue:=inputvalue;
      newvalue:=Copy(Edit9.Text,1,nlInt-2)+newvalue;
      if length(newvalue)>=50 then
        begin
        Edit9.Text:=Copy(newvalue,1,50);
        Perform(WM_NextDlgCtl, 0, 0);
        end
      else
        Edit9.Text:=newvalue;
      OldEditStr:=Edit9.Text;
      Edit9.SelStart:=Length(newvalue);
      end
    else
      Perform(WM_NextDlgCtl, 0, 0);
    end; //if (Key=VK_Return)and(Edit10.Text<>'') then
end;

procedure TCustForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit4Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit1Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit3Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit5Enter(Sender: TObject);
var
  instr: String;
begin
  if fkey='F1' then
    begin
    if (Edit2.Text='') and (Edit4.Text='') then
      begin
      ShowMessage('姓名或電話必需輸入其一！');
      Edit2.SetFocus;
      Exit;
      end;
    instr:=Edit2.Text;
    instr:=StringReplace(instr, '許', '許\\',[rfReplaceAll, rfIgnoreCase]);
    instr:=StringReplace(instr, '功', '功\\',[rfReplaceAll, rfIgnoreCase]);
    instr:=StringReplace(instr, '蓋', '蓋\\',[rfReplaceAll, rfIgnoreCase]);
    ZQuery_rcr.Close;
    ZQuery_rcr.SQL.Clear;
    ZQuery_rcr.SQL.Add('SELECT crcode,crname,crtel FROM cr');
    ZQuery_rcr.SQL.Add('WHERE crname='''+instr+'''');
    ZQuery_rcr.SQL.Add('AND crtel='''+Edit4.Text+'''');
    ZQuery_rcr.SQL.Add('AND crmark=''Y''');
    ZQuery_rcr.Open;
    if not ZQuery_rcr.Eof then
      begin
      ShowMessage('客編：'+ZQuery_rcr.FieldByName('crcode').AsString+'-已經有資料！');
      Edit4.SetFocus;
      dataflag:=False;
      end
    else
      dataflag:=True;
    ZQuery_rcr.Close;
    end;
  CloseAllPanel();
end;

procedure TCustForm.Edit6Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit7Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit8Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit10Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TCustForm.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=49)or(Key=97) then
    begin
    Edit3.Text:='男';
    Edit4.SetFocus;
    end
  else if (Key=50)or(Key=98) then
    begin
    Edit3.Text:='女';
    Edit4.SetFocus;
    end
  else
    Edit3.Text:='';
  Key:=0;  
end;

procedure TCustForm.Edit8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustForm.Edit10KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Action_PgDnExecute(Self);
    end;
end;

procedure TCustForm.Action_CtrlHomeExecute(Sender: TObject);
begin
  ZQuery_cr.First;
end;

procedure TCustForm.Action_CtrlEndExecute(Sender: TObject);
begin
  ZQuery_cr.Last;
end;

procedure TCustForm.Action_F11Execute(Sender: TObject);
var
  fname, crcode: String;
begin
  if fkey='' then
    begin
    fkey:='F11';
    crcode:=ZQuery_cr.FieldByName('crcode').AsString;
    fname:=WDM.crcode+'.jpg';
    try
      GetCamForm := TGetCamForm.Create(Application);
      GetCamForm.Caption:=fname;
      GetCamForm.BitBtn2.Enabled:=True;
      GetCamForm.ShowModal;
      FreeAndNil(GetCamForm);
      if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
        begin
        Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Captures\'+fname);
        Image1.Visible:=True;
        end
      else
        Image1.Visible:=False;
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end;
end;

procedure TCustForm.Action_CPExecute(Sender: TObject);
var
  fname: String;
begin
  if fkey='' then
    begin
    fkey:='CP';
    fname:=ZQuery_cr.FieldByName('crcode').AsString+'.jpg';
    if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
      begin
      try
        ShowPicForm := TShowPicForm.Create(Application);
        ShowPicForm.PicName:=fname;
        ShowPicForm.ShowModal;
        FreeAndNil(ShowPicForm);
        wwDBGrid1.SetFocus;
      except
        on E: Exception do
          MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
      end;
      end
    else
      ShowMessage('沒有照片！');
    fkey:='';
    end;
end;

procedure TCustForm.EditCrmoneyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    ZQuery_cr.Edit;
    newcrmoney:=StrToFloat(EditCrmoney.Text);
    ZQuery_cr.FieldByName('crmoney').Value:=newcrmoney;
    ZQuery_cr.Post;
    New_wo();
    Key:=0;
    Action_ExitExecute(Self);
    end;
end;

procedure TCustForm.Action_F4Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    wwDBGrid1.DataSource.DataSet.DisableControls;
    try
      ZQuery_pcr.Close;
      ZQuery_pcr.SQL.Clear;
      ZQuery_pcr.SQL.Add('SELECT * FROM cr');
      ZQuery_pcr.SQL.Add('WHERE crmark=''Y''');
      ZQuery_pcr.SQL.Add('AND crmoney>0');
      ZQuery_pcr.SQL.Add('ORDER BY crmoney');
      ZQuery_pcr.Open;
      (frxReportF459.FindObject('MemoTitle')as TfrxMemoView).Text:='☆☆☆客戶餘額統計報表☆☆☆';
      (frxReportF459.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
      (frxReportF459.FindObject('MemoSum')as TfrxMemoView).Text:='總計餘額:';
      PreviewForm:=TPreviewForm.Create(Application);
      frxReportF459.preview:=PreviewForm.frxPreview1;
      frxReportF459.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
      ZQuery_pcr.Close;
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    end;
end;

procedure TCustForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    Panel_Print.BringToFront;
    CheckBox1.SetFocus;
    end;
end;

procedure TCustForm.ZQuery_pcrCalcFields(DataSet: TDataSet);
var
  crcode: String;
begin
  if (fkey='F4')or(fkey<>'F5')or(fkey<>'F9') then
    begin
    crcode:=ZQuery_pcr.FieldByName('crcode').AsString;
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT sum(wiquty)as tquty FROm wio ');
    ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQuery_wio.SQL.Add('AND wiodate=''''');
    ZQuery_wio.Open;
    ZQuery_pcr.FieldByName('crnotget').AsInteger:=ZQuery_wio.FieldByName('tquty').AsInteger;
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT sum(wiquty)as tquty FROm wio ');
    ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQuery_wio.SQL.Add('AND wiodate='''' AND wiplace<>''''');
    ZQuery_wio.Open;
    ZQuery_pcr.FieldByName('crpnotget').AsInteger:=ZQuery_wio.FieldByName('tquty').AsInteger;
    ZQuery_wio.Close;
    end;
end;

procedure TCustForm.LB_nameClick(Sender: TObject);
var
  l: Integer;
  allStr: String;
begin
  l:=Length(LB_name.Items.Strings[LB_name.ItemIndex])-3;
  allStr:=Edit2.Text+SubStr(LB_name.Items.Strings[LB_name.ItemIndex],4,l);
  if Length(allStr)>=8 then
    begin
    Edit2.Text:=Copy(allStr,1,8);
    Edit3.SetFocus;
    end
  else
    begin
    Edit2.SelStart:=Length(allStr);
    Edit2.Text:=allStr;
    end;
end;

procedure TCustForm.Button1Click(Sender: TObject);
begin
  try
    ZQuery_pcr.Close;
    ZQuery_pcr.SQL.Clear;
    ZQuery_pcr.SQL.Add('SELECT * FROM cr');
    ZQuery_pcr.SQL.Add('WHERE crmark=''Y''');
    if CheckBox1.Checked then
      ZQuery_pcr.SQL.Add('AND crvip=''Y''');
    if CheckBox2.Checked then
      ZQuery_pcr.SQL.Add('AND crtelb<>''''');
    if CheckBox3.Checked then
      ZQuery_pcr.SQL.Add('AND crarea like '''+Edit_Area.Text+'%''');
    ZQuery_pcr.SQL.Add('ORDER BY crcode');
    ZQuery_pcr.Open;
    (frxReportF459.FindObject('MemoTitle')as TfrxMemoView).Text:='☆☆☆客戶明細統計報表☆☆☆';
    (frxReportF459.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date)+' '+Edit_Area.Text;
    (frxReportF459.FindObject('MemoSum')as TfrxMemoView).Text:='總計餘額:';
    PreviewForm:=TPreviewForm.Create(Application);
    frxReportF459.preview:=PreviewForm.frxPreview1;
    frxReportF459.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
    ZQuery_pcr.Close;
    fkey:='';
    CloseAllPanel();
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TCustForm.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
    Edit_area.Enabled:=True
  else
    Edit_area.Enabled:=False
end;

end.

