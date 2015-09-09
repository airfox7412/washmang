unit wio_DetailQF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  Wwdbgrid, wwdbedit, ActnList, frxClass, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzPanel, RzButton, frxDBSet, ZConnection;

type
  TWioDetailQFForm = class(TForm)
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
    Action_CF1: TAction;
    Action_CF2: TAction;
    RzToolbarButtonCF1: TRzToolbarButton;
    RzToolbarButtonCF2: TRzToolbarButton;
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
    Label11: TLabel;
    DBText8: TDBText;
    Label21: TLabel;
    DBText11: TDBText;
    Label22: TLabel;
    DBText12: TDBText;
    Image1: TImage;
    Label12: TLabel;
    DBText9: TDBText;
    Label14: TLabel;
    LabelCount: TLabel;
    Label2: TLabel;
    DBText5: TDBText;
    Panel_F9: TPanel;
    Label16: TLabel;
    RadioButtonF92: TRadioButton;
    RadioButtonF93: TRadioButton;
    frxReport1: TfrxReport;
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
    ZQueryF9wisel: TStringField;
    ZQueryF9crtelb: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    Action_F9: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    ZConnection1: TZConnection;
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
    procedure Action_CF1Execute(Sender: TObject);
    procedure Action_CF2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure RadioButtonF92KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButtonF92MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Action_F9Execute(Sender: TObject);
    procedure Action_CAF9Execute(Sender: TObject);
    procedure RadioButtonF93KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButtonF93MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { private declarations }
  public
    { public declarations }
    procedure calquty();
    procedure PrintF9(index: Integer);
  end;

var
  WioDetailQFForm: TWioDetailQFForm;

  widate, crcode, styleno: String;
  wicode, wisno, cpdayn: Integer;
  washpsno: Real;

  OldEditStr: String;
  oldvalue, q_crcode: String;
  HintTop, pcnt, wisnod: Integer;
  fkey,cf: String;
  PayVal, DiscountVal, TotalVal, crmoneyVal: Real;
  
implementation

uses WDModule, LCUtils, GetCam, ShowPic;

{$R *.DFM}

procedure TWioDetailQFForm.PrintF9(index: Integer);
var
  quty: Integer;
  sum, crmoney: Real;
  today: String;
