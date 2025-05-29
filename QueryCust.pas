unit QueryCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Db, Wwdatsrc,
  ZAbstractRODataset, ZDataset, ActnList, Buttons, RzButton, RzPanel, Menus,
  ZConnection;

type
  TQueryCustForm = class(TForm)
    wwDBGrid1: TwwDBGrid;
    ActionList1: TActionList;
    Action_Esc: TAction;
    Action_F4: TAction;
    ZQuery_wio: TZReadOnlyQuery;
    Action_F1: TAction;
    Action_F7: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    RzToolbarButtonF4: TRzToolbarButton;
    RzToolbarButtonF7: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    Action_F3: TAction;
    Action_F5: TAction;
    RzToolbarButtonF5: TRzToolbarButton;
    PanelWicode: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    EditWicode: TEdit;
    PanelWisno: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    EditWisno: TEdit;
    PanelCust: TPanel;
    Label7: TLabel;
    SearchEdit: TEdit;
    Timer1: TTimer;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    lb_crname: TLabel;
    Label2: TLabel;
    lb_pcnt: TLabel;
    Label3: TLabel;
    lb_ncnt: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Action_CtrlP: TAction;
    Action_F11: TAction;
    N2: TMenuItem;
    RzToolbarButtonF11: TRzToolbarButton;
    RzToolbarButtonCP: TRzToolbarButton;
    Image1: TImage;
    RzToolbarButtonF8: TRzToolbarButton;
    Action_F8: TAction;
    Action_F9: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    ZConnection1: TZConnection;
    Button1: TButton;
    RzToolbarButtonF2: TRzToolbarButton;
    Action_F2: TAction;
    RzToolbarButtonF6: TRzToolbarButton;
    Action_F6: TAction;
    Action_F10: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
    procedure SearchEditChange(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F7Execute(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure EditWicodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditWisnoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure Action_CtrlPExecute(Sender: TObject);
    procedure Action_F11Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_F8Execute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_F6Execute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    selflag: Boolean;
    procedure calnotget();
    procedure getadrs();
    procedure getname();
    procedure querycrF2();
    procedure querycrF3();
    procedure querycrF6();
  end;

var
  QueryCustForm: TQueryCustForm;
  fkey, crcode, fname, AdrStr: String;
  scflag, hotkey: Boolean;
  pint, qint, picno: Integer;
  FBCode: String;

implementation

uses WDModule, LCUtils, Custom, wio_DetailQF, GetCam, ShowPic, SelAdre,
  SelName, Booking;

{$R *.DFM}

procedure TQueryCustForm.querycrF2();
var
  instr: String;
begin
  instr:=SearchEdit.Text;
  WDM.ZQuery_cr.Close;
  WDM.ZQuery_cr.SQL.Clear;
  WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr a');
  WDM.ZQuery_cr.SQL.Add('WHERE a.crmark=''Y''');
  WDM.ZQuery_cr.SQL.Add('AND a.crtelb LIKE '''+instr+'%''');
  WDM.ZQuery_cr.SQL.Add('ORDER BY a.crcode');
  WDM.ZQuery_cr.Open;
  if WDM.ZQuery_cr.RecordCount>0 then
    WDM.ZQuery_cr.First;
end;

procedure TQueryCustForm.querycrF3();
var
  instr: String;
begin
  instr:=SearchEdit.Text;
  instr:=StringReplace(instr, '許', '許\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '功', '功\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '蓋', '蓋\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '餐', '餐\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '愧', '愧\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '擺', '擺\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '穀', '穀\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '淚', '淚\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '豹', '豹\\\',[rfReplaceAll, rfIgnoreCase]);
  instr:=StringReplace(instr, '珮', '珮\\\',[rfReplaceAll, rfIgnoreCase]);
  WDM.ZQuery_cr.Close;
  WDM.ZQuery_cr.SQL.Clear;
  WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr a');
  if qint=1 then //只篩選未取
    WDM.ZQuery_cr.SQL.Add(', wio b');
  WDM.ZQuery_cr.SQL.Add('WHERE a.crmark=''Y''');
  WDM.ZQuery_cr.SQL.Add('AND ( a.crname LIKE ''%'+instr+'%''');
  if WDM.qtype.Value=0 then
    begin
    WDM.ZQuery_cr.SQL.Add('OR a.crtel LIKE ''%'+instr+'''');
    WDM.ZQuery_cr.SQL.Add('OR a.crtela LIKE ''%'+instr+'''');
    end
  else if WDM.qtype.Value=1 then
    begin
    WDM.ZQuery_cr.SQL.Add('OR a.crcode like ''%'+instr+'%''');
    WDM.ZQuery_cr.SQL.Add('OR a.crtel LIKE ''%'+instr+'%''');
    WDM.ZQuery_cr.SQL.Add('OR a.crtela LIKE ''%'+instr+'%''');
    end;
  WDM.ZQuery_cr.SQL.Add('OR a.crtelb LIKE ''%'+instr+'%''');
  WDM.ZQuery_cr.SQL.Add('OR a.cradr LIKE ''%'+instr+'%''');
  WDM.ZQuery_cr.SQL.Add('OR a.curst LIKE ''%'+instr+'%'')');
  if qint=1 then //只篩選未取
    begin
    WDM.ZQuery_cr.SQL.Add('AND (a.crcode=b.crcode AND wiodate='''')');
    WDM.ZQuery_cr.SQL.Add('GROUP BY a.crcode');
    end;
  WDM.ZQuery_cr.SQL.Add('ORDER BY a.crcode');
  WDM.ZQuery_cr.Open;
  if WDM.ZQuery_cr.RecordCount>0 then
    WDM.ZQuery_cr.First;
end;

procedure TQueryCustForm.querycrF6();
var
  instr: String;
begin
  instr:=SearchEdit.Text;
  WDM.ZQuery_cr.Close;
  WDM.ZQuery_cr.SQL.Clear;
  WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr a');
  WDM.ZQuery_cr.SQL.Add('WHERE a.crmark=''Y''');
  WDM.ZQuery_cr.SQL.Add('AND a.crcode LIKE ''%'+instr+'%''');
  WDM.ZQuery_cr.SQL.Add('ORDER BY a.crcode');
  WDM.ZQuery_cr.Open;
  if WDM.ZQuery_cr.RecordCount>0 then
    WDM.ZQuery_cr.First;
end;

procedure TQueryCustForm.getadrs();
begin
  if fkey='F3' then
    try
       SelAdreForm := TSelAdreForm.Create(Application);
       SelAdreForm.Top:=PanelCust.Top-200;
       SelAdreForm.Left:=0;
       SelAdreForm.ShowModal;
       if SelAdreForm.adrname<>'' then
         SearchEdit.Text:=SearchEdit.Text+SelAdreForm.adrname;
       FreeAndNil(SelAdreForm);
     except
       on E: Exception do
         MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
     end;
end;

procedure TQueryCustForm.getname();
begin
  if fkey='F3' then
    try
       SelNameForm := TSelNameForm.Create(Application);
       SelNameForm.Top:=PanelCust.Top-200;
       SelNameForm.Left:=0;
       SelNameForm.ShowModal;
       if SelNameForm.name<>'' then
         SearchEdit.Text:=SearchEdit.Text+SelNameForm.name;
       FreeAndNil(SelNameForm);
     except
       on E: Exception do
         MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
     end;
end;

procedure TQueryCustForm.calnotget();
begin
  crcode:=wwDBGrid1.DataSource.DataSet.FieldByName('crcode').AsString;
  lb_crname.Caption:=wwDBGrid1.DataSource.DataSet.FieldByName('crname').AsString;
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT sum(wiquty)as s_quty,wiodate,wiplace FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQuery_wio.SQL.Add('AND wiodate=''''');
  ZQuery_wio.SQL.Add('AND wiplace<>'''' AND wiplace<>''付清''');
  ZQuery_wio.Open;
  if not ZQuery_wio.eof then
    lb_pcnt.Caption:=IntToStr(ZQuery_wio.FieldByName('s_quty').AsInteger)
  else
    lb_pcnt.Caption:='0';
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('SELECT sum(wiquty)as s_quty,wiodate,wiplace FROM wio');
  ZQuery_wio.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQuery_wio.SQL.Add('AND wiodate=''''');
  ZQuery_wio.Open;
  if not ZQuery_wio.eof then
    lb_ncnt.Caption:=IntToStr(ZQuery_wio.FieldByName('s_quty').AsInteger)
  else
    lb_ncnt.Caption:='0';
  ZQuery_wio.Close;
end;

procedure TQueryCustForm.SearchEditChange(Sender: TObject);
begin
  if pint=1 then
    begin
    if fkey='F2' then
      querycrF2()
    else if fkey='F3' then
      querycrF3()
    else if fkey='F6' then
      querycrF6();
    end;
end;

procedure TQueryCustForm.wwDBGrid1DblClick(Sender: TObject);
begin
  selflag:=True;
  Close;
end;

procedure TQueryCustForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    end
  else if fkey='F2' then
    begin
    fkey:='';
    PanelCust.SendToBack;
    Button1.Enabled:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F3' then
    begin
    fkey:='';
    PanelCust.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    RzToolbarButtonF8.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    end
  else if fkey='F4' then
    begin
    fkey:='';
    PanelWicode.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F5' then
    begin
    fkey:='';
    PanelWisno.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F6' then
    begin
    fkey:='';
    PanelCust.SendToBack;
    Button1.Enabled:=True;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else
    begin
    selflag:=False;
    wwDBGrid1.SaveToIniFile;
    Close;
    end;
end;

procedure TQueryCustForm.Action_F4Execute(Sender: TObject);
begin
  //if fkey='' then
    //begin
    fkey:='F4';
    PanelWicode.BringToFront;
    PanelCust.SendToBack;
    PanelWisno.SendToBack;
    EditWicode.Text:='';
    wwDBGrid1.Enabled:=False;
    EditWicode.SetFocus;
    RzToolbarButtonF8.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    //end;
end;

procedure TQueryCustForm.Action_F1Execute(Sender: TObject);
begin
  PanelCust.SendToBack;
  PanelWisno.SendToBack;
  PanelWicode.SendToBack;
  try
    fkey:='';
    CustForm := TCustForm.Create(Application);
    WDM.fstr:='F1';
    CustForm.ShowModal;
    FreeAndNil(CustForm);
    if (WDM.fstr='')AND(WDM.crcode<>'') then
      begin //有新增客戶資料
      WDM.ZQuery_cr.Close;
      WDM.ZQuery_cr.SQL.Text:='SELECT * FROM cr WHERE crcode='''+WDM.crcode+''' AND crmark=''Y''';
      WDM.ZQuery_cr.Open;
      WDM.rfkey:='CF1';
      Close;
      end;
    WDM.fstr:='';
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
    MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TQueryCustForm.Action_F7Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F7';
    PanelCust.SendToBack;
    PanelWisno.SendToBack;
    PanelWicode.SendToBack;
    WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
    try
      WioDetailQFForm := TWioDetailQFForm.Create(Application);
      WioDetailQFForm.ShowModal;
      FreeAndNil(WioDetailQFForm);
      wwDBGrid1.SetFocus;
      fkey:='';
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end;
end;

procedure TQueryCustForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin  
  if Field.FieldName='crcode' then
     if wwDBGrid1.DataSource.DataSet.FieldByName('crmoney').AsFloat>=0 then
       AFont.Color:=clYellow
     else
       AFont.Color:=clRed;
  if Highlight then
    begin
    AFont.Color:=ClWhite;
    end;
end;

procedure TQueryCustForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  WDM.ZQuery_cr.Close;
  WDM.ZQuery_cr.SQL.Clear;
  WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
  WDM.ZQuery_cr.SQL.Add('WHERE crmark=''Y''');
  WDM.ZQuery_cr.SQL.Add('ORDER BY crcode');
  WDM.ZQuery_cr.Open;

  PanelWicode.SendToBack;
  PanelWisno.SendToBack;
  PanelCust.SendToBack;
  fname:=WDM.WPath+'Captures\'+WDM.ZQuery_cr.FieldByName('crcode').AsString+'_01.jpg';
  if FileExists(fname) then
    begin
    Image1.Picture.LoadFromFile(fname);
    Image1.Visible:=True;
    end
  else
    Image1.SendToBack;
  selflag:=False;
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  if (wisnod=5) or (wisnod=6) then
    begin
    Label5.Caption:='洗號查詢';
    Label4.Caption:='洗    號';
    Action_F5.Caption:='F5.洗號查詢';
    end;
  pint:=WDM.QUERY.Value;
  qint:=WDM.NOGET.Value;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='QueryCust';
  wwDBGrid1.LoadFromIniFile;
end;

procedure TQueryCustForm.Action_F3Execute(Sender: TObject);
begin
  //if fkey='' then
    //begin
    Label7.Caption:='客戶查詢';
    fkey:='F3';
    PanelCust.BringToFront;
    PanelWicode.SendToBack;
    PanelWisno.SendToBack;
    SearchEdit.SetFocus;
    wwDBGrid1.Enabled:=False;
    RzToolbarButtonF8.Visible:=True;
    RzToolbarButtonF9.Visible:=True;
    if qint=0 then
      Button1.Caption:='全部'
    else
      Button1.Caption:='未取';
    hotkey:=false;
    //end;
end;

procedure TQueryCustForm.EditWicodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    if EditWicode.Text<>'' then
      begin
      EditWicode.Text:=StrZero(StrToInt(EditWicode.Text),6);
      WDM.ZQuery_wio.Close;
      WDM.ZQuery_wio.SQL.Clear;
      WDM.ZQuery_wio.SQL.Add('SELECT * FROM wio');
      WDM.ZQuery_wio.SQL.Add('WHERE wicode='''+EditWicode.Text+'''');
      WDM.ZQuery_wio.Open;
      if WDM.ZQuery_wio.RecordCount=0 then
        ShowMessage('無此編號！！！')
      else
        begin
        WDM.ZQuery_cr.Close;
        WDM.ZQuery_cr.SQL.Clear;
        WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
        WDM.ZQuery_cr.SQL.Add('WHERE crcode='''+WDM.ZQuery_wio.FieldByName('crcode').AsString+'''');
        WDM.ZQuery_cr.Open;
        Close;
        end;
      end
    else
      begin
      PanelWicode.SendToBack;
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end;
    fkey:='';
    end;
end;

procedure TQueryCustForm.EditWisnoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  str1, crcode: String;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    if EditWisno.Text<>'' then
      begin
      if WDM.position.Value=1 then //手動輸入處理
        EditWisno.Text:=StrZero(StrToInt(EditWisno.Text),wisnod)
      else
        begin
        str1:=EditWisno.Text; //手機查詢處理
        EditWisno.Text:=StrZero(StrToInt(EditWisno.Text),wisnod);
        //EditWisno.Text:=copy(str1,WDM.position.Value,wisnod);
        end;
      WDM.ZQuery_wio.Close;
      WDM.ZQuery_wio.SQL.Clear;
      WDM.ZQuery_wio.SQL.Add('SELECT * FROM wio');
      WDM.ZQuery_wio.SQL.Add('WHERE wisno='''+EditWisno.Text+'''');
      WDM.ZQuery_wio.Open;
      crcode:=WDM.ZQuery_wio.FieldByName('crcode').AsString;
      if WDM.ZQuery_wio.Eof then
        ShowMessage('無此編號！！！')
      else if WDM.ZQuery_wio.RecordCount=1 then
        begin
        WDM.ZQuery_cr.Close;
        WDM.ZQuery_cr.SQL.Clear;
        WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
        WDM.ZQuery_cr.SQL.Add('WHERE crcode='''+crcode+'''');
        WDM.ZQuery_cr.Open;
        Close;
        end
      else if WDM.ZQuery_wio.RecordCount>1 then
        begin
        crcode:='(';
        while not WDM.ZQuery_wio.Eof do
          begin
          crcode:=crcode+''''+WDM.ZQuery_wio.FieldByName('crcode').AsString+''',';
          WDM.ZQuery_wio.Next;
          end;
        WDM.ZQuery_cr.Close;
        WDM.ZQuery_cr.SQL.Clear;
        WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
        WDM.ZQuery_cr.SQL.Add('WHERE crcode in '+crcode+''''')');
        WDM.ZQuery_cr.Open;
        PanelWisno.SendToBack;
        fkey:='';
        wwDBGrid1.Enabled:=True;
        wwDBGrid1.SetFocus;
        end;
      end
    else
      begin
      PanelWisno.SendToBack;
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end;
    fkey:='';
    end;
end;

procedure TQueryCustForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(QueryCustForm);
  
  PanelWicode.Left:=Trunc((Width-PanelWicode.Width)/2);
  PanelWicode.Top:=Trunc((Height-PanelWicode.Height)/2);
  PanelWisno.Left:=Trunc((Width-PanelWisno.Width)/2);
  PanelWisno.Top:=Trunc((Height-PanelWisno.Height)/2);
  PanelCust.Left:=Trunc((Width-PanelCust.Width)/2);
  PanelCust.Top:=Trunc((Height-PanelCust.Height)/2);  
end;

procedure TQueryCustForm.Action_F5Execute(Sender: TObject);
begin
  //if fkey='' then
    //begin
    fkey:='F5';
    PanelWisno.BringToFront;
    PanelCust.SendToBack;
    PanelWicode.SendToBack;
    EditWisno.Text:='';
    wwDBGrid1.Enabled:=False;
    EditWisno.SetFocus;
    RzToolbarButtonF8.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    //end;
end;

procedure TQueryCustForm.wwDBGrid1RowChanged(Sender: TObject);
begin
  if scflag=True then
    begin
    calnotget();
    scflag:=False;
    Timer1.Enabled:=True;
    picno:=1;
    fname:=WDM.WPath+'Captures\'+WDM.ZQuery_cr.FieldByName('crcode').AsString+'_01.jpg';
    if FileExists(fname) then
      begin
      Image1.Picture.LoadFromFile(fname);
      Image1.Visible:=True;
      end
    else
      Image1.Visible:=False;
    end;
  Caption:='查詢客戶-'+WDM.ZQuery_cr.FieldByName('cradr').AsString;
end;

procedure TQueryCustForm.Timer1Timer(Sender: TObject);
begin
  scflag:=True;
  Timer1.Enabled:=False;
end;

procedure TQueryCustForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
  WDM.ZQuery_cr.Close;
  WDM.ZQuery_cr.SQL.Clear;
  WDM.ZQuery_cr.SQL.Add('SELECT * FROM cr');
  WDM.ZQuery_cr.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
  WDM.ZQuery_cr.SQL.Add('AND crmark=''Y''');
  WDM.ZQuery_cr.Open;
end;

procedure TQueryCustForm.N1Click(Sender: TObject);
begin
  Action_F11Execute(Self);
end;

procedure TQueryCustForm.Action_CtrlPExecute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='CP';
    fname:=WDM.ZQuery_cr.FieldByName('crcode').AsString+'_';
    if FileExists(WDM.WPath+'Captures\'+fname+'01.jpg') then
      begin
      try
        ShowPicForm := TShowPicForm.Create(Application);
        ShowPicForm.PicName:=fname;
        ShowPicForm.ShowModal;
        FreeAndNil(ShowPicForm);
        wwDBGrid1.SetFocus;
      except
        on E: Exception do
          MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
      end;
      end
    else
      ShowMessage('沒有照片！');
    fkey:='';
    end;  
end;

procedure TQueryCustForm.Action_F11Execute(Sender: TObject);
var
  picPath, prename: String;
begin
  if fkey='' then
    begin
    //fkey:='F11';
    picno:=1;
    pname:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
    try
      picPath:=WDM.WPath+'Captures\';
      prename:=pname+'_';
      while FileExists(picPath+prename+StrZero(picno,2)+'.jpg') do
        begin
        picno:=picno+1;
        end;
      pname:=prename+StrZero(picno,2)+'.jpg';
      GetCamForm := TGetCamForm.Create(Application);
      GetCamForm.Caption:=pname;
      GetCamForm.BitBtn2.Enabled:=True;
      GetCamForm.ShowModal;
      FreeAndNil(GetCamForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    if FileExists(picPath+pname) then
      begin
      Image1.Picture.LoadFromFile(picPath+pname);
      Image1.Visible:=True;
      picno:=picno+1;
      end
    else
      Image1.Visible:=False;
    end;
end;

procedure TQueryCustForm.FormShow(Sender: TObject);
begin
  fkey:='';
  calnotget();
  Action_F3Execute(Self);
  pname:=WDM.WPath+'Captures\'+WDM.ZQuery_cr.FieldByName('crcode').AsString+'_01.jpg';
  if FileExists(pname) then
    begin
    Image1.Picture.LoadFromFile(pname);
    Image1.Visible:=true;
    end
  else
    Image1.Visible:=False;
end;

procedure TQueryCustForm.Action_F8Execute(Sender: TObject);
begin
  if (SearchEdit.Focused) then //+
     begin
     hotkey:=true;
     getadrs();
     SearchEdit.SelStart:=Length(SearchEdit.Text);
     end;
end;

procedure TQueryCustForm.Action_F9Execute(Sender: TObject);
begin
  if (SearchEdit.Focused) then //+
     begin
     hotkey:=true;
     getname();
     SearchEdit.SelStart:=Length(SearchEdit.Text);
     end;
end;

procedure TQueryCustForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if (key=VK_SUBTRACT)AND(fkey='F3') then
    begin
    if qint=0 then
      begin
      qint:=1;
      Button1.Caption:='未取';
      end
    else
      qint:=0;
      Button1.Caption:='全部';
    end; }
end;

procedure TQueryCustForm.Button1Click(Sender: TObject);
begin
  if qint=0 then
    qint:=1
  else
    qint:=0;
  
  if qint=0 then
    Button1.Caption:='全部'
  else
    Button1.Caption:='未取';
  if pint=1 then
    querycrF3();
  SearchEdit.SetFocus;
  SearchEdit.SelStart:=Length(SearchEdit.Text);
end;

procedure TQueryCustForm.Action_F2Execute(Sender: TObject);
begin
  //if fkey='' then
    //begin
    Label7.Caption:='電腦號查詢';
    fkey:='F2';
    PanelCust.BringToFront;
    PanelWicode.SendToBack;
    PanelWisno.SendToBack;
    SearchEdit.SetFocus;
    wwDBGrid1.Enabled:=False;
    Button1.Enabled:=False;
    RzToolbarButtonF8.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    //end;
end;

procedure TQueryCustForm.Action_F6Execute(Sender: TObject);
begin
  //if fkey='' then
    //begin
    Label7.Caption:='客號查詢';
    fkey:='F6';
    PanelCust.BringToFront;
    PanelWicode.SendToBack;
    PanelWisno.SendToBack;
    SearchEdit.SetFocus;
    wwDBGrid1.Enabled:=False;
    Button1.Enabled:=False;
    RzToolbarButtonF8.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    //end;
end;

procedure TQueryCustForm.Action_F10Execute(Sender: TObject);
begin
{  if fkey='' then
    begin
    fkey:='F10';
    try
      WDM.crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString;
      WDM.fstr:='F1';
      BookingForm := TBookingForm.Create(Application);
      BookingForm.ShowModal;
      FreeAndNil(CustForm);
      fkey:='';
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
    except
      on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
  end;}
end;

procedure TQueryCustForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fkey='')and(Key=VK_RETURN)and(Length(FBCode)>1) then
    begin
    if SimKB(FBCode) then Key:=0;
    FBCode:='';
    end
  else if (Char(Key)='&')OR(Char(Key)='(')OR(Char(Key)='q') then
    FBCode:=''
  else
    FBCode:=UpperCase(FBCode+Char(Key));
end;

procedure TQueryCustForm.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    if (copy(FBCode,Length(FBCode)-2,3)<>'ESC')and(hotkey=false) then
      begin
      if (pint=0) then
        begin
        if fkey='F2' then
          querycrF2()
        else if fkey='F3' then
          querycrF3()
        else if fkey='F6' then
          querycrF6();
        end;
      PanelCust.SendToBack;
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      fkey:='';
      Button1.Enabled:=True;
      RzToolbarButtonF8.Visible:=False;
      RzToolbarButtonF9.Visible:=False;
      FBCode:='';
      hotkey:=false;
      end
    else if hotkey=false then
      begin
      SearchEdit.Text:='';
      FBCode:='';
      end
    else
      hotkey:=false;
    end;
  Key:=0;
end;

procedure TQueryCustForm.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
  if (fkey='')AND(Key=VK_RETURN) then
    begin
    Key:=0;
    selflag:=True;
    FBCode:='';
    Close;
    end;
end;

end.


