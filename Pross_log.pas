unit Pross_log;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ComCtrls, ExtCtrls, ActnList,
  Mask, Buttons, RzButton, RzPanel;

type
  TPross_logForm = class(TForm)
    wwDBGrid1: TwwDBGrid;
    ActionList1: TActionList;
    Action_Esc: TAction;
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    Action_F1: TAction;
    Label1: TLabel;
    MaskEditDate2: TMaskEdit;
    Label2: TLabel;
    EditCode: TEdit;
    Button1: TButton;
    EditTelb: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_EscExecute(Sender: TObject);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTelbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pross_logForm: TPross_logForm;
  fkey: String;

implementation

{$R *.DFM}

uses WDModule, LCUtils, history2;

procedure TPross_logForm.FormCreate(Sender: TObject);
var
  sdate, edate: string;
begin
  edate:= ChinaDate1(date);
  sdate:=copy(edate,0,6)+'/01';
  MaskEditDate1.Text:=sdate;
  MaskEditDate2.Text:=edate;
  WDM.ZQuery_pross_log.Close;
  WDM.ZQuery_pross_log.SQL.Clear;
  WDM.ZQuery_pross_log.SQL.Add('SELECT * FROM pross_log');
  WDM.ZQuery_pross_log.SQL.Add('WHERE pross_date>='''+sdate+''' and pross_date<='''+edate+''' ');
  WDM.ZQuery_pross_log.SQL.Add('ORDER BY pross_date DESC,pross_time DESC');
  WDM.ZQuery_pross_log.Open;
end;

procedure TPross_logForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName='pross_time' then
    AFont.Color:=clYellow;
  
  if Field.FieldName='pross' then
    begin
    if Field.Value='收件' then
      AFont.Color:=clLime
    else
      AFont.Color:=clYellow;
    end;
end;

procedure TPross_logForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else
    Close;
end;

procedure TPross_logForm.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  getdate: String;
begin
  {if Key=VK_Return then
    begin
    getdate:=MaskEditDate1.Text;
    if not WDM.ZQuery_pross_log.Locate('pross_date',vararrayof([getdate]),[]) then
      begin
      ShowMessage('無此日期資料！');
      MaskEditDate1.SetFocus;
      end
    else
      begin
      PanelDateSet.SendToBack;
      fkey:='';
      end;
    Key:=0;
    end; }
    
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TPross_logForm.MaskEditDate2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin   
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TPross_logForm.Action_F1Execute(Sender: TObject);
begin
  fkey:='F1';
  PanelDateSet.BringToFront;
  MaskEditDate1.SetFocus;
end;

procedure TPross_logForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(Pross_logForm);
  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
  PanelDateSet.SendToBack;
end;

procedure TPross_logForm.wwDBGrid1DblClick(Sender: TObject);
begin
  try
    WDM.crcode:=WDM.ZQuery_pross_log.FieldByName('crcode').AsString;
    History2Form := THistory2Form.Create(Application);
    History2Form.ShowModal;
    FreeAndNil(History2Form);
    wwDBGrid1.SetFocus;
    fkey:='';
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TPross_logForm.Button1Click(Sender: TObject);
var
  sdate, edate: string;
begin
  sdate:=MaskEditDate1.text;
  edate:=MaskEditDate2.text;
  WDM.ZQuery_pross_log.Close;
  WDM.ZQuery_pross_log.SQL.Clear;
  WDM.ZQuery_pross_log.SQL.Add('SELECT * FROM pross_log a ');
  WDM.ZQuery_pross_log.SQL.Add('LEFT JOIN cr b on b.crcode=a.crcode ');
  WDM.ZQuery_pross_log.SQL.Add('WHERE a.pross_date>='''+sdate+''' and a.pross_date<='''+edate+''' ');
  if EditCode.Text<>'' then
    WDM.ZQuery_pross_log.SQL.Add('AND b.crcode like '''+ EditCode.Text+'%'' ');
  if EditTelb.Text<>'' then
    WDM.ZQuery_pross_log.SQL.Add('AND b.crtelb like '''+ EditTelb.Text+'%'' ');
  WDM.ZQuery_pross_log.SQL.Add('ORDER BY pross_date DESC,pross_time DESC');
  WDM.ZQuery_pross_log.Open;
  if WDM.ZQuery_pross_log.eof then
    begin
    ShowMessage('無此資料！');
    MaskEditDate1.SetFocus;
    end
  else
    begin
    PanelDateSet.SendToBack;
    fkey:='';
    end;
  wwDBGrid1.SetFocus;
end;

procedure TPross_logForm.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='')AND(Key=VK_RETURN) then
    try
      WDM.crcode:=WDM.ZQuery_pross_log.FieldByName('crcode').AsString;
      History2Form := THistory2Form.Create(Application);
      History2Form.ShowModal;
      FreeAndNil(History2Form);
      wwDBGrid1.SetFocus;
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TPross_logForm.EditCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end; 

procedure TPross_logForm.EditTelbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

end.
