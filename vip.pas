unit vip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, Buttons, RzButton, ExtCtrls, RzPanel, Grids, Wwdbigrd,
  Wwdbgrid, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, StdCtrls, DosMove, Mask;

type
  TVIPForm = class(TForm)
    ZConnection1: TZConnection;
    ActionList1: TActionList;
    ZQuery_vip: TZQuery;
    wwDataSource1: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonAdd: TRzToolbarButton;
    RzToolbarButtonQuery: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    Action_F1: TAction;
    Action_CtrlF2: TAction;
    Action_F3: TAction;
    Action_Esc: TAction;
    Panel_Buy: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Label13: TLabel;
    ZQuery_vipcrcode: TStringField;
    ZQuery_vipvpcode: TStringField;
    ZQuery_vipvpmoney: TFloatField;
    ZQuery_vipvpdscnt: TIntegerField;
    ZQuery_vipvpreman: TFloatField;
    ZQuery_vipvpsdate: TStringField;
    ZQuery_vipvpedate: TStringField;
    ZQuery_vipcrname: TStringField;
    DosMove1: TDosMove;
    ZQuery1: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    Action_PgDn: TAction;
    ZQuery_wo: TZQuery;
    ZQuery_vipvppsen: TIntegerField;
    MaskEditDate2: TMaskEdit;
    MaskEditDate1: TMaskEdit;
    procedure Action_EscExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_CtrlF2Execute(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F3Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure New_wo(fritem: String);
  end;

var
  VIPForm: TVIPForm;
  fkey, crcode, vpcode: String;
  lastvpcode: Integer;
  crmoney, crmoneynew, psen, PayVal, DiscountVal: Real;

implementation

uses WDModule, lcutils;

{$R *.DFM}

procedure TVIPForm.New_wo(fritem: String);
begin
  Try
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE crcode='''+WDM.crcode+'''';
    ZQuery_wo.Open;

    ZQuery_wo.Append;
    ZQuery_wo.FieldByName('wicode').Value:='V'+vpcode;
    ZQuery_wo.FieldByName('crcode').Value:=WDM.crcode;
    ZQuery_wo.FieldByName('wototal').AsFloat:=crmoneynew;
    ZQuery_wo.FieldByName('woptotal').AsFloat:=crmoney;
    ZQuery_wo.FieldByName('wopsen').AsFloat:=psen;
    ZQuery_wo.FieldByName('worealmo').AsFloat:=PayVal;
    ZQuery_wo.FieldByName('wocntmo').AsFloat:=DiscountVal;
    ZQuery_wo.FieldByName('widate').Value:=ChinaDate1(Date);
    ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:mm:ss',Time);
    ZQuery_wo.FieldByName('fritem').AsString:=fritem;
    ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
    ZQuery_wo.Post;
  Except
    ShowMessage('WO建立錯誤！');
  end;
  ZQuery_wo.Close;
end;

procedure TVIPForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    Edit3.Enabled:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    Panel_Buy.SendToBack;
    end
  else if fkey='F2' then
    begin
    fkey:='';
    Edit3.Enabled:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    Panel_Buy.SendToBack;
    end
  else if fkey='' then
    Close;
end;

procedure TVIPForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(VIPForm);
  Panel_Buy.Left:=Trunc((Width-Panel_Buy.Width)/2);
  Panel_Buy.Top:=Trunc((Height-Panel_Buy.Height)/2);
end;

procedure TVIPForm.Action_F1Execute(Sender: TObject);
var
  vpcode: String;
  nYear: word;
begin
  fkey:='F1';
  wwDBGrid1.Enabled:=False;
  Label9.Caption:=WDM.crcode;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM vip');
  ZQuery1.SQL.Add('ORDER BY vpcode DESC');
  ZQuery1.Open;
  vpcode:=ZQuery1.FieldByName('vpcode').AsString; //最後一筆編號
  ZQuery1.Close;
  if vpcode='' then
    lastvpcode:=1
  else
    lastvpcode:=StrToInt(vpcode)+1;
  Label11.Caption:=StrZero(lastvpcode,5);
  Edit1.Text:='0';
  Edit2.Text:='0';
  Edit3.Text:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value);
  Edit4.Text:='0';
  MaskEditDate1.Text:=ChinaDate1(date);
  nYear:=StrToInt(Copy(MaskEditDate1.Text,1,3))+1; //年份+1
  MaskEditDate2.Text:=IntToStr(nYear)+'/'+Copy(MaskEditDate1.Text,5,5);
  Edit1.SetFocus;
  Edit1.SelectAll;
  Panel_Buy.BringToFront;
