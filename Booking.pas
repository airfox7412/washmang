unit Booking;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, frxClass, frxDBSet, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, Mask,
  ComCtrls, Db, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  RzPanel, RzButton, RzPopups, AHMDialogClass, AHMTTextFileView;

type
  TBookingForm = class(TForm)
    ActionList1: TActionList;
    Action_F3: TAction;
    Action_F1: TAction;
    Action_F2: TAction;
    Action_PgDn: TAction;
    Action_Exit: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    RzToolbarButtonPD: TRzToolbarButton;
    DS_QBooking: TDataSource;
    ZConnection1: TZConnection;
    RzToolbarButtonESC: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    ZQuery_booking: TZQuery;
    Action_F6: TAction;
    RzPanel1: TRzPanel;
    DBText2: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Action_CtrlEnd: TAction;
    Action_CtrlHome: TAction;
    Label1: TLabel;
    ZQuery_bookingsn: TIntegerField;
    ZQuery_bookingcrcode: TStringField;
    ZQuery_bookingcdate: TStringField;
    ZQuery_bookingkind: TIntegerField;
    ZQuery_bookingmemo: TMemoField;
    ZQuery_bookingbdate: TStringField;
    ZQuery_bookingbtime: TStringField;
    ZQuery_bookingflag: TSmallintField;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    PanelCalendar: TPanel;
    MonthCalendar1: TMonthCalendar;
    SpeedButton1: TSpeedButton;
    MaskEditDate: TMaskEdit;
    SpeedButton2: TSpeedButton;
    MaskEditTime: TMaskEdit;
    SpeedButton3: TSpeedButton;
    PanelTime: TPanel;
    SpeedButton4: TSpeedButton;
    RzTimePicker1: TRzTimePicker;
    ComboBox1: TComboBox;
    Label8: TLabel;
    SpeedButton5: TSpeedButton;
    AHMTextFileView1: TAHMTextFileView;
    Action_F4: TAction;
    RzToolbarButtonF4: TRzToolbarButton;
    Label9: TLabel;
    Edit2: TEdit;
    ZQuery_bookingcrname: TStringField;
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit8KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CtrlHomeExecute(Sender: TObject);
    procedure Action_CtrlEndExecute(Sender: TObject);
    procedure Edit0KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure MaskEditDateEnter(Sender: TObject);
    procedure MaskEditTimeEnter(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure MaskEditDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { private declarations }
  public
    { public declarations }
    procedure CloseAllPanel();
    procedure EnableEdit(act: Integer);
  end;

var
  BookingForm: TBookingForm;
  fkey, pkey, crcode: String;
  
implementation

uses WDModule, lcutils, QueryCust;

{$R *.DFM}

procedure TBookingForm.EnableEdit(act: Integer);
var
  aflag: Boolean;
begin
  if act=0 then
    aflag:=False
  else
    aflag:=True;
  Edit1.Enabled:=aflag;
  Edit2.Enabled:=aflag;
  MaskEditDate.Enabled:=aflag;
  MaskEditTime.Enabled:=aflag;
  ComboBox1.Enabled:=aflag;
  Memo1.Enabled:=aflag;
  SpeedButton2.Enabled:=aflag;
  SpeedButton3.Enabled:=aflag;
  SpeedButton5.Enabled:=aflag;
end;

procedure TBookingForm.CloseAllPanel();
begin
  PanelCalendar.SendToBack;
  PanelTime.SendToBack;
end;

procedure TBookingForm.Action_F2Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F2';
    EnableEdit(1);
    ZQuery_booking.Edit;
    wwDBGrid1.Enabled:=False;
    Edit1.SetFocus;
    end;
end;

procedure TBookingForm.Action_ExitExecute(Sender: TObject);
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
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if pkey='P' then
    begin
    pkey:='';
    PanelCalendar.SendToBack;
    end
  else if pkey='T' then
    begin
    pkey:='';
    PanelTime.SendToBack;
    end
  else
    Close;
end;

procedure TBookingForm.Action_PgDnExecute(Sender: TObject);
var
  ret :word;
begin
  if (fkey='F1')or(fkey='F2') then
    begin
    CloseAllPanel();
    ret:=MessageDlg('資料完成,是否存檔?', mtWarning, [mbYes, mbNo, mbCancel], 0);
    if ret=mrYes then
      begin
      if fkey='F1' then
        ZQuery_booking.FieldByName('cdate').Value:=ChinaDate1(date);
      ZQuery_booking.FieldByName('crcode').AsString:=Edit1.Text;
      ZQuery_booking.FieldByName('crname').AsString:=Edit2.Text;
      ZQuery_booking.FieldByName('bdate').AsString:=MaskEditDate.Text;
      ZQuery_booking.FieldByName('btime').AsString:=MaskEditTime.Text;
      ZQuery_booking.FieldByName('kind').AsInteger:=ComboBox1.ItemIndex;
      ZQuery_booking.FieldByName('memo').AsString:=Memo1.Text; //AnsiToUtf8(Memo1.Text);
      ZQuery_booking.FieldByName('flag').AsInteger:=1;
      ZQuery_booking.Post;
      WDM.crcode:=ZQuery_booking.FieldByName('crcode').AsString;
      fkey:='';
      WDM.fstr:='';
      EnableEdit(0);
      ZQuery_booking.Close;
      ZQuery_booking.Open;
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end
    else if ret=mrNo then
      begin
      fkey:='';
      ZQuery_booking.Cancel;
      EnableEdit(0);
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end
    end; // fkey
end;

procedure TBookingForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(BookingForm);
  PanelCalendar.Left:=Trunc((Width-PanelCalendar.Width)/2);
  PanelCalendar.Top:=Trunc((Height-PanelCalendar.Height)/2);
  PanelTime.Left:=Trunc((Width-PanelTime.Width)/2);
  PanelTime.Top:=Trunc((Height-PanelTime.Height)/2);
  CloseAllPanel();
end;

procedure TBookingForm.Action_F3Execute(Sender: TObject);
var
  msg: String;
begin
  if fkey='' then
    begin
    fkey:='F3';
    msg:='確定刪除預約('+ZQuery_booking.FieldByName('crcode').AsString+')資料？';
    if IDYES=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
      wwDBGrid1.DataSource.DataSet.Delete;
    fkey:='';
    end;
end;

procedure TBookingForm.FormCreate(Sender: TObject);
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
  ZQuery_booking.Close;
  ZQuery_booking.SQL.Clear;
  ZQuery_booking.SQL.Add('SELECT * FROM booking');
  //ZQuery_booking.SQL.Add('WHERE crcode='''+WDM.crcode+''' and flag=1');
  //ZQuery_booking.SQL.Add('WHERE flag=1');
  ZQuery_booking.SQL.Add('ORDER BY sn DESC');
  ZQuery_booking.Open;
  ComboBox1.Items.LoadFromFile(WDM.WPath+'\Remind.txt');
  fkey:='';
end;

procedure TBookingForm.FormShow(Sender: TObject);
begin
  Edit1.Text:=ZQuery_booking.FieldByName('crcode').AsString;
  MaskEditDate.Text:=ZQuery_booking.FieldByName('bdate').AsString;
  MaskEditTime.Text:=ZQuery_booking.FieldByName('btime').AsString;
  ComboBox1.ItemIndex:=ZQuery_booking.FieldByName('kind').AsInteger;
  Memo1.Text:=ZQuery_booking.FieldByName('memo').AsString;
  wwDBGrid1.SetFocus;
  if WDM.fstr='F1' then //建立新預約
    Action_F1Execute(Self);
end;

procedure TBookingForm.wwDBGrid1RowChanged(Sender: TObject);
begin
  if fkey='' then
    begin
    Edit1.Text:=ZQuery_booking.FieldByName('crcode').AsString;
    Edit2.Text:=ZQuery_booking.FieldByName('crname').AsString;
    MaskEditDate.Text:=ZQuery_booking.FieldByName('bdate').AsString;
    MaskEditTime.Text:=ZQuery_booking.FieldByName('btime').AsString;
    ComboBox1.ItemIndex:=ZQuery_booking.FieldByName('kind').AsInteger;
    Memo1.Text:=ZQuery_booking.FieldByName('memo').AsString;
    end;
end;

procedure TBookingForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='F1')or(fkey='F2') then
    if (Key=VK_UP)AND(Edit1.Focused=False) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 1, 0);
        end
    else if (Key=VK_DOWN)AND(Memo1.Focused=False) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 0, 0);
        end;
