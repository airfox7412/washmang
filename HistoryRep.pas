unit HistoryRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxClass, frxDBSet, Db, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ActnList, Buttons, RzButton, RzPanel, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, Wwdatsrc, ComCtrls, StdCtrls, Mask, DBCtrls, RzPrgres;

type
  THistoryRepForm = class(TForm)
    RzToolbarF7: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonF5: TRzToolbarButton;
    RzToolbarButtonF4: TRzToolbarButton;
    ActionList1: TActionList;
    ActionF1: TAction;
    ActionF2: TAction;
    ActionF3: TAction;
    ActionF5: TAction;
    ZConnection1: TZConnection;
    ZQueryStawo: TZQuery;
    wwDSstawo: TwwDataSource;
    ActionESC: TAction;
    PanelDateSet: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEditDate1: TMaskEdit;
    MaskEditDate2: TMaskEdit;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PanelDelete: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    PanelWicode: TPanel;
    Label7: TLabel;
    Label13: TLabel;
    Editwicode: TEdit;
    Label1: TLabel;
    RzPanelBrowse: TRzPanel;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    ZQueryStawowicode: TStringField;
    ZQueryStawocrcode: TStringField;
    ZQueryStawowototal: TFloatField;
    ZQueryStawowopsen: TFloatField;
    ZQueryStawowoptotal: TFloatField;
    ZQueryStawoworealmo: TFloatField;
    ZQueryStawowoowimo: TFloatField;
    ZQueryStawowidate: TStringField;
    ZQueryStawowitime: TStringField;
    ZQueryStawostoverdat: TStringField;
    ZQueryStbwio: TZQuery;
    wwDSstbwio: TwwDataSource;
    ZQueryStbwiowicode: TStringField;
    ZQueryStbwiowisno: TStringField;
    ZQueryStbwiocrcode: TStringField;
    ZQueryStbwiowiitem: TStringField;
    ZQueryStbwiowiname: TStringField;
    ZQueryStbwiowiwash: TStringField;
    ZQueryStbwiowiacc: TStringField;
    ZQueryStbwiowimemo: TStringField;
    ZQueryStbwiowiwamo: TFloatField;
    ZQueryStbwiowiexkind: TStringField;
    ZQueryStbwiowiexmo: TFloatField;
    ZQueryStbwiowiquty: TIntegerField;
    ZQueryStbwiowisum: TFloatField;
    ZQueryStbwiowiurge: TStringField;
    ZQueryStbwiowiday: TStringField;
    ZQueryStbwiowimdate: TStringField;
    ZQueryStbwiowiodate: TStringField;
    ZQueryStbwiowiotime: TTimeField;
    ZQueryStbwiowiplace: TStringField;
    ZQueryStbwiowidate: TStringField;
    ZQueryStbwiowimark: TStringField;
    ZQueryStbwioindate: TStringField;
    ZQueryStbwiomark: TStringField;
    ZQueryStbwiowisel: TStringField;
    ZQueryStbwiopps: TIntegerField;
    ZQueryStbwiopicture: TStringField;
    ZQueryStawocrname: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    ZQueryStawocrtel: TStringField;
    ZQueryStawocrmoney: TFloatField;
    DBText3: TDBText;
    DBText4: TDBText;
    ZQueryStawocrtela: TStringField;
    DBText5: TDBText;
    ActionF4: TAction;
    ActionF9: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    MaskEditDel: TMaskEdit;
    Panelwisno: TPanel;
    Label6: TLabel;
    Label12: TLabel;
    Editwisno: TEdit;
    ZConnection2: TZConnection;
    ZQuerystawo_del: TZQuery;
    ZQuerystbwio_del: TZQuery;
    ZQuerystawo_org: TZQuery;
    ZQuerystbwio_org: TZQuery;
    ZQuery1: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    FloatField2: TFloatField;
    StringField6: TStringField;
    FloatField3: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    TimeField1: TTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField2: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    PanelPBar: TPanel;
    LabelWait: TLabel;
    RzProgressBar1: TRzProgressBar;
    frxReportF9: TfrxReport;
    frxDBDS_Wio: TfrxDBDataset;
    frxDBDS_Compy: TfrxDBDataset;
    RzToolbarButtonF6: TRzToolbarButton;
    ActionF6: TAction;
    Panel_F6: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    ZQueryWio: TZQuery;
    Label14: TLabel;
    Button2: TButton;
    ZQueryWo: TZQuery;
    ZQueryStawocrtelb: TStringField;
    ZQuery1crtel: TStringField;
    ZQuery1crtelb: TStringField;
    ZQuery1crname: TStringField;
    Label17: TLabel;
    Edit_crcode: TEdit;
    SpeedButton1: TSpeedButton;
    ButtonF1: TButton;
    ZQuery2: TZQuery;
    ZQueryStbwiowitime: TTimeField;
    ActionF7: TAction;
    RzToolbarButton1: TRzToolbarButton;
    Panel_F7: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    MaskEditRSD: TMaskEdit;
    MaskEditRED: TMaskEdit;
    Button3: TButton;
    Label_rec: TLabel;
    Button4: TButton;
    procedure ActionESCExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionF1Execute(Sender: TObject);
    procedure MaskEditDate1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDate2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure EditwicodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF2Execute(Sender: TObject);
    procedure ActionF4Execute(Sender: TObject);
    procedure MaskEditDelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF5Execute(Sender: TObject);
    procedure EditwisnoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF9Execute(Sender: TObject);
    procedure ActionF6Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit_crcodeExit(Sender: TObject);
    procedure ButtonF1Click(Sender: TObject);
    procedure Edit_crcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionF7Execute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MaskEditRSDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditREDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProcessF1();
    procedure ProcessF2();
    procedure ProcessF3();
    procedure ProcessF4();
    procedure ProcessF5();
    procedure ProcessF6();
    procedure ProcessF7();
  end;