begin
  frxReport1.LoadFromFile(WDM.WPath+'Report\F7QReport.rep');
  Panel_F9.SendToBack;
  if index=2 then
    begin
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQueryF9.SQL.Add('AND wiodate=''''');
    ZQueryF9.SQL.Add('ORDER BY wisno');
    ZQueryF9.Open;
    (frxReport1.FindObject('Memo8')as TfrxMemoView).Text:='未取列印';
    end
  else
    begin
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
    ZQueryF9.SQL.Add('AND wiodate=''''');
    ZQueryF9.SQL.Add('ORDER BY wisno');
    ZQueryF9.Open;
    (frxReport1.FindObject('Memo8')as TfrxMemoView).Text:=ZQuery_wio.FieldByName('wimdate').AsString+'補單';
    end;
  quty:=0;
  sum:=0;
  today:=ChinaDate1(Date);
  ZQueryF9.First;
  crmoney:=ZQueryF9.FieldByName('crmoney').Value;
  while not ZQueryF9.Eof do
    begin
    quty:=quty+ZQueryF9.FieldByName('wiquty').Value;
    sum:=sum+ZQueryF9.FieldByName('wisum').Value;
    ZQueryF9.Next;
    end;
  (frxReport1.FindObject('Memo1')as TfrxMemoView).Text:=IntToStr(quty)+'件';
  (frxReport1.FindObject('Memo2')as TfrxMemoView).Text:=FloatToStr(sum);
  (frxReport1.FindObject('Memo3')as TfrxMemoView).Text:='0';
  (frxReport1.FindObject('Memo4')as TfrxMemoView).Text:='0';
  if crmoney>=0 then
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:='0'
  else
    (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:=FloatToStr(crmoney);
  if index=3 then
    (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:=ZQuery_wio.FieldByName('wicode').AsString
  else
    (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:='未取:'+IntToStr(quty)+'件';
  //frxReport1.ShowReport;
  frxReport1.PrepareReport;
  frxReport1.PrintOptions.ShowDialog := False; //不顯示對話框
  //frxReport1.PrintOptions.Printer := PrinterName; //指定印表機
  frxReport1.Print; //列印
  fkey:='';
  wwDBGrid1.Enabled:=True;
  wwDBGrid1.SetFocus;
end;

procedure TWioDetailQFForm.calquty();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('select sum(wiquty)as tquty from wio');
  ZQuery.SQL.Add('where crcode='''+WDM.crcode+'''');
  ZQuery.SQL.Add('and wiodate=''''');
  if cf='CF2' then
    ZQuery.SQL.Add('and indate<>''''');
    //ZQuery.SQL.Add('and wiplace<>''''');
  ZQuery.SQL.Add('order by wicode desc, wisno desc');
  ZQuery.Open;
  LabelCount.Caption:=IntToStr(ZQuery.FieldByName('tquty').AsInteger);
  ZQuery.Close;
end;

procedure TWioDetailQFForm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure TWioDetailQFForm.Action_ExitExecute(Sender: TObject);
begin
  if fkey='F9' then
    begin
    Panel_F9.SendToBack;
    fkey:='';
    end
  else
    Close;
end;

procedure TWioDetailQFForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(WioDetailQFForm);
  
  WDM.ZQueryCust.Locate('crcode',vararrayof([WDM.crcode]),[]);
  if WDM.ZQueryCust.FieldByName('crmoney').Value<0 then
    DBText4.Font.Color:=ClRed
  else
    DBText4.Font.Color:=ClYellow;

  fkey:='';

  calquty(); //計算件數

  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('select * from wio');
  ZQuery_wio.SQL.Add('where wiodate=''''');
  ZQuery_wio.SQL.Add('and crcode='''+WDM.crcode+'''');
  ZQuery_wio.SQL.Add('order by wicode desc, wisno desc');
  ZQuery_wio.Open;

  RzToolbarButtonCF1.Visible:=True;
  RzToolbarButtonCF2.Visible:=True;
  RzToolbarButtonPU.Visible:=True;
  RzToolbarButtonPD.Visible:=True;
  Panel_F9.Left:=Trunc((Width-Panel_F9.Width)/2);
  Panel_F9.Top:=Trunc((Height-Panel_F9.Height)/2);
  wwDBGrid1.SetFocus;
end;

procedure TWioDetailQFForm.Action_CrtlPExecute(Sender: TObject);
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

procedure TWioDetailQFForm.Image1DblClick(Sender: TObject);
begin
  Action_CrtlPExecute(Self);
end;

procedure TWioDetailQFForm.Image1Click(Sender: TObject);
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

procedure TWioDetailQFForm.Action_PgUpExecute(Sender: TObject);
begin
  if (fkey='') then
    if Not WDM.ZQuery_cr.Bof then
      begin
      WDM.ZQuery_cr.Prior;
      WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
      if WDM.ZQuery_cr.FieldByName('crmoney').Value<0 then
        DBText4.Font.Color:=ClRed
      else
        DBText4.Font.Color:=ClYellow;

      calquty(); //計算件數

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('select * from wio');
      ZQuery_wio.SQL.Add('where crcode='''+WDM.crcode+'''');
      ZQuery_wio.SQL.Add('and wiodate=''''');
      if cf='CF2' then
        ZQuery_wio.SQL.Add('and indate<>''''');
        //ZQuery_wio.SQL.Add('and wiplace<>''''');
      ZQuery_wio.SQL.Add('order by wicode desc, wisno desc');
      ZQuery_wio.Open;

      wwDBGrid1.SetFocus;
      end
    else
      ShowMessage('這是第一筆！');
end;

procedure TWioDetailQFForm.Action_PgDnExecute(Sender: TObject);
begin
  if (fkey='') then
    if Not WDM.ZQuery_cr.Eof then
      begin
      WDM.ZQuery_cr.Next;
      WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').Value;
      if WDM.ZQuery_cr.FieldByName('crmoney').Value<0 then
        DBText4.Font.Color:=ClRed
      else
        DBText4.Font.Color:=ClYellow;

      calquty(); //計算件數

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('select * from wio');
      ZQuery_wio.SQL.Add('where crcode='''+WDM.crcode+'''');
      ZQuery_wio.SQL.Add('and wiodate=''''');
      if cf='CF2' then
        ZQuery_wio.SQL.Add('and indate<>''''');
        //ZQuery_wio.SQL.Add('and wiplace<>''''');
      ZQuery_wio.SQL.Add('order by wicode desc, wisno desc');
      ZQuery_wio.Open;
      wwDBGrid1.SetFocus;
      end
    else
      ShowMessage('這是最後一筆！');
end;

procedure TWioDetailQFForm.Action_CF1Execute(Sender: TObject);
begin
  if (fkey='') then
    begin
    cf:='CF1';
    WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
    calquty(); //計算件數
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQuery_wio.SQL.Add('AND wiodate=''''');
    ZQuery_wio.SQL.Add('order by wicode desc, wisno desc');
    ZQuery_wio.Open;

    wwDBGrid1.SetFocus;
    end;
end;

procedure TWioDetailQFForm.Action_CF2Execute(Sender: TObject);
begin
  if (fkey='') then
    begin
    cf:='CF2';
    WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
    calquty(); //計算件數
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQuery_wio.SQL.Add('AND wiodate=''''');
    //ZQuery_wio.SQL.Add('AND wiplace<>''''');
    ZQuery_wio.SQL.Add('AND indate<>''''');
    ZQuery_wio.SQL.Add('order by wicode desc, wisno desc');
    ZQuery_wio.Open;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TWioDetailQFForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;
  Panel_F9.SendToBack;
  wwDBGrid1.BringToFront;

  cf:='CF1';

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='DetailQF7'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
end;

procedure TWioDetailQFForm.wwDBGrid1RowChanged(Sender: TObject);
var
  picname: String;
begin
  if fkey='' then
    begin
    if ZQuery_wio.FieldByName('picture').AsString<>'' then
      begin
      picname:=WDM.WPath+'Captures\'+ZQuery_wio.FieldByName('picture').AsString;
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
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end; 
    end;
end;

procedure TWioDetailQFForm.RadioButtonF92KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    PrintF9(2);
    end;
end;

procedure TWioDetailQFForm.RadioButtonF92MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PrintF9(2);
end;

procedure TWioDetailQFForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    Panel_F9.BringToFront;
    RadioButtonF92.SetFocus;
    wwDBGrid1.Enabled:=False;
    end;
end;

procedure TWioDetailQFForm.Action_CAF9Execute(Sender: TObject);
begin
  frxReport1.LoadFromFile(WDM.WPath+'Report\F7QReport.rep');
  frxReport1.DesignReport;
end;

procedure TWioDetailQFForm.RadioButtonF93KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    PrintF9(3);
    end;
end;

procedure TWioDetailQFForm.RadioButtonF93MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PrintF9(3);
end;

end.
