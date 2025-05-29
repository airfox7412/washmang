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
    Action_CrtF9: TAction;
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
    ZQueryF9crtelb: TStringField;
    ZQueryF9crmoney1: TFloatField;
    ZQueryF9cvip: TStringField;
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
    procedure Action_CrtF9Execute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure calquty(code: String);
    procedure PrintF9();
    procedure SP300(flag: Boolean);
    procedure TT027_50(flag: Boolean);
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

procedure openport(PrinterName:pchar);stdcall;far; external 'tsclib.dll';
procedure closeport; external 'tsclib.dll';
procedure sendcommand(Command:pchar);stdcall;far;external 'tsclib.dll';
procedure setup(LabelWidth, LabelHeight, Speed, Density, Sensor, Vertical, Offset:pchar);stdcall; far; external 'tsclib.dll';
procedure downloadpcx(Filename,ImageName:pchar);stdcall;far;external 'tsclib.dll';
procedure barcode(X, Y, CodeType, Height, Readable, Rotation, Narrow, Wide, Code :pchar); stdcall; far; external 'tsclib.dll';
procedure printerfont(X, Y, FontName, Rotation, Xmul, Ymul, Content:pchar);stdcall;far; external 'tsclib.dll';
procedure clearbuffer; external 'tsclib.dll';
procedure printlabel(NumberOfSet, NumberOfCopoy:pchar);stdcall; far;external 'tsclib.dll';
procedure formfeed;external 'tsclib.dll';
procedure nobackfeed; external 'tsclib.dll';
procedure windowsfont (X, Y, FontHeight, Rotation, FontStyle, FontUnderline : integer; FaceName, TextContect:pchar);stdcall;far;external 'tsclib.dll';

procedure THistory3Form.SP300(flag: Boolean);
var
  F: TextFile;
  i, j, k, rno: Integer;
