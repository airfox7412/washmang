unit Employee;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, frxClass, frxDBSet, ZDataset, Db,
  ZAbstractRODataset, ZAbstractDataset, ZConnection, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, Buttons, RzButton, RzPanel, ExtCtrls, Mask, wwdbedit,
  LbCipher, LbClass, Wwdatsrc, Wwdotdot, Wwdbcomb;

type
  TEmpForm = class(TForm)
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
    RzToolbarButtonPD: TRzToolbarButton;
    DS_QEmp: TDataSource;
    ZConnection1: TZConnection;
    Action_CtrlDel: TAction;
    RzToolbarButtonESC: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    PanelFind: TPanel;
    Label11: TLabel;
    SearchEdit: TEdit;
    ZQuery_emp: TZQuery;
    Action_CtrlR: TAction;
    Action_CtrlA: TAction;
    Action_F6: TAction;
    Action_F4: TAction;
    Action_F5: TAction;
    RzPanel1: TRzPanel;
    DBText1: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    PanelAdrs: TPanel;
    Edit8: TEdit;
    Edit5: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit4: TEdit;
    Action_CtrlEnd: TAction;
    Action_CtrlHome: TAction;
    Action_F11: TAction;
    Image1: TImage;
    Action_CP: TAction;
    LB_Adrs: TListBox;
    PanelName: TPanel;
    LB_name: TListBox;
    Edit1: TEdit;
    ZQuery_remp: TZQuery;
    Label2: TLabel;
    Edit9: TEdit;
    ZQuery: TZQuery;
    ZQuery_pemp: TZQuery;
    ZQuery_empeno: TStringField;
    ZQuery_empedate: TStringField;
    ZQuery_empename: TStringField;
    ZQuery_empesex: TStringField;
    ZQuery_empebirthday: TStringField;
    ZQuery_empetela: TStringField;
    ZQuery_empetelb: TStringField;
    ZQuery_empeadrs: TStringField;
    ZQuery_empemark: TStringField;
    ZQuery_empeid: TStringField;
    ZQuery_empepw: TStringField;
    Label10: TLabel;
    ZReadOnlyQuery_egroup: TZReadOnlyQuery;
    ComboBox1: TComboBox;
    ZQuery_empegroup: TLargeintField;
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
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit44Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit44KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
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
    procedure LB_nameClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Enter(Sender: TObject);
    procedure Edit9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { private declarations }
  public
    { public declarations }
    procedure CloseAllPanel();
    procedure ShowName();
    procedure ShowAdr();
    procedure EnableEdit(act: Integer);
    procedure CheckEID();
    function getgname(gid: integer): string;
  end;

var
  EmpForm: TEmpForm;
  fkey, OldEditStr, NewEditStr, eno, OldPW: String;
  crmoney, newcrmoney: Real;
  ppaa, dataflag: Boolean;
  bm: TBookMark;
  newadr: String;

implementation

uses WDModule, lcutils, PPreview, GetCam, ShowPic, Custom, md5;

{$R *.DFM}

function MD5Str(Dig: MD5Digest): string;
begin
  Result := Format('%s', [MD5Print(Dig)]);
end;

function TEmpForm.getgname(gid: integer): string;
begin
  ZReadOnlyQuery_egroup.Open;
  ZReadOnlyQuery_egroup.Locate('gid',vararrayof([gid]),[]);
  Result:=ZReadOnlyQuery_egroup.FieldByName('gname').AsString;
  ZReadOnlyQuery_egroup.Close;
end;

procedure TEmpForm.CheckEID();
begin
  ZQuery_remp.Close;
  ZQuery_remp.SQL.Clear;
  ZQuery_remp.SQL.Add('SELECT eno,ename,etela,etelb FROM employee');
  ZQuery_remp.SQL.Add('WHERE eid='''+Edit8.Text+'''');
  ZQuery_remp.SQL.Add('AND emark=''Y''');
  ZQuery_remp.Open;
  if not ZQuery_remp.Eof then
    begin
    eno:=ZQuery_remp.FieldByName('eno').AsString;
    dataflag:=False;
    end
  else
    dataflag:=True;
  ZQuery_remp.Close;
