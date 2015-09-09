unit history3;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  Wwdbgrid, wwdbedit, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzButton, RzPanel, Jpeg, frxClass,
  frxBarcode, frxDBSet, ZConnection, Wwdatsrc;

type
  THistory3Form = class(TForm)
    ZQuery_wio: TZQuery;
    DS_Qwio: TDataSource;
    ActionList1: TActionList;
    Action_Exit: TAction;
    ZQuery_wiowicode: TStringField;
    ZQuery_wiowisno: TStringField;
    ZQuery_wiocrcode: TStringField;
    ZQuery_wiowiname: TStringField;
    ZQuery_wiowiitem: TStringField;
    ZQuery_wiowiacc: TStringField;
    ZQuery_wiowimemo: TStringField;
    ZQuery_wiowiwash: TStringField;
    ZQuery_wiowiwamo: TFloatField;
    ZQuery_wiowiexkind: TStringField;
    ZQuery_wiowiexmo: TFloatField;
    ZQuery_wiowiquty: TIntegerField;
    ZQuery_wiowisum: TFloatField;
    ZQuery_wiowiurge: TStringField;
    ZQuery_wiowiday: TStringField;
    ZQuery_wiowiplace: TStringField;
    ZQuery_wiowimark: TStringField;
    ZQuery_wiomark: TStringField;
    ZQuery_wiopps: TIntegerField;
    ZQuery_wioSelected: TIntegerField;
    ZQuery_wiowimdate: TStringField;
    ZQuery_wiowiodate: TStringField;
    ZQuery_wiowiotime: TTimeField;
    ZQuery_wiowidate: TStringField;
    ZQuery_wioindate: TStringField;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonExit: TRzToolbarButton;
    ZQuery_wiopicture: TStringField;
    Action_CrtlP: TAction;
    ZQuery: TZQuery;
    RzToolbarButtonCP: TRzToolbarButton;
    Action_PgDn: TAction;
    Action_PgUp: TAction;
    RzToolbarButtonPU: TRzToolbarButton;
    RzToolbarButtonPD: TRzToolbarButton;
    frxDBDataset2: TfrxDBDataset;
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
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    ZQueryF9crmoney: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    RzPanel1: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    CrMoneyLabel: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Image1: TImage;
    Label12: TLabel;
    DBText9: TDBText;
    Label14: TLabel;
    LabelCount: TLabel;
    Label2: TLabel;
    DBText5: TDBText;
    Action_F9: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    frxReportF9: TfrxReport;
    ZQueryCrWio: TZQuery;
    wwDS_CrWio: TwwDataSource;
    ZConnection1: TZConnection;
    ZQueryCrWiowicode: TStringField;
    ZQueryCrWiowisno: TStringField;
    ZQueryCrWiocrcode: TStringField;
    ZQueryCrWiowiitem: TStringField;
    ZQueryCrWiowiname: TStringField;
    ZQueryCrWiowiwash: TStringField;
    ZQueryCrWiowiacc: TStringField;
    ZQueryCrWiowimemo: TStringField;
    ZQueryCrWiowiwamo: TFloatField;
    ZQueryCrWiowiexkind: TStringField;
    ZQueryCrWiowiexmo: TFloatField;
    ZQueryCrWiowiquty: TIntegerField;
    ZQueryCrWiowisum: TFloatField;
    ZQueryCrWiowiurge: TStringField;
    ZQueryCrWiowiday: TStringField;
    ZQueryCrWiowimdate: TStringField;
    ZQueryCrWiowiodate: TStringField;
    ZQueryCrWiowiotime: TTimeField;
    ZQueryCrWiowiplace: TStringField;
    ZQueryCrWiowidate: TStringField;
    ZQueryCrWiowimark: TStringField;
    ZQueryCrWioindate: TStringField;
    ZQueryCrWiomark: TStringField;
    ZQueryCrWiowisel: TStringField;
    ZQueryCrWiopps: TIntegerField;
    ZQueryCrWiopicture: TStringField;
    ZQueryCrWiocrname: TStringField;
    ZQueryCrWiocrtel: TStringField;
    ZQueryCrWiocrmoney: TFloatField;
    ZQueryCrWiocradr: TStringField;
    ZQueryCrWiocrtelb: TStringField;
    Label1: TLabel;
    Label_Wash1: TLabel;
    Label4: TLabel;
    Label_Wash2: TLabel;
    Label6: TLabel;
    Label_Wash3: TLabel;
    Label3: TLabel;
    DBText6: TDBText;
    ZQuery_wiowitime: TTimeField;
    ZQuery_wiowisel: TStringField;
    Action_CAF9: TAction;
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_CrtlPExecute(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure Action_PgUpExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure ZQueryCrWioAfterScroll(DataSet: TDataSet);
    procedure Action_CAF9Execute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure calquty(code: String);
    procedure PrintF9();
  end;

var
  History3Form: THistory3Form;

  widate, crcode, styleno: String;
  wicode, wisno, wisnod, cpdayn: Integer;
  washpsno: Real;
  
  Tb2_Bookmark: String;

  OldEditStr, showcode: String;
  oldvalue, q_crcode: String;
  HintTop, pcnt, h3day: Integer;
  fkey,cf: String;
  PayVal, DiscountVal, TotalVal, crmoneyVal: Real;
  
implementation

uses WDModule, LCUtils, GetCam, ShowPic;

{$R *.DFM}

procedure THistory3Form.PrintF9();
var
  quty, wamo: Real;
begin
  quty:=0;
  wamo:=0;
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio');
  ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
  ZQueryF9.SQL.Add('AND widate='''+ChinaDate1(Date)+'''');
  ZQueryF9.SQL.Add('ORDER BY wisno');
  ZQueryF9.Open;  
  frxReportF9.LoadFromFile(WDM.WPath+'Report\History3F9.rep');
  (frxReportF9.FindObject('Memo3')as TfrxMemoView).Text:='0';
  (frxReportF9.FindObject('Memo4')as TfrxMemoView).Text:='0';
  (frxReportF9.FindObject('Memo5')as TfrxMemoView).Text:='0';
  //frxReport1.ShowReport;
  frxReportF9.PrepareReport;
  frxReportF9.PrintOptions.ShowDialog := False; //不顯示對話框
  //frxReport1.PrintOptions.Printer := PrinterName; //指定印表機
  frxReportF9.Print; //列印
end;

procedure THistory3Form.calquty(code:String);
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('select sum(wiquty)as tquty from wio');
  ZQuery.SQL.Add('where wicode='''+code+'''');
  ZQuery.Open;
  LabelCount.Caption:=IntToStr(ZQuery.FieldByName('tquty').AsInteger);
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('select sum(wiquty)as tquty from wio');
  ZQuery.SQL.Add('where wicode='''+code+'''');
  ZQuery.SQL.Add('and wiwash=''乾洗''');
  ZQuery.Open;
  Label_Wash1.Caption:=IntToStr(ZQuery.FieldByName('tquty').AsInteger);
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('select sum(wiquty)as tquty from wio');
  ZQuery.SQL.Add('where wicode='''+code+'''');
  ZQuery.SQL.Add('and wiwash=''水洗''');
  ZQuery.Open;
  Label_Wash2.Caption:=IntToStr(ZQuery.FieldByName('tquty').AsInteger);
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('select sum(wiquty)as tquty from wio');
  ZQuery.SQL.Add('where wicode='''+code+'''');
  ZQuery.SQL.Add('and ((wiwash=''燙衣'')or(wiwash=''整燙''))');
  ZQuery.Open;
  Label_Wash3.Caption:=IntToStr(ZQuery.FieldByName('tquty').AsInteger);
  ZQuery.Close;
end;

procedure THistory3Form.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (Field.FieldName='wicode') or (Field.FieldName='wisno') or (Field.FieldName='wisum') then
    begin
    //AFont.Size:=16;
    AFont.Color:=ClYellow;
    end;
  if Field.FieldName='wiquty' then
    Field.Alignment:=taCenter;
  if (Field.FieldName='wiurge')  or (Field.FieldName='crcode') then
    begin
    Field.Alignment:=taCenter;
    if Field.Value='Y' then
      begin
      AFont.Color:=ClRed;
      AFont.Style:=[fsBold];
      end
    else
      begin
      AFont.Color:=ClYellow;
      end;
    end;
end;

procedure THistory3Form.Action_ExitExecute(Sender: TObject);
begin
  Close;
end;

procedure THistory3Form.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(History3Form);

  fkey:='';

  //calquty(); //計算件數
  RzToolbarButtonPU.Visible:=True;
  RzToolbarButtonPD.Visible:=True;
  wwDBGrid1.SetFocus;
end;

procedure THistory3Form.Action_CrtlPExecute(Sender: TObject);
begin
  if (fkey='') then
    if (ZQuery_wio.FieldByName('picture').AsString<>'') then
      begin
      Image1Click(Self);
      wwDBGrid1.SetFocus;
      end
    else
      ShowMessage('沒有照片！');
end;

procedure THistory3Form.Image1DblClick(Sender: TObject);
begin
  Action_CrtlPExecute(Self);
end;

procedure THistory3Form.Image1Click(Sender: TObject);
begin
  try
    ShowPicForm := TShowPicForm.Create(Application);
    ShowPicForm.PicName:=ZQuery_wio.FieldByName('picture').AsString;
    ShowPicForm.ShowModal;
    FreeAndNil(ShowPicForm);
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure THistory3Form.Action_PgUpExecute(Sender: TObject);
begin
  if (fkey='') then
    if Not ZQueryCrWio.Bof then
      begin
      ZQueryCrWio.Prior;
      showcode:=ZQueryCrWio.FieldByName('wicode').AsString;
      if ZQueryCrWio.FieldByName('crmoney').Value<0 then
        DBText4.Font.Color:=ClRed
      else
        DBText4.Font.Color:=ClYellow;

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT * FROM wio');
      ZQuery_wio.SQL.Add('WHERE wicode='''+showcode+'''');
      ZQuery_wio.SQL.Add('AND widate between '''+ChinaDate1(Date+h3day)+''' AND '''+ChinaDate1(Date)+'''');
      ZQuery_wio.SQL.Add('ORDER BY wisno');
      ZQuery_wio.Open;

      wwDBGrid1.SetFocus;
      //calquty(); //計算件數
      end
    else
      ShowMessage('這是第一筆！');
end;

procedure THistory3Form.Action_PgDnExecute(Sender: TObject);
begin
  if (fkey='') then
    if Not ZQueryCrWio.Eof then
      begin
      ZQueryCrWio.Next;
      showcode:=ZQueryCrWio.FieldByName('wicode').AsString;
      if ZQueryCrWio.FieldByName('crmoney').Value<0 then
        DBText4.Font.Color:=ClRed
      else
        DBText4.Font.Color:=ClYellow;

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT * FROM wio');
      ZQuery_wio.SQL.Add('WHERE wicode='''+showcode+'''');
      ZQuery_wio.SQL.Add('AND widate between '''+ChinaDate1(Date+h3day)+''' AND '''+ChinaDate1(Date)+'''');
      ZQuery_wio.SQL.Add('ORDER BY wisno');
      ZQuery_wio.Open;

      wwDBGrid1.SetFocus;

      //calquty(); //計算件數
      end
    else
      ShowMessage('這是最後一筆！');
end;

procedure THistory3Form.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  h3day:=WDM.h3day.Value; //收件紀錄過濾的前幾天到今天

  ZQueryCrWio.Close;
  ZQueryCrWio.SQL.Clear;
  ZQueryCrWio.SQL.Add('SELECT * FROM wio');
  ZQueryCrWio.SQL.Add('WHERE widate between '''+ChinaDate1(Date+h3day)+''' AND '''+ChinaDate1(Date)+'''');
  ZQueryCrWio.SQL.Add('GROUP BY wicode');
  ZQueryCrWio.SQL.Add('ORDER BY wicode DESC');
  ZQueryCrWio.Open;
  showcode:=ZQueryCrWio.FieldByName('wicode').AsString;
  if ZQueryCrWio.FieldByName('crmoney').Value<0 then
    DBText4.Font.Color:=ClRed
  else
    DBText4.Font.Color:=ClYellow;

  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT * FROM wio');
  ZQuery_wio.SQL.Add('WHERE wicode='''+showcode+'''');
  ZQuery_wio.SQL.Add('AND widate between '''+ChinaDate1(Date+h3day)+''' AND '''+ChinaDate1(Date)+'''');
  ZQuery_wio.SQL.Add('ORDER BY wisno');
  ZQuery_wio.Open;

  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=ExtractFilePath(Application.ExeName)+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='history3'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
  wwDBGrid1.BringToFront;
end;

procedure THistory3Form.wwDBGrid1RowChanged(Sender: TObject);
var
  picname: String;
begin
  if fkey='' then
    begin
    if ZQuery_wio.FieldByName('picture').AsString<>'' then
      begin
      picname:=ExtractFilePath(Application.ExeName)+'Captures\'+ZQuery_wio.FieldByName('picture').AsString;
      if FileExists(picname) then
        begin
        Image1.Picture.LoadFromFile(picname);
        Image1.Visible:=True;
        wwDBGrid1.SetFocus;
        end;
      end
    else
      begin
      Image1.Visible:=False;
      wwDBGrid1.SetFocus;
      end; 
    end;
end;

procedure THistory3Form.Action_F9Execute(Sender: TObject);
begin
  if (fkey='') then
    begin
    fkey:='F9';
    PrintF9();
    fkey:='';
    end;
end;

procedure THistory3Form.ZQueryCrWioAfterScroll(DataSet: TDataSet);
begin
  calquty(ZQueryCrWio.FieldByName('wicode').AsString); //計算件數
end;

procedure THistory3Form.Action_CAF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\History3F9.rep');
  frxReportF9.DesignReport;
end;

end.