end;

procedure TVIPForm.Action_CtrlF2Execute(Sender: TObject);
begin
  if (fkey='')and(ChinaDate1(Date)=ZQuery_vip.FieldByName('vpsdate').AsString) then
    begin
    fkey:='F2';
    wwDBGrid1.Enabled:=False;
    Label9.Caption:=WDM.crcode;
    Label11.Caption:=ZQuery_vip.FieldByName('vpcode').Value;
    Edit1.Text:=FloatToStr(ZQuery_vip.FieldByName('vpmoney').Value);
    Edit2.Text:=FloatToStr(ZQuery_vip.FieldByName('vpdscnt').Value);
    if StrToInt(Edit2.Text)>0 then Edit3.Enabled:=False;
    Edit3.Text:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value);
    Edit4.Text:=FloatToStr(ZQuery_vip.FieldByName('vpreman').Value);
    MaskEditDate1.Text:=ZQuery_vip.FieldByName('vpsdate').Value;
    MaskEditDate2.Text:=ZQuery_vip.FieldByName('vpedate').Value;
    Edit1.SetFocus;
    Panel_Buy.BringToFront;
    end
  else
    ShowMessage('歷史資料無法修改！');
end;

procedure TVIPForm.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  oldmoney: Real;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    if fkey='F1' then
      begin
      if StrToFloat(Edit1.Text)=0 then
        begin
        ShowMessage('金額不能為0！');
        Edit1.SetFocus;
        end
      else
        begin
        ZQuery_vip.Insert;
        ZQuery_vip.FieldByName('crcode').Value:=WDM.crcode;
        ZQuery_vip.FieldByName('vpcode').Value:=Label11.Caption;
        ZQuery_vip.FieldByName('vpmoney').Value:=StrToFloat(Edit1.Text);
        ZQuery_vip.FieldByName('vpdscnt').Value:=StrToInt(Edit2.Text);
        ZQuery_vip.FieldByName('vppsen').Value:=StrToInt(Edit3.Text);
        ZQuery_vip.FieldByName('vpreman').Value:=StrToFloat(Edit4.Text);
        ZQuery_vip.FieldByName('vpsdate').Value:=MaskEditDate1.Text;
        ZQuery_vip.FieldByName('vpedate').Value:=MaskEditDate2.Text;
        ZQuery_vip.Post;

        WDM.ZQuery_cr.Edit;
        WDM.ZQuery_cr.FieldByName('crmoney').Value:=WDM.ZQuery_cr.FieldByName('crmoney').Value+ZQuery_vip.FieldByName('vpreman').Value;
        WDM.ZQuery_cr.FieldByName('crvip').Value:='Y';
        WDM.ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit3.Text);
        WDM.ZQuery_cr.Post;

        vpcode:=ZQuery_vip.FieldByName('vpcode').Value;
        crmoneynew:=WDM.ZQuery_cr.FieldByName('crmoney').Value;
        psen:=StrToFloat(Edit3.Text);
        PayVal:=ZQuery_vip.FieldByName('vpmoney').Value;
        DiscountVal:=ZQuery_vip.FieldByName('vpreman').Value-ZQuery_vip.FieldByName('vpmoney').Value;
        New_wo('V');
        Panel_Buy.SendToBack;
        end;
      end
    else if fkey='F2' then
      begin
      oldmoney:=ZQuery_vip.FieldByName('vpreman').Value;
      ZQuery_vip.Edit;
      ZQuery_vip.FieldByName('crcode').Value:=WDM.crcode;
      ZQuery_vip.FieldByName('vpcode').Value:=Label11.Caption;
      ZQuery_vip.FieldByName('vpmoney').Value:=StrToFloat(Edit1.Text);
      ZQuery_vip.FieldByName('vpdscnt').Value:=StrToInt(Edit2.Text);
      ZQuery_vip.FieldByName('vppsen').Value:=StrToInt(Edit3.Text);
      ZQuery_vip.FieldByName('vpreman').Value:=StrToFloat(Edit4.Text);
      ZQuery_vip.FieldByName('vpsdate').Value:=MaskEditDate1.Text;
      ZQuery_vip.FieldByName('vpedate').Value:=MaskEditDate2.Text;
      ZQuery_vip.Post;

      WDM.ZQuery_cr.Edit;
      WDM.ZQuery_cr.FieldByName('crmoney').Value:=WDM.ZQuery_cr.FieldByName('crmoney').Value-oldmoney+ZQuery_vip.FieldByName('vpreman').Value;
      WDM.ZQuery_cr.FieldByName('crvip').Value:='Y';
      WDM.ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit3.Text);
      WDM.ZQuery_cr.Post;

      vpcode:=ZQuery_vip.FieldByName('vpcode').Value;
      crmoneynew:=WDM.ZQuery_cr.FieldByName('crmoney').Value;
      psen:=0;
      PayVal:=ZQuery_vip.FieldByName('vpmoney').Value;
      DiscountVal:=ZQuery_vip.FieldByName('vpreman').Value-ZQuery_vip.FieldByName('vpmoney').Value;
      New_wo('W');
      Panel_Buy.SendToBack;
      end;
    ZQuery_vip.Close;
    ZQuery_vip.Open;
    Edit3.Enabled:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    fkey:='';
    end;
