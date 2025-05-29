unit Egroup;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, frxClass, frxDBSet, ZDataset, Db,
  ZAbstractRODataset, ZAbstractDataset, ZConnection, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, Buttons, RzButton, RzPanel, ExtCtrls, Mask, wwdbedit,
  LbCipher, LbClass, Wwdatsrc, Wwdotdot, Wwdbcomb;

type
  TEgroupForm = class(TForm)
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
    DS_Egroup: TDataSource;
    ZConnection1: TZConnection;
    Action_CtrlDel: TAction;
    RzToolbarButtonESC: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    PanelFind: TPanel;
    Label11: TLabel;
    SearchEdit: TEdit;
    ZQuery_egroup: TZQuery;
    Action_CtrlR: TAction;
    Action_CtrlA: TAction;
    Action_F6: TAction;
    Action_F4: TAction;
    Action_F5: TAction;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    Label5: TLabel;
    PanelAdrs: TPanel;
    Edit2: TEdit;
    Action_CtrlEnd: TAction;
    Action_CtrlHome: TAction;
    Action_F11: TAction;
    Action_CP: TAction;
    LB_Adrs: TListBox;
    PanelName: TPanel;
    LB_name: TListBox;
    Edit1: TEdit;
    ZQuery_egroupgid: TIntegerField;
    ZQuery_egroupgname: TStringField;
    ZQuery_egroupg1: TIntegerField;
    ZQuery_egroupg2: TIntegerField;
    ZQuery_egroupg3: TIntegerField;
    ZQuery_egroupg4: TIntegerField;
    ZQuery_egroupg5: TIntegerField;
    ZQuery_egroupg6: TIntegerField;
    ZQuery_egroupg7: TIntegerField;
    ZQuery_egroupg8: TIntegerField;
    ZQuery_egroupg9: TIntegerField;
    ZQuery_egroupg10: TIntegerField;
    ZQuery_egroupg11: TIntegerField;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    ZQuery_egroupg12: TIntegerField;
    ZQuery_egroupg13: TIntegerField;
    ZQuery_egroupg14: TIntegerField;
    ZQuery_egroupg15: TIntegerField;
    ZQuery_egroupg16: TIntegerField;
    ZQuery_egroupg17: TIntegerField;
    ZQuery_egroupg18: TIntegerField;
    ZQuery_egroupg19: TIntegerField;
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
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Action_CtrlHomeExecute(Sender: TObject);
    procedure Action_CtrlEndExecute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure CloseAllPanel();
    procedure EnableEdit(act: Integer);
  end;

var
  EgroupForm: TEgroupForm;
  fkey, OldEditStr, NewEditStr: String;
  crmoney, newcrmoney: Real;
  ppaa, dataflag: Boolean;
  bm: TBookMark;
  newadr: String;

implementation

uses WDModule, lcutils;

{$R *.DFM}

procedure TEgroupForm.EnableEdit(act: Integer);
var
  aflag: Boolean;
begin
  if act=0 then
    aflag:=False
  else
    aflag:=True;
  Edit1.Enabled:=aflag;
  Edit2.Enabled:=aflag;
  CheckBox1.Enabled:=aflag;
  CheckBox2.Enabled:=aflag;
  CheckBox3.Enabled:=aflag;
  CheckBox4.Enabled:=aflag;
  CheckBox5.Enabled:=aflag;
  CheckBox6.Enabled:=aflag;
  CheckBox7.Enabled:=aflag;
  CheckBox8.Enabled:=aflag;
  CheckBox9.Enabled:=aflag;
  CheckBox10.Enabled:=aflag;
  CheckBox11.Enabled:=aflag;
  CheckBox12.Enabled:=aflag;
  CheckBox13.Enabled:=aflag;
  CheckBox14.Enabled:=aflag;
  CheckBox15.Enabled:=aflag;
  CheckBox16.Enabled:=aflag;
  CheckBox17.Enabled:=aflag;
  CheckBox18.Enabled:=aflag;
  CheckBox19.Enabled:=aflag;
end;

procedure TEgroupForm.CloseAllPanel();
begin
  PanelName.SendToBack;
  PanelAdrs.SendToBack;
end;

procedure TEgroupForm.Action_F1Execute(Sender: TObject);
var
  lno: Integer;
begin
  if fkey='' then
    begin
    fkey:='F1';
    Action_PgDn.Enabled:=True;
    dataflag:=True;
    EnableEdit(1);
    ZQuery_egroup.Append;
    Edit1.Text:='';
    Edit2.Text:='';
    wwDBGrid1.Enabled:=False;
  end;
end;

