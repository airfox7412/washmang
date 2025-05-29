unit GetRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, DosMove, ActnList, ZConnection, Db,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet,
  Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, Buttons, RzButton, RzPanel;

type
  TGetRepForm = class(TForm)
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    ActionList1: TActionList;
    Action_Esc: TAction;
    frxReportF9: TfrxReport;
    frxDBDS_wio: TfrxDBDataset;
    ZQuery_wio: TZQuery;
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
    frxDBDS_cr: TfrxDBDataset;
    frxDBDS_Compy: TfrxDBDataset;
    ZConnection1: TZConnection;
    ZQuery_wiocrtel: TStringField;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbDate1: TLabel;
    lbDate2: TLabel;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    wwDSWio: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    Action_F9: TAction;
    Action_F1: TAction;
    Action_F8: TAction;
    RzToolbarButtonF8: TRzToolbarButton;
    Panel_Print: TPanel;
    Label19: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    Action_F7: TAction;
    RzToolbarButtonF7: TRzToolbarButton;
    frxReportF8: TfrxReport;
    ZQuery_wiocrtelb: TStringField;
    Action_CAF8: TAction;
    Action_CAF9: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_F8Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_F7Execute(Sender: TObject);
    procedure Action_CAF8Execute(Sender: TObject);
    procedure Action_CAF9Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProcessF8();
    procedure ProcessF9(wiurge: String);
    procedure PrintF8();
    procedure PrintF9();
  end;

var
  GetRepForm: TGetRepForm;
  fkey: String;
  f7flag: Boolean;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

procedure TGetRepForm.ProcessF8();
begin
  try
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    //ZQuery_wio.SQL.Add('WHERE wimdate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
    ZQuery_wio.SQL.Add('WHERE widate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
    ZQuery_wio.SQL.Add('AND wiodate=''''');
    if CheckBox1.Checked then
      ZQuery_wio.SQL.Add('AND wiurge=''Y''');
    if CheckBox2.Checked then
      ZQuery_wio.SQL.Add('AND wimemo=''收送''');
    ZQuery_wio.SQL.Add('ORDER BY wicode');
    ZQuery_wio.Open;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TGetRepForm.ProcessF9(wiurge: String);
begin
  try
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    ZQuery_wio.SQL.Add('WHERE wiodate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
    if wiurge<>'' then
      ZQuery_wio.SQL.Add('AND wiurge='''+wiurge+'''');
    ZQuery_wio.SQL.Add('ORDER BY wicode');
    ZQuery_wio.Open;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TGetRepForm.PrintF8();
begin
  try
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF8.LoadFromFile(WDM.WPath+'Report\GetRepF8.rep');
    TfrxMemoView(frxReportF8.FindObject('Memo4')).Text:='☆☆☆洗衣單未取報表☆☆☆';
    TfrxMemoView(frxReportF8.FindObject('MemoDate')).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    frxReportF8.preview:=PreviewForm.frxPreview1;
    frxReportF8.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TGetRepForm.PrintF9();
begin
  try
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF9.LoadFromFile(WDM.WPath+'Report\GetRepF9.rep');
    TfrxMemoView(frxReportF9.FindObject('Memo4')).Text:='☆☆☆洗衣單取件報表☆☆☆';
    TfrxMemoView(frxReportF9.FindObject('MemoDate')).Text:=lbDate1.Caption+'～'+lbDate2.Caption;
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TGetRepForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False; 
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;

  ZQuery_wio.Open;
  MaskEditDate1.Text:=ChinaDate1(Date);
  MaskEditDate2.Text:=ChinaDate1(Date);
  f7flag:=True;
end;

procedure TGetRepForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(GetRepForm);
  
  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
  Panel_Print.Left:=Trunc((Width-Panel_Print.Width)/2);
  Panel_Print.Top:=Trunc((Height-Panel_Print.Height)/2);
  PanelDateSet.BringToFront;
  Panel_Print.SendToBack;
  MaskEditDate1.SetFocus;
end;

procedure TGetRepForm.Action_EscExecute(Sender: TObject);
begin  
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else if fkey='F8' then
    begin
    fkey:='';
    Panel_Print.SendToBack;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    end
  else
    Close;
  wwDBGrid1.Enabled:=True;
end;

procedure TGetRepForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key=VK_Return)OR(Key=VK_DOWN))AND(not MaskEditDate2.Focused) then
      begin
      Key:=0;
      Perform(WM_NextDlgCtl, 0, 0);
      end
  else if ((Key=VK_UP))AND(not MaskEditDate1.Focused) then
      begin
      Key:=0;
      Perform(WM_NextDlgCtl, 1, 0);
      end;
end;

procedure TGetRepForm.MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    lbDate1.Caption:=MaskEditDate1.Text;
    lbDate2.Caption:=MaskEditDate2.Text;
    f7flag:=True;
    ProcessF9('N');
    fkey:='';
    PanelDateSet.SendToBack;
    wwDBGrid1.Enabled:=True;
    end;
end;

procedure TGetRepForm.Action_F1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    PanelDateSet.BringToFront;
    MaskEditDate1.SetFocus;
    wwDBGrid1.Enabled:=False;
    end;
end;

procedure TGetRepForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    ProcessF9('');
    PrintF9();
    Label1.Caption:='衣物已取件報表';
    fkey:='';
    wwDBGrid1.Enabled:=True;
    end;
end;

procedure TGetRepForm.Action_F8Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F8';
    Panel_Print.BringToFront;
    Button1.SetFocus;
    end;
end;

procedure TGetRepForm.Button1Click(Sender: TObject);
begin
  ProcessF8();
  PrintF8();
  Label1.Caption:='衣物未取件報表';  
  Panel_Print.SendToBack;
  fkey:='';
  wwDBGrid1.Enabled:=True;
end;

procedure TGetRepForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName='wiurge' then
     begin
     Field.Alignment:=taCenter;
     if Field.Value='Y' then
       AFont.Color:=ClRed
     else
       AFont.Color:=ClYellow;
     end;
end;

procedure TGetRepForm.Action_F7Execute(Sender: TObject);
begin
  f7flag:=not f7flag;
  if f7flag then
    begin
    ProcessF9('Y');
    RzToolbarButtonF7.Caption:='F7.非急件';
    end
  else
    begin
    ProcessF9('N');
    RzToolbarButtonF7.Caption:='F7.急件';
    end;
end;

procedure TGetRepForm.Action_CAF8Execute(Sender: TObject);
begin
  frxReportF8.LoadFromFile(WDM.WPath+'Report\GetRepF8.rep');
  frxReportF8.DesignReport;
end;

procedure TGetRepForm.Action_CAF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\GetRepF9.rep');
  frxReportF9.DesignReport;
end;

end.



