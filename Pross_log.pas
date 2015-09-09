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
begin
  MaskEditDate1.Text:=ChinaDate1(date);
  WDM.ZQuery_pross_log.Close;
  WDM.ZQuery_pross_log.SQL.Clear;
  WDM.ZQuery_pross_log.SQL.Add('SELECT * FROM pross_log');
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
  if Key=VK_Return then
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

end.