end;

procedure TBookingForm.Edit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TBookingForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TBookingForm.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TBookingForm.Edit4Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.Edit1Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.Edit8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TBookingForm.Edit10KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Action_PgDnExecute(Self);
    end;
end;

procedure TBookingForm.Action_CtrlHomeExecute(Sender: TObject);
begin
  ZQuery_booking.First;
end;

procedure TBookingForm.Action_CtrlEndExecute(Sender: TObject);
begin
  ZQuery_booking.Last;
end;

procedure TBookingForm.Edit0KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TBookingForm.Action_F1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    EnableEdit(1);
    wwDBGrid1.Enabled:=False;
    MaskEditDate.Text:=ChinaDate1(date);
    ComboBox1.Text:='';
    Memo1.Text:='';
    Edit1.Text:='';
    Edit1.SetFocus;
    ZQuery_booking.Append;
    end;
end;

procedure TBookingForm.SpeedButton1Click(Sender: TObject);
begin
  PanelCalendar.SendToBack;
  pkey:='';
end;

procedure TBookingForm.MonthCalendar1Click(Sender: TObject);
begin
  MaskEditDate.Text:=ChinaDate1(MonthCalendar1.Date);
end;

procedure TBookingForm.SpeedButton2Click(Sender: TObject);
begin
  MaskEditDate.SetFocus;
  CloseAllPanel();
  MonthCalendar1.Date:=DateNum1(MaskEditDate.Text);
  PanelCalendar.BringToFront;
  pkey:='P';
