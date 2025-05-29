unit CustRank;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, Buttons, RzButton, ExtCtrls, RzPanel, Grids, Wwdbigrd,
  Wwdbgrid, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, StdCtrls, DosMove, Mask, frxClass, frxDBSet, RzPrgres;

type
  TCustRankForm = class(TForm)
    ZConnection1: TZConnection;
    ActionList1: TActionList;
    ZQuery_crproc: TZQuery;
    wwDataSource1: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    Action_F1: TAction;
    Action_Esc: TAction;
    ZQueryF1: TZQuery;
    RzToolbarButtonF9: TRzToolbarButton;
    Action_F9: TAction;
    PanelMonth: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    frxReportF9: TfrxReport;
    frxDBDS_crproc: TfrxDBDataset;
    frxDBDatasetCompy: TfrxDBDataset;
    DosMove1: TDosMove;
    MaskEditMonth: TMaskEdit;
    ZQuery_crproccrcode: TStringField;
    ZQuery_crprocaq1: TFloatField;
    ZQuery_crprocaq2: TFloatField;
    ZQuery_crprocaq3: TFloatField;
    ZQuery_crprocaq4: TFloatField;
    ZQuery_crproccrname: TStringField;
    ZQuery_wio: TZQuery;
    PanelProcess: TPanel;
    Label3: TLabel;
    RzProgressBar1: TRzProgressBar;
    ZQuery_crproccrtel: TStringField;
    PanelF9: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Action_F2: TAction;
    Action_F3: TAction;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    procedure Action_EscExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure MaskEditMonthKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProcessF1();
    procedure PrintF9();
  end;

var
  CustRankForm: TCustRankForm;
  fkey, rank: String;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

procedure TCustRankForm.ProcessF1();
var
  crcode: String;
  privmonth, privyear: String;
  pmonth: TDateTime;
  privmonth1, thismonth1, privyear1, thisyear1: String;
  privmonth2, thismonth2, privyear2, thisyear2: String;
  aq1, aq2, aq3, aq4: Real;
