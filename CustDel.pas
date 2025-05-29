unit CustDel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, Wwdbigrd, Wwdbgrid, Buttons, RzButton, ExtCtrls,
  RzPanel, ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, RzPrgres;

type
  TCustDelForm = class(TForm)
    CustDelDS: TDataSource;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonCtrlDel: TRzToolbarButton;
    RzToolbarButton_Esc: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    ActionList1: TActionList;
    Action_CtrlDel: TAction;
    ZQuery_wio: TZQuery;
    ZQuery_cr: TZQuery;
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
    ZQuery_crcrmoney1: TFloatField;
    ZQuery_crcrpsen: TFloatField;
    ZQuery_crcrdate2: TStringField;
    ZQuery_crcrcnt: TFloatField;
    ZQuery_crcrvip: TStringField;
    ZQuery_crcrarea: TStringField;
    ZQuery_crcurst: TStringField;
    ZQuery_crcrs1: TStringField;
    ZQuery_crcrs2: TStringField;
    ZQuery_crcrmark: TStringField;
    ZQuery_crcrallquty: TIntegerField;
    Action_F3: TAction;
    Action_F4: TAction;
    ZQuery_crcrwidate: TStringField;
    Action_F2: TAction;
    Action_Esc: TAction;
    ZQuery_crcrwiday: TIntegerField;
    Action_F1: TAction;
    RzToolbarButtonF1: TRzToolbarButton;
    Panel_F1: TPanel;
    Label19: TLabel;
    Button1: TButton;
    Edit_sday: TEdit;
    ZQueryCrdelete: TZQuery;
    PanelPBar: TPanel;
    LabelWait: TLabel;
    RzProgressBar1: TRzProgressBar;
    ZQueryCrdeletecrcode: TStringField;
    ZQueryCrdeletestorage: TIntegerField;
    ZQueryCrdeletesdate: TStringField;
    ZQueryCrdeletesday: TIntegerField;
    ZQueryCrdeletecrname: TStringField;
    ZQueryCrdeletecrmoney: TFloatField;
    Label1: TLabel;
    EditMoney1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    EditMoney2: TEdit;
    Label4: TLabel;
    ZQueryCrdeletecrtelb: TStringField;
    procedure Action_CtrlDelExecute(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_F3Execute(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CloseAllPanel();
  end;

var
  CustDelForm: TCustDelForm;
  fkey: String;

implementation

{$R *.DFM}

uses WDModule;

procedure TCustDelForm.CloseAllPanel();
begin
  Panel_F1.SendToBack;
  PanelPBar.SendToBack;
end;

procedure TCustDelForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  {
  if (Field.FieldName='crmoney') then
     if ZQuery_cr.FieldByName('crmoney').AsInteger<0 then
       begin
       AFont.Color:=clWhite;
       ABrush.Color:=clRed;
       end;
  if (Field.FieldName='crallquty') then
     if ZQuery_cr.FieldByName('crallquty').AsInteger>0 then
       begin
       AFont.Color:=clWhite;
       ABrush.Color:=clRed;
       end;
  if Highlight then
    begin
    AFont.Color:=ClWhite;
    end;
  }
end;

procedure TCustDelForm.Action_F2Execute(Sender: TObject);
begin
  ZQuery_cr.Close;
  ZQuery_cr.SQL.Clear;
  ZQuery_cr.SQL.Add('SELECT * FROM cr');
  ZQuery_cr.SQL.Add('WHERE crmark=''Y''');
  ZQuery_cr.Open;
end;

procedure TCustDelForm.Action_F3Execute(Sender: TObject);
begin
  ZQuery_cr.Close;
  ZQuery_cr.SQL.Clear;
  ZQuery_cr.SQL.Add('SELECT * FROM cr');
  ZQuery_cr.SQL.Add('WHERE crmoney<0 AND crmark=''Y''');
  ZQuery_cr.Open;
end;

procedure TCustDelForm.Action_F4Execute(Sender: TObject);
begin
  ZQuery_cr.Close;
  ZQuery_cr.SQL.Clear;
  ZQuery_cr.SQL.Add('SELECT * FROM cr');
  ZQuery_cr.SQL.Add('WHERE crmoney=0 AND crmark=''Y''');
  ZQuery_cr.Open;
end;
procedure TCustDelForm.Action_EscExecute(Sender: TObject);
begin
  CloseAllPanel();
  if fkey='F1' then
    begin
    fkey:='';
    end
  else
    close;
end;

procedure TCustDelForm.Action_F1Execute(Sender: TObject);
begin
  fkey:='F1';
  Panel_F1.BringToFront;
  wwDBGrid1.Enabled:=False;
end;

procedure TCustDelForm.FormActivate(Sender: TObject);
begin
  Panel_F1.Left:=Trunc((Width-Panel_F1.Width)/2);
  Panel_F1.Top:=Trunc((Height-Panel_F1.Height)/2);
  PanelPBar.Left:=Trunc((Width-PanelPBar.Width)/2);
  PanelPBar.Top:=Trunc((Height-PanelPBar.Height)/2);
  CloseAllPanel();
end;

procedure TCustDelForm.FormShow(Sender: TObject);
begin
  Action_F1Execute(Self);
end;

procedure TCustDelForm.Button2Click(Sender: TObject);
begin
  CloseAllPanel();
  fkey:='';
end;

procedure TCustDelForm.Button1Click(Sender: TObject);
var
  t1, t2: TDate;
  t3: Extended;
  rcnt, rno, t11: Integer;
  crcode, sdate: string;
  crmoney: Extended;
  storage, sday: integer;
begin
  CloseAllPanel();
  //刪除暫存檔
  ZQueryCrdelete.Close;
  ZQueryCrdelete.SQL.Clear;
  ZQueryCrdelete.SQL.Add('DELETE FROM crdelete');
  //ZQueryCrdelete.SQL.Add('DELETE FROM crdelwio');
  ZQueryCrdelete.ExecSQL;

  ZQuery_cr.Close;
  ZQuery_cr.SQL.Clear;
  ZQuery_cr.SQL.Add('SELECT * FROM cr');
  ZQuery_cr.SQL.Add('WHERE crmark=''Y''');
  ZQuery_cr.SQL.Add('AND crname<>''''');
  ZQuery_cr.SQL.Add('AND crmoney<='+EditMoney1.Text);
  ZQuery_cr.SQL.Add('AND crmoney>='+EditMoney2.Text);
  ZQuery_cr.Open;

  PanelPBar.BringToFront;
  rcnt:=ZQuery_cr.RecordCount;
  rno:=0;
  while not ZQuery_cr.Eof do
    begin
    Application.ProcessMessages;
    crcode:=ZQuery_cr.FieldByName('crcode').AsString;
    crmoney:=ZQuery_cr.FieldByName('crmoney').AsFloat;

    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT sum(wiquty)as s_quty,wiodate FROM wio');
    ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQuery_wio.SQL.Add('AND wiodate=''''');
    ZQuery_wio.Open;
    storage:=0;
    if not ZQuery_wio.eof then
      storage:=ZQuery_wio.FieldByName('s_quty').AsInteger;
    ZQuery_wio.Close;

    if not RadioButton2.Checked then
      begin
      if (RadioButton1.Checked AND (storage<>0)) then
        begin
        rno:=rno+1;
        RzProgressBar1.Percent:=Trunc((rno/rcnt)*100);
        ZQuery_cr.Next;
        Continue;
        end;
      end;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT crcode, MAX(widate)as wiodate FROM wio');
    ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQuery_wio.SQL.Add('GROUP BY crcode');
    ZQuery_wio.SQL.Add('ORDER BY crcode');
    ZQuery_wio.Open;
    if not ZQuery_wio.eof then
      begin
      sdate:=ZQuery_wio.FieldByName('wiodate').AsString;
      t11:=StrToInt(copy(ZQuery_wio.FieldByName('wiodate').AsString,1,3))+1911;
      t1:=StrToDateTime(IntToStr(t11)+copy(ZQuery_wio.FieldByName('wiodate').AsString,4,9));
      t2:=Date();
      t3:=t2-t1;
      sday:=StrToInt(FloatToStr(t3));
      end
    else
      begin
      sdate:='';
      sday:=0;
      end;
    ZQuery_wio.Close;

    ZQueryCrdelete.Close;
    ZQueryCrdelete.SQL.Clear;
    ZQueryCrdelete.SQL.Add('INSERT INTO crdelete');
    ZQueryCrdelete.SQL.Add('(crcode, crmoney, storage, sdate, sday) VALUES');
    ZQueryCrdelete.SQL.Add('('''+crcode+''','+FloatToStr(crmoney)+','+IntToStr(storage)+',');
    ZQueryCrdelete.SQL.Add(''''+sdate+''','+IntToStr(sday)+')');
    ZQueryCrdelete.ExecSQL;

    rno:=rno+1;
    RzProgressBar1.Percent:=Trunc((rno/rcnt)*100);
    ZQuery_cr.Next;
    end;

  CloseAllPanel();

  ZQueryCrdelete.Close;
  ZQueryCrdelete.SQL.Clear;
  ZQueryCrdelete.SQL.Add('DELETE FROM crdelete');
  ZQueryCrdelete.SQL.Add('WHERE sday<'+Edit_sday.Text);
  ZQueryCrdelete.ExecSQL;

  ZQueryCrdelete.Close;
  ZQueryCrdelete.SQL.Clear;
  ZQueryCrdelete.SQL.Add('SELECT * FROM crdelete');
  ZQueryCrdelete.SQL.Add('WHERE sday>='+Edit_sday.Text);
  ZQueryCrdelete.SQL.Add('ORDER BY sday DESC');
  ZQueryCrdelete.Open;
  fkey:='';
  wwDBGrid1.Enabled:=True;
end;

procedure TCustDelForm.Action_CtrlDelExecute(Sender: TObject);
var
  cnt: integer;
  crcode, msg: string;
begin
  cnt:=3;
  msg:='確定刪除客戶資料？';
  while cnt>0 do
    begin
    if IDNO=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
      break;
    cnt:=cnt-1;
    end;
  if cnt=0 then
    begin
    ZQueryCrdelete.Close;
    ZQueryCrdelete.SQL.Clear;
    ZQueryCrdelete.SQL.Add('SELECT * FROM crdelete');
    ZQueryCrdelete.Open;
    While not ZQueryCrdelete.Eof do
      begin
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('DELETE FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+ZQueryCrdelete.FieldByName('crcode').AsString+'''');
      ZQuery_wio.ExecSQL;
      ZQueryCrdelete.Next;
      end;
    end;
end;

end.