end;

procedure TBookingForm.SpeedButton3Click(Sender: TObject);
begin
  MaskEditTime.SetFocus;
  CloseAllPanel();
  if fkey='F1' then
    RzTimePicker1.Time:=Time
  else
    RzTimePicker1.Time:=StrToTime(MaskEditTime.Text);
  RzTimePicker1.CaptionAM:='早上';
  RzTimePicker1.CaptionPM:='下午';
  RzTimePicker1.ShowHowToUseHint:=False;
  PanelTime.BringToFront;
  pkey:='T';
end;

procedure TBookingForm.SpeedButton4Click(Sender: TObject);
begin
  MaskEditTime.Text:=FormatDateTime('hh:mm',RzTimePicker1.Time);
  PanelTime.SendToBack;
  pkey:='';
end;

procedure TBookingForm.SpeedButton5Click(Sender: TObject);
begin
  try
    CloseAllPanel();
    QueryCustForm := TQueryCustForm.Create(Application);
    QueryCustForm.ShowModal;
    if QueryCustForm.selflag then
      begin
      Edit1.Text:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
      Edit2.Text:=WDM.ZQuery_cr.FieldByName('crname').AsString;
      Edit2.SetFocus;
      end
    else
      if fkey='F1' then
        begin
        Edit1.Text:='';
        Edit2.Text:='';
        end;
    FreeAndNil(QueryCustForm);
  except
    on E: Exception do
      MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TBookingForm.Edit2Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.MaskEditDateEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.MaskEditTimeEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.ComboBox1Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.Memo1Enter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TBookingForm.Action_F4Execute(Sender: TObject);
begin
  AHMTextFileView1.OpenFilename:=WDM.WPath+'\Remind.txt';
  if AHMTextFileView1.execute then
    begin
    ComboBox1.Items.LoadFromFile(WDM.WPath+'\Remind.txt');    
    ComboBox1.ItemIndex:=ZQuery_booking.FieldByName('kind').AsInteger;
    end;
end;

procedure TBookingForm.MaskEditDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TBookingForm.MaskEditTimeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TBookingForm.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

end.

