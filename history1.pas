unit history1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, Db, Wwdatsrc,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection, ActnList,
  Menus, Buttons, RzButton, RzPanel, Wwdbigrd, Wwdbgrid, frxClass, frxDBSet;

type
  THistory1Form = class(TForm)
    ZConnection1: TZConnection;
    ZQuery_wio: TZQuery;
    ZQuery_wiowicode: TStringField;
    ZQuery_wiowisno: TStringField;
    ZQuery_wiowiitem: TStringField;
    ZQuery_wiowiname: TStringField;
    ZQuery_wiowiwash: TStringField;
    ZQuery_wiowiwamo: TFloatField;
    ZQuery_wiowiquty: TIntegerField;
    ZQuery_wiowisum: TFloatField;
    ZQuery_wiowiurge: TStringField;
    ZQuery_wiowimdate: TStringField;
    ZQuery_wiowimemo: TStringField;
    ZQuery_wiowiacc: TStringField;
    ZQuery_wiowiplace: TStringField;
    ZQuery_wiowiodate: TStringField;
    ZQuery_wiowiotime: TTimeField;
    ZQuery_wiowiexkind: TStringField;
    ZQuery_wiowiexmo: TFloatField;
    ZQuery_wiowiday: TStringField;
    ZQuery_wiowidate: TStringField;
    ZQuery_wiowimark: TStringField;
    ZQuery_wioindate: TStringField;
    ZQuery_wiomark: TStringField;
    ZQuery_wiopps: TIntegerField;
    ZQuery_wiocrcode: TStringField;
    ZQuery_wiopicture: TStringField;
    wwDS_wio: TwwDataSource;
    ActionList1: TActionList;
    Action_Esc: TAction;
    Action_CtrlP: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonExit: TRzToolbarButton;
    Action_F11: TAction;
    RzToolbarButtonF11: TRzToolbarButton;
    RzToolbarButtonCP: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    RzPanel1: TRzPanel;
    Label15: TLabel;
    Label1: TLabel;
    SelectMoney: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    SelectPcs: TLabel;
    Image1: TImage;
    Action_F9: TAction;
    frxReport1: TfrxReport;
    RzToolbarButton1: TRzToolbarButton;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    ZQuery_wiocradr: TStringField;
    ZQuery_wiocrmoney: TFloatField;
    ZQuery_wiocrtel: TStringField;
    ZQuery_wiocrname: TStringField;
    ZQueryF9: TZQuery;
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
    ZQueryF9wisel: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    ZQueryF9crmoney: TFloatField;
    ZQueryF9crtelb: TStringField;
    ZQuery_wiowitime: TTimeField;
    ZQuery_wiowisel: TStringField;
    procedure Action_EscExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Action_CtrlPExecute(Sender: TObject);
    procedure Action_F11Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function CalGetCount(): Boolean;
    procedure PrintF9();
  end;

var
  History1Form: THistory1Form;
  crcode, fkey: String;
  crmoneyVal: Real;
  rcnt, wisnod: Integer;

implementation

uses WDModule, lcutils, ShowPic;

{$R *.DFM}

Function THistory1Form.CalGetCount(): Boolean;
var
  amount: Real;
  gquty, i: Integer;
  bm: TBookmark;
begin
  //計算取件數量與總金額
  gquty:=0;
  amount:=0;
  {
  bm:=wwDBGrid1.DataSource.DataSet.GetBookmark;
  if wwDBGrid1.SelectedRows.Count>0 then
    for i:=0 to DBGrid1.SelectedRows.Count-1 do
      begin
        DBGrid1.DataSource.DataSet.GotoBookmark(Pointer(DBGrid1.SelectedRows.Items[i]));
        gquty:=gquty+DBGrid1.DataSource.DataSet.FieldByName('wiquty').AsInteger;
        amount:=amount+DBGrid1.DataSource.DataSet.FieldByName('wisum').AsFloat;
      end;
  wwDBGrid1.DataSource.DataSet.GotoBookmark(bm);
  SelectPcs.Caption:=IntToStr(gquty);
  SelectMoney.Caption:=FloatToStr(amount);}
  with wwDBGrid1, wwDBGrid1.DataSource.DataSet do
  begin
      bm:=GetBookmark;
      DisableControls;     { Disable controls to improve performance }
      for i:= 0 to SelectedList.Count-1 do begin
         GotoBookmark(SelectedList.items[i]);
         gquty:=gquty+wwDBGrid1.DataSource.DataSet.FieldByName('wiquty').AsInteger;
         amount:=amount+wwDBGrid1.DataSource.DataSet.FieldByName('wisum').AsFloat;
         //Freebookmark(SelectedList.items[i]);
      end;
      EnableControls;      { Reenable controls }
      GotoBookmark(bm);
   end;
  SelectPcs.Caption:=IntToStr(gquty);
  SelectMoney.Caption:=FloatToStr(amount);
  Result:=True;
end;

procedure THistory1Form.PrintF9();
var
  bm: TBookmark;
  i: integer;
  wicode,wisno: String;
