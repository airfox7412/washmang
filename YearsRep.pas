unit YearsRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxClass, frxDBSet, Db, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ActnList, Buttons, RzButton, RzPanel, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, Wwdatsrc, ComCtrls, StdCtrls, Mask, DBCtrls, RzEdit,
  RzSpnEdt;

type
  TYearRepForm = class(TForm)
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    ActionList1: TActionList;
    ActionF1: TAction;
    ZConnection1: TZConnection;
    wwDSYears: TwwDataSource;
    ActionESC: TAction;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    PanelProcess: TPanel;
    Label7: TLabel;
    Label13: TLabel;
    RzPanelBrowse: TRzPanel;
    ActionF9: TAction;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    ZQuery_Monthly: TZQuery;
    wwDSMonthly: TwwDataSource;
    ZQuery_Years: TZQuery;
    ZQuery_Monthlywidate: TStringField;
    ZQuery_Monthlym1: TFloatField;
    ZQuery_Monthlym2: TFloatField;
    ZQuery_Monthlym3: TFloatField;
    ZQuery_Monthlym4: TFloatField;
    ZQuery_Monthlym5: TFloatField;
    ZQuery_Monthlym6: TFloatField;
    ZQuery_Monthlym7: TIntegerField;
    ZQuery_Monthlym8: TIntegerField;
    ZQuery_Monthlym9: TIntegerField;
    ZQuery_Monthlym10: TIntegerField;
    ZQuery_Monthlym11: TFloatField;
    ZQuery_Monthlywiweek: TStringField;
    ZQuery_Monthlywiday: TStringField;
    ZQuery_Yearsmonth: TIntegerField;
    ZQuery_Yearswashtotal: TFloatField;
    ZQuery_Yearscashtotal: TFloatField;
    ZQuery_wo: TZQuery;
    ZQuery_wio: TZQuery;
    EditYear: TEdit;
    RzToolbarButtonF9: TRzToolbarButton;
    DisplayMoney: TLabel;
    frxReportF92: TfrxReport;
    ZQueryF9: TZQuery;
    frxDBDS_Wo: TfrxDBDataset;
    ZQueryF9wiosn: TLargeintField;
    ZQueryF9crcode: TStringField;
    ZQueryF9wicode: TStringField;
    ZQueryF9wisno: TStringField;
    ZQueryF9wototal: TFloatField;
    ZQueryF9woptotal: TFloatField;
    ZQueryF9worealmo: TFloatField;
    ZQueryF9frgetmo: TFloatField;
    ZQueryF9wocntmo: TFloatField;
    ZQueryF9wopsen: TFloatField;
    ZQueryF9widate: TStringField;
    ZQueryF9witime: TStringField;
    ZQueryF9sfname: TStringField;
    ZQueryF9fritem: TStringField;
    ZQueryF9crname: TStringField;
    frxDBDS_Compy: TfrxDBDataset;
    frxDBDS_cr: TfrxDBDataset;
    ZQueryF9Kind: TStringField;
    frxReportF91: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ZQueryF91: TZQuery;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    ZQuery_stbwio: TZQuery;
    procedure ActionESCExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionF1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ZQuery_MonthlyCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure EditYearKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF9Execute(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure ZQueryF9CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintF9();
    procedure CalYear();
    procedure ProcessMonth(YearMonth: String);
  end;

var
  YearRepForm: TYearRepForm;
  fkey: String;
  smflag: Boolean;
  myYear, myMonth, myDay : Word;
  tsum, trealmo: Real;

implementation

uses WDModule, lcutils, PPreview, QueryCust;

{$R *.DFM}

procedure TYearRepForm.PrintF9();
var
  ystr, mstr, dstr, sidate, eidate: String;
begin
  if wwDbGrid1.Focused then
    begin
    try
      ZQueryF91.Close;
      ZQueryF91.Open;
      PreviewForm := TPreviewForm.Create(Application);
      (frxReportF91.FindObject('Memo4')as TfrxMemoView).Text:='☆☆☆'+EditYear.Text+'年度月份報表☆☆☆';
      (frxReportF91.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
      frxReportF91.preview:=PreviewForm.frxPreview1;
      frxReportF91.ShowReport; //螢幕預覽
      PreviewForm.ShowModal; //自訂預覽視窗
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end;
  if wwDbGrid2.Focused then
    begin
    ystr:=StrZero(StrToInt(EditYear.Text),3);
    mstr:=StrZero(StrToInt(wwDBGrid1.DataSource.DataSet.FieldByName('month').AsString),2);
    dstr:=wwDBGrid2.DataSource.DataSet.FieldByName('widay').AsString;
    sidate:=ystr+'/'+mstr+'/'+dstr;
    try
      ZQueryF9.Close;
      ZQueryF9.SQL.Clear;
      ZQueryF9.SQL.Add('SELECT * FROM wo');
      ZQueryF9.SQL.Add('WHERE widate='''+sidate+'''');
      ZQueryF9.SQL.Add('AND fritem in (''V'',''I'',''O'',''Q'')');
      ZQueryF9.SQL.Add('AND worealmo<>0');
      ZQueryF9.SQL.Add('ORDER BY widate,witime');
      ZQueryF9.Open;
      PreviewForm := TPreviewForm.Create(Application);
      (frxReportF92.FindObject('MemoDate')as TfrxMemoView).Text:=ChinaDate1(Date);
      frxReportF92.preview:=PreviewForm.frxPreview1;
      frxReportF92.ShowReport; //螢幕預覽
      PreviewForm.ShowModal; //自訂預覽視窗
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end;
end;

procedure TYearRepForm.CalYear();
var
  widate, widStr: String;
  i, mday: Integer;
  washtotal, cashtotal: Real;
begin
  widStr:=StrZero(StrToInt(EditYear.Text),3);
  tsum:=0;
  trealmo:=0;
  for i:=1 to 12 do
    begin
    widate:=widStr+'/'+StrZero(i,2);
    mday:=GetMonthDay(StrToDate(widate+'/01'));
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT sum(wisum-wiexmo)as tsum FROM wio');
    ZQuery_wio.SQL.Add('WHERE widate BETWEEN '''+widate+'/01'' AND '''+widate+'/'+StrZero(mday,2)+'''');
    ZQuery_wio.Open;
    washtotal:=0;
    if not ZQuery_wio.Eof then
      washtotal:=ZQuery_wio.FieldByName('tsum').AsFloat;    //衣物實收額
    ZQuery_wio.Close;
    
    ZQuery_stbwio.Close;
    ZQuery_stbwio.SQL.Clear;
    ZQuery_stbwio.SQL.Add('SELECT sum(wisum-wiexmo)as tsum FROM stbwio');
    ZQuery_stbwio.SQL.Add('WHERE widate BETWEEN '''+widate+'/01'' AND '''+widate+'/'+StrZero(mday,2)+'''');
    ZQuery_stbwio.Open;
    if not ZQuery_stbwio.Eof then
      washtotal:=washtotal+ZQuery_stbwio.FieldByName('tsum').AsFloat;    //歷史衣物實收額
    ZQuery_stbwio.Close;

    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo FROM wo');
    ZQuery_wo.SQL.Add('WHERE fritem in (''V'',''W'',''X'',''I'',''E'',''Q'',''O'')');
    ZQuery_wo.SQL.Add('AND widate BETWEEN '''+widate+'/01'' AND '''+widate+'/'+StrZero(mday,2)+'''');
    ZQuery_wo.Open;
    if not ZQuery_wo.Eof then
      cashtotal:=ZQuery_wo.FieldByName('trealmo').AsFloat; //現金實收額
    ZQuery_wo.Close;

    wwDBGrid1.DataSource.DataSet.DisableControls;
    if ZQuery_Years.Locate('month',vararrayof([i]),[]) then
      begin
      ZQuery_Years.Edit;
      ZQuery_Years.FieldByName('washtotal').AsInteger:=Round(washtotal);
      ZQuery_Years.FieldByName('cashtotal').AsInteger:=Round(cashtotal);
      ZQuery_Years.Post;
      end;
    DisplayMoney.Caption:='';
    tsum:=tsum+Round(washtotal);
    trealmo:=trealmo+Round(cashtotal);
    wwDBGrid1.DataSource.DataSet.EnableControls;
    end;
  ZQuery_Years.Close;
  ZQuery_Years.Open;
end;

procedure TYearRepForm.ProcessMonth(YearMonth: String);
var
  widate: TDateTime;
  widStr: String;
  i, mday: Integer;
  m1, m2, m3, m4, m5, m6, m7, m8, m9: Real;
  m10, m11: Integer;
begin
  widate:=StrToDate(YearMonth+'/01');
  mday:=GetMonthDay(widate);
  try
    ZQuery_Monthly.Close;
    ZQuery_Monthly.SQL.Clear;
    ZQuery_Monthly.SQL.Add('DELETE FROM monthly');
    ZQuery_Monthly.ExecSQL;

    for i:=1 to mday do
      begin
      Application.ProcessMessages;
      widStr:=YearMonth+'/'+StrZero(i,2);
      m1:=0; m2:=0; m3:=0; m4:=0; m5:=0;
      m6:=0; m7:=0; m8:=0; m9:=0; m10:=0; m11:=0;
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo,sum(wocntmo)as tcntmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE BINARY fritem in (''V'',''W'',''X'')'); //20150206 'x'
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      m1:=ZQuery_wo.FieldByName('trealmo').AsFloat; //VIP實收額
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(worealmo)as trealmo,sum(wocntmo)as tcntmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE BINARY fritem in (''x'',''I'',''E'',''Q'',''O'')'); //20150206增加'X'
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      m2:=ZQuery_wo.FieldByName('trealmo').AsFloat; //現金實收額
      m3:=ZQuery_wo.FieldByName('tcntmo').AsFloat;  //現金折讓額
      ZQuery_wo.Close;
      {ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT sum(frgetmo)as tgetmo FROM wo');
      ZQuery_wo.SQL.Add('WHERE fritem in (''P'',''G'')');
      ZQuery_wo.SQL.Add('AND widate='''+widStr+'''');
      ZQuery_wo.Open;
      ZQuery_wo.Close;}

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wisum)as tsum FROM wio');
      ZQuery_wio.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio.Open;
      m4:=Round(ZQuery_wio.FieldByName('tsum').AsFloat); //衣物取件額

      ZQuery_stbwio.Close;
      ZQuery_stbwio.SQL.Clear;
      ZQuery_stbwio.SQL.Add('SELECT sum(wisum)as tsum FROM stbwio');
      ZQuery_stbwio.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_stbwio.Open;
      m4:=m4+Round(ZQuery_stbwio.FieldByName('tsum').AsFloat); //歷史衣物取件額

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wiwamo*wiquty)as twamo, sum(wiquty)as tquty, sum(wisum)as tsum, sum(wiexmo)as texmo FROM wio');
      ZQuery_wio.SQL.Add('WHERE widate='''+widStr+'''');
      ZQuery_wio.Open;
      m9:=Round(ZQuery_wio.FieldByName('texmo').AsFloat);   //衣物加工額
      m5:=Round(ZQuery_wio.FieldByName('twamo').AsFloat);   //衣物設定額
      m6:=Round(ZQuery_wio.FieldByName('tsum').AsFloat); //衣物實際額
      //m7:=m5-m6;                                     //衣物折扣額
      m8:=ZQuery_wio.FieldByName('tquty').AsInteger; //衣物總件數
      ZQuery_wio.Close;

      ZQuery_stbwio.Close;
      ZQuery_stbwio.SQL.Clear;
      ZQuery_stbwio.SQL.Add('SELECT sum(wiwamo*wiquty)as twamo, sum(wiquty)as tquty, sum(wisum)as tsum, sum(wiexmo)as texmo FROM stbwio');
      ZQuery_stbwio.SQL.Add('WHERE widate='''+widStr+'''');
      ZQuery_stbwio.Open;
      m9:=m9+Round(ZQuery_stbwio.FieldByName('texmo').AsFloat);   //歷史衣物加工額
      m5:=m5+Round(ZQuery_stbwio.FieldByName('twamo').AsFloat);   //歷史衣物設定額
      m6:=m6+Round(ZQuery_stbwio.FieldByName('tsum').AsFloat)-m9; //歷史衣物實際額
      m7:=m5-m6;                                     //歷史衣物折扣額
      m8:=m8+ZQuery_stbwio.FieldByName('tquty').AsInteger; //歷史衣物總件數
      ZQuery_stbwio.Close;

      {ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wiquty)as tquty FROM wio');
      ZQuery_wio.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio.SQL.Add('AND wiwash=''水洗''');
      ZQuery_wio.Open;
      m10:=ZQuery_wio.FieldByName('tquty').AsInteger;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wiquty)as tquty FROM wio');
      ZQuery_wio.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio.SQL.Add('AND wiwash=''乾洗''');
      ZQuery_wio.Open;
      m11:=ZQuery_wio.FieldByName('tquty').AsInteger;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT sum(wiquty)as tquty FROM wio');
      ZQuery_wio.SQL.Add('WHERE wiodate='''+widStr+'''');
      ZQuery_wio.SQL.Add('AND wiwash=''整燙''');
      ZQuery_wio.Open;
      m11:=ZQuery_wio.FieldByName('tquty').AsInteger;
      ZQuery_wio.Close;}

      //新增至每日日期統計
      ZQuery_Monthly.Close;
      ZQuery_Monthly.SQL.Clear;
      ZQuery_Monthly.SQL.Add('INSERT INTO monthly');
      ZQuery_Monthly.SQL.Add('(widate,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11) VALUE(');
      ZQuery_Monthly.SQL.Add(''''+widStr+''',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m1)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m2)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m3)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m4)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m5)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m6)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m7)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m8)+',');
      ZQuery_Monthly.SQL.Add(FloatToStr(m9)+',');
      ZQuery_Monthly.SQL.Add(IntToStr(m10)+',');
      ZQuery_Monthly.SQL.Add(IntToStr(m11)+')');
      ZQuery_Monthly.ExecSQL;
      end;
    // 顯示報表開始
    ZQuery_Monthly.Close;
    ZQuery_Monthly.SQL.Clear;
    ZQuery_Monthly.SQL.Add('SELECT * FROM monthly');
    ZQuery_Monthly.SQL.Add('ORDER BY widate');
    ZQuery_Monthly.Open;
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TYearRepForm.ActionESCExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    end
  else if fkey='F9' then
    begin
    fkey:='';
    end
  else
    Close;