end;

procedure TVIPForm.Action_F3Execute(Sender: TObject);
begin
  if ChinaDate1(Date)=ZQuery_vip.FieldByName('vpsdate').AsString then
    begin
    if IDYES=MessageBox(handle,'確定要刪除？','刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2)  then
      begin
      //WDM.ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);
      crmoney:=WDM.ZQuery_cr.FieldByName('crmoney').Value;
      WDM.ZQuery_cr.Edit;
      WDM.ZQuery_cr.FieldByName('crmoney').Value:=WDM.ZQuery_cr.FieldByName('crmoney').Value-ZQuery_vip.FieldByName('vpreman').Value;
      if WDM.ZQuery_cr.FieldByName('crmoney').Value<=0 then
         WDM.ZQuery_cr.FieldByName('crvip').AsString:='N';
      WDM.ZQuery_cr.FieldByName('crpsen').Value:=0;
      WDM.ZQuery_cr.Post;

      vpcode:=ZQuery_vip.FieldByName('vpcode').AsString;
      crmoneynew:=WDM.ZQuery_cr.FieldByName('crmoney').Value;
      psen:=WDM.ZQuery_cr.FieldByName('crpsen').Value;
      PayVal:=-(ZQuery_vip.FieldByName('vpmoney').Value);
      // 2013/10/11修正負號
      DiscountVal:=-(ZQuery_vip.FieldByName('vpreman').Value-ZQuery_vip.FieldByName('vpmoney').Value);
      New_wo('X');
      ZQuery_vip.Delete;
      Caption:='貴賓卡登入作業-客戶餘額：'+FloatToStr(WDM.ZQuery_cr.FieldByName('crmoney').Value);
      end;
    end
  else
    ShowMessage('歷史資料無法刪除！');
end;

procedure TVIPForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
  crmoney:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat;
  Panel_Buy.SendToBack;
  ZQuery_vip.Close;
  ZQuery_vip.SQL.Clear;
  ZQuery_vip.SQL.Add('SELECT * FROM vip');
  ZQuery_vip.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  ZQuery_vip.SQL.Add('ORDER BY vpcode DESC');
  ZQuery_vip.Open;
  ZQuery_vip.First;
  //WDM.ZQuery_cr.Close;
  //WDM.ZQuery_cr.Open;
  //WDM.ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);
  Caption:='貴賓卡登入作業-客戶餘額：'+FloatToStr(WDM.ZQuery_cr.FieldByName('crmoney').Value);
end;

procedure TVIPForm.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName='vpcode') then
    AFont.Color:=ClYellow;
end;

procedure TVIPForm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)and(Edit2.Text<>'') then
    begin
    Edit4.Text:=FloatToStr(Trunc(StrToInt(Edit1.Text)*(1+StrToInt(Edit2.Text)/100)));
    if StrToInt(Edit2.Text)>0 then
      begin
      Edit3.Text:='0';
      Edit3.Enabled:=False;
      MaskEditDate1.SetFocus;
      end
    else
      begin
      Edit3.Enabled:=True;
      Edit3.SetFocus;
      end;
    Key:=0;  
    end;
end;

procedure TVIPForm.FormShow(Sender: TObject);
begin
  fkey:='';
  Action_F1Execute(Self);
end;