begin
  wicode:='''0''';
  wisno:='''0''';
  frxReport1.LoadFromFile(WDM.WPath+'Report\F2Report.rep');
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio');
  with wwDBGrid1, wwDBGrid1.DataSource.DataSet do
    begin
    bm:=GetBookmark;
    DisableControls;
    for i:= 0 to SelectedList.Count-1 do
      begin
     GotoBookmark(SelectedList.items[i]);
     wicode:=wicode+','''+wwDBGrid1.DataSource.DataSet.FieldByName('wicode').AsString+'''';
     wisno:=wisno+','''+wwDBGrid1.DataSource.DataSet.FieldByName('wisno').AsString+'''';
      end;
    EnableControls;      { Reenable controls }
    GotoBookmark(bm);
    end;
  ZQueryF9.SQL.Add('WHERE wicode IN('+wicode+') AND wisno IN('+wisno+')');
  ZQueryF9.SQL.Add('ORDER BY wicode,wisno');
  ZQueryF9.Open;
  (frxReport1.FindObject('Memo8')as TfrxMemoView).Text:='取件列印';
  (frxReport1.FindObject('Memo1')as TfrxMemoView).Text:=SelectPcs.Caption+'件';
  (frxReport1.FindObject('Memo2')as TfrxMemoView).Text:=SelectMoney.Caption;
  (frxReport1.FindObject('Memo3')as TfrxMemoView).Text:='';
  (frxReport1.FindObject('Memo4')as TfrxMemoView).Text:='';
  (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:='';
  (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:='';
  frxReport1.ShowReport;
end;

procedure THistory1Form.Action_EscExecute(Sender: TObject);
begin
  Close;
end;

procedure THistory1Form.DBGrid1DblClick(Sender: TObject);
begin
{  with DbGrid1.SelectedRows do
    CurrentRowSelected:=not CurrentRowSelected;
  CalGetCount();
  DbGrid1.DataSource.DataSet.Next;}
end;

procedure THistory1Form.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if (DBGrid1.DataSource.DataSet.RecordCount>0) then
    begin
    if (Key=VK_RETURN)OR(Key=VK_SPACE) then
      begin
      with DbGrid1.SelectedRows do
        CurrentRowSelected:=not CurrentRowSelected;
      CalGetCount();
      DbGrid1.DataSource.DataSet.Next;
      end;
    end;}
end;

procedure THistory1Form.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{  if Column.FieldName='wicode' then //符合條件變換單元格顏色
    begin
    Column.Font.Color:=ClYellow;
    end;
  If (DBGrid1.SelectedRows.CurrentRowSelected) then
    Begin
    DBGrid1.Canvas.Brush.Color:=clRed;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column,[gdFixed,gdFocused,gdSelected]);
    End;
  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state); //使生效
  }
end;

procedure THistory1Form.Action_CtrlPExecute(Sender: TObject);
begin
  if (ZQuery_wio.FieldByName('picture').Value<>'') and (fkey='') then
    begin
    Image1Click(Self);
    wwDBGrid1.SetFocus;
    end
  else
    ShowMessage('沒有照片！');
end;

procedure THistory1Form.Action_F11Execute(Sender: TObject);
begin
  if MessageDlg('確定要還原？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
    begin
    if MessageDlg('確定要還原？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
      begin
      if MessageDlg('確定要還原？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
        begin
        ZQuery_wio.Edit; // 記錄還原者及時間！
        ZQuery_wio.FieldByName('wiodate').AsString:='';
        ZQuery_wio.FieldByName('wiotime').Value:=Null;
        ZQuery_wio.Post;        
        ShowMessage('還原完成！');
        end;
      end;
    end;
end;

procedure THistory1Form.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(History1Form);
end;

procedure THistory1Form.Image1Click(Sender: TObject);
begin
  try
    ShowPicForm := TShowPicForm.Create(Application);
    ShowPicForm.PicName:=ZQuery_wio.FieldByName('picture').Value;
    ShowPicForm.ShowModal;
    FreeAndNil(ShowPicForm);
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure THistory1Form.wwDBGrid1RowChanged(Sender: TObject);
var
  picname: String;
begin
  if fkey='' then
    begin
    picname:=WDM.WPath+'Captures\'+ZQuery_wio.FieldByName('wicode').AsString+'_'+ZQuery_wio.FieldByName('wisno').AsString+'_01.jpg';
    if FileExists(picname) then
      begin
      Image1.Picture.LoadFromFile(picname);
      Image1.Visible:=True;
      wwDBGrid1.SetFocus;
      end
    else
      begin
      Image1.Visible:=False;
      wwDBGrid1.SetFocus;
      end;
  end;
end;

procedure THistory1Form.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin  
  if (not highlight) and (Sender as TwwDBGrid).isSelected then
    begin
    ABrush.Color:= clYellow;
    AFont.Color:= clBlack;
    end;
  if (highlight) and (Sender as TwwDBGrid).isSelected then
    begin
    ABrush.Color:= clLime;
    AFont.Color:= clBlack;
    end;
end;

procedure THistory1Form.wwDBGrid1DblClick(Sender: TObject);
begin
  if wwdbgrid1.IsSelected then
    wwdbgrid1.UnselectRecord
  else
    wwdbgrid1.SelectRecord;
  CalGetCount();
end;

procedure THistory1Form.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    if wwdbgrid1.IsSelected then
      wwdbgrid1.UnselectRecord
    else
      wwdbgrid1.SelectRecord;
    CalGetCount();
    wwDBGrid1.DataSource.DataSet.Next;
    end
end;

procedure THistory1Form.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=ExtractFilePath(Application.ExeName)+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='History1'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
end;

procedure THistory1Form.FormShow(Sender: TObject);
begin
  crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQuery_wio.SQL.Add('AND wiodate<>''''');
  ZQuery_wio.SQL.Add('ORDER BY wiodate DESC, wisno DESC');
  ZQuery_wio.Open;
  fkey:='';
  wwDBGrid1.SetFocus;
end;

procedure THistory1Form.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    PrintF9();
    fkey:='';
    end;
end;

end.