end;

procedure TYearRepForm.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  smflag:=True;

  RzPanelBrowse.BringToFront;
  //PanelDateSet.SendToBack;
  //PanelWicode.SendToBack;
  //PanelDelete.SendToBack;;

  ZQuery_Years.Open;
  if ZQuery_Years.Eof then //若無資料則新增
    for i:=1 to 12 do
      begin
      ZQuery_Years.Append;
      ZQuery_Years.FieldByName('month').Value:=i;
      ZQuery_Years.Post;
      end;
  ZQuery_Monthly.Open;

  DecodeDate(Date, myYear, myMonth, myDay);
  EditYear.Text:=IntToStr(myYear-1911);
end;

procedure TYearRepForm.ActionF1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    //fkey:='F1';
    EditYear.SetFocus;
    end;
end;

procedure TYearRepForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(YearRepForm);
  fkey:='';

  PanelProcess.Left:=Trunc((Width-PanelProcess.Width)/2);
  PanelProcess.Top:=Trunc((Height-PanelProcess.Height)/2);
  
  smflag:=False;
  CalYear();
  smflag:=True;
  wwDBGrid1.SetFocus;
  ZQuery_Years.Locate('month',vararrayof([myMonth]),[]);
end;

procedure TYearRepForm.ZQuery_MonthlyCalcFields(DataSet: TDataSet);
var
  myDate: TDateTime;
  mydstr: String;
  myyear, mymonth, myday: Word;
