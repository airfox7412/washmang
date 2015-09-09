unit VipRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, Buttons, RzButton, ExtCtrls, RzPanel, Grids, Wwdbigrd,
  Wwdbgrid, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, StdCtrls, DosMove, Mask, frxClass, frxDBSet;

type
  TVipRepForm = class(TForm)
    ZConnection1: TZConnection;
    ActionList1: TActionList;
    ZQuery_vip: TZQuery;
    wwDataSource1: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    RzToolbarF10: TRzToolbar;
    RzToolbarButtonCH: TRzToolbarButton;
    RzToolbarButtonCE: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    Action_F3: TAction;
    Action_Esc: TAction;
    ZQuery_vipcrcode: TStringField;
    ZQuery_vipvpcode: TStringField;
    ZQuery_vipvpmoney: TFloatField;
    ZQuery_vipvpdscnt: TIntegerField;
    ZQuery_vipvpreman: TFloatField;
    ZQuery_vipvpsdate: TStringField;
    ZQuery_vipvpedate: TStringField;
    ZQuery_vipcrname: TStringField;
    DosMove1: TDosMove;
    ZQuery_pross_vip: TZQuery;
    ZQuery_vipvppsen: TIntegerField;
    ActionCtrlHome: TAction;
    ActionCtrlEnd: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    Action_F9: TAction;
    PanelDate: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    frxReportF9: TfrxReport;
    frxDBDatasetVIP: TfrxDBDataset;
    frxDBDatasetCompy: TfrxDBDataset;
    ZQuery_vipcrtel: TStringField;
    PanelQuery: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Editcrcode: TEdit;
    Action_F10: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
    wwDS_prossvip: TwwDataSource;
    frxDBDSProssVIP: TfrxDBDataset;
    frxReportF10: TfrxReport;
    ZQuery_pross_vipsn: TLargeintField;
    ZQuery_pross_vipcrcode: TStringField;
    ZQuery_pross_vippross: TStringField;
    ZQuery_pross_vipn_money: TFloatField;
    ZQuery_pross_vipo_money: TFloatField;
    ZQuery_pross_vippross_date: TStringField;
    ZQuery_pross_vippross_time: TStringField;
    ZQuery_pross_vipsfname: TStringField;
    ZQuery_pross_vipcrname: TStringField;
    ZQuery_pross_vipcrtel: TStringField;
    procedure Action_EscExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure ActionCtrlHomeExecute(Sender: TObject);
    procedure ActionCtrlEndExecute(Sender: TObject);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure EditcrcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F10Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VipRepForm: TVipRepForm;
  fkey, crcode, vpcode: String;
  lastvpcode: Integer;
  crmoney, crmoneynew, psen, PayVal, DiscountVal: Real;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

procedure TVipRepForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F3' then
    begin
    fkey:='';
    PanelQuery.SendToBack;    
    end
  else if fkey='F9' then
    begin
    fkey:='';
    PanelDate.SendToBack;
    end
  else if fkey='F10' then
    begin
    fkey:='';
    PanelDate.SendToBack;
    end
  else
    Close;
end;

procedure TVipRepForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(VipRepForm);

  PanelDate.Left:=Trunc((Width-PanelDate.Width)/2);
  PanelDate.Top:=Trunc((Height-PanelDate.Height)/2);
  PanelQuery.Left:=Trunc((Width-PanelQuery.Width)/2);
  PanelQuery.Top:=Trunc((Height-PanelQuery.Height)/2);
end;

procedure TVipRepForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  PanelDate.SendToBack;
  PanelQuery.SendToBack;
  
  MaskEditDate1.Text:=ChinaDate1(Date);
  MaskEditDate2.Text:=ChinaDate1(Date);
end;

procedure TVipRepForm.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName='vpcode') then
    AFont.Color:=ClYellow;
end;

