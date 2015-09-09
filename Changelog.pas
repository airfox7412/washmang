unit Changelog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ComCtrls, ExtCtrls, ActnList,
  Mask, Buttons, RzButton, RzPanel, RzTabs, Wwdatsrc, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection;

type
  TChangelogForm = class(TForm)
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
    RzPageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    wwDBGrid2: TwwDBGrid;
    ZConnection1: TZConnection;
    ZQuery_wo: TZQuery;
    ZQuery_wowidate: TStringField;
    ZQuery_wowicode: TStringField;
    ZQuery_wowisno: TStringField;
    ZQuery_wowoptotal: TFloatField;
    ZQuery_wofrgetmo: TFloatField;
    ZQuery_woworealmo: TFloatField;
    ZQuery_wowocntmo: TFloatField;
    ZQuery_wowopsen: TFloatField;
    ZQuery_wowototal: TFloatField;
    ZQuery_woKind: TStringField;
    ZQuery_wosfname: TStringField;
    ZQuery_wowitime: TStringField;
    ZQuery_wocrcode: TStringField;
    ZQuery_wocrname: TStringField;
    ZQuery_wofritem: TStringField;
    ZQuery_wowiosn: TLargeintField;
    wwDS_wio: TwwDataSource;
    ZQuery_wiochange: TZQuery;
    DS_wiochange: TwwDataSource;
    ZQuery_wiochangewiosn: TLargeintField;
    ZQuery_wiochangecrcode: TStringField;
    ZQuery_wiochangewicode: TStringField;
    ZQuery_wiochangewisno: TStringField;
    ZQuery_wiochangeorgmoney: TFloatField;
    ZQuery_wiochangenewmoney: TFloatField;
    ZQuery_wiochangechgdate: TStringField;
    ZQuery_wiochangechgtime: TStringField;
    ZQuery_wiochangenote: TStringField;
    ZQuery_wiochangesfname: TStringField;
    ZQuery_wiochangechgmoney: TFloatField;
    ZQuery_wodiffmoney: TFloatField;
    TabSheet3: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    ZQuery_wiochangecrname: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_EscExecute(Sender: TObject);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure ZQuery_wiochangeCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ZQuery_woCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangelogForm: TChangelogForm;
  fkey: String;
  wiosn: Integer;

implementation

{$R *.DFM}

uses WDModule, LCUtils;

procedure TChangelogForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  PanelDateSet.SendToBack;

  MaskEditDate1.Text:=ChinaDate1(date);
  ZQuery_wo.Close;
  ZQuery_wo.SQL.Clear;
  ZQuery_wo.SQL.Add('SELECT * FROM wo');
  ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
  ZQuery_wo.Open;
end;

procedure TChangelogForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName='chgmoney' then
     if Field.Value>=0 then
       AFont.Color:=clYellow
     else
       AFont.Color:=clRed;
end;

procedure TChangelogForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    end
  else if (fkey='dc')and(RzPageControl1.ActivePageIndex=0) then
    begin
    fkey:='';
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT * FROM wo');
    ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
    ZQuery_wo.Open;
    ZQuery_wo.Locate('wiosn',vararrayof([wiosn]),[]);
    wwDBGrid2.SetFocus;
    RzToolbarButtonEsc.Caption:='Esc.離開';
    end
  else
    Close;
end;

procedure TChangelogForm.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  getdate: String;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    getdate:=MaskEditDate1.Text;
    if RzPageControl1.ActivePageIndex=0 then
      begin
      if not ZQuery_wo.Locate('widate',vararrayof([getdate]),[]) then
        begin
        ShowMessage('無此日期資料！');
        MaskEditDate1.SetFocus;
        end
      else
        begin
        PanelDateSet.SendToBack;
        fkey:='';
        end;
      wwDBGrid2.SetFocus;
      end
    else
      begin
      if not ZQuery_wiochange.Locate('chgdate',vararrayof([getdate]),[]) then
        begin
        ShowMessage('無此日期資料！');
        MaskEditDate1.SetFocus;
        end
      else
        begin
        PanelDateSet.SendToBack;
        fkey:='';
        end;
      wwDBGrid1.SetFocus;
      end;
    end;
end;

procedure TChangelogForm.Action_F1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    PanelDateSet.BringToFront;
    MaskEditDate1.SetFocus;
    end;
end;

procedure TChangelogForm.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePageIndex=0 then
    begin
    fkey:='';
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT * FROM wo');
    ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
    ZQuery_wo.Open;
    wwDBGrid2.SetFocus;
    end;
  if RzPageControl1.ActivePageIndex=1 then
    begin
    ZQuery_wiochange.Close;
    ZQuery_wiochange.SQL.Clear;
    ZQuery_wiochange.SQL.Add('SELECT * FROM wio_change');
    ZQuery_wiochange.SQL.Add('ORDER BY chgdate DESC,chgtime DESC');
    ZQuery_wiochange.Open;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TChangelogForm.ZQuery_wiochangeCalcFields(DataSet: TDataSet);