begin
  mydstr:=StringReplace(ZQuery_Monthlywidate.AsString,'/','',[rfReplaceAll,rfIgnoreCase]);
  myDate:=DateNum(mydstr);
  ZQuery_Monthlywiweek.AsString:=NumToChinaWeek(DayOfWeek(myDate)-1);
  ZQuery_Monthlywiday.AsString:=Copy(ZQuery_Monthlywidate.AsString,8,2)
end;

procedure TYearRepForm.wwDBGrid1RowChanged(Sender: TObject);
var
  myear,mmonth: String;
begin
  if smflag then
    begin
    smflag:=False;
    wwDBGrid1.Enabled:=False;
    PanelProcess.BringToFront;
    myear:=StrZero(StrToInt(EditYear.Text),3);
    mmonth:=StrZero(StrToInt(ZQuery_Years.FieldByName('month').AsString),2);
    ProcessMonth(myear+'/'+mmonth);
    PanelProcess.SendToBack;
    smflag:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TYearRepForm.EditYearKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    smflag:=False;
    CalYear();
    smflag:=True;
    wwDBGrid1.SetFocus;
    ZQuery_Years.Last;
    end;
end;

procedure TYearRepForm.ActionF9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    PrintF9();
    fkey:=''
    end;
end;

procedure TYearRepForm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  wwDBGrid1.ColumnByName('washtotal').FooterValue:=FloatToStr(tsum);
  wwDBGrid1.ColumnByName('cashtotal').FooterValue:=FloatToStr(trealmo);
