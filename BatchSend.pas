unit BatchSend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, ActnList, frxClass, frxDBSet;

type
  TbatchForm = class(TForm)
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditWisno_s: TEdit;
    EditWisno_e: TEdit;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    ActionEsc: TAction;
    ActionF1: TAction;
    frxReport1: TfrxReport;
    frxDBDS_Compy: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    procedure FormActivate(Sender: TObject);
    procedure ActionEscExecute(Sender: TObject);
    procedure ActionF1Execute(Sender: TObject);
    procedure EditWisno_sKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditWisno_eKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: String;
      var Value: Variant);
    procedure Label10DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  batchForm: TbatchForm;
  fkey: string;
  s,e, wisnod: integer;
  wisno_ar: array of Integer;

implementation

uses WDModule, lcutils, PPreview;

{$R *.DFM}

procedure TbatchForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(batchForm);
  fkey:='';
end;

procedure TbatchForm.ActionEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TbatchForm.ActionF1Execute(Sender: TObject);
begin
  fkey:='F1';
end;

procedure TbatchForm.EditWisno_sKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    EditWisno_s.Text:=StrZero(StrToInt(EditWisno_s.Text),wisnod);
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TbatchForm.EditWisno_eKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    EditWisno_e.Text:=StrZero(StrToInt(EditWisno_e.Text),wisnod);
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TbatchForm.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  try
    s:=StrToInt(EditWisno_s.Text);
    e:=StrToInt(EditWisno_e.Text);
    frxUserDataSet1.RangeEnd:=reCount;
    frxUserDataSet1.RangeEndCount:=e-s+1;
    SetLength(wisno_ar, frxUserDataSet1.RangeEndCount);
    for i:=0 to frxUserDataSet1.RangeEndCount-1 do
      begin
      wisno_ar[i]:=s;
      Inc(s);
      end;

    frxReport1.LoadFromFile(WDM.WPath+'Report\BatchReport.rep');
    PreviewForm := TPreviewForm.Create(Application);
    frxReport1.preview:=PreviewForm.frxPreview1;
    (frxReport1.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(now);
    (frxReport1.FindObject('MemoCount')as TfrxMemoView).Text:=IntToStr(frxUserDataSet1.RangeEndCount);
    frxReport1.ShowReport; //¿Ã¹õ¹wÄý
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('¿ù»~: '+E.Message, mtError,[mbOK], 0);
  end;
  Close;
end;

procedure TbatchForm.frxUserDataSet1GetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(VarName, 'wisno') = 0 then
    begin
    Value:=StrZero(wisno_ar[frxUserDataSet1.RecNo],wisnod);
    end;
end;

procedure TbatchForm.Label10DblClick(Sender: TObject);
begin
  frxReport1.LoadFromFile(WDM.WPath+'Report\BatchReport.rep');
  frxReport1.DesignReport;
end;

procedure TbatchForm.FormCreate(Sender: TObject);
begin
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
end;

end.
