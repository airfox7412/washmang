unit wio_Add;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids,
  ComCtrls, Buttons, Dialogs, Wwdbigrd, Wwdbgrid, ActnList, ImgList, Math,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable,
  RzButton, RzPanel, ZConnection, RzPrgres, frxClass, frxDBSet,
  AHMSystemClass, AHMTLogFile, Menus;

type
  TWioAddForm = class(TForm)
    ZQuery_wio_temp: TZQuery;
    DS_Qwio_temp: TDataSource;
    ActionList1: TActionList;
    Action_Esc: TAction;
    ZQuery_wio_tempwicode: TStringField;
    ZQuery_wio_tempwisno: TStringField;
    ZQuery_wio_tempcrcode: TStringField;
    ZQuery_wio_tempwiname: TStringField;
    ZQuery_wio_tempwiitem: TStringField;
    ZQuery_wio_tempwiacc: TStringField;
    ZQuery_wio_tempwimemo: TStringField;
    ZQuery_wio_tempwiwash: TStringField;
    ZQuery_wio_tempwiwamo: TFloatField;
    ZQuery_wio_tempwiexkind: TStringField;
    ZQuery_wio_tempwiexmo: TFloatField;
    ZQuery_wio_tempwiquty: TIntegerField;
    ZQuery_wio_tempwisum: TFloatField;
    ZQuery_wio_tempwiurge: TStringField;
    ZQuery_wio_tempwiday: TStringField;
    ZQuery_wio_tempwimdate: TStringField;
    ZQuery_wio_tempwiodate: TStringField;
    ZQuery_wio_tempwiotime: TTimeField;
    ZQuery_wio_tempwiplace: TStringField;
    ZQuery_wio_tempwidate: TStringField;
    ZQuery_wio_tempwimark: TStringField;
    ZQuery_wio_tempindate: TStringField;
    ZQuery_wio_tempmark: TStringField;
    Panel_Browse: TPanel;
    Panel_style: TPanel;
    Panel_wash: TPanel;
    Panel_acc: TPanel;
    ZTable_acc: TZTable;
    Action_F1: TAction;
    Action_F2: TAction;
    Panel_memo: TPanel;
    ZTable_memo: TZTable;
    ZQuery: TZReadOnlyQuery;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    RzToolbarButtonExit: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    Action_F12: TAction;
    RzToolbarButtonF12: TRzToolbarButton;
    Action_F9: TAction;
    Action_F5: TAction;
    RzToolbarButtonF5: TRzToolbarButton;
    ZQuery_wo: TZQuery;
    Panel_Pay: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LabelP1: TLabel;
    LabelP2: TLabel;
    Edit_Pay: TEdit;
    Edit_Discount: TEdit;
    Action_F3: TAction;
    RzToolbarButtonF3: TRzToolbarButton;
    Action_F10: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
    ZQuery_wio_temppps: TIntegerField;
    ZQuery_wio_tempsno: TLargeintField;
    ZQuery_wio_temppicture: TStringField;
    Action_F4: TAction;
    Action_PgDn: TAction;
    RzToolbarButtonF4: TRzToolbarButton;
    Panel_EXKind: TPanel;
    Label11: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Edit_exkind: TEdit;
    Edit_exkp: TEdit;
    Panel_Ex: TPanel;
    RzToolbarButtonCF2: TRzToolbarButton;
    Action_CtrlF2: TAction;
    Action_CtrlF3: TAction;
    RzToolbarButtonCF3: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    RzToolbarButtonCP: TRzToolbarButton;
    Action_CP: TAction;
    ZQuery_wio_tempcrname: TStringField;
    ZQuery_wio_tempcrtel: TStringField;
    ZQuery_wio_tempcradr: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
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
    ZQuery_wowiosn: TLargeintField;
    ZQuery_wocrcode: TStringField;
    ZQuery_wowicode: TStringField;
    ZQuery_wowototal: TFloatField;
    ZQuery_wowoptotal: TFloatField;
    ZQuery_woworealmo: TFloatField;
    ZQuery_wofrgetmo: TFloatField;
    ZQuery_wowocntmo: TFloatField;
    ZQuery_wowopsen: TFloatField;
    ZQuery_wowidate: TStringField;
    ZQuery_wowitime: TStringField;
    ZQuery_wosfname: TStringField;
    ZQuery_wofritem: TStringField;
    PanelPBar: TPanel;
    LabelWait: TLabel;
    RzPanel_cr: TRzPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    CrMoneyLabel: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    lbAddQuty: TLabel;
    lbAddMoney: TLabel;
    lb_wicode: TLabel;
    lb_widate: TLabel;
    Hlbcrpsen: TLabel;
    Hlbcppsen: TLabel;
    lbNowMoney: TLabel;
    lbPay: TLabel;
    Image1: TImage;
    lbDiscount: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    RzPanel_Insert: TRzPanel;
    Label_sno: TLabel;
    Label_color: TLabel;
    Label_name: TLabel;
    Label_mothe: TLabel;
    Label_price: TLabel;
    Label_q: TLabel;
    Label_mdate: TLabel;
    Label_sum: TLabel;
    Label_acc: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    ButtonSave: TButton;
    Edit_sno: TEdit;
    Edit_item: TEdit;
    Edit_style: TEdit;
    Edit_wash: TEdit;
    Edit_wamo: TEdit;
    Edit_urge: TEdit;
    Edit_mdate: TEdit;
    Edit_quty: TEdit;
    Edit_sum: TEdit;
    Edit_acc: TEdit;
    Edit_memo: TEdit;
    Edit_pps: TEdit;
    Button1: TButton;
    Panel_item: TPanel;
    LB_Item: TListBox;
    LB_style: TListBox;
    LB_wash: TListBox;
    LB_acc: TListBox;
    LB_memo: TListBox;
    LB_ExKind: TListBox;
    Action_Ins: TAction;
    RzProgressBar1: TRzProgressBar;
    ZQueryF9crtelb: TStringField;
    Panel_Discount: TPanel;
    Label5: TLabel;
    Label12: TLabel;
    Edit_Discnt: TEdit;
    Label23: TLabel;
    Action_F6: TAction;
    RzToolbarButtonF6: TRzToolbarButton;
    Action_F7: TAction;
    RzToolbarButtonF7: TRzToolbarButton;
    RzToolbarButtonF8: TRzToolbarButton;
    Action_F8: TAction;
    Action_CF9: TAction;
    ZQuery_wio_temptno: TStringField;
    ZConnection1: TZConnection;
    ZQuery_wio_tempwitime: TTimeField;
    Action_CA1: TAction;
    AHMLogFile1: TAHMLogFile;
    ZReadOnlyQuery_vip: TZReadOnlyQuery;
    ZQueryF9crmoney1: TFloatField;
    ZQuery_wio_bak: TZQuery;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField4: TFloatField;
    StringField28: TStringField;
    StringField29: TStringField;
    IntegerField3: TIntegerField;
    FloatField5: TFloatField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    FloatField6: TFloatField;
    IntegerField4: TIntegerField;
    StringField34: TStringField;
    TimeField2: TTimeField;
    TimeField3: TTimeField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    LargeintField1: TLargeintField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    Panel_history: TPanel;
    Label_History: TLabel;
    Label_wiwamo: TLabel;
    ZQueryF9cvip: TStringField;
    ZQueryVip: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure LB_itemClick(Sender: TObject);
    procedure LB_styleClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure LB_washClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_PayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F12Execute(Sender: TObject);
    procedure LB_accClick(Sender: TObject);
    procedure LB_memoClick(Sender: TObject);
    procedure Action_F3Execute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure Edit_itemEnter(Sender: TObject);
    procedure Edit_itemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleEnter(Sender: TObject);
    procedure Edit_washEnter(Sender: TObject);
    procedure Edit_wamoEnter(Sender: TObject);
    procedure Edit_wamoExit(Sender: TObject);
    procedure Edit_urgeEnter(Sender: TObject);
    procedure Edit_mdateEnter(Sender: TObject);
    procedure Edit_qutyEnter(Sender: TObject);
    procedure Edit_qutyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_sumEnter(Sender: TObject);
    procedure Edit_accEnter(Sender: TObject);
    procedure Edit_accKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_memoEnter(Sender: TObject);
    procedure RzToolbarButtonF5Click(Sender: TObject);
    procedure RzToolbarButtonF9Click(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit_itemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_washKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_snoEnter(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure Edit_accKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_memoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkindEnter(Sender: TObject);
    procedure Action_F5Execute(Sender: TObject);
    procedure Edit_exkindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_exkpEnter(Sender: TObject);
    procedure LB_ExKindClick(Sender: TObject);
    procedure Edit_memoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_CtrlF2Execute(Sender: TObject);
    procedure Action_CtrlF3Execute(Sender: TObject);
    procedure Edit_washKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_styleChange(Sender: TObject);
    procedure LB_itemEnter(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Action_CPExecute(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_urgeChange(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Edit_qutyExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_InsExecute(Sender: TObject);
    procedure Action_F6Execute(Sender: TObject);
    procedure Edit_DiscntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F7Execute(Sender: TObject);
    procedure Action_F8Execute(Sender: TObject);
    procedure Action_CF9Execute(Sender: TObject);
    procedure Action_CA1Execute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    HoldFlag: Boolean;
    rfkey: String;
    procedure ShowItem();
    procedure ShowStyle();
    procedure ShowWash();
    procedure ShowAcc();
    procedure ShowMemo();
    procedure ShowExKind();
    Procedure CloseAllPanel();
    procedure SetSql_wio_temp();
    Procedure Add_wio_temp();
    Procedure Insert_wio_temp();
    Procedure Edit_wio_temp();
    Procedure Append_wio_temp();
    Procedure CloseAllBtn(flag: Boolean);
    Procedure SaveWio_Temp();
    Procedure WriteWisno();
    Procedure RenewWisno();
    Procedure WriteToWio();
    Procedure CalAddwio_temp();
    procedure keep_temp();
    Procedure New_wo(kind: Integer);
    Function CalSum(): Boolean;
    Procedure AddDel_wio();
    procedure SP300(flag: Boolean);
    procedure CP2140_PLLB(flag: Boolean);
  end;

Function Rounda(Value: Extended; Len: Integer): Extended;

var
  WioAddForm: TWioAddForm;
  widate, wimdate, crcode, styleno, cpexp, cpexpmode, cpasmb: String;
  wicode, wisno, wisnod, cpdayn, cpqday: Integer;
  washpsno: Real;

  Tb2_Bookmark: String;
  //OldEditStr: Array of String;
  OldEditStr: String;

  oldvalue, q_crcode: String;
  pflag, ppaa, exflag, menuflag, kflag: Boolean;
  HintTop, pcnt, tno: Integer;
  fkey, fstr, pname, exitstr: String;
  PayVal, DiscountVal, TotalVal, crmoneyVal, oldv: Real;
  witime: TTime;

implementation

uses WDModule, lcutils, GetCam, ShowPic;

{$R *.DFM}

var dpCrLf : AnsiString = chr(13)+chr(10);
var szSavePath : String = 'C:\Argox';
var szSaveFile : AnsiString = 'C:\Argox\PPLB_Example.Prn';
var sznop1     : AnsiString = 'nop_front' + Chr(13) + chr(10);
var sznop2     : AnsiString = 'nop_middle' + Chr(13) + chr(10);
function  B_Bar2d_Maxi(x:integer; y:integer; cl:integer; cc:integer; pc:integer; data:AnsiString)
          :integer;stdcall;external 'WINPPLB.DLL';
function  B_Bar2d_PDF417(x:integer; y:integer; w:integer; v:integer; s:integer; c:integer;
          px:integer; py:integer; r:integer; l:integer; t:integer; o:integer; data:AnsiString):integer;
          stdcall;external 'WINPPLB.DLL';
function  B_Bar2d_PDF417_N(x:integer; y:integer; w:integer; para:AnsiString; data:AnsiString):integer;
          stdcall;external 'WINPPLB.DLL';
Procedure B_ClosePrn();stdcall;external 'WINPPLB.DLL';
function  B_CreatePrn(selection:integer; filename:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Del_Form(formname:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Del_Pcx(pcxname:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Draw_Box(x:integer; y:integer; thickness:integer; hor_dots:integer; ver_dots:integer)
          :integer;stdcall;external 'WINPPLB.DLL';
function  B_Draw_Line(mode:char; x:integer; y:integer; hor_dots:integer; ver_dots:integer)
          :integer;stdcall;external 'WINPPLB.DLL';
function  B_Error_Reporting(option:char):integer;stdcall;external 'WINPPLB.DLL';
function  B_Get_DLL_Version(nShowMessage:integer):PAnsiChar;stdcall;external 'WINPPLB.DLL';
function  B_Get_DLL_VersionA(nShowMessage:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Get_Graphic_ColorBMP(x:integer; y:integer; filename:AnsiString):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Get_Graphic_ColorBMPEx(x:integer; y:integer; nWidth:integer; nHeight:integer;
          rotate:integer; id_name:AnsiString; filename:AnsiString):integer;
          stdcall;external 'WINPPLB.DLL';
function  B_Get_Graphic_ColorBMP_HBitmap(x:integer; y:integer; nWidth:integer; nHeight:integer;
          rotate:integer; id_name:AnsiString; hbm:HBITMAP):integer;
          stdcall;external 'WINPPLB.DLL';
function  B_Get_Pcx(x:integer; y:integer; filename:AnsiString):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Initial_Setting(Type_Renamed:integer; Source:AnsiString):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_WriteData(IsImmediate:integer; pbuf:AnsiString; length:integer):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_ReadData(pbuf:PAnsiChar; length:integer; dwTimeoutms:integer):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Load_Pcx(x:integer; y:integer; pcxname:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Open_ChineseFont(path:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Print_Form(labset:integer; copies:integer; form_out:AnsiString; var_Renamed:AnsiString)
          :integer;stdcall;external 'WINPPLB.DLL';
function  B_Print_MCopy(labset:integer; copies:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Print_Out(labset:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Prn_Barcode(x:integer; y:integer; ori:integer; type_Renamed:AnsiString; narrow:integer;
          width:integer; height:integer; human:char; data:AnsiString):integer;stdcall;
          external 'WINPPLB.DLL';
Procedure B_Prn_Configuration();stdcall;external 'WINPPLB.DLL';
function  B_Prn_Text(x:integer; y:integer; ori:integer; font:integer; hor_factor:integer;
          ver_factor:integer; mode:char; data:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Prn_Text_Chinese(x:integer; y:integer; fonttype:integer; id_name:AnsiString; data:AnsiString)
          :integer;stdcall;external 'WINPPLB.DLL';
function  B_Prn_Text_TrueType(x:integer; y:integer; FSize:integer; FType:AnsiString; Fspin:integer;
          FWeight:integer; FItalic:integer; FUnline:integer; FStrikeOut:integer; id_name:AnsiString;
          data:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Prn_Text_TrueType_W(x:integer; y:integer; FHeight:integer; FWidth:integer;
          FType:AnsiString; Fspin:integer; FWeight:integer; FItalic:integer; FUnline:integer;
          FStrikeOut:integer; id_name:AnsiString; data:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Select_Option(option:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Select_Option2(option:integer; p:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Select_Symbol(num_bit:integer; symbol:integer; country:integer):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Select_Symbol2(num_bit:integer; csymbol:AnsiString; country:integer):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Set_Backfeed(option:char):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_BMPSave(nSave:integer; strBMPFName:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_Darkness(darkness:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_DebugDialog(nEnable:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_Direction(direction:char):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_Form(formfile:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_Labgap(lablength:integer; gaplength:integer):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Set_Labwidth(labwidth:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_Originpoint(hor:integer; ver:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_Prncomport(baud:integer; parity:char; data:integer; stop:integer):integer;
          stdcall;external 'WINPPLB.DLL';
function  B_Set_Prncomport_PC(nBaudRate:integer; nByteSize:integer; nParity:integer;
          nStopBits:integer; nDsr:integer; nCts:integer; nXonXoff:integer):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Set_Speed(speed:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_ProcessDlg(nShow:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_ErrorDlg(nShow:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_GetUSBBufferLen():integer;stdcall;external 'WINPPLB.DLL';
function  B_EnumUSB(buf:PAnsiChar):integer;stdcall;external 'WINPPLB.DLL';
function  B_CreateUSBPort(nPort:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_ResetPrinter():integer;stdcall;external 'WINPPLB.DLL';
function  B_GetPrinterResponse(buf:AnsiString; nMax:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_TFeedMode(nMode:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_TFeedTest():integer;stdcall;external 'WINPPLB.DLL';
function  B_CreatePort(nPortType:integer; nPort:integer; filename:AnsiString):integer;stdcall;
          external 'WINPPLB.DLL';
function  B_Execute_Form(form_out:AnsiString; var_Renamed:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Bar2d_QR(x:integer; y:integer; model:integer; scl:integer; err:char; dinput:char;
          c:integer; d:integer; p:integer; data:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_GetNetPrinterBufferLen():integer;stdcall;external 'WINPPLB.DLL';
function  B_EnumNetPrinter(buf:PAnsiChar):integer;stdcall;external 'WINPPLB.DLL';
function  B_CreateNetPort(nPort:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Prn_Text_TrueType_Uni(x:integer; y:integer; FSize:integer; FType:AnsiString; Fspin:integer;
          FWeight:integer; FItalic:integer; FUnline:integer; FStrikeOut:integer; id_name:AnsiString;
          data:PWideChar; format:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_Prn_Text_TrueType_UniB(x:integer; y:integer; FSize:integer; FType:AnsiString; Fspin:integer;
          FWeight:integer; FItalic:integer; FUnline:integer; FStrikeOut:integer; id_name:AnsiString;
          data:PWideChar; format:integer):integer;stdcall;external 'WINPPLB.DLL';
function  B_GetUSBDeviceInfo(nPort:integer; pDeviceName:PAnsiChar; pDeviceNameLen:PInteger;
          pDevicePath:PAnsiChar; pDevicePathLen:PInteger):integer;stdcall;external 'WINPPLB.DLL';
function  B_Set_EncryptionKey(encryptionKey:AnsiString):integer;stdcall;external 'WINPPLB.DLL';
function  B_Check_EncryptionKey(decodeKey:AnsiString; encryptionKey:AnsiString;
          dwTimeoutms:integer):integer;stdcall;external 'WINPPLB.DLL';

Function Rounda(Value: Extended; Len: Integer): Extended;
begin
  Result:= StrToFloat(Format('%1.'+IntToStr(Len)+'f',[Value]));
end;

procedure TWioAddForm.keep_temp();
begin
  ZQuery_wio_temp.First;
  While not ZQuery_wio_temp.Eof do
    begin
    ZQuery_wio_temp.Edit;
    ZQuery_wio_temp.FieldByName('wicode').Value:='';
    ZQuery_wio_temp.Post;
    ZQuery_wio_temp.Next;
    end;
  Try
    ZQuery_wo.Close;
    ZQuery_wo.SQL.Clear;
    ZQuery_wo.SQL.Text:='SELECT * FROM wo WHERE wicode='''+strZero(wicode,6)+'''';
    ZQuery_wo.Open;
    if ZQuery_wo.RecordCount>0 then
      begin
      ZQuery_wo.Edit;
      ZQuery_wo.FieldByName('wicode').Value:='';
      ZQuery_wo.FieldByName('wototal').Value:=ZQuery_wo.FieldByName('woptotal').Value;
      ZQuery_wo.FieldByName('fritem').AsString:='x';
      ZQuery_wo.FieldByName('frgetmo').Value:=0;
      ZQuery_wo.Post;
      end;
  Finally //保留收件，復原客戶金額
    ZQuery_wo.Close;
    WDM.ZQuery_cr.Edit;
    WDM.ZQuery_cr.FieldByName('crmoney').Value:=StrToFloat(lbNowMoney.Caption)+StrToFloat(lbAddMoney.Caption);
    WDM.ZQuery_cr.Post;
  end;
end;

procedure TWioAddForm.SP300(flag: Boolean);
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

procedure TWioAddForm.CP2140_PLLB(flag: Boolean);
var
  i, j, k, rno: Integer;
  ret,nLen,sw : integer;
  pbuf : array[0..127] of AnsiChar;

  ver : PAnsiChar;
  strmsg : string;
  len1,len2 : integer;
  buf1,buf2 : AnsiString;
  buff1 : array[0..127] of WideChar;
  himage : HBITMAP;
begin
  if flag then
    begin
    // Test code start
    // open port.
    // dll version.
    ver := B_Get_DLL_Version(0);
     
    // search port.
    nLen := B_GetUSBBufferLen() + 1;
    strmsg := 'DLL ' + ver + dpCrLf;   // only sample coding, not smart.
    If nLen > 1 then
    begin
       len1 := 256;
       len2 := 128;
       SetLength(buf1,len1);
       SetLength(buf2,len2);
       B_EnumUSB(pbuf);
       B_GetUSBDeviceInfo(1, PAnsiChar(buf1), @len1, PAnsiChar(buf2), @len2);
       sw := 1;
       If 0 < sw then
              ret := B_CreatePrn(12, PAnsiChar(buf2)) // open usb.
       else
              ret := B_CreateUSBPort(1); // must call B_GetUSBBufferLen() function fisrt.
       If 0 < ret then
           strmsg := strmsg + 'Open USB fail!'
       else
       begin
           SetLength(buf1,len1);
           SetLength(buf2,len2);
           strmsg := strmsg + 'Open USB:' + dpCrLf + 'Device name: ';
           strmsg := strmsg + buf1;
           strmsg := strmsg + dpCrLf + 'Device path: ';
           strmsg := strmsg + buf2;
           //sw := 2;
           If 2 = sw then
           begin
              //Immediate Error Report.
              B_WriteData(1, '^ee'+chr(13)+chr(10), 5);   //^ee
              ret := B_ReadData(pbuf, 4, 1000);
           end;
       end;
    end
    else
     begin
     CreateDirectory(pchar(szSavePath), nil);
     ret := B_CreatePrn(0, szSaveFile);   // open file.
     strmsg := strmsg + 'Open ' + szSaveFile;
     if 0 < ret then
         strmsg := strmsg + ' file fail!'
     else
         strmsg := strmsg + ' file succeed!';
     end;
    //ShowMessage(strmsg);
    If 0 < ret then
       exit;

    // sample setting.
    B_Set_DebugDialog(1); //1設定除錯環境
    B_Set_Originpoint(100, 0);
    //B_Set_Labwidth(800); //設定標籤寬度
    B_Set_Labgap(5,0); //設定標籤長度(從最後影像開始Dot)和GAP
    B_Select_Option(5); //設定轉印及裁切
    B_Set_Darkness(WDM.heat.Value); //轉印溫度
    B_WriteData(0, sznop2, StrLen(PAnsiChar(sznop2)));
    B_WriteData(1, sznop1, StrLen(PAnsiChar(sznop1)));

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
      for j:=1 to ZQueryF9.FieldByName('wiquty').AsInteger do
        begin
        i:=i+1;
        B_Prn_Text_TrueType(0, 0, 60, 'Arial', 1, 100, 0, 0, 0, 'AA', ZQueryF9.FieldByName('wicode').AsString+'-'+IntToStr(i)+'-'+ZQueryF9.FieldByName('widate').AsString);

        StringToWideChar(ZQueryF9.FieldByName('wiwash').AsString+' '+IntToStr(rno)+ZQueryF9.FieldByName('crname').AsString+' '+ZQueryF9.FieldByName('winame').AsString, buff1, len1);
        buff1[13] := #$0000;   // null.
        B_Prn_Text_TrueType_Uni(0, 61, 50, '標楷體', 1, 400, 0, 0, 0, 'AB', buff1, 1);
        B_Print_Out(1);   // output copy 1.
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
          B_Prn_Text_TrueType(0, 0, 60, 'Arial', 1, 100, 0, 0, 0, 'AA', ZQueryF9.FieldByName('wicode').AsString+'-'+IntToStr(i)+'-'+ZQueryF9.FieldByName('widate').AsString);
          StringToWideChar(ZQueryF9.FieldByName('wiwash').AsString+' '+IntToStr(rno)+ZQueryF9.FieldByName('crname').AsString+' '+ZQueryF9.FieldByName('winame').AsString, buff1, len1);
          buff1[13] := #$0000;   // null.
          B_Prn_Text_TrueType_Uni(0, 61, 50, '標楷體', 1, 400, 0, 0, 0, 'AB', buff1, 1);
          B_Print_Out(1);   // output copy 1.
          end;
      ZQueryF9.Next;
      end;
    ZQueryF9.Close;
    B_ClosePrn(); // close port.
  end;
end;

procedure TWioAddForm.CloseAllBtn(flag: Boolean);
begin
  RzToolbarButtonF1.Visible:=flag;
  RzToolbarButtonF2.Visible:=flag;
  RzToolbarButtonF3.Visible:=flag;
  RzToolbarButtonF4.Visible:=flag;
  RzToolbarButtonF5.Visible:=flag;
  RzToolbarButtonF6.Visible:=flag;
  RzToolbarButtonF7.Visible:=flag;
  RzToolbarButtonF8.Visible:=flag;
  RzToolbarButtonF9.Visible:=flag;
  RzToolbarButtonF10.Visible:=flag;
  RzToolbarButtonF12.Visible:=flag;
  RzToolbarButtonCF2.Visible:=flag;
  RzToolbarButtonCF3.Visible:=flag;
  RzToolbarButtonCP.Visible:=flag;
  
  RzToolbarButtonF1.Enabled:=flag;
  RzToolbarButtonF2.Enabled:=flag;
  RzToolbarButtonF3.Enabled:=flag;
  RzToolbarButtonF4.Enabled:=flag;
  RzToolbarButtonF5.Enabled:=flag;
  RzToolbarButtonF6.Enabled:=flag;
  RzToolbarButtonF7.Enabled:=flag;
  RzToolbarButtonF8.Enabled:=flag;
  RzToolbarButtonF9.Enabled:=flag;
  RzToolbarButtonF10.Enabled:=flag;
  RzToolbarButtonF12.Enabled:=flag;
  RzToolbarButtonCF2.Enabled:=flag;
  RzToolbarButtonCF3.Enabled:=flag;
  RzToolbarButtonCP.Enabled:=flag;
end;

procedure TWioAddForm.WriteWisno();
begin
  tno:=tno+1;
  wisno:=wisno+1;
  if wisnod=4 then
    begin
    if (wisno>9999)or(wisno=10000) then //大於9999歸為1
      wisno:=0;
    end
  else if wisnod=5 then
    begin
    if (wisno>99999)or(wisno=100000) then //大於99999歸為1
      wisno:=0;
    end
  else if wisnod=6 then
    begin
    if (wisno>999999)or(wisno=1000000) then //大於999999歸為1
      wisno:=0;
    end;
end;

Procedure TWioAddForm.RenewWisno();
var
  fpath, oldpic, newpic: String;
begin
  fpath:=ExtractFilePath(Application.ExeName)+'Captures\';
  ZQuery_wio_temp.Close;
  ZQuery_wio_temp.SQL.Clear;
  ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
  ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQuery_wio_temp.SQL.Add('AND wicode='''+strZero(wicode,6)+'''');
  ZQuery_wio_temp.SQL.Add('ORDER BY sno');
  ZQuery_wio_temp.Open;
  wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger;
  tno:=0;
  WriteWisno();
  ZQuery_wio_temp.First;
  while not ZQuery_wio_temp.Eof do
    begin
    oldpic:=ZQuery_wio_temp.FieldByName('picture').AsString;
    ZQuery_wio_temp.Edit;
    ZQuery_wio_temp.FieldByName('tno').AsString:=strZero(tno,2);
    ZQuery_wio_temp.FieldByName('wisno').AsString:=strZero(wisno,wisnod);
    newpic:=ZQuery_wio_temp.FieldByName('wicode').AsString+'_'+ZQuery_wio_temp.FieldByName('wisno').AsString+'.jpg';
    if oldpic<>'' then
      begin
      RenameFile(fpath+oldpic, fpath+newpic); //變更照片檔案名稱
      ZQuery_wio_temp.FieldByName('picture').AsString:=newpic;
      end;
    ZQuery_wio_temp.Post;
    WriteWisno();
    ZQuery_wio_temp.Next;
    end;
end;

Procedure TWioAddForm.Edit_wio_temp();
var
  price, wamo: Real;
  quty, pps: Integer;
  fname, wiitem, winame, wiwash, wiurge, wimemo, wiacc, mdate: String;
begin
  wamo:=StrToFloat(Edit_wamo.Text);
  quty:=StrToInt(Edit_quty.Text);
  //CalSum(); //計算折扣後小計
  //price:=Round((StrToFloat(Edit_sum.Text)+0.5)/quty);
  price:=StrToFloat(Edit_sum.Text);
  wiitem:=Edit_item.Text;
  winame:=Edit_style.Text;
  wiwash:=Edit_wash.Text;
  wiurge:=Edit_urge.Text;
  wimemo:=Edit_memo.Text;
  wiacc:=Edit_acc.Text;
  pps:=StrToInt(Edit_pps.Text);
  mdate:=Edit_mdate.Text;
  fname:=strZero(wicode,6)+'_'+Edit_sno.Text+'.jpg';

  ZQuery_wio_temp.Edit;
  ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
  ZQuery_wio_temp.FieldByName('winame').Value:=winame;
  ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
  ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
  ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
  ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
  ZQuery_wio_temp.FieldByName('wiwamo').Value:=wamo;
  ZQuery_wio_temp.FieldByName('wiquty').Value:=quty;
  ZQuery_wio_temp.FieldByName('wisum').Value:=price;
  ZQuery_wio_temp.FieldByName('pps').Value:=pps;
  ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
  ZQuery_wio_temp.FieldByName('wimdate').Value:=mdate;
  ZQuery_wio_temp.FieldByName('witime').Value:=witime;
  if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
    ZQuery_wio_temp.FieldByName('picture').Value:=fname;
  ZQuery_wio_temp.Post;  //寫入資料庫
end;

Procedure TWioAddForm.Append_wio_temp();
var
  wiwamo: Real;
  wiquty, wisum, wipps: Integer;
  wiitem, winame, wiwash, wiurge, wimemo, wiacc, wimdate: String;
begin
  wiitem:=ZQuery_wio_temp.FieldByName('wiitem').Value;
  winame:=ZQuery_wio_temp.FieldByName('winame').Value;
  wiwash:=ZQuery_wio_temp.FieldByName('wiwash').Value;
  wiacc:=ZQuery_wio_temp.FieldByName('wiacc').Value;
  wimemo:=ZQuery_wio_temp.FieldByName('wimemo').Value;
  wiurge:=ZQuery_wio_temp.FieldByName('wiurge').Value;
  wimdate:=ZQuery_wio_temp.FieldByName('wimdate').Value;
  wiwamo:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
  wiquty:=ZQuery_wio_temp.FieldByName('wiquty').Value;
  wisum:=ZQuery_wio_temp.FieldByName('wisum').Value;
  wipps:=ZQuery_wio_temp.FieldByName('pps').Value;
  ZQuery_wio_temp.Append;
  ZQuery_wio_temp.FieldByName('tno').Value:=strZero(tno,2);
  ZQuery_wio_temp.FieldByName('wisno').Value:=strZero(wisno,wisnod);
  ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
  ZQuery_wio_temp.FieldByName('crcode').Value:=crcode;
  ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
  ZQuery_wio_temp.FieldByName('winame').Value:=winame;
  ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
  ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
  ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
  ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
  ZQuery_wio_temp.FieldByName('wiwamo').Value:=wiwamo;
  ZQuery_wio_temp.FieldByName('wiquty').Value:=wiquty;
  ZQuery_wio_temp.FieldByName('wisum').Value:=wisum;
  ZQuery_wio_temp.FieldByName('pps').Value:=wipps;
  ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
  ZQuery_wio_temp.FieldByName('witime').Value:=witime;
  ZQuery_wio_temp.FieldByName('wimdate').Value:=wimdate;
  ZQuery_wio_temp.Post;  //寫入資料庫
  WriteWisno();
end;

Procedure TWioAddForm.SaveWio_Temp();
begin
  if fkey='F1' then
    begin
    if (Edit_style.Text<>'') AND (Edit_wash.Text<>'') then
      begin
      Insert_wio_temp();
      Add_wio_temp();
      Edit_item.SetFocus;
      Panel_item.BringToFront;
      end
    else
      ShowMessage('衣物及洗法，不能空白！');
    if Length(Edit_quty.Text)>3 then
      ShowMessage('件數，不能大於999！');
    end;

  if fkey='F2' then
    begin
    if (Edit_style.Text<>'') AND (Edit_wash.Text<>'') then
      begin
      Edit_wio_temp();
      CloseAllPanel();
      wwDBGrid1.Enabled:=True;
      RzPanel_Insert.Visible:=False;
      RzPanel_cr.Visible:=True;
      //RzToolbarButtonExit.Caption:='ESC.離開';
      CloseAllBtn(True);
      wwDBGrid1.SetFocus;
      fkey:='';
      end
    else
      ShowMessage('衣物及洗法，不能空白！');
    end;

  CalAddwio_temp();
  SetSql_wio_temp();
  //New_wo(1);
end;

Procedure TWioAddForm.Insert_wio_temp();
var
  price, wamo: Real;
  i, quty, pps: Integer;
  fname, wiitem, winame, wiwash, wiurge, wimemo, wiacc, mdate: String;
  ret: Word;
begin
  CloseAllPanel();
  wamo:=StrToFloat(Edit_wamo.Text);
  quty:=StrToInt(Edit_quty.Text);
  //price:=Round((StrToFloat(Edit_sum.Text)+0.5)/quty);
  price:=Rounda((StrToFloat(Edit_sum.Text)/quty),0);
  wiitem:=Edit_item.Text;
  winame:=Edit_style.Text;
  wiwash:=Edit_wash.Text;
  wiurge:=Edit_urge.Text;
  wimemo:=Edit_memo.Text;
  wiacc:=Edit_acc.Text;
  pps:=StrToInt(Edit_pps.Text);
  mdate:=Edit_mdate.Text;
  fname:=strZero(wicode,6)+'_'+Edit_sno.Text+'.jpg';
  wisno:=StrToInt(Edit_sno.Text);
  if (quty>1)and(cpexp='是') then
    ret:=MessageDlg('衣物展開？', mtConfirmation, [mbYes,mbNo], 0)
  else if quty=1 then
    ret:=idNo
  else // 不詢問
    begin
    if cpexpmode='1' then
      ret:=idYes
    else if cpexpmode='2' then
      ret:=idNo;
    end;
  if ret=idYes then // 判斷有無展開
     begin
     wwDBGrid1.DataSource.DataSet.DisableControls;
     PanelPBar.BringToFront;
     CalSum();
     for i:=1 to quty do
       begin
       Application.ProcessMessages;
       RzProgressBar1.Percent:=Trunc((i/quty)*100);
       ZQuery_wio_temp.Insert;
       ZQuery_wio_temp.FieldByName('tno').Value:=strZero(tno,2);
       ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
       ZQuery_wio_temp.FieldByName('crcode').Value:=crcode;
       ZQuery_wio_temp.FieldByName('wisno').Value:=strZero(wisno,wisnod);
       ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
       ZQuery_wio_temp.FieldByName('winame').Value:=winame;
       ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
       ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
       ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
       ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
       ZQuery_wio_temp.FieldByName('wiwamo').Value:=wamo;
       ZQuery_wio_temp.FieldByName('wiquty').Value:=1;
       ZQuery_wio_temp.FieldByName('wisum').Value:=price;
       ZQuery_wio_temp.FieldByName('pps').Value:=pps;
       ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
       ZQuery_wio_temp.FieldByName('wimdate').Value:=mdate;
       ZQuery_wio_temp.FieldByName('witime').Value:=witime;
       ZQuery_wio_temp.Post;
       WriteWisno();
       end;     
     PanelPBar.SendToBack;
     wwDBGrid1.DataSource.DataSet.EnableControls;
     end
  else if ret=idNo then
    begin
    ZQuery_wio_temp.Insert;
    ZQuery_wio_temp.FieldByName('tno').Value:=strZero(tno,2);
    ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode,6);
    ZQuery_wio_temp.FieldByName('crcode').Value:=crcode;
    ZQuery_wio_temp.FieldByName('wisno').Value:=Edit_sno.Text;
    ZQuery_wio_temp.FieldByName('wiitem').Value:=wiitem;
    ZQuery_wio_temp.FieldByName('winame').Value:=winame;
    ZQuery_wio_temp.FieldByName('wiwash').Value:=wiwash;
    ZQuery_wio_temp.FieldByName('wiurge').Value:=wiurge;
    ZQuery_wio_temp.FieldByName('wimemo').Value:=wimemo;
    ZQuery_wio_temp.FieldByName('wiacc').Value:=wiacc;
    ZQuery_wio_temp.FieldByName('wiwamo').Value:=wamo;
    ZQuery_wio_temp.FieldByName('wiquty').Value:=quty;
    price:=StrToFloat(Edit_sum.Text);
    ZQuery_wio_temp.FieldByName('wisum').Value:=price;
    ZQuery_wio_temp.FieldByName('pps').Value:=pps;
    ZQuery_wio_temp.FieldByName('widate').Value:=lb_widate.Caption;
    ZQuery_wio_temp.FieldByName('wimdate').Value:=mdate;
    ZQuery_wio_temp.FieldByName('witime').Value:=witime;
    if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+fname) then
      ZQuery_wio_temp.FieldByName('picture').AsString:=fname;
    ZQuery_wio_temp.Post;  //寫入資料庫
    WriteWisno();
    end
end;

Procedure TWioAddForm.WriteToWio();
var
  sno, rcnt, rno: Integer;
begin
  ZQuery_wio_temp.Close;
  ZQuery_wio_temp.SQL.Clear;
  ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
  ZQuery_wio_temp.SQL.Add('WHERE wicode='''+strZero(wicode,6)+'''');
  ZQuery_wio_temp.SQL.Add('AND crcode='''+crcode+'''');
  ZQuery_wio_temp.SQL.Add('ORDER BY wisno');
  ZQuery_wio_temp.Open;

  WDM.ZQuery_wio.Open;
  //wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger; //整理編號
  wwDBGrid1.DataSource.DataSet.DisableControls;
  PanelPBar.BringToFront;
  rcnt:=ZQuery_wio_temp.RecordCount;
  rno:=0;
  While not ZQuery_wio_temp.Eof do
    begin
    Application.ProcessMessages;
    try
      WDM.ZQuery_wio.Insert;
      WDM.ZQuery_wio.FieldByName('wicode').Value:=ZQuery_wio_temp.FieldByName('wicode').Value;
      WDM.ZQuery_wio.FieldByName('wisno').Value:=ZQuery_wio_temp.FieldByName('wisno').Value;
      WDM.ZQuery_wio.FieldByName('crcode').Value:=ZQuery_wio_temp.FieldByName('crcode').Value;
      WDM.ZQuery_wio.FieldByName('wiitem').Value:=ZQuery_wio_temp.FieldByName('wiitem').Value;
      WDM.ZQuery_wio.FieldByName('winame').Value:=ZQuery_wio_temp.FieldByName('winame').Value;
      WDM.ZQuery_wio.FieldByName('wiwash').Value:=ZQuery_wio_temp.FieldByName('wiwash').Value;
      WDM.ZQuery_wio.FieldByName('wiacc').Value:=ZQuery_wio_temp.FieldByName('wiacc').Value;
      WDM.ZQuery_wio.FieldByName('wimemo').Value:=ZQuery_wio_temp.FieldByName('wimemo').Value;
      WDM.ZQuery_wio.FieldByName('wiwamo').Value:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
      WDM.ZQuery_wio.FieldByName('wiexkind').Value:=ZQuery_wio_temp.FieldByName('wiexkind').Value;
      WDM.ZQuery_wio.FieldByName('wiexmo').Value:=ZQuery_wio_temp.FieldByName('wiexmo').Value;
      WDM.ZQuery_wio.FieldByName('wiquty').Value:=ZQuery_wio_temp.FieldByName('wiquty').Value;
      WDM.ZQuery_wio.FieldByName('wisum').Value:=ZQuery_wio_temp.FieldByName('wisum').Value;
      WDM.ZQuery_wio.FieldByName('wiurge').Value:=ZQuery_wio_temp.FieldByName('wiurge').Value;
      WDM.ZQuery_wio.FieldByName('widay').Value:=ZQuery_wio_temp.FieldByName('widay').Value;
      WDM.ZQuery_wio.FieldByName('wimdate').Value:=ZQuery_wio_temp.FieldByName('wimdate').Value;
      WDM.ZQuery_wio.FieldByName('wiodate').Value:=ZQuery_wio_temp.FieldByName('wiodate').Value;
      WDM.ZQuery_wio.FieldByName('wiotime').Value:=ZQuery_wio_temp.FieldByName('wiotime').Value;
      WDM.ZQuery_wio.FieldByName('wiplace').Value:=ZQuery_wio_temp.FieldByName('wiplace').Value;
      WDM.ZQuery_wio.FieldByName('widate').Value:=ZQuery_wio_temp.FieldByName('widate').Value;
      WDM.ZQuery_wio.FieldByName('witime').Value:=ZQuery_wio_temp.FieldByName('witime').Value;
      WDM.ZQuery_wio.FieldByName('wimark').Value:=ZQuery_wio_temp.FieldByName('wimark').Value;
      WDM.ZQuery_wio.FieldByName('indate').Value:=ZQuery_wio_temp.FieldByName('indate').Value;
      WDM.ZQuery_wio.FieldByName('mark').Value:=ZQuery_wio_temp.FieldByName('mark').Value;
      WDM.ZQuery_wio.FieldByName('pps').Value:=ZQuery_wio_temp.FieldByName('pps').Value;
      WDM.ZQuery_wio.FieldByName('picture').Value:=ZQuery_wio_temp.FieldByName('picture').Value;
      WDM.ZQuery_wio.Post;
      AHMLogFile1.Log('收件：'+ZQuery_wio_temp.FieldByName('crcode').Value+'-'+ZQuery_wio_temp.FieldByName('wicode').Value+'-'+ZQuery_wio_temp.FieldByName('wisno').Value);
      wisno:=ZQuery_wio_temp.FieldByName('wisno').Value;
      ZQuery_wio_temp.Delete;
    except
      AHMLogFile1.Log('收件資料寫入錯誤!-'+ZQuery_wio_temp.FieldByName('crcode').Value+'-'+ZQuery_wio_temp.FieldByName('wicode').Value+'-'+ZQuery_wio_temp.FieldByName('wisno').Value);
      ShowMessage('收件資料寫入錯誤，請通知電腦公司！');
    end;
    rno:=rno+1;
    RzProgressBar1.Percent:=Trunc((rno/rcnt)*100);
    //WriteWisno();
    end;
  try
    // 記錄最後的洗衣單號及整理編號
    WDM.ZTableCompy.Close;
    WDM.ZTableCompy.Open;
    WDM.ZTableCompy.Edit;
    WDM.ZTableCompy.FieldByName('cpwino').AsInteger:=wicode;
    WDM.ZTableCompy.FieldByName('cpwisno').AsInteger:=wisno;
    WDM.ZTableCompy.Post;
    AHMLogFile1.Log('儲存至門市資料：洗單:'+IntToStr(wicode)+'-洗號:'+IntToStr(wisno));
    AHMLogFile1.Log('-----------------------------------------------------------------');
  except
    AHMLogFile1.Log('記錄最後的洗衣單號及整理編號錯誤！'+IntToStr(wicode)+'-'+IntToStr(wisno));
    ShowMessage('記錄最後的洗衣單號及整理編號錯誤，請通知電腦公司！');
  end;
  PanelPBar.SendToBack;
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

Function TWioAddForm.CalSum(): Boolean;
var
  am, crpsen, cppsen, sum, psen: Real;
begin
  crpsen:=StrToFloat(copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1))/100;
  cppsen:=StrToFloat(Copy(Hlbcppsen.Caption,1,length(Hlbcppsen.Caption)-1))/100;
  sum:=StrToFloat(Edit_wamo.Text)*StrToFloat(Edit_quty.Text);
  if crpsen>=cppsen then
    psen:=crpsen
  else
    psen:=cppsen;
  if washpsno<>0 then
    psen:=washpsno/100;
  Edit_pps.Text:=FloatToStr(psen*100);
  psen:=1-psen;
  am:=sum*psen;
  Edit_sum.Text:=FloatToStr(Rounda(am,0));
end;

procedure TWioAddForm.ShowItem();
var
  rcnt: Integer;
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waitem');
  ZQuery.SQL.Add('ORDER BY wano3');
  ZQuery.Open;
  
  LB_item.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_item.Items.Add(ZQuery.FieldByName('wano3').AsString+'.'+ZQuery.FieldByName('waitem').AsString+'    ');
    ZQuery.Next;
    end;
  //rcnt:=Trunc(ZQuery.RecordCount/11);
  //LB_item.Columns:=rcnt;
  ZQuery.Close;
  Panel_item.Top:=HintTop;
  Panel_item.Left:=0;
  Panel_item.Width:=795;
  Panel_item.Height:=250;
end;

procedure TWioAddForm.ShowStyle();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wastyle');
  ZQuery.SQL.Add('ORDER BY wano2');
  ZQuery.Open;

  LB_style.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_style.Items.Add(ZQuery.FieldByName('wano2').AsString+'.'+ZQuery.FieldByName('wastyle').AsString+'    ');
    ZQuery.Next;
    end;
  ZQuery.Close;
  Panel_style.Top:=HintTop;
  Panel_style.Left:=0;
  Panel_style.Width:=795;
  Panel_style.Height:=250;
end;

procedure TWioAddForm.ShowWash();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wawash');
  ZQuery.SQL.Add('ORDER BY wano6');
  ZQuery.Open;

  LB_wash.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_wash.Items.Add(ZQuery.FieldByName('wano6').AsString+'.'+ZQuery.FieldByName('wawash').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
  Panel_wash.Top:=HintTop;
  Panel_wash.Left:=Edit_wash.Left;
  Panel_wash.Width:=130;
  Panel_wash.Height:=220;
end;

procedure TWioAddForm.ShowAcc();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waacc');
  ZQuery.SQL.Add('ORDER BY wano4');
  ZQuery.Open;

  LB_acc.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_acc.Items.Add(ZQuery.FieldByName('wano4').AsString+'.'+ZQuery.FieldByName('waacc').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;

  Panel_acc.Top:=HintTop;
  Panel_acc.Left:=0;
  Panel_acc.Width:=795;
  Panel_acc.Height:=250;
end;

procedure TWioAddForm.ShowMemo();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wamemo');
  ZQuery.SQL.Add('ORDER BY wano5');
  ZQuery.Open;

  LB_memo.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_memo.Items.Add(ZQuery.FieldByName('wano5').AsString+'.'+ZQuery.FieldByName('wamemo').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
  Panel_memo.Top:=HintTop;
  Panel_memo.Left:=0;
  Panel_memo.Width:=795;
  Panel_memo.Height:=250;
end;

procedure TWioAddForm.ShowExKind();
begin
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM waexkind');
  ZQuery.SQL.Add('ORDER BY wano7');
  ZQuery.Open;

  LB_ExKind.Items.Clear;
  while not ZQuery.Eof do
    begin
    LB_ExKind.Items.Add(ZQuery.FieldByName('wano7').AsString+' '+ZQuery.FieldByName('waexkind').AsString);
    ZQuery.Next;
    end;
  ZQuery.Close;
  
  Panel_Ex.Top:=Panel_EXKind.Top-100;
  Panel_Ex.Left:=Panel_EXKind.Left+Panel_EXKind.Width+10;
  Panel_Ex.Height:=350;
end;

Procedure TWioAddForm.New_wo(kind: Integer);
var
  crpsen, cppsen, psen: Real;
  wototal, pay, discnt, frgetmo: Real;
begin
  if kind=1 then //收件收款
    begin
    discnt:=StrToFloat(lbDiscount.Caption);
    pay:=StrToFloat(lbPay.Caption);
    frgetmo:=StrToFloat(lbAddMoney.Caption);
    wototal:=crmoneyVal+pay+discnt-frgetmo;
    crpsen:=StrToFloat(copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1));
    cppsen:=StrToFloat(Copy(Hlbcppsen.Caption,1,length(Hlbcppsen.Caption)-1));
    if crpsen>=cppsen then
      psen:=crpsen
    else
      psen:=cppsen;
    Try
      ZQuery_wo.Close;
      ZQuery_wo.SQL.Clear;
      ZQuery_wo.SQL.Add('SELECT * FROM wo WHERE wicode='''+strZero(wicode,6)+'''');
      ZQuery_wo.SQL.Add('AND crcode='''+crcode+'''');
      ZQuery_wo.Open;
      if ZQuery_wo.Eof then
        begin
        ZQuery_wo.Insert; //無此記錄，新增記錄
        ZQuery_wo.FieldByName('crcode').AsString:=crcode;
        ZQuery_wo.FieldByName('wicode').AsString:=strZero(wicode,6);
        end
      else
        begin
        //if pay=0 then
          //pay:=ZQuery_wo.FieldByName('worealmo').AsFloat;
        ZQuery_wo.Edit;   //有記錄修改內容
        end;

      ZQuery_wo.FieldByName('wototal').AsFloat:=wototal;
      ZQuery_wo.FieldByName('woptotal').AsFloat:=crmoneyVal;
      ZQuery_wo.FieldByName('wopsen').AsFloat:=psen;
      ZQuery_wo.FieldByName('worealmo').AsFloat:=pay;
      ZQuery_wo.FieldByName('wocntmo').AsFloat:=discnt;
      ZQuery_wo.FieldByName('widate').Value:=widate;
      ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:nn:ss',Time);
      ZQuery_wo.FieldByName('frgetmo').AsFloat:=frgetmo;
      if frgetmo=0 then
        begin
        ZQuery_wo.FieldByName('wicode').AsString:='';
        ZQuery_wo.FieldByName('fritem').AsString:='x'; // x.放棄收件
        end
      else
        ZQuery_wo.FieldByName('fritem').AsString:='I'; // I.收件收款
      ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
      ZQuery_wo.Post;
    Except
      ShowMessage('付款紀錄錯誤！');
    end;
    try
      WDM.ZQuery_cr.Edit;
      WDM.ZQuery_cr.FieldByName('crmoney').Value:=wototal;
      WDM.ZQuery_cr.FieldByName('crmoney1').Value:=crmoneyVal;
      WDM.ZQuery_cr.Post;
    Except
      ShowMessage('客戶餘額修改錯誤！');
    end;
    end
  else if kind=2 then //加工記錄
    begin
    wototal:=StrToFloat(lbNowMoney.Caption);
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('SELECT sum(wiexmo)as texmo FROM wio');
    ZQuery.SQL.Add('WHERE wicode='''+strZero(wicode,6)+'''');
    ZQuery.Open;
    pay:=ZQuery.FieldByName('texmo').AsFloat;
    ZQuery.Close;
    Try
      ZQuery_wo.Insert;
      ZQuery_wo.FieldByName('crcode').Value:=crcode;
      ZQuery_wo.FieldByName('wicode').Value:=strZero(wicode,6);
      ZQuery_wo.FieldByName('wototal').AsFloat:=wototal;
      ZQuery_wo.FieldByName('woptotal').AsFloat:=crmoneyVal;
      ZQuery_wo.FieldByName('wopsen').AsFloat:=0;
      ZQuery_wo.FieldByName('worealmo').AsFloat:=0;
      ZQuery_wo.FieldByName('wocntmo').AsFloat:=0;
      ZQuery_wo.FieldByName('widate').Value:=widate;
      ZQuery_wo.FieldByName('witime').Value:=FormatDateTime('hh:nn:ss',Time);
      ZQuery_wo.FieldByName('frgetmo').AsFloat:=pay;
      ZQuery_wo.FieldByName('fritem').AsString:='P'; // P.加工收款
      ZQuery_wo.FieldByName('sfname').AsString:=WDM.loginid;
      ZQuery_wo.Post;
    Except
      ShowMessage('加工紀錄錯誤！');
    end;
    end;
end;

Procedure TWioAddForm.Add_wio_temp();
begin
  //if wisno>9999 then wisno:=1;
  //RzPanel_Insert.Height:=65;
  RzPanel_Insert.Visible:=True;
  Panel_Browse.Align:=alClient;
  Panel_Browse.BringToFront;
  RzPanel_cr.Visible:=False;
  Edit_sno.Text:=strZero(wisno,wisnod); //wisnod位數
  Edit_item.Text:='';
  Edit_style.Text:='';
  Edit_wash.Text:='';
  Edit_wamo.Text:='0';
  Edit_urge.Text:='N';
  Edit_mdate.Text:=wimdate;
  Edit_quty.Text:='1';
  Edit_sum.Text:='0';
  Edit_acc.Text:='';
  Edit_memo.Text:='';
  Edit_pps.Text:='';
  lb_widate.Caption:=widate;
end;

Procedure TwioAddForm.CalAddwio_temp();
var
  amount: Real;
  gquty, i: Integer;
  bm: TBookmark;
begin
  //計算收件數量與總金額
  gquty:=0;
  amount:=0;
  ZQuery_wio_temp.Open;
  bm:=ZQuery_wio_temp.GetBookmark;
  ZQuery_wio_temp.First;
  while not ZQuery_wio_temp.Eof do
    begin
    if ZQuery_wio_temp.RecordCount>0 then
      begin
      gquty:=gquty+ZQuery_wio_temp.FieldByName('wiquty').AsInteger;
      amount:=amount+ZQuery_wio_temp.FieldByName('wisum').AsFloat;
      end;
    ZQuery_wio_temp.Next;
    end;
  ZQuery_wio_temp.GotoBookmark(bm);
  lbAddMoney.Caption:=FloatToStr(amount);
  lbNowMoney.Caption:=FloatToStr(crmoneyVal-amount+StrToFloat(lbPay.Caption)+StrToFloat(lbDiscount.Caption));
  if StrToFloat(lbNowMoney.Caption)>=0 then
    lbNowMoney.Font.Color:=ClYellow
  else
    lbNowMoney.Font.Color:=ClRed;
  LabelP2.Caption:=lbAddMoney.Caption;
  lbAddQuty.Caption:=IntToStr(gquty);
end;

procedure TwioAddForm.SetSql_wio_temp();
begin
  ZQuery_wio_temp.Close;
  ZQuery_wio_temp.SQL.Clear;
  ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
  ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
  if HoldFlag=False then
    ZQuery_wio_temp.SQL.Add('AND wicode='''+strZero(wicode,6)+'''');
  ZQuery_wio_temp.SQL.Add('ORDER BY wisno DESC'); // DESC
  ZQuery_wio_temp.Open;
end;

procedure TWioAddForm.CloseAllPanel();
begin
  Panel_item.SendToBack;
  Panel_style.SendToBack;
  Panel_wash.SendToBack;
  Panel_acc.SendToBack;
  Panel_memo.SendToBack;
  Panel_history.SendToBack;
end;

procedure TwioAddForm.AddDel_wio();
begin
  ZQuery_wio_bak.Close;
  ZQuery_wio_bak.SQL.Clear;
  ZQuery_wio_bak.SQL.Add('SELECT * FROM wio_bak');
  ZQuery_wio_bak.Open();
  ZQuery_wio_bak.Insert;
  ZQuery_wio_bak.FieldByName('wicode').Value:=ZQuery_wio_temp.FieldByName('wicode').Value;
  ZQuery_wio_bak.FieldByName('wisno').Value:=ZQuery_wio_temp.FieldByName('wisno').Value;
  ZQuery_wio_bak.FieldByName('crcode').Value:=ZQuery_wio_temp.FieldByName('crcode').Value;
  ZQuery_wio_bak.FieldByName('wiitem').Value:=ZQuery_wio_temp.FieldByName('wiitem').Value;
  ZQuery_wio_bak.FieldByName('winame').Value:=ZQuery_wio_temp.FieldByName('winame').Value;
  ZQuery_wio_bak.FieldByName('wiwash').Value:=ZQuery_wio_temp.FieldByName('wiwash').Value;
  ZQuery_wio_bak.FieldByName('wiacc').Value:=ZQuery_wio_temp.FieldByName('wiacc').Value;
  ZQuery_wio_bak.FieldByName('wimemo').Value:=ZQuery_wio_temp.FieldByName('wimemo').Value;
  ZQuery_wio_bak.FieldByName('wiwamo').Value:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
  ZQuery_wio_bak.FieldByName('wiexkind').Value:=ZQuery_wio_temp.FieldByName('wiexkind').Value;
  ZQuery_wio_bak.FieldByName('wiexmo').Value:=ZQuery_wio_temp.FieldByName('wiexmo').Value;
  ZQuery_wio_bak.FieldByName('wiquty').Value:=ZQuery_wio_temp.FieldByName('wiquty').Value;
  ZQuery_wio_bak.FieldByName('wisum').Value:=ZQuery_wio_temp.FieldByName('wisum').Value;
  ZQuery_wio_bak.FieldByName('wiurge').Value:=ZQuery_wio_temp.FieldByName('wiurge').Value;
  ZQuery_wio_bak.FieldByName('widay').Value:=ZQuery_wio_temp.FieldByName('widay').Value;
  ZQuery_wio_bak.FieldByName('wimdate').Value:=ZQuery_wio_temp.FieldByName('wimdate').Value;
  ZQuery_wio_bak.FieldByName('wiodate').Value:=ZQuery_wio_temp.FieldByName('wiodate').Value;
  ZQuery_wio_bak.FieldByName('wiotime').Value:=ZQuery_wio_temp.FieldByName('wiotime').Value;
  ZQuery_wio_bak.FieldByName('wiplace').Value:=ZQuery_wio_temp.FieldByName('wiplace').Value;
  ZQuery_wio_bak.FieldByName('widate').Value:=ZQuery_wio_temp.FieldByName('widate').Value;
  ZQuery_wio_bak.FieldByName('witime').Value:=ZQuery_wio_temp.FieldByName('witime').Value;
  ZQuery_wio_bak.FieldByName('wimark').AsString:=ZQuery_wio_temp.FieldByName('wimark').AsString+' 收件刪除';
  ZQuery_wio_bak.FieldByName('indate').AsString:=ChinaDate1(Date);//ZQuery_wio_temp.FieldByName('indate').Value;
  ZQuery_wio_bak.FieldByName('mark').Value:=ZQuery_wio_temp.FieldByName('mark').Value;
  ZQuery_wio_bak.FieldByName('pps').Value:=ZQuery_wio_temp.FieldByName('pps').Value;
  ZQuery_wio_bak.FieldByName('picture').Value:=ZQuery_wio_temp.FieldByName('picture').Value;
  ZQuery_wio_bak.Post;
  ZQuery_wio_bak.Close;
end;

procedure TWioAddForm.FormCreate(Sender: TObject);
var
  userResponse, sno, d, md:integer;
  fpath: String;
  mdate: TDate;
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  Action_F3.ShortCut:=TextToShortCut(WDM.DelKey.Value);
  Action_CtrlF3.ShortCut:=TextToShortCut(WDM.AllDelKey.Value);
  Action_F3.Caption:=WDM.DelKey.Value+'.刪除';
  Action_CtrlF3.Caption:=WDM.AllDelKey.Value+'.全部刪除';
  
  AHMLogFile1.LogFile:=ExtractFilePath(Application.ExeName)+'Log\'+FormatDateTime('yyyymmdd',now)+'.log';

  witime:=Time;
  PayVal:=0; //付款
  DiscountVal:=0;
  pflag:=False;
  HoldFlag:=False;
  exflag:=False;
  HintTop:=250;

  crcode:=WDM.ZQuery_cr.FieldByName('crcode').AsString; //客戶編號
  crmoneyVal:=WDM.ZQuery_cr.FieldByName('crmoney').AsFloat; //個人餘額
  lbNowMoney.Caption:=FloatToStr(crmoneyVal); //顯示餘額
  if crmoneyVal>=0 then
    lbNowMoney.Font.Color:=ClYellow
  else
    lbNowMoney.Font.Color:=ClRed;
  Hlbcrpsen.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value)+'%'; //個人折扣
  Hlbcppsen.Caption:=FloatToStr(WDM.ZTableCompy.FieldByName('cppsen').Value)+'%'; //全面折扣

  cpdayn:=WDM.ZTableCompy.FieldByName('cpdayn').Value; //預定取件天數
  cpqday:=WDM.ZTableCompy.FieldByName('cpqday').Value; //急件取件天數
  cpexp:=WDM.ZTableCompy.FieldByName('expansion').Value; //衣物展開
  cpexpmode:=WDM.ZTableCompy.FieldByName('expmode').Value; //不詢問展開方式
  cpasmb:=WDM.ZTableCompy.FieldByName('asmb').Value; //顏色組合
  if WDM.ZTableCompy.FieldByName('ppaa').AsString='是' then //顯示片語
    ppaa:=True
  else
    ppaa:=False;
  mdate:=date;
  md:=cpdayn;
  for d:=0 to cpdayn-1 do
    begin
    mdate:=date+d;
    if DayOfWeek(mdate)=7 then md:=md+1;
    end;
  wimdate:=ChinaDate1(Date+md);
  widate:=ChinaDate1(Date);

  wicode:=WDM.ZTableCompy.FieldByName('cpwino').AsInteger; //洗單號
  wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger; //洗號(整理編號)
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger; //洗號位數
  AHMLogFile1.Log('取得--> 洗單:'+IntToStr(wicode)+'-洗號:'+IntToStr(wisno));
  wicode:=wicode+1;
  lb_wicode.Caption:=strZero(wicode,6);
  lb_widate.Caption:=widate;
  Panel_Pay.SendToBack;
  Panel_EXKind.SendToBack;
  PanelPBar.SendToBack;
  Panel_Discount.SendToBack;
  WriteWisno();
  Caption:='衣物收件作業(洗單號-'+IntToStr(wicode)+')-'+crcode+'-'+WDM.ZQuery_cr.FieldByName('crname').AsString+'-'+WDM.ZQuery_cr.FieldByName('crtel').AsString+'-電腦號：'+WDM.ZQuery_cr.FieldByName('crtelb').AsString;
  if WDM.displayvip.Value=1 then
    begin
    ZReadOnlyQuery_vip.Close;
    ZReadOnlyQuery_vip.SQL.Clear;
    ZReadOnlyQuery_vip.SQL.Add('SELECT crcode,vpsdate,vpedate FROM vip');
    ZReadOnlyQuery_vip.SQL.Add('WHERE crcode='''+WDM.ZQuery_cr.FieldByName('crcode').AsString+'''');
    ZReadOnlyQuery_vip.SQL.Add('ORDER BY vpsdate DESC');
    ZReadOnlyQuery_vip.Open;
    Caption:=Caption+'-VIP:'+ZReadOnlyQuery_vip.FieldByName('vpsdate').AsString+'~'+ZReadOnlyQuery_vip.FieldByName('vpedate').AsString;
    ZReadOnlyQuery_vip.Close;
    end;

  exitstr:=WDM.ZTableCompy.FieldByName('exit').AsString;
  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='RecF1'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;
  if wisnod=5 then
    begin
    Label_sno.Caption:='洗號';
    Edit_sno.Left:=2;
    Edit_sno.Width:=60;
    Edit_sno.Font.Size:=16;
    end
  else if wisnod=6 then
    begin
    Label_sno.Caption:='洗號';
    Edit_sno.Left:=2;
    Edit_sno.Width:=60;
    Edit_sno.Font.Size:=13;
    end;
  tno:=1;
end;

procedure TWioAddForm.Action_EscExecute(Sender: TObject);
begin
  CloseAllBtn(True);
  if (fkey='F1')OR(fkey='F2') then
    begin
    if ZQuery_wio_temp.RecordCount=0 then
      begin //刪除照片檔
      pname:=ExtractFilePath(Application.ExeName)+'Captures\'+pname;
      DeleteFile(Pchar(pname));
      WDM.rfkey:='';
      Close;
      end
    else
      begin
      CloseAllPanel();
      //CalAddwio_temp();
      wwDBGrid1.Enabled:=True;
      RzPanel_Insert.Visible:=False;
      Panel_Browse.Visible:=True;
      RzPanel_cr.Visible:=True;
      //RzToolbarButtonExit.Caption:='ESC.離開';
      //RzToolbarButtonExit.Width:=90;
      //CloseAllBtn(True);
      wwDBGrid1.SetFocus;
      pname:=ZQuery_wio_temp.FieldByName('wicode').AsString+'_'+ZQuery_wio_temp.FieldByName('wisno').AsString+'.jpg';
      if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+pname) then
        begin
        ZQuery_wio_temp.Edit;
        ZQuery_wio_temp.FieldByName('picture').AsString:=pname;
        ZQuery_wio_temp.Post;
        end;
      if ZQuery_wio_temp.FieldByName('picture').AsString<>'' then
        begin
        pname:=ExtractFilePath(Application.ExeName)+'Captures\'+ZQuery_wio_temp.FieldByName('picture').AsString;
        if FileExists(pname) then
          begin
          Image1.Picture.LoadFromFile(pname);
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
    fkey:='';
    //Caption:='衣物收件作業';
    end
  else if fKey='F5' then
    begin
    Panel_EXKind.SendToBack;
    Panel_Ex.SendToBack;
    Edit_exkind.Text:='';
    Edit_exkp.Text:='0';
    wwDBGrid1.SetFocus;
    fkey:='';
    end
  else if fkey='F6' then
    begin
    Panel_Discount.SendToBack;
    Edit_Discnt.Text:='0';
    fkey:='';
    end
  else if fKey='F12' then
    begin
    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    wwDBGrid1.SetFocus;
    fkey:='';
    end
  else
    Close;
end;

procedure TWioAddForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
var
  i: Integer;
begin
  if Field.FieldName='wiquty' then
    Field.Alignment:=taCenter;
  if Field.FieldName='wisum' then
    AFont.Size:=16;
  if Field.FieldName='wiurge' then
    begin
    Field.Alignment:=taCenter;
    if Field.Value='Y' then
      begin
      ABrush.Color:=ClRed;
      AFont.Color:=ClYellow;
      end
    else
      AFont.Color:=ClYellow;
    end;
  if Highlight then
    AFont.Color:=ClWhite;
end;

procedure TWioAddForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if RzPanel_Insert.Visible then
    begin
    if (Key=VK_Return) then
        begin
        if (Edit_item.Focused=False)AND(Edit_style.Focused=False)AND(Edit_wash.Focused=False)AND
           (Edit_quty.Focused=False)AND(Edit_acc.Focused=False)AND(Edit_memo.Focused=False) then
          begin
          Perform(WM_NextDlgCtl, 0, 0);
          end;
        end;
    if (Key=VK_DOWN)OR(Key=VK_RIGHT) then
        begin
        Perform(WM_NextDlgCtl, 0, 0);
        Key:=0;
        end;
    if ((Key=VK_UP)OR(Key=VK_LEFT))AND(Edit_item.Focused=False) then
        begin
        Perform(WM_NextDlgCtl, 1, 0);
        Key:=0;
        end;
    end
  else
    if (key=107) then
      begin
      rfkey:='CF2';
      Close;
      end;
end;

procedure TWioAddForm.Action_F1Execute(Sender: TObject);
begin
  if fKey='' then
    begin
    fkey:='F1';
    menuflag:=False;
    wwDBGrid1.Enabled:=False;
    Add_wio_temp();
    Edit_item.SetFocus;
    CloseAllBtn(False);
    //RzToolbarButtonExit.Caption:='ESC.完成收件';
    //RzToolbarButtonExit.Width:=120;
    //Edit_quty.ReadOnly:=False;
    //Caption:='衣物收件作業-'+WDM.ZQuery_cr.FieldByName('crcode').AsString+'-'+WDM.ZQuery_cr.FieldByName('crname').AsString+'-'+WDM.ZQuery_cr.FieldByName('crtel').AsString;
    end;
end;

procedure TWioAddForm.Action_F2Execute(Sender: TObject);
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    fkey:='F2';    
    menuflag:=False;
    ZQuery_wio_temp.Edit;
    Edit_sno.Text:=ZQuery_wio_temp.FieldByName('wisno').Value;
    Edit_item.Text:=ZQuery_wio_temp.FieldByName('wiitem').Value;
    Edit_style.Text:=ZQuery_wio_temp.FieldByName('winame').Value;
    Edit_wash.Text:=ZQuery_wio_temp.FieldByName('wiwash').Value;
    Edit_mdate.Text:=ZQuery_wio_temp.FieldByName('wimdate').Value;
    Edit_urge.Text:=ZQuery_wio_temp.FieldByName('wiurge').Value;
    Edit_memo.Text:=ZQuery_wio_temp.FieldByName('wimemo').Value;
    Edit_acc.Text:=ZQuery_wio_temp.FieldByName('wiacc').Value;
    Edit_wamo.Text:=ZQuery_wio_temp.FieldByName('wiwamo').Value;
    Edit_quty.Text:=ZQuery_wio_temp.FieldByName('wiquty').Value;
    Edit_sum.Text:=ZQuery_wio_temp.FieldByName('wisum').Value;
    Edit_pps.Text:=ZQuery_wio_temp.FieldByName('pps').Value;
    RzPanel_Insert.Visible:=True;
    Edit_item.SetFocus;
    RzPanel_cr.Visible:=False;
    CloseAllBtn(False);
    //RzToolbarButtonExit.Caption:='ESC.完成修改';
    //RzToolbarButtonExit.Width:=120;
    //Edit_quty.ReadOnly:=True;
    end;
end;

procedure TWioAddForm.LB_itemClick(Sender: TObject);
var
  l: Integer;
  allStr: String;
begin
  l:=Length(LB_item.Items.Strings[LB_item.ItemIndex])-3;
  allStr:=Edit_item.Text+Trim(SubStr(LB_item.Items.Strings[LB_item.ItemIndex],4,l));
  if Length(allStr)<6 then
    Edit_item.Text:=allStr;
  if (Length(allStr)>=6)or(cpasmb='否') then
    begin 
    Edit_item.Text:=Copy(allStr,1,6);
    Edit_style.SetFocus;
    end;
  LB_item.ItemIndex:=-1;
end;

procedure TWioAddForm.LB_styleClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(LB_style.Items.Strings[LB_style.ItemIndex])-3;
  Edit_style.Text:=Trim(SubStr(LB_style.Items.Strings[LB_style.ItemIndex],4,l));
  Edit_wash.SetFocus;
  LB_style.ItemIndex:=-1;
end;

procedure TWioAddForm.LB_washClick(Sender: TObject);
var
  l: Integer;
  ivalue: String;
begin
  ivalue:=SubStr(LB_wash.Items.Strings[LB_wash.ItemIndex],1,2);
  l:=Length(LB_wash.Items.Strings[LB_wash.ItemIndex])-3;
  Edit_wash.Text:=SubStr(LB_wash.Items.Strings[LB_wash.ItemIndex],4,l);
  LB_wash.ItemIndex:=-1;
  // 取得洗法金額
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wawash');
  ZQuery.SQL.Add('WHERE wawash='''+Edit_wash.Text+'''');
  ZQuery.Open;
  ivalue:=Copy(ZQuery.FieldByName('wano6').Value,2,1);

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM wastyle');
  ZQuery.SQL.Add('WHERE wastyle='''+Edit_style.Text+'''');
  ZQuery.Open;
  Edit_wamo.Text:=FloatToStr(ZQuery.FieldByName('wawsmo'+ivalue).Value);
  washpsno:=ZQuery.FieldByName('washpsno').Value;
  //Edit_quty.Text:='1';
  // Edit_urge.Text:='N';
  //Edit_mdate.Text:=ChinaDate1(Date+cpdayn);
  WDM.ZQuerywastyle.Close;
  Edit_quty.SetFocus;
  Edit_quty.SelectAll;
  CalSum();
end;

procedure TWioAddForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ret: Word;
  wototal, pay, discnt, frgetmo: Real;
begin
  if (fkey<>'F10') then //非保留
    begin
    if (ZQuery_wio_temp.RecordCount>0) then
      begin
      if (exitstr='是') then
        ret:=MessageBox(handle,PChar('存檔離開？'),'存檔',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2)
      else
        ret:=idYes;
      if ret=idYes then
        begin
        WriteToWio(); //收件紀錄
//        if not pflag then
        New_wo(1); //收款記錄
        if exflag then
         New_wo(2); //加工記錄
        end
      else
        Action:=caNone;
      end
    else
      if pflag then
        New_wo(1); //放棄收款記錄
    end;
end;

procedure TWioAddForm.Edit_PayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_DOWN)OR(Key=VK_RIGHT) then
   begin
   Perform(WM_NextDlgCtl, 0, 0);
   Key:=0;
   end;
end;

procedure TWioAddForm.Edit_DiscountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AddVal, NowVal: Real;
begin
  if (Key=VK_UP)OR(Key=VK_LEFT) then
    begin
    Perform(WM_NextDlgCtl, 1, 0);
    Key:=0;
    end;
  if (Key=VK_Return) AND (fKey='F12') then //收款後處理計算
    begin
    fkey:='';
    Panel_Pay.SendToBack;
    NowVal:=StrToFloat(lbNowMoney.Caption);
    PayVal:=StrToFloat(Edit_Pay.Text); //付款
    DiscountVal:=StrToFloat(Edit_Discount.Text); //折讓
    AddVal:=StrToFloat(lbAddMoney.Caption); //本次金額
    TotalVal:=NowVal+PayVal+DiscountVal;
    lbNowMoney.Caption:=FloatToStr(TotalVal);
    if TotalVal>=0 then
      lbNowMoney.Font.Color:=ClYellow
    else
      lbNowMoney.Font.Color:=ClRed;
    lbPay.Caption:=FloatToStr(StrToFloat(lbPay.Caption)+StrToFloat(Edit_Pay.Text));
    lbDiscount.Caption:=FloatToStr(StrToFloat(lbDiscount.Caption)+StrToFloat(Edit_Discount.Text));

    Panel_Pay.SendToBack;
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    wwDBGrid1.SetFocus;
    RzToolbarButtonF10.Visible:=False;
    pflag:=True;
    //New_wo(1);        //20120907 收件收款
    Key:=0;
    end;
end;

procedure TWioAddForm.Action_F12Execute(Sender: TObject);
var
  lack: Real;
begin
  if fKey='' then
    begin
    fkey:='F12';
    lack:=StrToFloat(lbNowMoney.Caption);
    if lack>=0 then
      LabelP1.Font.Color:=ClWhite
    else
      LabelP1.Font.Color:=ClRed;
    LabelP1.Caption:=FloatToStr(lack);
    Edit_Pay.Text:='0';
    Edit_Discount.Text:='0';
    Edit_Pay.SetFocus;
    Panel_Pay.BringToFront;
    MoneyBox(WDM.COMUSE.Value); //錢櫃
    end;
end;

procedure TWioAddForm.LB_accClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(LB_acc.Items.Strings[LB_acc.ItemIndex])-3;
  Edit_acc.Text:=SubStr(LB_acc.Items.Strings[LB_acc.ItemIndex],4,l);
  Edit_memo.SetFocus;
  LB_acc.ItemIndex:=-1;
end;

procedure TWioAddForm.LB_memoClick(Sender: TObject);
var
  l: Integer;
begin
  l:=Length(LB_memo.Items.Strings[LB_memo.ItemIndex])-3;
  Edit_memo.Text:=SubStr(LB_memo.Items.Strings[LB_memo.ItemIndex],4,l);
  SaveWio_Temp();
  LB_memo.ItemIndex:=-1;
end;

procedure TWioAddForm.Action_F3Execute(Sender: TObject);
var
  sno: Integer;
  fpath, oldpic, newpic: String;
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    if IDYES=MessageBox(handle,'是否刪除此筆衣物？','刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2)  then
      begin
      fpath:=WDM.WPath+'Captures\';
      DeleteFile(Pchar(fpath+ZQuery_wio_temp.FieldByName('picture').AsString));
      AddDel_wio();
      ZQuery_wio_temp.Delete;
      RenewWisno();  // 重新排列編號
      CalAddwio_temp();
      SetSql_wio_temp();
      //New_wo(1);
      end;
    end;
end;

procedure TWioAddForm.Action_F10Execute(Sender: TObject);
begin
  if (fKey='') and (pflag=False) then
    begin
    if MessageDlg('確定要保留？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
      begin
      fkey:='F10';
      keep_temp();
      Close;
      end;
    end;  
end;

procedure TWioAddForm.Edit_itemEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    Panel_item.BringToFront;
    kflag:=false;
    end;
end;

procedure TWioAddForm.Edit_itemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_styleEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    Panel_style.BringToFront;
    end;
end;

procedure TWioAddForm.Edit_washEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    Panel_wash.BringToFront;
    end;
end;

procedure TWioAddForm.Edit_wamoEnter(Sender: TObject);
begin
  if Edit_style.Text='' then
    begin
    ShowMessage('請輸入衣物名稱！');
    Edit_style.SetFocus;
    end
  else if Edit_wash.Text='' then
    begin
    ShowMessage('請輸入洗法！');
    Edit_wash.SetFocus;
    end
  else
    CloseAllPanel();
end;

procedure TWioAddForm.Edit_wamoExit(Sender: TObject);
begin
  if Edit_wamo.Text<>'' then
    CalSum();
end;

procedure TWioAddForm.Edit_urgeEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_mdateEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_qutyEnter(Sender: TObject);
var
  widate, wiwamo: string;
begin
  if ppaa then
    begin
    CloseAllPanel();
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('select * from wio');
    ZQuery.SQL.Add('where crcode='''+WDM.crcode+''' and winame='''+Edit_style.Text+''' and wiwash='''+Edit_wash.Text+'''');
    ZQuery.SQL.Add('order by widate desc');
    ZQuery.Open;
    if not ZQuery.Eof then
      begin
      widate:=ZQuery.FieldByName('widate').AsString;
      wiwamo:=ZQuery.FieldByName('wiwamo').AsString;
      ZQuery.Close;
      Label_History.Caption:='歷史收件：'+widate;
      Label_wiwamo.Caption:='單價：'+wiwamo;
      //歷史收件單價窗
      Panel_history.Top:=HintTop;
      Panel_history.Left:=Edit_quty.Left;
      Panel_history.BringToFront;
      end;
    end;
end;

procedure TWioAddForm.Edit_qutyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sum,crpsen,cppsen,psen: Real;
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    Edit_sum.SelectAll;
    end;
end;

procedure TWioAddForm.Edit_sumEnter(Sender: TObject);
begin
  CloseAllPanel();
end;

procedure TWioAddForm.Edit_accEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    Panel_acc.BringToFront;
    menuflag:=False;
    end;
end;

procedure TWioAddForm.Edit_accKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_memoEnter(Sender: TObject);
begin
  OldEditStr:='';
  if ppaa then
    begin
    CloseAllPanel();
    Panel_memo.BringToFront;
    menuflag:=False;
    end;
end;

procedure TWioAddForm.RzToolbarButtonF5Click(Sender: TObject);
begin
  if fKey='' then
    begin
    ShowMessage('F5');
    end;
end;

procedure TWioAddForm.RzToolbarButtonF9Click(Sender: TObject);
begin
  if fKey='' then
    begin
    ShowMessage('F9');
    end;
end;

procedure TWioAddForm.ButtonSaveClick(Sender: TObject);
begin
  SaveWio_Temp();
end;

procedure TWioAddForm.Button1Click(Sender: TObject);
begin
  try
    pname:=lb_wicode.Caption+'_'+Edit_sno.Text+'.jpg';
    GetCamForm := TGetCamForm.Create(Application);
    GetCamForm.Caption:=pname;
    GetCamForm.BitBtn2.Enabled:=True;
    GetCamForm.ShowModal;
    FreeAndNil(GetCamForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
  if FileExists(ExtractFilePath(Application.ExeName)+'Captures\'+pname) then
    begin
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Captures\'+pname);
    Image1.Visible:=True;
    //wwDBGrid1.SetFocus; 990816改
    end
  else
    Image1.Visible:=False;
end;

procedure TWioAddForm.Edit_itemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_item.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_item.Text;
  if (length(newvalue)=2) then
    begin
    if IsLeadByteTw(Char(newvalue[1])) then exit;
    WDM.ZQuerywaItem.ParamByName('wano3').Value:=newvalue;
    WDM.ZQuerywaItem.Open;
    if WDM.ZQuerywaItem.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaItem.FieldByName('waitem').Value;
      Edit_item.Text:=OldEditStr+newvalue;
      OldEditStr:=OldEditStr+newvalue;
      if (length(OldEditStr)>=6)or(cpasmb='否') then
        begin
        Edit_item.Text:=Copy(Edit_item.Text,1,6);
        Perform(WM_NextDlgCtl, 0, 0);
        end;
      end
    else
      begin
      ShowMessage('沒有( '+inputvalue+' )此種代碼！');
      Edit_item.SetFocus;
      Edit_item.Text:=OldEditStr;
      end;
    WDM.ZQuerywaItem.Close;
    end;
end;

procedure TWioAddForm.Edit_styleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue: String;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_style.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_style.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywastyle.Close;
    WDM.ZQuerywastyle.ParamByName('wano2').Value:=newvalue;
    WDM.ZQuerywastyle.Open;
    if WDM.ZQuerywastyle.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywastyle.FieldByName('wastyle').Value;
      Edit_style.Text:=newvalue;
      Perform(WM_NextDlgCtl, 0, 0);
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_style.Text:=OldEditStr;
      Edit_style.SetFocus;
      end;
    WDM.ZQuerywastyle.Close;
    Key:=0;
  end;
end;

procedure TWioAddForm.Edit_washKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  wamo: Real;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_wash.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_wash.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywawash.Close;
    WDM.ZQuerywawash.ParamByName('wano6').Value:=newvalue;
    WDM.ZQuerywawash.Open;
    if WDM.ZQuerywawash.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywawash.FieldByName('wawash').Value;
      Edit_wash.Text:=OldEditStr+newvalue;
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_wash.Text:=OldEditStr;
      Edit_wash.SetFocus;
      Exit;
      end;
    WDM.ZQuerywawash.Close;
    Try
      // 取得洗法金額
      ZQuery.Close;
      ZQuery.SQL.Clear;
      ZQuery.SQL.Add('SELECT * FROM wawash');
      ZQuery.SQL.Add('WHERE wawash='''+Edit_wash.Text+'''');
      ZQuery.Open;
      inputvalue:=Copy(ZQuery.FieldByName('wano6').Value,2,1);

      ZQuery.Close;
      ZQuery.SQL.Clear;
      ZQuery.SQL.Add('SELECT * FROM wastyle');
      ZQuery.SQL.Add('WHERE wastyle='''+Edit_style.Text+'''');
      ZQuery.Open;
      wamo:=ZQuery.FieldByName('wawsmo'+inputvalue).Value;
      washpsno:=ZQuery.FieldByName('washpsno').Value;

      Edit_wamo.Text:=FloatToStr(wamo);
      //Edit_quty.Text:='1';
      //Edit_urge.Text:='N';
      //Edit_mdate.Text:=ChinaDate1(Date+cpdayn);
      WDM.ZQuerywastyle.Close;
    except
      ShowMessage('無此衣物代碼！');
    end;
    CalSum();
    Edit_quty.SetFocus;
    Key:=0;
    end;
end;

procedure TWioAddForm.Edit_styleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_snoEnter(Sender: TObject);
begin                          
  Perform(WM_NextDlgCtl, 0, 0);
end;

procedure TWioAddForm.Action_PgDnExecute(Sender: TObject);
begin
  Edit_sum.SetFocus;
  SaveWio_Temp();
end;

procedure TWioAddForm.Action_F4Execute(Sender: TObject);
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    Append_wio_temp();
    CalAddwio_temp();
    SetSql_wio_temp();
    //New_wo(1);
    end;
end;

procedure TWioAddForm.Edit_accKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
  if menuflag then exit;
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_acc.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_acc.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywaacc.Close;
    WDM.ZQuerywaacc.ParamByName('wano4').Value:=newvalue;
    WDM.ZQuerywaacc.Open;
    if WDM.ZQuerywaacc.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaacc.FieldByName('waacc').Value;
      Edit_acc.Text:=OldEditStr+newvalue;
      Perform(WM_NextDlgCtl, 0, 0);
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_acc.Text:=OldEditStr;
      Edit_acc.SetFocus;
      end;
    WDM.ZQuerywaacc.Close;
    Key:=0;
    end;
end;

procedure TWioAddForm.Edit_memoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
begin
  if (Key=VK_Return) then Key:=0;
  if menuflag then exit;
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_memo.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_memo.Text;
  if (length(newvalue)=2) then
    begin
    if not IsLeadByteTw(Char(newvalue[1])) then
      begin
      WDM.ZQuerywamemo.Close;
      WDM.ZQuerywamemo.ParamByName('wano5').Value:=newvalue;
      WDM.ZQuerywamemo.Open;
      if WDM.ZQuerywamemo.RecordCount>0 then
        begin
        newvalue:=WDM.ZQuerywamemo.FieldByName('wamemo').Value;
        Edit_memo.Text:=OldEditStr+newvalue;
        end
      else
        begin
        ShowMessage('沒有( '+newvalue+' )此種代碼！');
        Edit_memo.Text:=OldEditStr;
        Edit_memo.SetFocus;
        end;
      end
    else
      Edit_memo.Text:=OldEditStr+newvalue;
    WDM.ZQuerywamemo.Close;
    end;
end;

procedure TWioAddForm.Edit_exkindEnter(Sender: TObject);
begin
  OldEditStr:='';
  Panel_Ex.BringToFront;
  //LB_ExKind.Visible:=False;
  //ShowExKind();
  //LB_ExKind.Visible:=True;
  //Panel_Ex.Top:=Panel_EXKind.Top-100;
  //Panel_Ex.Left:=Panel_EXKind.Left+Panel_EXKind.Width+10;
  //Panel_Ex.Height:=350;
end;

procedure TWioAddForm.Action_F5Execute(Sender: TObject);
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    fkey:='F5';
    Edit_exkind.Text:=ZQuery_wio_temp.FieldByName('wiexkind').Value;
    Edit_exkp.Text:=FloatToStr(ZQuery_wio_temp.FieldByName('wiexmo').Value);
    Panel_EXKind.BringToFront;
    Edit_exkind.SetFocus;
    end;
end;

procedure TWioAddForm.Edit_exkindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  newvalue,inputvalue: String;
  wamo: Real;
begin
  if OldEditStr<>'' then
    newvalue:=StringReplace(Edit_exkind.Text,OldEditStr,'',[rfReplaceAll, rfIgnoreCase])
  else
    newvalue:=Edit_exkind.Text;
  if (length(newvalue)=2) then
    begin
    WDM.ZQuerywaexkind.Close;
    WDM.ZQuerywaexkind.ParamByName('wano7').Value:=newvalue;
    WDM.ZQuerywaexkind.Open;
    if WDM.ZQuerywaexkind.RecordCount>0 then
      begin
      newvalue:=WDM.ZQuerywaexkind.FieldByName('waexkind').Value;
      Edit_exkind.Text:=OldEditStr+newvalue;
      Edit_exkp.Text:=WDM.ZQuerywaexkind.FieldByName('waexmo').Value;
      Perform(WM_NextDlgCtl, 0, 0);
      end
    else
      begin
      ShowMessage('沒有( '+newvalue+' )此種代碼！');
      Edit_exkind.Text:=OldEditStr;
      Edit_exkind.SetFocus;
      end;
    WDM.ZQuerywaexkind.Close;
    Key:=0;
    end;
end;

procedure TWioAddForm.Edit_exkindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)OR(Key=VK_DOWN)OR(Key=VK_RIGHT) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_exkpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DOWN)OR(Key=VK_RIGHT) then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
  if (Key=VK_UP)OR(Key=VK_LEFT) then
    begin
    Perform(WM_NextDlgCtl, 1, 0);
    Key:=0;
    end;
  if (Key=VK_Return) And (fKey='F5') then
    begin
    fkey:='';
    Panel_EXKind.SendToBack;
    ZQuery_wio_temp.Edit;
    ZQuery_wio_temp.FieldByName('wiexkind').Value:=Edit_exkind.Text;
    oldv:=ZQuery_wio_temp.FieldByName('wiexmo').AsFloat;
    ZQuery_wio_temp.FieldByName('wiexmo').Value:=StrToFloat(Edit_exkp.Text);
    ZQuery_wio_temp.FieldByName('wisum').Value:=ZQuery_wio_temp.FieldByName('wisum').Value+StrToFloat(Edit_exkp.Text)-oldv;
    ZQuery_wio_temp.Post;
    CalAddwio_temp();
    if Edit_exkp.Text<>'0' then
      exflag:=True;
    end;
end;

procedure TWioAddForm.Edit_exkpEnter(Sender: TObject);
begin
  Panel_Ex.SendToBack;
end;

procedure TWioAddForm.LB_ExKindClick(Sender: TObject);
var
  l: Integer;
  ivalue: String;
begin
  ivalue:=SubStr(LB_ExKind.Items.Strings[LB_ExKind.ItemIndex],1,2);
  Panel_Ex.SendToBack;
  WDM.ZQuerywaexkind.Close;
  WDM.ZQuerywaexkind.ParamByName('wano7').Value:=ivalue;
  WDM.ZQuerywaexkind.Open;
  if WDM.ZQuerywaexkind.RecordCount>0 then
    begin
    Edit_exkind.Text:=WDM.ZQuerywaexkind.FieldByName('waexkind').Value;
    Edit_exkp.Text:=WDM.ZQuerywaexkind.FieldByName('waexmo').Value;
    end;
  WDM.ZQuerywaexkind.Close;
  Edit_exkp.SetFocus;
  LB_ExKind.ItemIndex:=-1;
end;

procedure TWioAddForm.Edit_memoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)and(kflag=false) then
    begin
    kflag:=true;
    SaveWio_Temp();
    Key:=0;
    end;
end;

procedure TWioAddForm.Action_CtrlF2Execute(Sender: TObject);
begin
  if fKey='' then
    begin
    rfkey:='CF2';
    Close;
    end;
end;

procedure TWioAddForm.Action_CtrlF3Execute(Sender: TObject);
var
  sno: Integer;
  fpath, oldpic, newpic: String;
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    if IDYES=MessageBox(handle,'是否刪除全部衣物？','刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2)  then
      begin
      ZQuery_wio_temp.First;
      while not ZQuery_wio_temp.Eof do
        begin
        fpath:=WDM.WPath+'Captures\';
        DeleteFile(Pchar(fpath+ZQuery_wio_temp.FieldByName('picture').AsString));
        AddDel_wio();
        ZQuery_wio_temp.Delete;
        end;
      RenewWisno();  // 重新排列編號
      CalAddwio_temp();
      SetSql_wio_temp();
      //keep_temp();
      end;
    end;
end;

procedure TWioAddForm.Edit_washKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioAddForm.Edit_styleChange(Sender: TObject);
begin
  Edit_wash.Text:='';
end;

procedure TWioAddForm.LB_itemEnter(Sender: TObject);
begin
  if fkey='F2' then
    Edit_item.Text:='';
end;

procedure TWioAddForm.Image1Click(Sender: TObject);
begin
  try
    ShowPicForm := TShowPicForm.Create(Application);
    ShowPicForm.picname:=ZQuery_wio_temp.FieldByName('picture').Value;
    ShowPicForm.ShowModal;
    FreeAndNil(ShowPicForm);
    wwDBGrid1.SetFocus;
  except
    on E: Exception do
      MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TWioAddForm.Action_CPExecute(Sender: TObject);
begin
  if (ZQuery_wio_temp.RecordCount>0) AND(ZQuery_wio_temp.FieldByName('picture').AsString<>'') and (fkey='') then
    begin
    Image1Click(Self);
    wwDBGrid1.SetFocus;
    end
  else
    ShowMessage('沒有照片！');
end;

procedure TWioAddForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    ZQueryF9.Close;
    ZQueryF9.SQL.Clear;
    ZQueryF9.SQL.Add('SELECT * FROM wio_temp');
    ZQueryF9.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQueryF9.SQL.Add('ORDER BY wisno');
    ZQueryF9.Open;

    frxReport1.LoadFromFile(WDM.WPath+'Report\F1Report.rep');
    (frxReport1.FindObject('Memo1')as TfrxMemoView).Text:=lbAddQuty.Caption+'件';
    (frxReport1.FindObject('Memo2')as TfrxMemoView).Text:=lbAddMoney.Caption;
    //(frxReport1.FindObject('Memo3')as TfrxMemoView).Text:=FloatToStr(ZQuery_wo.FieldByName('wocntmo').AsFloat);
    //(frxReport1.FindObject('Memo4')as TfrxMemoView).Text:=FloatToStr(ZQuery_wo.FieldByName('worealmo').AsFloat);
    (frxReport1.FindObject('Memo3')as TfrxMemoView).Text:=lbDiscount.Caption;
    (frxReport1.FindObject('Memo4')as TfrxMemoView).Text:=lbPay.Caption;
    if StrToFloat(lbNowMoney.Caption)>0 then
      (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:='0'
    else
      (frxReport1.FindObject('Memo5')as TfrxMemoView).Text:=lbNowMoney.Caption;
    (frxReport1.FindObject('Memo9')as TfrxMemoView).Text:=lbNowMoney.Caption;
    (frxReport1.FindObject('Memo12')as TfrxMemoView).Text:=FloatToStr(WDM.ZQuery_cr.FieldByName('crmoney1').AsFloat);
    (frxReport1.FindObject('VPEDATE')as TfrxMemoView).Text:='';
    if ZQueryF9.FieldByName('crvip').AsString='Y' then
      begin
      try
        ZQueryVip.Close;
        ZQueryVip.SQL.Clear;
        ZQueryVip.SQL.Add('SELECT * FROM vip');
        ZQueryVip.SQL.Add('WHERE crcode='''+crcode+'''');
        ZQueryVip.SQL.Add('ORDER BY vpcode DESC');
        ZQueryVip.Open;
        (frxReport1.FindObject('VPEDATE')as TfrxMemoView).Text:=ZQueryVip.FieldByName('vpedate').AsString;
      except
        
      end;
      ZQueryVip.Close; //取得VIP到期日
      end;
    //frxReport1.ShowReport;
    //frxReport1.PrintOptions.Printer := PrinterName; //指定印表機

    frxReport1.PrepareReport;
    frxReport1.PrintOptions.ShowDialog := False; //不顯示對話框
    frxReport1.Print; //列印

    //標示已列印洗衣單
    ZQueryF9.First;
    while not ZQueryF9.Eof do
      begin
      ZQueryF9.Edit;
      ZQueryF9.FieldByName('mark').Value:='Y';
      ZQueryF9.Post;
      ZQueryF9.Next;
      end;
    ZQueryF9.Close;
    //標示已列印洗衣單
    if WDM.ZTableCompy.FieldByName('SP300').AsString='是' then
      begin
      if WDM.pkind.Value='SP300' then
        begin
        SP300(True);
        CP2140_PLLB(False);
        end
      else if WDM.pkind.Value='CP2140' then
        begin
        SP300(False);
        CP2140_PLLB(True);
        end;
      end;  
    end;    
end;

procedure TWioAddForm.FormShow(Sender: TObject);
var
  sno, wicode1:integer;
  fpath, oldpic, newpic: String;
begin
  fkey:='';
  sno:=wisno;
  //wisno:=sno;
  if HoldFlag=False then
    begin //判斷有無保留資料
    ZQuery_wio_temp.Close;
    ZQuery_wio_temp.SQL.Clear;
    ZQuery_wio_temp.SQL.Add('SELECT * FROM wio_temp');
    ZQuery_wio_temp.SQL.Add('WHERE crcode='''+crcode+'''');
    ZQuery_wio_temp.Open;
    Panel_Browse.Align:=AlClient;
    RzPanel_Insert.Visible:=False;
    //wwDBGrid1.Visible:=False;
    if ZQuery_wio_temp.RecordCount>0 then
       if MessageDlg('此客戶有保留資料是否叫出保留？', mtConfirmation, [mbYes,mbNo], 0)=idYes then
         HoldFlag:=True
       else
         HoldFlag:=False;
    ZQuery_wio_temp.Close;
    end;
    
  if not HoldFlag then //不叫出保留
    begin
    SetSql_wio_temp();
    Add_wio_temp();
    //fkey:='F1';
    Action_F1Execute(Self);
    Edit_item.SetFocus;
    CloseAllBtn(False);
    end
  else //叫出保留
    begin
    SetSql_wio_temp();
    wicode1:=wicode;
    wisno:=WDM.ZTableCompy.FieldByName('cpwisno').AsInteger;
    tno:=0;
    WriteWisno();
    fpath:=ExtractFilePath(Application.ExeName)+'Captures\';
    ZQuery_wio_temp.Last;
    while not ZQuery_wio_temp.Bof do
      begin
      oldpic:=ZQuery_wio_temp.FieldByName('picture').AsString;
      ZQuery_wio_temp.Edit;
      ZQuery_wio_temp.FieldByName('tno').Value:=strZero(tno,2);
      ZQuery_wio_temp.FieldByName('wicode').Value:=strZero(wicode1,6);
      ZQuery_wio_temp.FieldByName('wisno').Value:=strZero(wisno,wisnod);
      newpic:=ZQuery_wio_temp.FieldByName('wicode').AsString+'_'+ZQuery_wio_temp.FieldByName('wisno').AsString+'.jpg';
      if oldpic<>'' then
        begin
        RenameFile(fpath+oldpic, fpath+newpic);
        ZQuery_wio_temp.FieldByName('picture').AsString:=newpic;
        end;
      ZQuery_wio_temp.Post;
      WriteWisno();
      ZQuery_wio_temp.Prior;
      end;
    //wisno:=sno-1;
    SetSql_wio_temp();
    ZQuery_wio_temp.First;
    CloseAllPanel();
    CalAddwio_temp();
    wwDBGrid1.Enabled:=True;
    RzPanel_Insert.Visible:=False;
    Panel_Browse.Align:=alClient;
    Panel_Browse.Visible:=True;
    RzPanel_cr.Visible:=True;
    //RzToolbarButtonExit.Caption:='ESC.離開';
    //RzToolbarButtonExit.Width:=90;
    CloseAllBtn(True);
    wwDBGrid1.SetFocus;
    end;
end;

procedure TWioAddForm.Edit_urgeChange(Sender: TObject);
var
  d, md, dcnt: Integer;
  mdate: TDate;
begin
  mdate:=Date;
  if Edit_urge.Text='Y' then
    begin
    md:=cpqday;
    mdate:=mdate+md;
    if DayOfWeek(mdate)=1 then
      md:=cpqday+1;
    end
  else
    begin
    try
      md:=StrToInt(Edit_urge.Text);
    except
      md:=cpdayn;
      Edit_urge.Text:='N';
    end;
    //md:=cpdayn;
    for d:=0 to cpdayn-1 do
      begin
      mdate:=Date+d;
      if DayOfWeek(mdate)=1 then
        md:=md+1;
      end;
    end;
  Edit_mdate.Text:=ChinaDate1(date+md);
end;

procedure TWioAddForm.wwDBGrid1RowChanged(Sender: TObject);
var
  pname: String;
begin
  if fkey='' then
    begin
    if ZQuery_wio_temp.FieldByName('picture').AsString<>'' then
      begin
      pname:=ExtractFilePath(Application.ExeName)+'Captures\'+ZQuery_wio_temp.FieldByName('picture').Value;
      if FileExists(pname) then
        begin
        Image1.Picture.LoadFromFile(pname);
        Image1.Visible:=True;
        wwDBGrid1.SetFocus;
        end
      else
        Image1.Visible:=False;
      end
    else
      begin
      Image1.Visible:=False;
      wwDBGrid1.SetFocus;
      end; 
    end;
end;

procedure TWioAddForm.Edit_qutyExit(Sender: TObject);
begin
  CalSum(); //計算折扣後小計
end;

procedure TWioAddForm.FormActivate(Sender: TObject);
var
  i: Integer;
  ZTablename: String;
begin
  WDM.FormColorSet(WioAddForm);
  
  for i:=0 to WioAddForm.ComponentCount -1 do
    begin
    if WioAddForm.Components[i] is TZTable then
      begin
      ZTablename:=(WioAddForm.Components[i] as TZTable).TableName; //清除washhouse為空白
      (WioAddForm.Components[i] as TZTable).TableName:=StringReplace(ZTablename,'washhouse','',[rfReplaceAll, rfIgnoreCase]);
      end;
    end;
    
  ShowItem();
  ShowStyle();
  ShowWash();
  ShowAcc();
  ShowMemo();
  ShowExKind();

  Panel_Pay.Left:=Trunc((Width-Panel_Pay.Width)/2);
  Panel_Pay.Top:=Trunc((Height-Panel_Pay.Height)/2);
  PanelPBar.Left:=Trunc((Width-PanelPBar.Width)/2);
  PanelPBar.Top:=Trunc((Height-PanelPBar.Height)/2);
  Panel_Discount.Left:=Trunc((Width-Panel_Discount.Width)/2);
  Panel_Discount.Top:=Trunc((Height-Panel_Discount.Height)/2);
  Panel_EXKind.Left:=Trunc((Width-Panel_EXKind.Width)/2);
  Panel_EXKind.Top:=Trunc((Height-Panel_EXKind.Height)/2);
  Panel_Ex.Left:=Panel_EXKind.Left+Panel_EXKind.Width;
end;

procedure TWioAddForm.Action_InsExecute(Sender: TObject);
begin
  if Edit_acc.Focused then
    begin
    menuflag:=not menuflag;
    if menuflag then
      Panel_acc.SendToBack
    else
      Panel_acc.BringToFront;
    end
  else if Edit_memo.Focused then
    begin
    menuflag:=not menuflag;
    if menuflag then
      Panel_memo.SendToBack
    else
      Panel_memo.BringToFront;
    end;
end;

procedure TWioAddForm.Action_F6Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F6';
    Edit_Discnt.Text:=copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1);
    Edit_Discnt.SetFocus;
    Panel_Discount.BringToFront;
    end;
end;

procedure TWioAddForm.Edit_DiscntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  crpsen, cppsen, sum, wisum, psen: Real;
  quty: Integer;
begin
  if Key=VK_Return then
    begin
    fkey:='';
    Hlbcrpsen.Caption:=Edit_Discnt.Text+'%';
    WDM.ZQuery_cr.Edit;
    WDM.ZQuery_cr.FieldByName('crpsen').Value:=StrToFloat(Edit_Discnt.Text);
    WDM.ZQuery_cr.Post;
    Hlbcrpsen.Caption:=FloatToStr(WDM.ZQuery_cr.FieldByName('crpsen').Value)+'%'; //個人折扣
    Panel_Discount.SendToBack;
    //處理折扣
    ZQuery_wio_temp.First;
    While not ZQuery_wio_temp.Eof do
      begin
      ZQuery_wio_temp.Edit;
      crpsen:=StrToFloat(copy(Hlbcrpsen.Caption,1,length(Hlbcrpsen.Caption)-1))/100;
      cppsen:=StrToFloat(Copy(Hlbcppsen.Caption,1,length(Hlbcppsen.Caption)-1))/100;
      sum:=ZQuery_wio_temp.FieldByName('wiwamo').AsFloat;
      quty:=ZQuery_wio_temp.FieldByName('wiquty').AsInteger;
      if crpsen>=cppsen then
        psen:=crpsen
      else
        psen:=cppsen;
      if washpsno<>0 then
        psen:=washpsno/100;
      psen:=1-psen;
      {if psen=0 then
        wisum:=Round((sum+0.5)*psen)*quty
      else
        wisum:=Round(sum*psen)*quty;}
      wisum:=Rounda(sum*quty*psen,0);
      ZQuery_wio_temp.FieldByName('wisum').Value:=wisum;
      ZQuery_wio_temp.Post;
      ZQuery_wio_temp.Next;
      end;
    CalAddwio_temp();  
    Key:=0;
    end;
end;

procedure TWioAddForm.Action_F7Execute(Sender: TObject);
var
  bm: TBookmark;
  wimemo: String;
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    fkey:='F7';
    wwDBGrid1.DataSource.DataSet.DisableControls;
    ZQuery_wio_temp.First;
    while not ZQuery_wio_temp.Eof do
      begin
      ZQuery_wio_temp.Edit;
      wimemo:=ZQuery_wio_temp.FieldByName('wimemo').AsString;
      wimemo:=StringReplace(wimemo,'未付','',[]);
      wimemo:=StringReplace(wimemo,'付清','',[]);
      ZQuery_wio_temp.FieldByName('wimemo').AsString:='未付'+wimemo;
      ZQuery_wio_temp.Post;
      ZQuery_wio_temp.Next;
      end;
    ZQuery_wio_temp.First;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    fkey:='';
    end;
end;

procedure TWioAddForm.Action_F8Execute(Sender: TObject);
var
  bm: TBookmark;
  wimemo: String;
begin
  if (fkey='')and(ZQuery_wio_temp.RecordCount>0) then
    begin
    fkey:='F8';
    wwDBGrid1.DataSource.DataSet.DisableControls;
    ZQuery_wio_temp.First;
    while not ZQuery_wio_temp.Eof do
      begin
      ZQuery_wio_temp.Edit;
      wimemo:=ZQuery_wio_temp.FieldByName('wimemo').AsString;
      wimemo:=StringReplace(wimemo,'未付','',[]);
      wimemo:=StringReplace(wimemo,'付清','',[]);
      ZQuery_wio_temp.FieldByName('wimemo').AsString:='付清'+wimemo;
      ZQuery_wio_temp.Post;
      ZQuery_wio_temp.Next;
      end;
    ZQuery_wio_temp.First;
    wwDBGrid1.DataSource.DataSet.EnableControls;
    fkey:='';
    end;
end;

procedure TWioAddForm.Action_CF9Execute(Sender: TObject);
begin
  ZQueryF9.Close;
  ZQueryF9.SQL.Clear;
  ZQueryF9.SQL.Add('SELECT * FROM wio_temp');
  ZQueryF9.SQL.Add('WHERE crcode='''+crcode+'''');
  ZQueryF9.SQL.Add('ORDER BY wisno');
  ZQueryF9.Open;
  SP300(True);
end;

procedure TWioAddForm.Action_CA1Execute(Sender: TObject);
begin
  frxReport1.LoadFromFile(WDM.WPath+'Report\F1Report.rep');
  frxReport1.DesignReport;
end;

end.

