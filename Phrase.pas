unit Phrase;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  wwdbedit, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Wwdatsrc, RzButton, RzPanel, Wwdotdot,
  Wwdbcomb, RzLabel, RzBckgnd, ZConnection, ZAbstractTable, wwSpeedButton,
  wwDBNavigator, wwclearpanel, DosMove, RzTabs, RzDBGrid, Wwdbgrid,
  frxClass, frxDBSet;

type
  TPhraseForm = class(TForm)
    ActionList1: TActionList;
    Action_F9: TAction;
    Action_Exit: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonEsc: TRzToolbarButton;
    DS_tName: TDataSource;
    ZTableWiName: TZTable;
    ZConnection1: TZConnection;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    ZTableWiNamewano1: TStringField;
    ZTableWiNamewaname: TStringField;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    TabSheet8: TRzTabSheet;
    TabSheet9: TRzTabSheet;
    ZTableItem: TZTable;
    DS_tItem: TDataSource;
    ZTableItemwano3: TStringField;
    ZTableItemwaitem: TStringField;
    ZTableStyle: TZTable;
    DS_tStyle: TDataSource;
    ZTableStylewano2: TStringField;
    ZTableStylewastyle: TStringField;
    ZTableStylewashpsno: TFloatField;
    ZTableAcc: TZTable;
    DS_tAcc: TDataSource;
    ZTableAccwano4: TStringField;
    ZTableAccwaacc: TStringField;
    ZTableMemo: TZTable;
    DS_tMemo: TDataSource;
    ZTableMemowano5: TStringField;
    ZTableMemowamemo: TStringField;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid5: TwwDBGrid;
    wwDBGrid6: TwwDBGrid;
    ZTableWash: TZTable;
    DS_tWash: TDataSource;
    ZTableWashwano6: TStringField;
    ZTableWashwawash: TStringField;
    wwDBGrid7: TwwDBGrid;
    DS_tExkind: TDataSource;
    ZTableExkind: TZTable;
    ZTableExkindwano7: TStringField;
    ZTableExkindwaexkind: TStringField;
    ZTableExkindwaexmo: TFloatField;
    wwDBGrid8: TwwDBGrid;
    ZTableAdr: TZTable;
    DS_tAdr: TDataSource;
    ZTableAdrwano8: TStringField;
    ZTableAdrwaadr: TStringField;
    wwDBGrid9: TwwDBGrid;
    ZTablefplace: TZTable;
    DS_tPlace: TDataSource;
    ZTablefplacewano10: TStringField;
    ZTablefplacewiplace: TStringField;
    ZTableStylewawsmO1: TFloatField;
    ZTableStylewawsmO2: TFloatField;
    ZTableStylewawsmO3: TFloatField;
    ZTableStylewawsmO4: TFloatField;
    ZTableStylewawsmO5: TFloatField;
    ZTableStylewawsmO6: TFloatField;
    ZTableStylewawsmO7: TFloatField;
    ZTableStylewawsmO8: TFloatField;
    ZTableStylewawsmO9: TFloatField;
    ZTableStylewawsm10: TFloatField;
    RzToolbarButtonF9: TRzToolbarButton;
    frxReportF9: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDatasetCompy: TfrxDBDataset;
    Action_CAF9: TAction;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    procedure RzPageControl1Change(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid3CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid4CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid5CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid6CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid7CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid8CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid9CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_CAF9Execute(Sender: TObject);
    procedure ZTableStyleBeforePost(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  PhraseForm: TPhraseForm;
  fkey: String;

implementation

uses lcutils, WDModule, PPreview;

{$R *.DFM}

procedure TPhraseForm.RzPageControl1Change(Sender: TObject);
begin
  if fkey='' then
    begin
    case RzPageControl1.TabIndex of
      0: ZTableWiName.Open;
      1: ZTableStyle.Open;
      2: ZTableItem.Open;
      3: ZTableAcc.Open;
      4: ZTableMemo.Open;
      5: ZTableWash.Open;
      6: ZTableExkind.Open;
      7: ZTableAdr.Open;
      8: ZTablefplace.Open;
    end;
    wwDBGrid1.Height:=TabSheet1.Height;
    wwDBGrid2.Height:=TabSheet2.Height;
    wwDBGrid3.Height:=TabSheet3.Height;
    wwDBGrid4.Height:=TabSheet4.Height;
    wwDBGrid5.Height:=TabSheet5.Height;
    wwDBGrid6.Height:=TabSheet6.Height;
    wwDBGrid7.Height:=TabSheet7.Height;
    wwDBGrid8.Height:=TabSheet8.Height;
    wwDBGrid9.Height:=TabSheet9.Height;
    
    if RzPageControl1.TabIndex=1 then
      begin
      RzToolbarButtonF9.Visible:=True;
      end
    else
      begin
      RzToolbarButtonF9.Visible:=False;
      end;
    end;
end;

procedure TPhraseForm.Action_ExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TPhraseForm.FormActivate(Sender: TObject);
var
  i: Integer;
  ZTablename: String;
begin
  WDM.FormColorSet(PhraseForm);
  for i:=0 to PhraseForm.ComponentCount -1 do
    begin
    if PhraseForm.Components[i] is TZTable then
      begin
      ZTablename:=(PhraseForm.Components[i] as TZTable).TableName;
      (PhraseForm.Components[i] as TZTable).TableName:=StringReplace(ZTablename,'washhouse','',[rfReplaceAll, rfIgnoreCase]);
      end;
    if PhraseForm.Components[i] is TwwDBGrid then
      begin
      (PhraseForm.Components[i] as TwwDBGrid).Font.Color:=ClBlack;
      end;
    end;

  {wwDBGrid1.Left:=Trunc((Width-wwDBGrid1.Width)/2);
  wwDBGrid2.Left:=Trunc((Width-wwDBGrid2.Width)/2);
  wwDBGrid3.Left:=Trunc((Width-wwDBGrid3.Width)/2);
  wwDBGrid4.Left:=Trunc((Width-wwDBGrid4.Width)/2);
  wwDBGrid5.Left:=Trunc((Width-wwDBGrid5.Width)/2);
  wwDBGrid6.Left:=Trunc((Width-wwDBGrid6.Width)/2);
  wwDBGrid7.Left:=Trunc((Width-wwDBGrid7.Width)/2);
  wwDBGrid8.Left:=Trunc((Width-wwDBGrid8.Width)/2);
  wwDBGrid9.Left:=Trunc((Width-wwDBGrid9.Width)/2);}
  
  //RzPageControl1.TabIndex:=0;
  ZTableWiName.Open;
end;

procedure TPhraseForm.FormCreate(Sender: TObject);
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

procedure TPhraseForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid3CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid4CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid5CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid6CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid7CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid8CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.wwDBGrid9CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  AFont.Color:=WDM.GFCOLOR.Value;
end;

procedure TPhraseForm.Action_CAF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\PReport.rep');
  frxReportF9.DesignReport;
end;

procedure TPhraseForm.Action_F9Execute(Sender: TObject);
begin
  if RzPageControl1.TabIndex=1 then
    begin
    frxReportF9.LoadFromFile(WDM.WPath+'Report\PReport.rep');
    (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
    PreviewForm:=TPreviewForm.Create(Application);
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
    end;
end;

procedure TPhraseForm.ZTableStyleBeforePost(DataSet: TDataSet);
begin
  if (ZTableStyle.State in [dsInsert]) then
    begin
    ZReadOnlyQuery1.Close;
    ZReadOnlyQuery1.SQL.Clear;
    ZReadOnlyQuery1.SQL.Add('SELECT * FROM wastyle');
    ZReadOnlyQuery1.SQL.Add('WHERE wastyle='''+ZTableStyle.FieldByName('wastyle').AsString+'''');
    ZReadOnlyQuery1.Open;
    if not ZReadOnlyQuery1.Eof then
      begin
      MessageDlg ('衣物名稱重複', mtError, [mbOK], 0);
      Abort;
      end;
    end;
end;

end.

