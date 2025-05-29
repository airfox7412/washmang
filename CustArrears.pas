unit CustArrears;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, Buttons, RzButton, ExtCtrls, RzPanel, Grids, Wwdbigrd,
  Wwdbgrid, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, StdCtrls, DosMove, Mask, frxClass, frxDBSet, RzPrgres;

type
  TCustArrearsForm = class(TForm)
    ZConnection1: TZConnection;
    ActionList1: TActionList;
    ZQuery_cr: TZQuery;
    wwDataSource1: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonEsc: TRzToolbarButton;
    Action_F1: TAction;
    Action_Esc: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    Action_F9: TAction;
    frxReportF9: TfrxReport;
    frxDBDS_crproc: TfrxDBDataset;
    frxDBDatasetCompy: TfrxDBDataset;
    DosMove1: TDosMove;
    ZQuery_wio: TZQuery;
    Action_F2: TAction;
    Action_F3: TAction;
    ZQuery_crcrcode: TStringField;
    ZQuery_crcrdate: TStringField;
    ZQuery_crcrname: TStringField;
    ZQuery_crcsex: TStringField;
    ZQuery_crcrid: TStringField;
    ZQuery_crcrtel: TStringField;
    ZQuery_crcrtela: TStringField;
    ZQuery_crcrtelb: TStringField;
    ZQuery_crcradr: TStringField;
    ZQuery_crcrmoney: TFloatField;
    ZQuery_crcrpsen: TFloatField;
    ZQuery_crcrdate2: TStringField;
    ZQuery_crcrcnt: TFloatField;
    ZQuery_crcrvip: TStringField;
    ZQuery_crcrarea: TStringField;
    ZQuery_crcurst: TStringField;
    ZQuery_crcrs1: TStringField;
    ZQuery_crcrs2: TStringField;
    ZQuery_crcrmark: TStringField;
    Action_F10: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
    ZQuerycr_allquty: TIntegerField;
    procedure Action_EscExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure ZQuery_crCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintF9();
  end;

var
  CustArrearsForm: TCustArrearsForm;
  fkey: String;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

procedure TCustArrearsForm.PrintF9();
begin
  try
    PreviewForm:=TPreviewForm.Create(Application);
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //¿Ã¹õ¹wÄý
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('¿ù»~: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TCustArrearsForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    //PanelMonth.SendToBack;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    end
  else
    Close;
  wwDBGrid1.SetFocus;  
end;

procedure TCustArrearsForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(CustArrearsForm);

  {PanelMonth.Left:=Trunc((Width-PanelMonth.Width)/2);
  PanelMonth.Top:=Trunc((Height-PanelMonth.Height)/2);
  PanelProcess.Left:=Trunc((Width-PanelProcess.Width)/2);
  PanelProcess.Top:=Trunc((Height-PanelProcess.Height)/2);
  PanelF9.Left:=Trunc((Width-PanelF9.Width)/2);
  PanelF9.Top:=Trunc((Height-PanelF9.Height)/2);
  }
  fkey:='';
  ZQuery_cr.Open;
end;

procedure TCustArrearsForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False; 
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
end;

procedure TCustArrearsForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    end;
end;

procedure TCustArrearsForm.Action_F10Execute(Sender: TObject);
begin
  {if fkey='' then
    begin
    ZQuery_cr.Close;
    ZQuery_cr.SQL.Clear;
    ZQuery_cr.SQL.Add('SELECT * FROM cr');
    ZQuery_cr.SQL.Add('WHERE crmark=''Y'' AND crmoney=0');
    ZQuery_cr.SQL.Add('ORDER BY crcode');
    ZQuery_cr.Open;
    fkey:='F10';
    end;}
end;

procedure TCustArrearsForm.ZQuery_crCalcFields(DataSet: TDataSet);
begin
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT sum(wiquty)as s_quty,wiodate,wiplace FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+ZQuery_cr.FieldByName('crcode').AsString+'''');
  ZQuery_wio.SQL.Add('AND wiodate=''''');
  ZQuery_wio.Open;
  if not ZQuery_wio.eof then
    ZQuery_cr.FieldByName('crallquty').AsInteger:=ZQuery_wio.FieldByName('s_quty').AsInteger
  else
    ZQuery_cr.FieldByName('crallquty').AsInteger:=0;
  ZQuery_wio.Close;
end;

end.
