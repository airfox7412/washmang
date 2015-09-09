unit DailyRep1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxClass, frxDBSet, Db, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ActnList, Buttons, RzButton, RzPanel, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, Wwdatsrc, ComCtrls, StdCtrls, Mask, DBCtrls;

type
  TCustRepForm = class(TForm)
    Panel1: TPanel;
    RzToolbar1: TRzToolbar;
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
    frxDBDataset1: TfrxDBDataset;
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDSWio: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    ActionESC: TAction;
    lbDate1: TLabel;
    lbDate2: TLabel;
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    frxReportF21: TfrxReport;
    frxReportF22: TfrxReport;
    Label5: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
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
    procedure ListBox1Click(Sender: TObject);
    procedure ActionF9Execute(Sender: TObject);
    procedure ActionF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustRepForm: TCustRepForm;
  fkey: String;

implementation

uses WDModule, lcutils, QueryCust;

{$R *.DFM}

procedure TCustRepForm.ActionESCExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else
    Close;
end;

procedure TCustRepForm.FormCreate(Sender: TObject);
begin
  fkey:='';
  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
  PanelDateSet.SendToBack;
  ListBox1.ItemIndex:=0;
  MaskEditDate1.Text:=ChinaDate1(Date);
  MaskEditDate2.Text:=ChinaDate1(Date);
end;

procedure TCustRepForm.ActionF1Execute(Sender: TObject);
begin
  if fkey='' then
  begin
  try
    QueryCustForm := TQueryCustForm.Create(Application);
    QueryCustForm.ShowModal;
    FreeAndNil(QueryCustForm);
  except
    on E: Exception do
      MessageDlg ('Error: '+E.Message, mtError, [mbOK], 0);
  end;
  if WDM.ZQuery_cr.RecordCount>0 then
    begin
    GetCust();
    crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
    lbNowMoney.Caption:=FloatToStr(crmoneyVal);
    if WDM.ZQuery_cr.FieldByName('crvip').Value='Y' then
      Image1.Visible:=True
    else
      Image1.Visible:=False;
    if crmoneyVal<0 then
      lbNowMoney.Font.Color:=ClRed
    else
      lbNowMoney.Font.Color:=ClYellow;
    CalNotGet();
    end;
    end;
end;

procedure TCustRepForm.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin  
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TCustRepForm.MaskEditDate2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  wiquty: Integer;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    lbDate1.Caption:=MaskEditDate1.Text;
    lbDate2.Caption:=MaskEditDate2.Text;
    PanelDateSet.SendToBack;

    ZQueryWio.Close;
    ZQueryWio.SQL.Clear;
    ZQueryWio.SQL.Add('SELECT * FROM wio');
    ZQueryWio.SQL.Add('WHERE widate between '''+lbDate1.Caption+''' and '''+lbDate2.Caption+'''');
    ZQueryWio.SQL.Add('ORDER BY wicode, wisno');
    ZQueryWio.Open;
    wiquty:=0;
    ZQueryWio.First;
    While not ZQueryWio.Eof do
      begin
      wiquty:=wiquty+ZQueryWio.FieldByName('wiquty').AsInteger;
      ZQueryWio.Next;
      end;
    lbquty.Caption:=IntToStr(wiquty)+'件';
    end;
end;

procedure TCustRepForm.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    ListBox1Click(Self);
end;

procedure TCustRepForm.ActionF2Execute(Sender: TObject);
begin
  PanelStick.BringToFront;
end;

procedure TCustRepForm.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex=0 then
      begin
      frxReportF21.PrepareReport;
      frxReportF21.PrintOptions.ShowDialog := False; //不顯示對話框
      frxReportF21.Print; //列印}
      end
    else
      begin
      frxReportF22.PrepareReport;
      frxReportF22.PrintOptions.ShowDialog := False; //不顯示對話框
      frxReportF22.Print; //列印}
      end;
   PanelStick.SendToBack;
end;

procedure TCustRepForm.ActionF9Execute(Sender: TObject);
begin
  frxReportF9.ShowReport; //螢幕預覽
end;

procedure TCustRepForm.ActionF3Execute(Sender: TObject);
begin
  fkey:='F3';
  PanelDateSet.BringToFront;
  MaskEditDate1.SetFocus;
end;

end.