procedure TVIPForm.MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  oldmoney: Real;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    if fkey='F1' then
      begin
      if StrToFloat(Edit1.Text)=0 then
        begin
        ShowMessage('金額不能為0！');
        Edit1.SetFocus;
        end
      else
        begin
        ZQuery_vip.Append;
        ZQuery_vip.FieldByName('crcode').Value:=WDM.crcode;
        ZQuery_vip.FieldByName('vpcode').Value:=Label11.Caption;
        ZQuery_vip.FieldByName('vpmoney').Value:=StrToFloat(Edit1.Text);
        ZQuery_vip.FieldByName('vpdscnt').Value:=StrToInt(Edit2.Text);
        ZQuery_vip.FieldByName('vppsen').Value:=StrToInt(Edit3.Text);
        ZQuery_vip.FieldByName('vpreman').Value:=StrToFloat(Edit4.Text);
        ZQuery_vip.FieldByName('vpsdate').Value:=MaskEditDate1.Text;
        ZQuery_vip.FieldByName('vpedate').Value:=MaskEditDate2.Text;
        ZQuery_vip.Post;

        //WDM.ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);
        WDM.ZQuery_cr.Edit;
        WDM.ZQuery_cr.FieldByName('crmoney').Value:=WDM.ZQuery_cr.FieldByName('crmoney').Value+ZQuery_vip.FieldByName('vpreman').Value;
        WDM.ZQuery_cr.FieldByName('crvip').Value:='Y';
        WDM.ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit3.Text);
        WDM.ZQuery_cr.Post;

        vpcode:=ZQuery_vip.FieldByName('vpcode').Value;
        crmoneynew:=WDM.ZQuery_cr.FieldByName('crmoney').Value;
        psen:=StrToFloat(Edit3.Text);
        PayVal:=ZQuery_vip.FieldByName('vpmoney').Value;
        DiscountVal:=ZQuery_vip.FieldByName('vpreman').Value-ZQuery_vip.FieldByName('vpmoney').Value;
        New_wo('V');
        Caption:='貴賓卡登入作業-客戶餘額：'+FloatToStr(WDM.ZQuery_cr.FieldByName('crmoney').Value);
        Panel_Buy.SendToBack;
        end;
      end
    else if fkey='F2' then
      begin
      oldmoney:=ZQuery_vip.FieldByName('vpreman').Value;
      ZQuery_vip.Edit;
      ZQuery_vip.FieldByName('crcode').Value:=WDM.crcode;
      ZQuery_vip.FieldByName('vpcode').Value:=Label11.Caption;
      ZQuery_vip.FieldByName('vpmoney').Value:=StrToFloat(Edit1.Text);
      ZQuery_vip.FieldByName('vpdscnt').Value:=StrToInt(Edit2.Text);
      ZQuery_vip.FieldByName('vppsen').Value:=StrToInt(Edit3.Text);
      ZQuery_vip.FieldByName('vpreman').Value:=StrToFloat(Edit4.Text);
      ZQuery_vip.FieldByName('vpsdate').Value:=MaskEditDate1.Text;
      ZQuery_vip.FieldByName('vpedate').Value:=MaskEditDate2.Text;
      ZQuery_vip.Post;

      //WDM.ZQuery_cr.Locate('crcode',vararrayof([WDM.crcode]),[]);
      WDM.ZQuery_cr.Edit;
      WDM.ZQuery_cr.FieldByName('crmoney').Value:=WDM.ZQuery_cr.FieldByName('crmoney').Value-oldmoney+ZQuery_vip.FieldByName('vpreman').Value;
      WDM.ZQuery_cr.FieldByName('crvip').Value:='Y';
      WDM.ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit3.Text);
      WDM.ZQuery_cr.Post;

      vpcode:=ZQuery_vip.FieldByName('vpcode').Value;
      crmoneynew:=WDM.ZQuery_cr.FieldByName('crmoney').Value;
      psen:=0;
      PayVal:=ZQuery_vip.FieldByName('vpmoney').Value;
      DiscountVal:=ZQuery_vip.FieldByName('vpreman').Value-ZQuery_vip.FieldByName('vpmoney').Value;
      New_wo('W');
      Panel_Buy.SendToBack;
      end;
    ZQuery_vip.Close;
    ZQuery_vip.Open;
    Edit3.Enabled:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    fkey:='';
    end;
end;

procedure TVIPForm.MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Return then
    begin
    key:=0;
    MaskEditDate2.SetFocus;
    end;
end;

procedure TVIPForm.Edit1Exit(Sender: TObject);
begin  
  Edit4.Text:=FloatToStr(Trunc(StrToInt(Edit1.Text)*(1+StrToInt(Edit2.Text)/100)));
end;

end.