var
  HistoryRepForm: THistoryRepForm;
  fkey: String;
  wisnod: Integer;
  pflag, bflag: Boolean;

implementation

uses WDModule, lcutils, PPreview, QueryCust;

{$R *.DFM}

procedure THistoryRepForm.ProcessF1();
begin
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('WHERE widate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
  if Edit_crcode.Text<>'' then
    ZQueryStawo.SQL.Add('AND crcode='''+Edit_crcode.Text+'''');
  ZQueryStawo.SQL.Add('ORDER BY wicode DESC');
  ZQueryStawo.Open;
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE widate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+'''');
  ZQueryStbwio.SQL.Add('ORDER BY wicode,wisno');
  ZQueryStbwio.Open;
end;

procedure THistoryRepForm.ProcessF2();
begin
  EditWicode.Text:=StrZero(StrToInt(EditWicode.Text),6);
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('WHERE wicode='''+EditWicode.Text+'''');
  ZQueryStawo.SQL.Add('ORDER BY wicode');
  ZQueryStawo.Open;
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE wicode='''+EditWicode.Text+'''');
  ZQueryStbwio.SQL.Add('ORDER BY wicode,wisno');
  ZQueryStbwio.Open;
end;

procedure THistoryRepForm.ProcessF3();
begin

end;

procedure THistoryRepForm.ProcessF4();
var
  i: Integer;
begin
  ZQuerystawo_del.Open;
  ZQuerystbwio_del.Open;
  //檔頭過檔
  ZQueryStawo_org.Close;
  ZQueryStawo_org.SQL.Clear;
  ZQueryStawo_org.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo_org.SQL.Add('WHERE widate<='''+MaskEditDel.Text+'''');
  ZQueryStawo_org.SQL.Add('ORDER BY wicode');
  ZQueryStawo_org.Open;
  while not ZQueryStawo_org.Eof do
    begin
    Application.ProcessMessages;
    RzProgressBar1.Percent:=Trunc((ZQueryStawo_org.RecNo/ZQueryStawo_org.RecordCount)*100);
    ZQuerystawo_del.Append;
    for i:=0 to ZQueryStawo_org.FieldCount-1 do
      ZQueryStawo_del.Fields.Fields[i].Value:=ZQueryStawo_org.Fields.Fields[i].Value;
    ZQueryStawo_del.Post;
    ZQueryStawo_org.Delete;
    end;
  //檔身過檔
  ZQueryStbwio_org.Close;
  ZQueryStbwio_org.SQL.Clear;
  ZQueryStbwio_org.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio_org.SQL.Add('WHERE widate<='''+MaskEditDel.Text+'''');
  ZQueryStbwio_org.SQL.Add('ORDER BY wicode');
  ZQueryStbwio_org.Open;
  while not ZQueryStbwio_org.Eof do
    begin
    Application.ProcessMessages;
    RzProgressBar1.Percent:=Trunc((ZQueryStbwio_org.RecNo/ZQueryStbwio_org.RecordCount)*100);
    ZQueryStbwio_del.Append;
    for i:=0 to ZQueryStbwio_org.FieldCount-1 do
      ZQueryStbwio_del.Fields.Fields[i].Value:=ZQueryStbwio_org.Fields.Fields[i].Value;
    ZQueryStbwio_del.Post;
    ZQueryStbwio_org.Delete;
    end;
  ZQueryStawo_org.Close;
  ZQueryStbwio_org.Close;
  ZConnection2.Connected:=False;
  PanelPBar.SendToBack;
end;

procedure THistoryRepForm.ProcessF5();
var
  wicode: String;
begin
  Editwisno.Text:=StrZero(StrToInt(Editwisno.Text),4);
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM stbwio');
  ZQuery1.SQL.Add('WHERE wisno='''+Editwisno.Text+'''');
  ZQuery1.Open;
  wicode:='(';
  if not ZQuery1.Eof then
    begin
    while not ZQuery1.Eof do
      begin
      wicode:=wicode+''''+ZQuery1.FieldByName('wicode').AsString+''',';
      ZQuery1.Next;
      end;
    ZQueryStawo.Close;
    ZQueryStawo.SQL.Clear;
    ZQueryStawo.SQL.Add('SELECT * FROM stawo');
    ZQueryStawo.SQL.Add('WHERE wicode in '+wicode+''''')');
    ZQueryStawo.SQL.Add('ORDER BY wicode');
    ZQueryStawo.Open;
    end
  else
    begin
    ZQueryStawo.Close;
    ZQueryStawo.SQL.Clear;
    ZQueryStawo.SQL.Add('SELECT * FROM stawo');
    ZQueryStawo.SQL.Add('ORDER BY wicode');
    ZQueryStawo.Open;
    ShowMessage('查無此整號資料！');
    end;
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE wicode in '+wicode+''''')');
  ZQueryStbwio.SQL.Add('ORDER BY wicode');
  ZQueryStbwio.Open;
end;

procedure THistoryRepForm.ProcessF6();
var
  i: Integer;
  wototal: Extended;
  wicode, crcode, widate: String;
begin
  pflag:=True;
  bflag:=True;
  PanelPBar.BringToFront;
  //歷史檔頭
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('WHERE widate>'''+MaskEdit1.Text+'''');
  ZQueryStawo.Open;
  //歷史檔身
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE widate>'''+MaskEdit1.Text+'''');
  ZQueryStbwio.Open;

  //衣物檔身
  ZQueryWio.Close;
  ZQueryWio.SQL.Clear;
  ZQueryWio.SQL.Add('SELECT * FROM Wio');
  ZQueryWio.SQL.Add('WHERE widate<='''+MaskEdit1.Text+'''');
  ZQueryWio.SQL.Add('GROUP BY wicode');
  ZQueryWio.SQL.Add('ORDER BY widate');
  ZQueryWio.Open;
  while (not ZQueryWio.Eof) and (bflag) do
    begin
    Application.ProcessMessages;
    RzProgressBar1.Percent:=Trunc((ZQueryWio.RecNo/ZQueryWio.RecordCount)*100);
    Label_rec.Caption:='處理筆數:'+IntToStr(ZQueryWio.RecNo)+'/'+IntToStr(ZQueryWio.RecordCount); //總筆數
    ZQuery2.Close;
    ZQuery2.SQL.Clear;
    ZQuery2.SQL.Add('SELECT * FROM Wio');
    ZQuery2.SQL.Add('WHERE wicode='''+ZQueryWio.FieldByName('wicode').AsString+'''');
    ZQuery2.SQL.Add('AND wiodate=''''');
    ZQuery2.Open;
    wototal:=0;
    wicode:='';
    if ZQuery2.Eof then //判斷洗單是否全部取件
      begin
      ZQuery2.Close;
      ZQuery2.SQL.Clear;
      ZQuery2.SQL.Add('SELECT * FROM Wio');
      ZQuery2.SQL.Add('WHERE wicode='''+ZQueryWio.FieldByName('wicode').AsString+'''');
      ZQuery2.SQL.Add('ORDER BY wisno');
      ZQuery2.Open;
      While not ZQuery2.Eof do
        begin
        wicode:=ZQuery2.FieldByName('wicode').Value;
        crcode:=ZQuery2.FieldByName('crcode').Value;
        widate:=ZQuery2.FieldByName('widate').Value;
        wototal:=wototal+ZQuery2.FieldByName('wisum').Value;
        try
          ZQueryStbwio.Append;
          ZQueryStbwio.FieldByName('wicode').Value:=ZQuery2.FieldByName('wicode').Value;
          ZQueryStbwio.FieldByName('wisno').Value:=ZQuery2.FieldByName('wisno').Value;
          ZQueryStbwio.FieldByName('crcode').Value:=ZQuery2.FieldByName('crcode').Value;
          ZQueryStbwio.FieldByName('wiitem').Value:=ZQuery2.FieldByName('wiitem').Value;
          ZQueryStbwio.FieldByName('winame').Value:=ZQuery2.FieldByName('winame').Value;
          ZQueryStbwio.FieldByName('wiwash').Value:=ZQuery2.FieldByName('wiwash').Value;
          ZQueryStbwio.FieldByName('wiacc').Value:=ZQuery2.FieldByName('wiacc').Value;
          ZQueryStbwio.FieldByName('wimemo').Value:=ZQuery2.FieldByName('wimemo').Value;
          ZQueryStbwio.FieldByName('wiwamo').Value:=ZQuery2.FieldByName('wiwamo').Value;
          ZQueryStbwio.FieldByName('wiexkind').Value:=ZQuery2.FieldByName('wiexkind').Value;
          ZQueryStbwio.FieldByName('wiexmo').Value:=ZQuery2.FieldByName('wiexmo').Value;
          ZQueryStbwio.FieldByName('wiquty').Value:=ZQuery2.FieldByName('wiquty').Value;
          ZQueryStbwio.FieldByName('wisum').Value:=ZQuery2.FieldByName('wisum').Value;
          ZQueryStbwio.FieldByName('wiurge').Value:=ZQuery2.FieldByName('wiurge').Value;
          ZQueryStbwio.FieldByName('widay').Value:=ZQuery2.FieldByName('widay').Value;
          ZQueryStbwio.FieldByName('wimdate').Value:=ZQuery2.FieldByName('wimdate').Value;
          ZQueryStbwio.FieldByName('wiodate').Value:=ZQuery2.FieldByName('wiodate').Value;
          ZQueryStbwio.FieldByName('wiotime').Value:=ZQuery2.FieldByName('wiotime').Value;
          ZQueryStbwio.FieldByName('wiplace').Value:=ZQuery2.FieldByName('wiplace').Value;
          ZQueryStbwio.FieldByName('widate').Value:=ZQuery2.FieldByName('widate').Value;
          ZQueryStbwio.FieldByName('witime').Value:=ZQuery2.FieldByName('witime').Value;
          ZQueryStbwio.FieldByName('wimark').Value:=ZQuery2.FieldByName('wimark').Value;
          ZQueryStbwio.FieldByName('indate').Value:=ZQuery2.FieldByName('indate').Value;
          ZQueryStbwio.FieldByName('mark').Value:=ZQuery2.FieldByName('mark').Value;
          ZQueryStbwio.FieldByName('pps').Value:=ZQuery2.FieldByName('pps').Value;
          ZQueryStbwio.FieldByName('picture').Value:=ZQuery2.FieldByName('picture').Value;
          ZQueryStbwio.Post;
          ZQuery2.Delete;
        except
          ZQueryStbwio.Cancel;
        end;
        end;
      end;

    //增加歷史檔頭
    if wicode<>'' then
      begin
      ZQueryStawo.Append;
      ZQueryStawo.FieldByName('wicode').AsString:=wicode;
      ZQueryStawo.FieldByName('crcode').AsString:=crcode;
      ZQueryStawo.FieldByName('widate').AsString:=widate;
      ZQueryStawo.FieldByName('wototal').Value:=wototal;
      ZQueryStawo.FieldByName('wopsen').Value:=0;
      ZQueryStawo.FieldByName('woptotal').Value:=0;
      ZQueryStawo.FieldByName('worealmo').Value:=0;
      ZQueryStawo.FieldByName('woowimo').Value:=0;
      ZQueryStawo.FieldByName('witime').Value:='';
      ZQueryStawo.FieldByName('stoverdat').Value:='';
      ZQueryStawo.Post;
      end;
    ZQueryWio.Next;
    end;
  PanelPBar.SendToBack;

  //歷史檔頭
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('WHERE widate<='''+MaskEdit1.Text+'''');
  ZQueryStawo.SQL.Add('ORDER BY widate DESC');
  ZQueryStawo.Open;
  
  //歷史檔身
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE widate<='''+MaskEdit1.Text+'''');
  ZQueryStbwio.Open;
  //MaskEditDate1.Text:=MaskEdit1.Text;
  //MaskEditDate2.Text:=MaskEdit1.Text;
  ShowMessage('過帳完畢！');
  pflag:=False;
end;

procedure THistoryRepForm.ProcessF7();
var
  i: Integer;
  wototal: Extended;
  wicode, crcode, widate: String;
begin
  pflag:=True;
  PanelPBar.BringToFront;
  ZQueryWio.Close;
  ZQueryWio.SQL.Clear;
  ZQueryWio.SQL.Add('SELECT * FROM wio');
  ZQueryWio.SQL.Add('WHERE widate BETWEEN '''+MaskEditRSD.Text+''' AND '''+MaskEditRED.Text+'''');
  //ZQueryWio.SQL.Add('ORDER BY widate');
  ZQueryWio.Open;
  //歷史檔身
  ZQuery2.Close;
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('SELECT * FROM stbwio');
  ZQuery2.SQL.Add('WHERE widate BETWEEN '''+MaskEditRSD.Text+''' AND '''+MaskEditRED.Text+'''');
  ZQuery2.SQL.Add('ORDER BY widate');
  ZQuery2.Open;
  while not ZQuery2.Eof do
    begin
    Application.ProcessMessages;
    RzProgressBar1.Percent:=Trunc((ZQuery2.RecNo/ZQuery2.RecordCount)*100);
    try
      ZQueryWio.Append;
      ZQueryWio.FieldByName('wicode').Value:=ZQuery2.FieldByName('wicode').Value;
      ZQueryWio.FieldByName('wisno').Value:=ZQuery2.FieldByName('wisno').Value;
      ZQueryWio.FieldByName('crcode').Value:=ZQuery2.FieldByName('crcode').Value;
      ZQueryWio.FieldByName('wiitem').Value:=ZQuery2.FieldByName('wiitem').Value;
      ZQueryWio.FieldByName('winame').Value:=ZQuery2.FieldByName('winame').Value;
      ZQueryWio.FieldByName('wiwash').Value:=ZQuery2.FieldByName('wiwash').Value;
      ZQueryWio.FieldByName('wiacc').Value:=ZQuery2.FieldByName('wiacc').Value;
      ZQueryWio.FieldByName('wimemo').Value:=ZQuery2.FieldByName('wimemo').Value;
      ZQueryWio.FieldByName('wiwamo').Value:=ZQuery2.FieldByName('wiwamo').Value;
      ZQueryWio.FieldByName('wiexkind').Value:=ZQuery2.FieldByName('wiexkind').Value;
      ZQueryWio.FieldByName('wiexmo').Value:=ZQuery2.FieldByName('wiexmo').Value;
      ZQueryWio.FieldByName('wiquty').Value:=ZQuery2.FieldByName('wiquty').Value;
      ZQueryWio.FieldByName('wisum').Value:=ZQuery2.FieldByName('wisum').Value;
      ZQueryWio.FieldByName('wiurge').Value:=ZQuery2.FieldByName('wiurge').Value;
      ZQueryWio.FieldByName('widay').Value:=ZQuery2.FieldByName('widay').Value;
      ZQueryWio.FieldByName('wimdate').Value:=ZQuery2.FieldByName('wimdate').Value;
      ZQueryWio.FieldByName('wiodate').Value:=ZQuery2.FieldByName('wiodate').Value;
      ZQueryWio.FieldByName('wiotime').Value:=ZQuery2.FieldByName('wiotime').Value;
      ZQueryWio.FieldByName('wiplace').Value:=ZQuery2.FieldByName('wiplace').Value;
      ZQueryWio.FieldByName('widate').Value:=ZQuery2.FieldByName('widate').Value;
      ZQueryWio.FieldByName('witime').Value:=ZQuery2.FieldByName('witime').Value;
      ZQueryWio.FieldByName('wimark').Value:=ZQuery2.FieldByName('wimark').Value;
      ZQueryWio.FieldByName('indate').Value:=ZQuery2.FieldByName('indate').Value;
      ZQueryWio.FieldByName('mark').Value:=ZQuery2.FieldByName('mark').Value;
      ZQueryWio.FieldByName('pps').Value:=ZQuery2.FieldByName('pps').Value;
      ZQueryWio.FieldByName('picture').Value:=ZQuery2.FieldByName('picture').Value;
      ZQueryWio.Post;
      //ZQuery2.Delete; //刪除歷史檔身
    except
      ZQueryWio.Cancel;
    end; // try...except
    ZQuery2.Next;
    end; //while

  //刪除歷史檔頭
  ZQuery2.Close;
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('DELETE FROM stbwio');
  ZQuery2.SQL.Add('WHERE widate BETWEEN '''+MaskEditRSD.Text+''' AND '''+MaskEditRED.Text+'''');
  ZQuery2.ExecSQL;

  //刪除歷史檔頭
  ZQuery2.Close;
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('DELETE FROM stawo');
  ZQuery2.SQL.Add('WHERE widate BETWEEN '''+MaskEditRSD.Text+''' AND '''+MaskEditRED.Text+'''');
  ZQuery2.ExecSQL;

  PanelPBar.SendToBack;

  //歷史檔頭
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('WHERE widate<='''+MaskEditRED.Text+'''');
  ZQueryStawo.SQL.Add('ORDER BY widate DESC');
  ZQueryStawo.Open;

  //歷史檔身
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE widate<='''+MaskEditRED.Text+'''');
  ZQueryStbwio.SQL.Add('ORDER BY widate DESC');
  ZQueryStbwio.Open;
  ShowMessage('復原過帳完畢！');
  pflag:=False;
end;

procedure THistoryRepForm.ActionESCExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    PanelDateSet.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    end
  else if fkey='F2' then
    begin
    fkey:='';
    PanelWicode.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    end
  else if fkey='F3' then
    begin
    fkey:='';
    end
  else if fkey='F4' then
    begin
    fkey:='';
    PanelDelete.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    end
  else if fkey='F5' then
    begin
    fkey:='';
    Panelwisno.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    end
  else if (fkey='F6') and (not pflag) then
    begin
    fkey:='';
    Panel_F6.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    end
  else if (fkey='F7') and (not pflag) then
    begin
    fkey:='';
    Panel_F7.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    end
  else
    Close;
end;

procedure THistoryRepForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  ZConnection2.Connected:=False;
  ZConnection2.Protocol:=WDM.protocol.Value;
  ZConnection2.User:=WDM.myuser.Value;
  ZConnection2.Password:=WDM.mypassword.Value;
  ZConnection2.Port:=WDM.myport.Value;
  ZConnection2.Catalog:='washshop_backup';
  ZConnection2.Database:='washshop_backup';

  RzPanelBrowse.BringToFront;
  PanelDateSet.SendToBack;
  PanelWicode.SendToBack;
  PanelDelete.SendToBack;
  Panel_F6.SendToBack;
  Panel_F7.SendToBack;

  MaskEditDate1.Text:=ChinaDate1(Date);
  MaskEditDate2.Text:=ChinaDate1(Date);

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid2.IniAttributes.FileName:=ExtractFilePath(Application.ExeName)+'Clothes.ini';
  wwDBGrid2.IniAttributes.SectionName:='HistoryRep'+IntToStr(wisnod);
  wwDBGrid2.LoadFromIniFile;
  pflag:=False;
end;

procedure THistoryRepForm.ActionF1Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F1';
    PanelDateSet.BringToFront;
    Edit_crcode.SetFocus;
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    end;
end;

procedure THistoryRepForm.MaskEditDate1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
  if (Key=VK_UP) then
    Perform(WM_NextDlgCtl, 1, 0);
end;

procedure THistoryRepForm.MaskEditDate2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
  if (Key=VK_UP) then
    Perform(WM_NextDlgCtl, 1, 0);
end;

procedure THistoryRepForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(HistoryRepForm);
  fkey:='';
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('WHERE wicode=''''');
  ZQueryStawo.SQL.Add('ORDER BY wicode');
  ZQueryStawo.Open;
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('WHERE wicode=''''');
  ZQueryStbwio.SQL.Add('ORDER BY wicode, wisno');
  ZQueryStbwio.Open;
  
  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;

  PanelDateSet.Left:=Trunc((Width-PanelDateSet.Width)/2);
  PanelDateSet.Top:=Trunc((Height-PanelDateSet.Height)/2);
  PanelWicode.Left:=Trunc((Width-PanelWicode.Width)/2);
  PanelWicode.Top:=Trunc((Height-PanelWicode.Height)/2);
  PanelDelete.Left:=Trunc((Width-PanelDelete.Width)/2);
  PanelDelete.Top:=Trunc((Height-PanelDelete.Height)/2);
  PanelPBar.Left:=Trunc((Width-PanelPBar.Width)/2);
  PanelPBar.Top:=Trunc((Height-PanelPBar.Height)/2);
  Panel_F6.Left:=Trunc((Width-Panel_F6.Width)/2);
  Panel_F6.Top:=Trunc((Height-Panel_F6.Height)/2);
  Panel_F7.Left:=Trunc((Width-Panel_F7.Width)/2);
  Panel_F7.Top:=Trunc((Height-Panel_F7.Height)/2);
end;

procedure THistoryRepForm.EditwicodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    ProcessF2();
    PanelWicode.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure THistoryRepForm.ActionF2Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F2';
    EditWicode.Text:='';
    Editwicode.SetFocus;
    PanelWicode.BringToFront;
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    end;
end;

procedure THistoryRepForm.ActionF4Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F4';
    MaskEditDel.SetFocus;
    MaskEditDel.SelStart:=0;
    PanelDelete.BringToFront;  
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    end;
end;

procedure THistoryRepForm.MaskEditDelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure THistoryRepForm.ActionF5Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F5';
    Editwisno.Text:='';
    Editwisno.SetFocus;
    Panelwisno.BringToFront;
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    end;
end;

procedure THistoryRepForm.EditwisnoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  wicode: String;
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    ProcessF5();
    Panelwisno.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid2.Enabled:=True;
    wwDBGrid1.SetFocus;
    end;
end;

procedure THistoryRepForm.ActionF9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    wwDBGrid1.DataSource.DataSet.DisableControls;
    wwDBGrid2.DataSource.DataSet.DisableControls;
    try
      ZQuery1.Close;
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('SELECT * FROM stbwio');
      ZQuery1.SQL.Add('WHERE (widate BETWEEN '''+MaskEditDate1.Text+''' AND '''+MaskEditDate2.Text+''')');
      if Edit_crcode.Text<>'' then
        ZQuery1.SQL.Add('AND (crcode='''+Edit_crcode.Text+''')');
      ZQuery1.SQL.Add('ORDER BY wicode');
      ZQuery1.Open;
      PreviewForm := TPreviewForm.Create(Application);
      frxReportF9.preview:=PreviewForm.frxPreview1;
      if wisnod=5 then (frxReportF9.FindObject('Memo14')as TfrxMemoView).Text:='洗號';
      (frxReportF9.FindObject('MemoDate')as TfrxMemoView).Text:=MaskEditDate1.Text+'～'+MaskEditDate2.Text;
      frxReportF9.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    wwDBGrid2.DataSource.DataSet.EnableControls;
    end;
end;

procedure THistoryRepForm.ActionF6Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F6';
    //Label16.Caption:='過帳日期';
    //Label14.Caption:='此日期前所有已取件衣物'+#13+#10+'過檔至歷史資料';
    Panel_F6.BringToFront;
    MaskEdit1.SetFocus;
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    end;
end;

procedure THistoryRepForm.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure THistoryRepForm.Button1Click(Sender: TObject);
begin
  Panel_F6.SendToBack;
  wwDBGrid1.DataSource.DataSet.DisableControls;
  wwDBGrid2.DataSource.DataSet.DisableControls;
  ProcessF6();
  wwDBGrid1.DataSource.DataSet.EnableControls;
  wwDBGrid2.DataSource.DataSet.EnableControls;
  fkey:='';
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.Enabled:=True;
end;

procedure THistoryRepForm.Button2Click(Sender: TObject);
begin
  PanelDelete.SendToBack;
  PanelPBar.BringToFront;
  ProcessF4();
  ZQueryStawo.Close;
  ZQueryStawo.SQL.Clear;
  ZQueryStawo.SQL.Add('SELECT * FROM stawo');
  ZQueryStawo.SQL.Add('ORDER BY wicode');
  ZQueryStawo.Open;
  ZQueryStbwio.Close;
  ZQueryStbwio.SQL.Clear;
  ZQueryStbwio.SQL.Add('SELECT * FROM stbwio');
  ZQueryStbwio.SQL.Add('ORDER BY wicode, wisno');
  ZQueryStbwio.Open;
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.Enabled:=True;
  ShowMessage('歷史資料刪除完成！');
  fkey:='';
end;

procedure THistoryRepForm.SpeedButton1Click(Sender: TObject);
begin
  try
    QueryCustForm := TQueryCustForm.Create(Application);
    QueryCustForm.ShowModal;
    if QueryCustForm.selflag then
      Edit_crcode.Text:=WDM.ZQuery_cr.FieldByName('crcode').AsString
    else
      Edit_crcode.Text:='';
    FreeAndNil(QueryCustForm);
  except
    on E: Exception do
      MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure THistoryRepForm.Edit_crcodeExit(Sender: TObject);
begin
  if (Edit_crcode.Text<>'')AND(Length(Edit_crcode.Text)<5) then
    Edit_crcode.Text:=StrZero(StrToInt(Edit_crcode.Text),5);
end;

procedure THistoryRepForm.ButtonF1Click(Sender: TObject);
begin
  fkey:='';
  Caption:='歷史衣物統計作業-'+MaskEditDate1.Text+'～'+MaskEditDate2.Text;
  ProcessF1();
  PanelDateSet.SendToBack;
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.Enabled:=True;
  wwDBGrid1.SetFocus;
end;

procedure THistoryRepForm.Edit_crcodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
end;

procedure THistoryRepForm.ActionF7Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F7';
    Panel_F7.BringToFront;
    MaskEditRSD.SetFocus;
    wwDBGrid1.Enabled:=False;
    wwDBGrid2.Enabled:=False;
    end;
end;

procedure THistoryRepForm.Button3Click(Sender: TObject);
begin
  Panel_F7.SendToBack;
  wwDBGrid1.DataSource.DataSet.DisableControls;
  wwDBGrid2.DataSource.DataSet.DisableControls;
  ProcessF7();
  wwDBGrid1.DataSource.DataSet.EnableControls;
  wwDBGrid2.DataSource.DataSet.EnableControls;
  fkey:='';
  wwDBGrid1.Enabled:=True;
  wwDBGrid2.Enabled:=True;
end;

procedure THistoryRepForm.MaskEditRSDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
  if (Key=VK_UP) then
    Perform(WM_NextDlgCtl, 1, 0);
end;

procedure THistoryRepForm.MaskEditREDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_Down) then
    Perform(WM_NextDlgCtl, 0, 0);
  if (Key=VK_UP) then
    Perform(WM_NextDlgCtl, 1, 0);
end;

procedure THistoryRepForm.Button4Click(Sender: TObject);
begin
  bflag:=False;
end;

end.