begin
  if flag then
    begin
    AssignFile(F, 'LPT2');// LPT2,COM1,COM2...
    Rewrite(F);
    Write(F, #14); // 字型擴展
    Write(F, #27+'0'); // Set 1/8-inch line feed
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio');
    ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
    ZQueryF9.SQL.Add('ORDER BY wicode,wisno');
    ZQueryF9.Open;
    ZQueryF9.First;
    i:=0;
    rno:=0;
    while not ZQueryF9.Eof do
      begin
      rno:=rno+ZQueryF9.FieldByName('wiquty').AsInteger;
      ZQueryF9.Next;
      end;
    ZQueryF9.First;
    while not ZQueryF9.Eof do
      begin
      for j:=1 to ZQueryF9.FieldByName('wiquty').AsInteger do
        begin
        i:=i+1;
        Writeln(F, ZQueryF9.FieldByName('wicode').AsString+'-'+IntToStr(i)+'-'+ZQueryF9.FieldByName('widate').AsString);
        Writeln(F, Copy(ZQueryF9.FieldByName('wiwash').AsString,1,2)+' '+IntToStr(rno)+ZQueryF9.FieldByName('crname').AsString+' '+ZQueryF9.FieldByName('winame').AsString);//+' '+ZQueryF9.FieldByName('wiitem').AsString);
        Write(F, #27+'a'+chr(5));
        Write(F, #27+'d0'); //切刀
        Write(F, #27+'j'+chr(52)); //Feed paper n lines n/72 inch.
        end;
      k:=1;
      if Pos('2',ZQueryF9.FieldByName('winame').AsString)<>0 then
        k:=2;
      if Pos('3',ZQueryF9.FieldByName('winame').AsString)<>0 then
        k:=3;
      if k<>1 then
        for j:=2 to k do
          begin
          i:=i+1;
          Writeln(F, ZQueryF9.FieldByName('wicode').AsString+'-'+IntToStr(i)+'-'+ZQueryF9.FieldByName('widate').AsString);
          Writeln(F, Copy(ZQueryF9.FieldByName('wiwash').AsString,1,2)+' '+IntToStr(rno)+ZQueryF9.FieldByName('crname').AsString+' '+ZQueryF9.FieldByName('winame').AsString);//+' '+ZQueryF9.FieldByName('wiitem').AsString);
          Write(F, #27+'a'+chr(5));
          Write(F, #27+'d0'); //切刀
          Write(F, #27+'j'+chr(52)); //Feed paper n lines n/72 inch.
          end;
      ZQueryF9.Next;
      end;
    ZQueryF9.Close;
    CloseFile(F);
  end;
end;

procedure THistory3Form.TT027_50(flag: Boolean);
var
  i, j, k, c, rno: Integer;
  ret,nLen,sw : integer;
  pbuf : array[0..127] of AnsiChar;

  ver : PAnsiChar;
  strmsg : string;
  len1,len2 : integer;
  buf1,buf2 : AnsiString;
  buff1 : array[0..127] of WideChar;
  himage : HBITMAP;
  line1, line2, line3, line3_pos : string;
  str0, str1, str2, str3, str4, str5: TStringList;
begin
  if flag then
    begin
    openport('USB');
    if WDM.LINE4.Value='' then
      setup('100', '12', '2.0', '3', '0', '0', '0')
    else
      setup('100', '10', '2.0', '3', '0', '0', '0');
    //寬度,高度,速度,濃度,感應類型,垂直間距,偏移距離
    sendcommand('DIRECTION 1');
    ZQueryF9.Open;
    i:=0;
    rno:=0;
    while not ZQueryF9.Eof do
      begin
      rno:=rno+ZQueryF9.FieldByName('wiquty').AsInteger;
      ZQueryF9.Next;
      end;
    ZQueryF9.First;
    while not ZQueryF9.Eof do
      begin
      str0:=TStringList.Create;
      str0:=TokenStr(',',WDM.POS.Value);

      if WDM.LINE3.Value<>'' then
        begin
        str3:=TStringList.Create;
        str3:=TokenStr('/',WDM.LINE3.Value);
        line3_pos:=str3[0];
        line3:=str3[1]+ZQueryF9.FieldByName(str3[2]).AsString;
        end;
      if WDM.LINE4.Value<>'' then
        begin
        str4:=TStringList.Create;
        str4:=TokenStr(',',WDM.LINE4.Value);
        end;
      if WDM.LINE5.Value<>'' then
        begin
        str5:=TStringList.Create;
        str5:=TokenStr(',',WDM.LINE5.Value);
        end;
        
      str1:=TStringList.Create;
      str1:=TokenStr('/',WDM.LINE1.Value);
      for c:=0 to str1.Count-1 do
        begin
        if (c=0) then
          line1:=ZQueryF9.FieldByName(str1[c]).AsString
        else if (str1[c]='count') then
          line1:=line1+'-'+IntToStr(i)
        else
          line1:=line1+'-'+ZQueryF9.FieldByName(str1[c]).AsString;
        end;

      str2:=TokenStr('/',WDM.LINE2.Value);
      for c:=0 to str2.Count-1 do
        begin
        if (c=0) then
          line2:=ZQueryF9.FieldByName(str2[c]).AsString
        else if (str2[c]='amount') then
          line2:=line2+' '+IntToStr(i)
        else
          line2:=line2+' '+ZQueryF9.FieldByName(str2[c]).AsString;
        end;
      for j:=1 to ZQueryF9.FieldByName('wiquty').AsInteger do
        begin
        i:=i+1;
        clearbuffer;
        //X,Y,高度,旋轉,粗體,無底線,字體,文字內容
        windowsfont(strtoint(str0[0]), strtoint(str0[1]), strtoint(str0[2]), 0, 2, 0, 'Arial', pchar(line1));
        windowsfont(strtoint(str0[3]), strtoint(str0[4]), strtoint(str0[5]), 0, 2, 0, '標楷體', pchar(line2));
        //barcode('10','0','EAN13','80','1','0',"2",'4','123456789012');
        if str3.count=3 then
          barcode(pchar(line3_pos), '1', '39', '92', '0', '0', '2', '4', pchar(WDM.LINE6.Value+line3));
        if str4.count=4 then
          windowsfont(strtoint(str4[0]), strtoint(str4[1]), strtoint(str4[2]), 0, 2, 0, 'Arial', pchar(ZQueryF9.FieldByName(str4[3]).AsString));
        if str5.count=4 then
          windowsfont(strtoint(str5[0]), strtoint(str5[1]), strtoint(str5[2]), 0, 2, 0, 'Arial', pchar(str5[3]));
        printlabel('1', '1'); //開始印
        end;
      k:=1;
      if Pos('2',ZQueryF9.FieldByName('winame').AsString)<>0 then
        k:=2;
      if Pos('3',ZQueryF9.FieldByName('winame').AsString)<>0 then
        k:=3;
      if k<>1 then
        for j:=2 to k do
          begin
          i:=i+1;
          clearbuffer;
          windowsfont(strtoint(str0[0]), strtoint(str0[1]), strtoint(str0[2]), 0, 2, 0, 'Arial', pchar(line1));
          windowsfont(strtoint(str0[3]), strtoint(str0[4]), strtoint(str0[5]), 0, 2, 0, '標楷體', pchar(line2));
          if str3.count=3 then
            barcode(pchar(line3_pos), '1', '39', '92', '0', '0', '2', '4', pchar(WDM.LINE6.Value+line3));
          if str4.count=4 then
            windowsfont(strtoint(str4[0]), strtoint(str4[1]), strtoint(str4[2]), 0, 2, 0, 'Arial', pchar(ZQueryF9.FieldByName(str4[3]).AsString));
          printlabel('1', '1'); //開始印
          end;
      ZQueryF9.Next;
      end;
    ZQueryF9.Close;
    closeport;
  end;
end;

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
  ZConnection1.HostName:=WDM.hostname.Value;
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

procedure THistory3Form.Action_CrtF9Execute(Sender: TObject);
begin           
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio');
  ZQueryF9.SQL.Add('WHERE wicode='''+ZQuery_wio.FieldByName('wicode').AsString+'''');
  ZQueryF9.SQL.Add('AND widate='''+ZQuery_wio.FieldByName('widate').AsString+'''');
  ZQueryF9.SQL.Add('ORDER BY wisno');
  ZQueryF9.Open;
  //選擇標籤機型號
  if WDM.pkind.Value='SP300' then
    begin
    SP300(True);
    TT027_50(False);
    end
  else if WDM.pkind.Value='TT027_50' then
    begin
    SP300(False);
    TT027_50(True);
    end
end;

end.