procedure TEgroupForm.Action_F2Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F2';
    Action_PgDn.Enabled:=True;
    EnableEdit(1);
    ZQuery_egroup.Edit;
    wwDBGrid1.Enabled:=False;
    Edit2.SetFocus;
    end;
end;

procedure TEgroupForm.Action_CtrlDelExecute(Sender: TObject);
var
  msg: String;
  bflag: Boolean;
  m2: Real;
begin
  m2:=0;
  if fkey='' then
    begin
    fkey:='CD';
    msg:='確定刪除客戶('+ZQuery_egroup.FieldByName('gname').AsString+')資料？';
    if IDYES=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
      begin
      if ZQuery_egroup.FieldByName('gid').AsInteger=0 then
        ShowMessage('管理者無法刪除！')
      else
         ZQuery_egroup.Delete;
      end;
    end;
end;

procedure TEgroupForm.Action_ExitExecute(Sender: TObject);
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

    ZQuery_egroup.Close;
    ZQuery_egroup.SQL.Clear;
    ZQuery_egroup.SQL.Add('SELECT * FROM egroup');
    ZQuery_egroup.SQL.Add('ORDER BY gid');
    ZQuery_egroup.Open;
    end
  else
    Close;
end;

procedure TEgroupForm.Action_PgDnExecute(Sender: TObject);
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
      ZQuery_egroup.FieldByName('gname').AsString:=Edit2.Text;
      if CheckBox1.Checked then
        ZQuery_egroup.FieldByName('g1').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g1').AsInteger:=0;
      if CheckBox2.Checked then
        ZQuery_egroup.FieldByName('g2').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g2').AsInteger:=0;
      if CheckBox3.Checked then
        ZQuery_egroup.FieldByName('g3').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g3').AsInteger:=0;
      if CheckBox4.Checked then
        ZQuery_egroup.FieldByName('g4').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g4').AsInteger:=0;
      if CheckBox5.Checked then
        ZQuery_egroup.FieldByName('g5').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g5').AsInteger:=0;
      if CheckBox6.Checked then
        ZQuery_egroup.FieldByName('g6').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g6').AsInteger:=0;
      if CheckBox7.Checked then
        ZQuery_egroup.FieldByName('g7').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g7').AsInteger:=0;
      if CheckBox8.Checked then
        ZQuery_egroup.FieldByName('g8').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g8').AsInteger:=0;
      if CheckBox9.Checked then
        ZQuery_egroup.FieldByName('g9').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g9').AsInteger:=0;
      if CheckBox10.Checked then
        ZQuery_egroup.FieldByName('g10').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g10').AsInteger:=0;
      if CheckBox11.Checked then
        ZQuery_egroup.FieldByName('g11').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g11').AsInteger:=0;
      if CheckBox12.Checked then
        ZQuery_egroup.FieldByName('g12').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g12').AsInteger:=0;
      if CheckBox13.Checked then
        ZQuery_egroup.FieldByName('g13').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g13').AsInteger:=0;
      if CheckBox14.Checked then
        ZQuery_egroup.FieldByName('g14').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g14').AsInteger:=0;
      if CheckBox15.Checked then
        ZQuery_egroup.FieldByName('g15').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g15').AsInteger:=0;
      if CheckBox16.Checked then
        ZQuery_egroup.FieldByName('g16').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g16').AsInteger:=0;
      if CheckBox17.Checked then
        ZQuery_egroup.FieldByName('g17').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g17').AsInteger:=0;
      if CheckBox18.Checked then
        ZQuery_egroup.FieldByName('g18').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g18').AsInteger:=0;
      if CheckBox19.Checked then
        ZQuery_egroup.FieldByName('g19').AsInteger:=1
      else
        ZQuery_egroup.FieldByName('g19').AsInteger:=0;
      ZQuery_egroup.Post;
      fkey:='';
      EnableEdit(0);
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end
    else if ret=mrNo then
      begin
      fkey:='';
      ZQuery_egroup.Cancel;
      EnableEdit(0);
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end
    end; // fkey
end;

procedure TEgroupForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(EgroupForm);
  PanelFind.Left:=Trunc((Width-PanelFind.Width)/2);
  PanelFind.Top:=Trunc((Height-PanelFind.Height)/2);
  CloseAllPanel();
end;

procedure TEgroupForm.Action_F3Execute(Sender: TObject);
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