end;

procedure TYearRepForm.ZQueryF9CalcFields(DataSet: TDataSet);
begin
  if ZQueryF9.FieldByName('fritem').AsString='I' then
    begin
    if (ZQueryF9.FieldByName('worealmo').Value=0) then
      if (ZQueryF9.FieldByName('wocntmo').Value=0) then
        ZQueryF9.FieldByName('Kind').AsString:='收件'
      else
        ZQueryF9.FieldByName('Kind').AsString:='收-折讓'
    else
      ZQueryF9.FieldByName('Kind').AsString:='收件收款';
    end
  else if ZQueryF9.FieldByName('fritem').AsString='O' then
    begin
    if (ZQueryF9.FieldByName('worealmo').Value=0) then
      if (ZQueryF9.FieldByName('wocntmo').Value=0) then
        ZQueryF9.FieldByName('Kind').AsString:='取件'
      else
        ZQueryF9.FieldByName('Kind').AsString:='取-折讓'
    else
      ZQueryF9.FieldByName('Kind').AsString:='取件收款';
    end
  else if ZQueryF9.FieldByName('fritem').AsString='A' then
    ZQueryF9.FieldByName('Kind').AsString:='收件修改'
  else if ZQueryF9.FieldByName('fritem').AsString='B' then
    ZQueryF9.FieldByName('Kind').AsString:='取件修改'
  else if ZQueryF9.FieldByName('fritem').AsString='Q' then
    ZQueryF9.FieldByName('Kind').AsString:='預收款'
  else if ZQueryF9.FieldByName('fritem').AsString='R' then
    ZQueryF9.FieldByName('Kind').AsString:='無單收款'
  else if ZQueryF9.FieldByName('fritem').AsString='V' then
    ZQueryF9.FieldByName('Kind').AsString:='VIP收款'
  else if ZQueryF9.FieldByName('fritem').AsString='W' then
    ZQueryF9.FieldByName('Kind').AsString:='VIP修改'
  else if ZQueryF9.FieldByName('fritem').AsString='X' then
    ZQueryF9.FieldByName('Kind').AsString:='VIP刪除'
  else if ZQueryF9.FieldByName('fritem').AsString='Z' then
    ZQueryF9.FieldByName('Kind').AsString:='修改客額'
  else if ZQueryF9.FieldByName('fritem').AsString='E' then
    ZQueryF9.FieldByName('Kind').AsString:='明細修改'
  else if ZQueryF9.FieldByName('fritem').AsString='D' then
    ZQueryF9.FieldByName('Kind').AsString:='明細刪除'
  else if ZQueryF9.FieldByName('fritem').AsString='P' then
    ZQueryF9.FieldByName('Kind').AsString:='收件加工'
  else if ZQueryF9.FieldByName('fritem').AsString='G' then
    ZQueryF9.FieldByName('Kind').AsString:='取件加工'
  else
    ZQueryF9.FieldByName('Kind').AsString:='無類別'
end;

end.