begin
  //ZQuery_wiochange.FieldByName('chgmoney').Value:=-(ZQuery_wiochange.FieldByName('newmoney').Value-ZQuery_wiochange.FieldByName('orgmoney').Value);
end;

procedure TChangelogForm.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName='crcode' then
    AFont.Color:=clYellow ;
  if (Field.FieldName='wototal')or(Field.FieldName='woptotal') then
     begin
     if Field.Value>=0 then
       AFont.Color:=clYellow
     else
       AFont.Color:=clRed;
     if Highlight then
       AFont.Color:=clWhite;
     end;
end;

procedure TChangelogForm.ZQuery_woCalcFields(DataSet: TDataSet);
begin
  if ZQuery_wowoptotal.Value<=0 then
    ZQuery_wodiffmoney.Value:=-(ZQuery_wowototal.Value-ZQuery_wowoptotal.Value)
  else
    ZQuery_wodiffmoney.Value:=(ZQuery_wowototal.Value-ZQuery_wowoptotal.Value);
  if ZQuery_wo.FieldByName('fritem').AsString='I' then
    begin
    if (ZQuery_wo.FieldByName('worealmo').Value=0) then
      if (ZQuery_wo.FieldByName('wocntmo').Value=0) then
        ZQuery_wo.FieldByName('Kind').AsString:='收件'
      else
        ZQuery_wo.FieldByName('Kind').AsString:='收-折讓'
    else
      ZQuery_wo.FieldByName('Kind').AsString:='收件收款';
    end
  else if ZQuery_wo.FieldByName('fritem').AsString='O' then
    begin
    if (ZQuery_wo.FieldByName('worealmo').Value=0) then
      if (ZQuery_wo.FieldByName('wocntmo').Value=0) then
        ZQuery_wo.FieldByName('Kind').AsString:='取件'
      else
        ZQuery_wo.FieldByName('Kind').AsString:='取-折讓'
    else
      ZQuery_wo.FieldByName('Kind').AsString:='取件收款';
    end
  else if ZQuery_wo.FieldByName('fritem').AsString='A' then
    ZQuery_wo.FieldByName('Kind').AsString:='收件修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='B' then
    ZQuery_wo.FieldByName('Kind').AsString:='取件修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='Q' then
    ZQuery_wo.FieldByName('Kind').AsString:='預收款'
  else if ZQuery_wo.FieldByName('fritem').AsString='R' then
    ZQuery_wo.FieldByName('Kind').AsString:='無單收款'
  else if ZQuery_wo.FieldByName('fritem').AsString='V' then
    ZQuery_wo.FieldByName('Kind').AsString:='VIP收款'
  else if ZQuery_wo.FieldByName('fritem').AsString='W' then
    ZQuery_wo.FieldByName('Kind').AsString:='VIP修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='X' then
    ZQuery_wo.FieldByName('Kind').AsString:='VIP刪除'
  else if ZQuery_wo.FieldByName('fritem').AsString='Z' then
    ZQuery_wo.FieldByName('Kind').AsString:='修改客額'
  else if ZQuery_wo.FieldByName('fritem').AsString='E' then
    ZQuery_wo.FieldByName('Kind').AsString:='明細修改'
  else if ZQuery_wo.FieldByName('fritem').AsString='D' then
    ZQuery_wo.FieldByName('Kind').AsString:='明細刪除'
  else if ZQuery_wo.FieldByName('fritem').AsString='P' then
    ZQuery_wo.FieldByName('Kind').AsString:='收件加工'
  else if ZQuery_wo.FieldByName('fritem').AsString='G' then
    ZQuery_wo.FieldByName('Kind').AsString:='取件加工'
  else if ZQuery_wo.FieldByName('fritem').AsString='x' then
    ZQuery_wo.FieldByName('Kind').AsString:='收件放棄'
  else if ZQuery_wo.FieldByName('fritem').AsString='T' then
    ZQuery_wo.FieldByName('Kind').AsString:='洗單移轉'
  else
    ZQuery_wo.FieldByName('Kind').AsString:='無類別'
end;

procedure TChangelogForm.FormShow(Sender: TObject);
begin  
  RzPageControl1.BringToFront;
  RzPageControl1.ActivePageIndex:=0;
  wwDBGrid2.SetFocus;
end;

procedure TChangelogForm.wwDBGrid2DblClick(Sender: TObject);
begin
  if fkey='' then
    begin
    wiosn:=ZQuery_wo.FieldByName('wiosn').Value;
    WDM.crcode:=ZQuery_wo.FieldByName('crcode').AsString;
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Add('SELECT * FROM wo');
    ZQuery_wo.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
    ZQuery_wo.SQL.Add('ORDER BY widate DESC, witime DESC');
    ZQuery_wo.Open;
    RzToolbarButtonEsc.Caption:='Esc.返回';
    fkey:='dc';
    end;
end;

procedure TChangelogForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(ChangelogForm);
  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
end;

end.