end;

procedure TEmpForm.EnableEdit(act: Integer);
var
  aflag: Boolean;
begin
  if act=0 then
    begin
    aflag:=False;
    Edit9.PasswordChar:='*';
    end
  else
    begin
    aflag:=True;
    Edit9.PasswordChar:=char(0);
    end;
  Edit1.Enabled:=aflag;
  Edit2.Enabled:=aflag;
  Edit3.Enabled:=aflag;
  Edit4.Enabled:=aflag;
  Edit5.Enabled:=aflag;
  Edit6.Enabled:=aflag;
  Edit7.Enabled:=aflag;
  Edit8.Enabled:=aflag;
  Edit9.Enabled:=aflag;
  ComboBox1.Enabled:=aflag;
end;


procedure TEmpForm.ShowName();
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

procedure TEmpForm.ShowAdr();
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

procedure TEmpForm.CloseAllPanel();
begin
  PanelName.SendToBack;
  PanelAdrs.SendToBack;
end;

procedure TEmpForm.Action_F1Execute(Sender: TObject);
var
  lno: Integer;
begin
  if fkey='' then
    begin
    fkey:='F1';
    Action_PgDn.Enabled:=True;
    dataflag:=True;
    EnableEdit(1);
    ZQuery_remp.Close;
    ZQuery_remp.SQL.Clear;
    ZQuery_remp.SQL.Add('SELECT eno FROM employee');
    ZQuery_remp.SQL.Add('WHERE emark=''Y''');
    ZQuery_remp.SQL.Add('ORDER BY eno DESC');
    ZQuery_remp.Open;
    if ZQuery_remp.FieldByName('eno').AsString='' then
      lno:=1
    else
      lno:=StrToInt(ZQuery_remp.FieldByName('eno').AsString)+1;
    ZQuery_remp.Close;

    ZQuery_emp.Append;
    ZQuery_emp.FieldByName('eno').Value:=StrZero(lno,3);
    Edit1.Text:=ChinaDate1(date);
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    Edit7.Text:='';
    Edit8.Text:='';
    Edit9.Text:='';
    Edit2.SetFocus;
    wwDBGrid1.Enabled:=False;
  end;
end;

procedure TEmpForm.Action_F2Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F2';
    Action_PgDn.Enabled:=True;
    EnableEdit(1);
    ZQuery_emp.Edit;
    wwDBGrid1.Enabled:=False;
    Edit2.SetFocus;
    Edit9.PasswordChar:='*';
    end;
end;

procedure TEmpForm.Action_CtrlDelExecute(Sender: TObject);
var
  msg: String;
  bflag: Boolean;
  m2: Real;
begin
  m2:=0;
  if fkey='' then
    begin
    fkey:='CD';
    msg:='確定刪除客戶('+ZQuery_emp.FieldByName('crcode').AsString+')資料？';
    if IDYES=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
      begin
      m2:=ZQuery_emp.FieldByName('crmoney').AsInteger;
      WDM.crcode:=ZQuery_emp.FieldByName('crcode').AsString;
      ZQuery_emp.Edit;
      ZQuery_emp.FieldByName('crmark').AsString:='N';
      ZQuery_emp.Post;
      if ZQuery_emp.RecNo<>ZQuery_emp.RecordCount then
        begin
        bm:=ZQuery_emp.GetBookmark;
        bflag:=True;
        end
      else
        bflag:=False;
      ZQuery_emp.Close;
      ZQuery_emp.Open;
      if bflag then
        ZQuery_emp.GotoBookmark(bm);
      end;
    fkey:='';
    end
  else if fkey='CR' then
    begin
    ZQuery_emp.Delete;
    end;