procedure TVipRepForm.FormShow(Sender: TObject);
begin
  fkey:='';
  Top:=0;
  Left:=0;
  ZQuery_vip.Close;
  ZQuery_vip.SQL.Clear;
  ZQuery_vip.SQL.Add('SELECT * FROM vip');
  ZQuery_vip.SQL.Add('ORDER BY vpcode');
  ZQuery_vip.Open;
  wwDBGrid1.SetFocus;
end;

procedure TVipRepForm.ActionCtrlHomeExecute(Sender: TObject);
begin
  ZQuery_vip.First;
end;

procedure TVipRepForm.ActionCtrlEndExecute(Sender: TObject);
begin
  ZQuery_vip.Last;
end;

procedure TVipRepForm.MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    wwDBGrid1.DataSource.DataSet.DisableControls;
    if fkey='F9' then
      begin
      try
        ZQuery_vip.Close;
        ZQuery_vip.SQL.Clear;
        ZQuery_vip.SQL.Add('SELECT * FROM vip');
        ZQuery_vip.SQL.Add('WHERE vpsdate between '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
        ZQuery_vip.SQL.Add('ORDER BY crcode, vpsdate');
        ZQuery_vip.Open;
        (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
        (frxReportF9.FindObject('MemoSEDate')as TfrxMemoView).Text:=MaskEditDate1.Text+'¡ã'+MaskEditDate2.Text;
        PreviewForm:=TPreviewForm.Create(Application);
        frxReportF9.preview:=PreviewForm.frxPreview1;
        frxReportF9.ShowReport; //¿Ã¹õ¹wÄý
        PreviewForm.ShowModal;
        FreeAndNil(PreviewForm);
      except
        on E: Exception do
          MessageDlg ('¿ù»~: '+E.Message, mtError,[mbOK], 0);
      end;
      end
    else if fkey='F10' then
      begin
      try
        ZQuery_pross_vip.Close;
        ZQuery_pross_vip.SQL.Clear;
        ZQuery_pross_vip.SQL.Add('SELECT * FROM pross_vip');
        ZQuery_pross_vip.SQL.Add('WHERE pross_date between '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
        ZQuery_pross_vip.SQL.Add('ORDER BY crcode, pross_date');
        ZQuery_pross_vip.Open;
        (frxReportF10.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
        (frxReportF10.FindObject('MemoSEDate')as TfrxMemoView).Text:=MaskEditDate1.Text+'¡ã'+MaskEditDate2.Text;
        PreviewForm:=TPreviewForm.Create(Application);
        frxReportF10.preview:=PreviewForm.frxPreview1;
        frxReportF10.ShowReport; //¿Ã¹õ¹wÄý
        PreviewForm.ShowModal;
        FreeAndNil(PreviewForm);
        ZQuery_pross_vip.Close;
      except
        on E: Exception do
          MessageDlg ('¿ù»~: '+E.Message, mtError,[mbOK], 0);
      end;
      end;
    fkey:='';
    wwDBGrid1.DataSource.DataSet.EnableControls;
    PanelDate.SendToBack;
    end;
end;

procedure TVipRepForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    MaskEditDate1.SetFocus;
    PanelDate.BringToFront;
    end;
end;

procedure TVipRepForm.Action_F3Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F3';
    Editcrcode.SetFocus;
    PanelQuery.BringToFront;
    end;
end;

procedure TVipRepForm.EditcrcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  crcode: String;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    ZQuery_vip.Close;
    ZQuery_vip.SQL.Clear;
    ZQuery_vip.SQL.Add('SELECT * FROM vip');
    if Editcrcode.Text<>'' then
      begin
      crcode:=StrZero(StrToInt(Editcrcode.Text),5);
      ZQuery_vip.SQL.Add('WHERE crcode='''+crcode+'''');
      end;
    ZQuery_vip.SQL.Add('ORDER BY vpcode');
    ZQuery_vip.Open;
    PanelQuery.SendToBack;
    end;
end;

procedure TVipRepForm.Action_F10Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F10';
    MaskEditDate1.SetFocus;
    PanelDate.BringToFront;
    end;
end;

end.
