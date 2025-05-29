unit history2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, Db, Wwdatsrc,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection, ActnList,
  Buttons, RzButton, RzPanel, Wwdbigrd, Wwdbgrid, Mask, frxClass, frxDBSet;

type
  THistory2Form = class(TForm)
    ZConnection1: TZConnection;
    ZQuery_wo: TZQuery;
    wwDS_wio: TwwDataSource;
    ActionList1: TActionList;
    Action_Esc: TAction;
    ZQuery_wowiosn: TLargeintField;
    ZQuery_wowicode: TStringField;
    ZQuery_wocrcode: TStringField;
    ZQuery_wowototal: TFloatField;
    ZQuery_wowopsen: TFloatField;
    ZQuery_wowoptotal: TFloatField;
    ZQuery_woworealmo: TFloatField;
    ZQuery_wowocntmo: TFloatField;
    ZQuery_wowidate: TStringField;
    ZQuery_wowitime: TStringField;
    ZQuery_wofrgetmo: TFloatField;
    ZQuery_wosfname: TStringField;
    ZQuery_wofritem: TStringField;
    ZQuery_woKind: TStringField;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonExit: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    ZQuery_wocrname: TStringField;
    ZQuery_wowisno: TStringField;
    ZQuery_wodiffmoney: TFloatField;
    ZQuery_wocrtel: TStringField;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Action_F1: TAction;
    RzToolbarButtonF1: TRzToolbarButton;
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    Action_F9: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    frxReportF9: TfrxReport;
    frxDBDSWo: TfrxDBDataset;
    frxDBDS_Compy: TfrxDBDataset;
    ZQuery_wocrtelb: TStringField;
    CtrlAltF9: TAction;
    ZQuery_wocradr: TStringField;
    PrintButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure ZQuery_woCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure CtrlAltF9Execute(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  History2Form: THistory2Form;
  crcode, fkey: String;
  crmoneyVal: Real;
  wisnod: Integer;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

procedure THistory2Form.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  PanelDateSet.SendToBack;
  MaskEditDate1.Text:=Copy(ChinaDate1(Date),1,7)+'01';
  MaskEditDate2.Text:=ChinaDate1(Date);

  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Add('SELECT * FROM wo');
  ZQuery_wo.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
  ZQuery_wo.Open;
  fkey:='';

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=ExtractFilePath(Application.ExeName)+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='History2'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
end;

procedure THistory2Form.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(History2Form);  
  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
end;

procedure THistory2Form.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    wwDBGrid1.SetFocus;
    end
  else
    Close;
end;

procedure THistory2Form.ZQuery_woCalcFields(DataSet: TDataSet);
begin
  {if ZQuery_wowoptotal.Value<=0 then
    ZQuery_wodiffmoney.Value:=-(ZQuery_wowototal.Value-ZQuery_wowoptotal.Value)
  else
    ZQuery_wodiffmoney.Value:=(ZQuery_wowototal.Value-ZQuery_wowoptotal.Value);}
  //差額計算
  if ZQuery_wo.FieldByName('fritem').AsString='I' then
    begin
    if (ZQuery_wo.FieldByName('worealmo').Value=0) then
      if (ZQuery_wo.FieldByName('wocntmo').Value=0) then
        ZQuery_wo.FieldByName('Kind').AsString:='收件'
      else
        ZQuery_wo.FieldByName('Kind').AsString:='收-折讓'
    else
      ZQuery_wo.FieldByName('Kind').AsString:='收件收款';
    end
  else if ZQuery_wo.FieldByName('fritem').AsString='O' then
    begin
    if (ZQuery_wo.FieldByName('worealmo').Value=0) then
      if (ZQuery_wo.FieldByName('wocntmo').Value=0) then
        ZQuery_wo.FieldByName('Kind').AsString:='取件'
      else
        ZQuery_wo.FieldByName('Kind').AsString:='取-折讓'
    else
      ZQuery_wo.FieldByName('Kind').AsString:='取件收款';
    end
  else if ZQuery_wo.FieldByName('fritem').AsString='A' then
    ZQuery_wo.FieldByName('Kind').AsString:='收件修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='B' then
    ZQuery_wo.FieldByName('Kind').AsString:='取件修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='Q' then
    ZQuery_wo.FieldByName('Kind').AsString:='預收款'
  else if ZQuery_wo.FieldByName('fritem').AsString='R' then
    ZQuery_wo.FieldByName('Kind').AsString:='無單收款'
  else if ZQuery_wo.FieldByName('fritem').AsString='V' then
    ZQuery_wo.FieldByName('Kind').AsString:='VIP收款'
  else if ZQuery_wo.FieldByName('fritem').AsString='W' then
    ZQuery_wo.FieldByName('Kind').AsString:='VIP修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='X' then
    ZQuery_wo.FieldByName('Kind').AsString:='VIP刪除'
  else if ZQuery_wo.FieldByName('fritem').AsString='Z' then
    ZQuery_wo.FieldByName('Kind').AsString:='修改客額'
  else if ZQuery_wo.FieldByName('fritem').AsString='E' then
    ZQuery_wo.FieldByName('Kind').AsString:='明細修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='D' then
    ZQuery_wo.FieldByName('Kind').AsString:='明細刪除'
  else if ZQuery_wo.FieldByName('fritem').AsString='P' then
    ZQuery_wo.FieldByName('Kind').AsString:='收件加工'
  else if ZQuery_wo.FieldByName('fritem').AsString='G' then
    ZQuery_wo.FieldByName('Kind').AsString:='取件加工'
  else if ZQuery_wo.FieldByName('fritem').AsString='x' then
    ZQuery_wo.FieldByName('Kind').AsString:='收件放棄'
  else if ZQuery_wo.FieldByName('fritem').AsString='T' then
    ZQuery_wo.FieldByName('Kind').AsString:='洗單移轉'
  else
    ZQuery_wo.FieldByName('Kind').AsString:='無類別'
end;

procedure THistory2Form.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (Field.FieldName='worealmo')or(Field.FieldName='wototal')or(Field.FieldName='woptotal') then
     begin
     if Field.Value>=0 then
       AFont.Color:=clYellow
     else
       AFont.Color:=clRed;
     if Highlight then
       AFont.Color:=clWhite;
     end;
end;

procedure THistory2Form.MaskEditDate2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (fkey='F1')AND(Key=VK_Return) then
    begin
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT * FROM wo');
    ZQuery_wo.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQuery_wo.SQL.Add('AND widate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
    ZQuery_wo.SQL.Add('AND fritem IN (''I'',''O'',''Q'',''R'',''V'',''W'')'); //20140302
    ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
    ZQuery_wo.Open;
    PanelDateSet.SendToBack;
    wwDBGrid1.SetFocus;
    fkey:='';
    end;
  if (fkey='F9')AND(Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure THistory2Form.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure THistory2Form.Action_F1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    MaskEditDate1.SetFocus;
    PanelDateSet.BringToFront;
    PrintButton.Visible:=false;
    PanelDateSet.Height:=129;
    end;
end;

procedure THistory2Form.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    MaskEditDate1.SetFocus;
    PanelDateSet.BringToFront;
    PrintButton.Visible:=true; 
    PanelDateSet.Height:=177;
    end;
end;

procedure THistory2Form.CtrlAltF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\History2.rep');
  frxReportF9.DesignReport;
end;

procedure THistory2Form.PrintButtonClick(Sender: TObject);
begin
  //fkey:='F9';
  PanelDateSet.SendToBack;
  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Add('SELECT * FROM wo');
  ZQuery_wo.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_wo.SQL.Add('AND widate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
  ZQuery_wo.SQL.Add('AND fritem IN (''I'',''O'',''Q'',''R'',''V'',''W'')');
  ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
  ZQuery_wo.Open;
  wwDBGrid1.DataSource.DataSet.DisableControls;
  try
    PreviewForm := TPreviewForm.Create(Application);
    frxReportF9.LoadFromFile(WDM.WPath+'Report\History2.rep');
    (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=MaskEditDate1.Text+'～'+MaskEditDate2.Text;
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //螢幕預覽
    PreviewForm.ShowModal; //自訂預覽視窗
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Add('SELECT * FROM wo');
  ZQuery_wo.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
  ZQuery_wo.Open;
  wwDBGrid1.DataSource.DataSet.EnableControls;
  fkey:='';
end;

end.