begin
  try
    //刪除統計表
    ZQuery_crproc.Close;
    ZQuery_crproc.SQL.Clear;
    ZQuery_crproc.SQL.Add('DELETE FROM crproc');
    ZQuery_crproc.ExecSQL;
    //開啟統計表
    ZQuery_crproc.Close;
    ZQuery_crproc.SQL.Clear;
    ZQuery_crproc.SQL.Add('SELECT * FROM crproc');
    ZQuery_crproc.Open;

    wwDBGrid1.DataSource.DataSet.DisableControls;
    //開啟客戶資料表
    ZQueryF1.Close;
    ZQueryF1.SQL.Clear;
    ZQueryF1.SQL.Add('SELECT * FROM cr');
    ZQueryF1.SQL.Add('WHERE crmark=''Y''');
    ZQueryF1.SQL.Add('ORDER BY crcode');
    ZQueryF1.Open;

    PanelProcess.BringToFront;
    pmonth:=DateNum(StringReplace(MaskEditMonth.Text+'/01', '/', '',[rfReplaceAll, rfIgnoreCase]));
    privmonth:=Copy(ChinaDate1(IncMonth(pmonth,-1)),1,6);
    privmonth1:=privmonth+'/01'; //上月
    privmonth2:=privmonth+'/31';
    thismonth1:=MaskEditMonth.Text+'/01'; //本月
    thismonth2:=MaskEditMonth.Text+'/31';
    privyear:=StrZero(StrToInt(Copy(MaskEditMonth.Text,1,3))-1,3);
    privyear1:=privyear+'/01/01'; //去年
    privyear2:=privyear+'/12/31';
    thisyear1:=Copy(MaskEditMonth.Text,1,4)+'01/01'; //今年
    thisyear2:=Copy(MaskEditMonth.Text,1,4)+'12/31';
    while not ZQueryF1.Eof do
      begin
      Application.ProcessMessages;
      RzProgressBar1.Percent:=Trunc((ZQueryF1.RecNo/ZQueryF1.RecordCount)*100);
      crcode:=ZQueryF1.FieldByName('crcode').AsString;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wisum)as aq FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
      ZQuery_wio.SQL.Add('AND (widate between '''+privmonth1+''' AND '''+privmonth2+''')');
      ZQuery_wio.Open;
      aq1:=ZQuery_wio.FieldByName('aq').AsFloat;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wisum)as aq FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
      ZQuery_wio.SQL.Add('AND (widate between '''+thismonth1+''' AND '''+thismonth2+''')');
      ZQuery_wio.Open;
      aq2:=ZQuery_wio.FieldByName('aq').AsFloat;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wisum)as aq FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
      ZQuery_wio.SQL.Add('AND (widate between '''+privyear1+''' AND '''+privyear2+''')');
      ZQuery_wio.Open;
      aq3:=ZQuery_wio.FieldByName('aq').AsFloat;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wisum)as aq FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
      ZQuery_wio.SQL.Add('AND (widate between '''+thisyear1+''' AND '''+thisyear2+''')');
      ZQuery_wio.Open;
      aq4:=ZQuery_wio.FieldByName('aq').AsFloat;

      ZQuery_crproc.Append;
      ZQuery_crproc.FieldByName('crcode').AsString:=crcode;
      ZQuery_crproc.FieldByName('aq1').Value:=aq1;
      ZQuery_crproc.FieldByName('aq2').Value:=aq2;
      ZQuery_crproc.FieldByName('aq3').Value:=aq3;
      ZQuery_crproc.FieldByName('aq4').Value:=aq4;
      ZQuery_crproc.Post;
      ZQueryF1.Next;
      end;

    //開啟統計表
    ZQuery_crproc.Close;
    ZQuery_crproc.SQL.Clear;
    ZQuery_crproc.SQL.Add('SELECT * FROM crproc');
    ZQuery_crproc.SQL.Add('ORDER BY '+rank+' DESC');
    ZQuery_crproc.Open;
    ZQuery_crproc.First;
    PanelProcess.SendToBack;
    wwDBGrid1.DataSource.DataSet.EnableControls;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TCustRankForm.PrintF9();
begin
  try
    //開啟統計表
    ZQuery_crproc.Close;
    ZQuery_crproc.SQL.Clear;
    ZQuery_crproc.SQL.Add('SELECT * FROM crproc');
    ZQuery_crproc.SQL.Add('ORDER BY '+rank+' DESC');
    ZQuery_crproc.SQL.Add('LIMIT '+Edit1.Text);
    ZQuery_crproc.Open;
    (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
    (frxReportF9.FindObject('MemoSEDate')as TfrxMemoView).Text:=MaskEditMonth.Text;
    PreviewForm:=TPreviewForm.Create(Application);
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
    //開啟統計表
    ZQuery_crproc.Close;
    ZQuery_crproc.SQL.Clear;
    ZQuery_crproc.SQL.Add('SELECT * FROM crproc');
    ZQuery_crproc.SQL.Add('ORDER BY '+rank+' DESC');
    ZQuery_crproc.Open;
    ZQuery_crproc.First;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TCustRankForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelMonth.SendToBack;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    end
  else
    Close;
  wwDBGrid1.SetFocus;  
end;

procedure TCustRankForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(CustRankForm);

  PanelMonth.Left:=Trunc((Width-PanelMonth.Width)/2);
  PanelMonth.Top:=Trunc((Height-PanelMonth.Height)/2);
  PanelProcess.Left:=Trunc((Width-PanelProcess.Width)/2);
  PanelProcess.Top:=Trunc((Height-PanelProcess.Height)/2);
  PanelF9.Left:=Trunc((Width-PanelF9.Width)/2);
  PanelF9.Top:=Trunc((Height-PanelF9.Height)/2);
  fkey:='F1';
  ZQuery_crproc.Open;

  MaskEditMonth.Text:=Copy(ChinaDate1(Date),1,6);
  MaskEditMonth.SetFocus;
  PanelProcess.SendToBack;
  PanelF9.SendToBack;
end;

procedure TCustRankForm.FormCreate(Sender: TObject);
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

procedure TCustRankForm.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  //if (Field.FieldName='vpcode') then
  //  AFont.Color:=ClYellow;
end;

procedure TCustRankForm.MaskEditMonthKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='F1';
    PanelMonth.SendToBack;
    wwDBGrid1.SetFocus;
    rank:='aq2';
    ProcessF1();
    fkey:='';
    end;
end;

procedure TCustRankForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    Edit1.SetFocus;
    PanelF9.BringToFront;
    end;
end;

procedure TCustRankForm.Action_F1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    MaskEditMonth.SetFocus;
    PanelMonth.BringToFront;
    end;
end;

procedure TCustRankForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    PanelF9.SendToBack;
    wwDBGrid1.SetFocus;
    PrintF9();
    fkey:='';
    end;
end;

procedure TCustRankForm.Action_F2Execute(Sender: TObject);
begin
  //開啟統計表
  rank:='aq2';
  ZQuery_crproc.Close;
  ZQuery_crproc.SQL.Clear;
  ZQuery_crproc.SQL.Add('SELECT * FROM crproc');
  ZQuery_crproc.SQL.Add('ORDER BY '+rank+' DESC');
  ZQuery_crproc.Open;
  ZQuery_crproc.First;
end;

procedure TCustRankForm.Action_F3Execute(Sender: TObject);
begin
  //開啟統計表
  rank:='aq4';
  ZQuery_crproc.Close;
  ZQuery_crproc.SQL.Clear;
  ZQuery_crproc.SQL.Add('SELECT * FROM crproc');
  ZQuery_crproc.SQL.Add('ORDER BY '+rank+' DESC');
  ZQuery_crproc.Open;
  ZQuery_crproc.First;
end;

end.