end;

procedure TEmpForm.Action_ExitExecute(Sender: TObject);
begin
  CloseAllPanel();
  if (fkey='F1') or (fkey='F2') then
    begin
    Action_PgDnExecute(Self);
    //EnableEdit(0);
    //fkey:='';
    //ZQuery_emp.Cancel;
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
  else if fkey='F9' then
    begin
    fkey:='';
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='CR' then
    begin
    fkey:='';
    RzToolbarButtonF1.Visible:=True;
    RzToolbarButtonF2.Visible:=True;
    RzToolbarButtonF3.Visible:=True;
    RzToolbarButtonPD.Visible:=True;
    RzPanel1.Enabled:=True;

    ZQuery_emp.Close;
    ZQuery_emp.SQL.Clear;
    ZQuery_emp.SQL.Add('SELECT * FROM cr');
    ZQuery_emp.SQL.Add('WHERE crmark=''Y''');
    ZQuery_emp.SQL.Add('ORDER BY crcode');
    ZQuery_emp.Open;
    end
  else
    Close;
end;

procedure TEmpForm.Action_PgDnExecute(Sender: TObject);
var
  ret :word;
begin
  if (fkey='F1')or(fkey='F2') then
    begin
    Action_PgDn.Enabled:=False;
    CloseAllPanel();
    ret:=MessageDlg('資料完成,是否存檔?', mtWarning, [mbYes, mbNo, mbCancel], 0);
    if ret=mrYes then
      begin
      if (fkey='F1') then
        CheckEID() //判斷是否有重覆資料
      else
        dataflag:=True;
      if not dataflag then
        begin
        ShowMessage('與'+eno+'-登入帳號重複'+#13+#10+'無法存檔！');
        Edit8.SetFocus;
        Exit;
        end
      else //新增或修改 無重覆資料
        begin
        ZQuery_emp.FieldByName('edate').Value:=Edit1.Text;
        ZQuery_emp.FieldByName('ename').AsString:=Edit2.Text;
        ZQuery_emp.FieldByName('esex').AsString:=Edit3.Text;
        ZQuery_emp.FieldByName('ebirthday').AsString:=Edit4.Text;
        ZQuery_emp.FieldByName('eadrs').AsString:=Edit5.Text;
        ZQuery_emp.FieldByName('etela').AsString:=Edit6.Text;
        ZQuery_emp.FieldByName('etelb').AsString:=Edit7.Text;
        ZQuery_emp.FieldByName('eid').AsString:=Edit8.Text;
        if OldPW<>Edit9.Text then
          ZQuery_emp.FieldByName('epw').AsString:=MD5Str(MD5String(Edit9.Text));
        ZQuery_emp.FieldByName('emark').AsString:='Y';
        ZQuery_emp.FieldByName('egroup').AsInteger:=ComboBox1.ItemIndex;
        ZQuery_emp.Post;
        fkey:='';
        EnableEdit(0);
        wwDBGrid1.Enabled:=True;
        wwDBGrid1.SetFocus;
        end;
      end
    else if ret=mrNo then
      begin
      fkey:='';
      ZQuery_emp.Cancel;
      EnableEdit(0);
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end
    else
      Edit4.SetFocus;
    end; // fkey
end;

procedure TEmpForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(EmpForm);
  PanelFind.Left:=Trunc((Width-PanelFind.Width)/2);
  PanelFind.Top:=Trunc((Height-PanelFind.Height)/2);
  CloseAllPanel();
end;

procedure TEmpForm.Action_F3Execute(Sender: TObject);
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

procedure TEmpForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
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
  ZQuery_emp.Close;
  ZQuery_emp.SQL.Clear;
  ZQuery_emp.SQL.Add('SELECT * FROM employee');
  ZQuery_emp.SQL.Add('WHERE emark=''Y''');
  ZQuery_emp.SQL.Add('ORDER BY eno');
  ZQuery_emp.Open;
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  if WDM.ZTableCompy.FieldByName('ppaa').AsString='是' then //顯示片語
    ppaa:=True
  else
    ppaa:=False;
  ComboBox1.Items.Clear;
  ZReadOnlyQuery_egroup.Open;
  While not ZReadOnlyQuery_egroup.Eof do
    begin
    ComboBox1.Items.Add(ZReadOnlyQuery_egroup.FieldByName('gname').AsString);
    ZReadOnlyQuery_egroup.Next;
    end;
  ZReadOnlyQuery_egroup.Close;  
end;

procedure TEmpForm.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    if SearchEdit.Text=''then
      begin
      ZQuery_emp.Close;
      ZQuery_emp.SQL.Clear;
      ZQuery_emp.SQL.Add('SELECT * FROM employee');
      ZQuery_emp.SQL.Add('WHERE emark=''Y''');
      ZQuery_emp.SQL.Add('ORDER BY eno');
      ZQuery_emp.Open;
      end;
    fkey:='';  
    PanelFind.Visible:=False;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TEmpForm.SearchEditChange(Sender: TObject);
var
  instr: String;
begin
  instr:=SearchEdit.Text;
  instr:=StringReplace(instr, '許', '許\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '功', '功\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '蓋', '蓋\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '餐', '餐\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '愧', '愧\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '擺', '擺\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '穀', '穀\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '淚', '淚\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '豹', '豹\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '珮', '珮\\\',[rfReplaceAll, rfIgnoreCase]);
  ZQuery_emp.Close;
  ZQuery_emp.SQL.Clear;
  ZQuery_emp.SQL.Add('SELECT * FROM employee');
  ZQuery_emp.SQL.Add('WHERE (eno like ''%'+instr+'%''');
  ZQuery_emp.SQL.Add('OR ename LIKE ''%'+instr+'%''');
  ZQuery_emp.SQL.Add('OR etela LIKE ''%'+instr+'%''');
  ZQuery_emp.SQL.Add('OR etelb LIKE ''%'+instr+'%''');
  ZQuery_emp.SQL.Add('OR eadrs LIKE ''%'+instr+'%'')');
  ZQuery_emp.SQL.Add('AND emark=''Y''');
  ZQuery_emp.SQL.Add('ORDER BY eno');
  ZQuery_emp.Open;
  if ZQuery_emp.RecordCount>0 then
    ZQuery_emp.First;
end;

procedure TEmpForm.Action_CtrlRExecute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='CR';
    ZQuery_emp.Close;
    ZQuery_emp.SQL.Text:='SELECT * FROM employee WHERE emark=''N''';
    ZQuery_emp.Open;
    RzPanel1.Enabled:=False;
    RzToolbarButtonF1.Visible:=False;
    RzToolbarButtonF2.Visible:=False;
    RzToolbarButtonF3.Visible:=False;
    RzToolbarButtonPD.Visible:=False;
    end;
end;

procedure TEmpForm.FormShow(Sender: TObject);
var
  fname: String;
begin
{  fkey:='';
  fname:=ZQuery_emp.FieldByName('eno').AsString+'.jpg';
  if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
    begin
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Captures\'+fname);
    Image1.Visible:=True;
    end
  else
    Image1.Visible:=False;
  Edit1.Text:=ZQuery_emp.FieldByName('edate').AsString;
  Edit2.Text:=ZQuery_emp.FieldByName('ename').AsString;
  Edit3.Text:=ZQuery_emp.FieldByName('esex').AsString;
  Edit4.Text:=ZQuery_emp.FieldByName('ebirthday').AsString;
  Edit5.Text:=ZQuery_emp.FieldByName('eadrs').AsString;
  Edit6.Text:=ZQuery_emp.FieldByName('etela').AsString;
  Edit7.Text:=ZQuery_emp.FieldByName('etelb').AsString;
  Edit8.Text:=ZQuery_emp.FieldByName('eid').AsString;
  Edit9.Text:=DecodeString(ZQuery_emp.FieldByName('epw').AsString);
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(getgname(ZQuery_emp.FieldByName('egroup').AsInteger));
  Panelname.SendToBack;
  PanelAdrs.SendToBack;
  PanelFind.SendToBack;
  wwDBGrid1.SetFocus;}
end;

procedure TEmpForm.Action_CtrlAExecute(Sender: TObject);
var
  maxcrcode: String;
begin
  if fkey='CR' then
    begin
    ZQuery_pemp.Close;
    ZQuery_pemp.SQL.Clear;
    ZQuery_pemp.SQL.Add('SELECT * FROM cr');
    ZQuery_pemp.SQL.Add('WHERE crmark=''Y''');
    ZQuery_pemp.SQL.Add('ORDER BY crcode DESC');
    ZQuery_pemp.Open;
    maxcrcode:=ZQuery_pemp.FieldByName('crcode').AsString;
    ZQuery_pemp.Close;
    ZQuery_pemp.SQL.Clear;
    ZQuery_pemp.SQL.Add('SELECT * FROM cr');
    ZQuery_pemp.SQL.Add('WHERE crmark=''Y'' AND crcode='''+ZQuery_emp.FieldByName('crcode').AsString+'''');
    ZQuery_pemp.SQL.Add('ORDER BY crcode DESC');
    ZQuery_pemp.Open;
    if ZQuery_pemp.Eof then
      begin
      ZQuery_emp.Edit;
      ZQuery_emp.FieldByName('crmark').AsString:='Y';
      ZQuery_emp.Post;
      ShowMessage('編號'+ZQuery_emp.FieldByName('crcode').AsString+'已復原！');
      end
    else
      ShowMessage('原資料已有此編號'+ZQuery_emp.FieldByName('crcode').AsString+'無法復原！');
    ZQuery_pemp.Close;  
    Action_ExitExecute(Self);
    end
end;

procedure TEmpForm.wwDBGrid1RowChanged(Sender: TObject);
var
  fname, gname: String;
begin
  Edit1.Text:=ZQuery_emp.FieldByName('edate').AsString;
  Edit2.Text:=ZQuery_emp.FieldByName('ename').AsString;
  Edit3.Text:=ZQuery_emp.FieldByName('esex').AsString;
  Edit4.Text:=ZQuery_emp.FieldByName('ebirthday').AsString;
  Edit5.Text:=ZQuery_emp.FieldByName('eadrs').AsString;
  Edit6.Text:=ZQuery_emp.FieldByName('etela').AsString;
  Edit7.Text:=ZQuery_emp.FieldByName('etelb').AsString;
  Edit8.Text:=ZQuery_emp.FieldByName('eid').AsString;
  //Edit9.Text:=ZQuery_emp.FieldByName('epw').AsString;
  Edit9.Text:=ZQuery_emp.FieldByName('eid').AsString;
  Edit9.Text:=Edit9.Text+ZQuery_emp.FieldByName('eid').AsString;
  gname:=getgname(ZQuery_emp.FieldByName('egroup').AsInteger);
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(gname);

  fname:=WDM.WPath+'Captures\'+ZQuery_emp.FieldByName('eno').AsString+'_01.jpg';
  if FileExists(fname) then
    begin
    Image1.Picture.LoadFromFile(fname);
    Image1.Visible:=True;
    end
  else
    Image1.Visible:=False;
end;  

procedure TEmpForm.Edit5Enter(Sender: TObject);
begin
  if (ppaa) then
    begin
    OldEditStr:=Edit5.Text;
    CloseAllPanel();
    Edit5.SelStart:=Length(Edit5.Text);
    PanelAdrs.BringToFront;
    end;
end;

procedure TEmpForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='F1')or(fkey='F2') then
    if (Key=VK_UP)AND(Edit1.Focused=False) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 1, 0);
        end
    else if (Key=VK_DOWN)AND(Edit9.Focused=False) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 0, 0);
        end;
end;

procedure TEmpForm.Edit5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  nlInt, olInt: Integer;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit5.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit5.Text;
  
  if (Key=VK_Left)or(Key=VK_Right)or(Key=VK_Delete) then
    begin
    OldEditStr:=Edit5.Text;
    Key:=0;
    end
  else if (Key=VK_Back) then
    begin
    OldEditStr:=Copy(Edit5.Text,1,Length(Edit5.Text)-1);
    Key:=0;
    end
  else if (Key=VK_Return) then
    begin
    Key:=0;
    if (OldEditStr=Edit5.Text)or(newvalue='') then
      begin      
      Perform(WM_NextDlgCtl, 0, 0);
      Exit;
      end;
    nlInt:=Length(Edit5.Text);
    olInt:=Length(OldEditStr);
    if (nlInt-olInt)>=2 then
      begin
      inputvalue:=Copy(Edit5.Text,nlInt-1,2);
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
      newvalue:=Copy(Edit5.Text,1,nlInt-2)+newvalue;
      if length(newvalue)>=50 then
        begin
        Edit5.Text:=Copy(newvalue,1,50);
        Perform(WM_NextDlgCtl, 0, 0);
        end
      else
        Edit5.Text:=newvalue;
      OldEditStr:=Edit5.Text;
      Edit5.SelStart:=Length(newvalue);
      end
    else
      Perform(WM_NextDlgCtl, 0, 0);
    end; //if (Key=VK_Return)and(Edit10.Text<>'') then
end;

procedure TEmpForm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit44Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit2Enter(Sender: TObject);
begin
  if (ppaa) then
    begin
    OldPW:=Edit9.Text;
    OldEditStr:=Edit2.Text;
    CloseAllPanel();
    PanelName.BringToFront;
    end;
end;

procedure TEmpForm.Edit44KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit3Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit7Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit6Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit4Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit8Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit10Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit3KeyUp(Sender: TObject; var Key: Word;
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

procedure TEmpForm.Edit8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit10KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Action_PgDnExecute(Self);
    end;
end;

procedure TEmpForm.Action_CtrlHomeExecute(Sender: TObject);
begin
  ZQuery_emp.First;
end;

procedure TEmpForm.Action_CtrlEndExecute(Sender: TObject);
begin
  ZQuery_emp.Last;
end;

procedure TEmpForm.Action_F11Execute(Sender: TObject);
var
  fname: String;
begin
  if fkey='' then
    begin
    fkey:='F11';
    fname:=ZQuery_emp.FieldByName('eno').AsString+'01.jpg';
    try
      GetCamForm := TGetCamForm.Create(Application);
      GetCamForm.Caption:=fname;
      GetCamForm.BitBtn2.Enabled:=True;
      GetCamForm.ShowModal;
      FreeAndNil(GetCamForm);
      if FileExists(WDM.WPath+'Captures\'+fname) then
        begin
        Image1.Picture.LoadFromFile(WDM.WPath+'Captures\'+fname);
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

procedure TEmpForm.Action_CPExecute(Sender: TObject);
var
  fname: String;
begin
  if fkey='' then
    begin
    fkey:='CP';
    fname:=ZQuery_emp.FieldByName('eno').AsString;
    if FileExists(WDM.WPath+'Captures\'+fname) then
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

procedure TEmpForm.LB_nameClick(Sender: TObject);
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

procedure TEmpForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit2KeyUp(Sender: TObject; var Key: Word;
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

procedure TEmpForm.Edit9Enter(Sender: TObject);
begin
  CloseAllPanel();
  OldPW:=Edit9.Text;
end;

procedure TEmpForm.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TEmpForm.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Action_PgDnExecute(Self);
    end;
end;

procedure TEmpForm.ComboBox1Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TEmpForm.Edit9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit9.SetFocus;
end;

end.