procedure TEgroupForm.FormCreate(Sender: TObject);
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
  PanelName.Height:=415;
  PanelName.Width:=360;
  ZQuery_egroup.Close;
  ZQuery_egroup.SQL.Clear;
  ZQuery_egroup.SQL.Add('SELECT * FROM egroup');
  ZQuery_egroup.SQL.Add('ORDER BY gid');
  ZQuery_egroup.Open;

  CheckBox1.Caption:='收件日報表';
  CheckBox2.Caption:='客戶明細報表';
  CheckBox3.Caption:='營業統計報表';
  CheckBox4.Caption:='應收款額報表';
  CheckBox5.Caption:='衣物綜合報表';
  CheckBox6.Caption:='歷史衣物報表';
  CheckBox7.Caption:='客戶排行報表';
  CheckBox8.Caption:='金額異動報表';
  CheckBox9.Caption:='貴賓卡統計';
  CheckBox10.Caption:='來客紀錄表';
  CheckBox11.Caption:='整批送件';
  CheckBox12.Caption:='客戶資料';
  CheckBox13.Caption:='員工資料';
  CheckBox14.Caption:='片語資料';
  CheckBox15.Caption:='門市基本資料';
  CheckBox16.Caption:='攝影機裝置';
  CheckBox17.Caption:='預約資料';
  CheckBox18.Caption:='權限管理資料';
  CheckBox19.Caption:='修復及重整';
end;

procedure TEgroupForm.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    fkey:='';  
    PanelFind.Visible:=False;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TEgroupForm.wwDBGrid1RowChanged(Sender: TObject);
begin
  CheckBox1.Checked:=False;
  CheckBox2.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox7.Checked:=False;
  CheckBox8.Checked:=False;
  CheckBox9.Checked:=False;
  CheckBox10.Checked:=False;
  CheckBox11.Checked:=False;
  CheckBox12.Checked:=False;
  CheckBox13.Checked:=False;
  CheckBox14.Checked:=False;
  CheckBox15.Checked:=False;
  CheckBox16.Checked:=False;
  CheckBox17.Checked:=False;
  CheckBox18.Checked:=False;
  CheckBox19.Checked:=False;
  Edit1.Text:=IntToStr(ZQuery_egroup.FieldByName('gid').AsInteger);
  Edit2.Text:=ZQuery_egroup.FieldByName('gname').AsString;
  if ZQuery_egroup.FieldByName('g1').AsInteger=1 then
    CheckBox1.Checked:=True;
  if ZQuery_egroup.FieldByName('g2').AsInteger=1 then
    CheckBox2.Checked:=True;
  if ZQuery_egroup.FieldByName('g3').AsInteger=1 then
    CheckBox3.Checked:=True;
  if ZQuery_egroup.FieldByName('g4').AsInteger=1 then
    CheckBox4.Checked:=True;
  if ZQuery_egroup.FieldByName('g5').AsInteger=1 then
    CheckBox5.Checked:=True;
  if ZQuery_egroup.FieldByName('g6').AsInteger=1 then
    CheckBox6.Checked:=True;
  if ZQuery_egroup.FieldByName('g7').AsInteger=1 then
    CheckBox7.Checked:=True;
  if ZQuery_egroup.FieldByName('g8').AsInteger=1 then
    CheckBox8.Checked:=True;
  if ZQuery_egroup.FieldByName('g9').AsInteger=1 then
    CheckBox9.Checked:=True;
  if ZQuery_egroup.FieldByName('g10').AsInteger=1 then
    CheckBox10.Checked:=True;
  if ZQuery_egroup.FieldByName('g11').AsInteger=1 then
    CheckBox11.Checked:=True;
  if ZQuery_egroup.FieldByName('g12').AsInteger=1 then
    CheckBox12.Checked:=True;
  if ZQuery_egroup.FieldByName('g13').AsInteger=1 then
    CheckBox13.Checked:=True;
  if ZQuery_egroup.FieldByName('g14').AsInteger=1 then
    CheckBox14.Checked:=True;
  if ZQuery_egroup.FieldByName('g15').AsInteger=1 then
    CheckBox15.Checked:=True;
  if ZQuery_egroup.FieldByName('g16').AsInteger=1 then
    CheckBox16.Checked:=True;
  if ZQuery_egroup.FieldByName('g17').AsInteger=1 then
    CheckBox17.Checked:=True;
  if ZQuery_egroup.FieldByName('g18').AsInteger=1 then
    CheckBox18.Checked:=True;
  if ZQuery_egroup.FieldByName('g19').AsInteger=1 then
    CheckBox19.Checked:=True;
end;

procedure TEgroupForm.Action_CtrlHomeExecute(Sender: TObject);
begin
  ZQuery_egroup.First;
end;

procedure TEgroupForm.Action_CtrlEndExecute(Sender: TObject);
begin
  ZQuery_egroup.Last;
end;

end.

