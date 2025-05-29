unit wio_Place;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  Wwdbgrid, wwdbedit, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzButton, RzPanel, Spin, ZConnection,
  frxClass, frxDBSet, DosMove, frxDesgn;

type
  TWioPlaceForm = class(TForm)
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
    ZQuery_wiowimdate: TStringField;
    ZQuery_wiowiodate: TStringField;
    ZQuery_wiowiotime: TTimeField;
    ZQuery_wiowidate: TStringField;
    ZQuery_wioindate: TStringField;
    ZQuery_wiocrmoney: TIntegerField;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF2: TRzToolbarButton;
    rButton_Exit: TRzToolbarButton;
    Action_F1: TAction;
    RzToolbarButtonF9: TRzToolbarButton;
    Panel_SP1: TPanel;
    Label_wisno1: TLabel;
    Editsno1: TEdit;
    Action_F2: TAction;
    Action_F9: TAction;
    Panel_Mark: TPanel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    RzToolbarButtonF12: TRzToolbarButton;
    Action_F12: TAction;
    Action_F6: TAction;
    RzToolbarButtonF6: TRzToolbarButton;
    Label11: TLabel;
    Editplace1: TEdit;
    Action_F4: TAction;
    RzToolbarButtonF4: TRzToolbarButton;
    ZQuery_wiopicture: TStringField;
    Action_CtrlP: TAction;
    RzToolbarButtonCP: TRzToolbarButton;
    Panel_SP2: TPanel;
    Label_wisno2: TLabel;
    Label6: TLabel;
    Editsno2: TEdit;
    Editplace2: TEdit;
    Panel_SP4: TPanel;
    Label_wisno3: TLabel;
    Editsno3: TEdit;
    Label12: TLabel;
    SpinEdit2: TSpinEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField18: TStringField;
    StringField19: TStringField;
    IntegerField2: TIntegerField;
    TimeField1: TTimeField;
    Panel_SP5: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Editwicode: TEdit;
    Editplace4: TEdit;
    RzToolbarButtonF5: TRzToolbarButton;
    Action_F5: TAction;
    wwDBGrid1: TwwDBGrid;
    frxDBDataset1: TfrxDBDataset;
    frxDBDS_Compy: TfrxDBDataset;
    frxDBDS_cr: TfrxDBDataset;
    ZQuery_wiocrname: TStringField;
    ZQuery_wiocrtel: TStringField;
    PanelF9: TPanel;
    Label16: TLabel;
    ListBox1: TListBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label15: TLabel;
    Label17: TLabel;
    Action_F3: TAction;
    RzToolbarButtonF3: TRzToolbarButton;
    RzPanel1: TRzPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label2: TLabel;
    LabelMark: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    lbTotal: TLabel;
    lbY: TLabel;
    lbN: TLabel;
    LabelTotal: TLabel;
    LabelY: TLabel;
    LabelN: TLabel;
    Image1: TImage;
    PanelStick: TPanel;
    Label18: TLabel;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDSWio: TfrxDBDataset;
    frxReport: TfrxReport;
    RzToolbarButtonF8: TRzToolbarButton;
    Action_F8: TAction;
    SpinEdit_wimark: TSpinEdit;
    Label19: TLabel;
    ZQueryWioF8: TZQuery;
    ZQueryWioF8wicode: TStringField;
    ZQueryWioF8wisno: TStringField;
    ZQueryWioF8crcode: TStringField;
    ZQueryWioF8wiitem: TStringField;
    ZQueryWioF8winame: TStringField;
    ZQueryWioF8wiwash: TStringField;
    ZQueryWioF8wiacc: TStringField;
    ZQueryWioF8wimemo: TStringField;
    ZQueryWioF8wiwamo: TFloatField;
    ZQueryWioF8wiexkind: TStringField;
    ZQueryWioF8wiexmo: TFloatField;
    ZQueryWioF8wiquty: TIntegerField;
    ZQueryWioF8wisum: TFloatField;
    ZQueryWioF8wiurge: TStringField;
    ZQueryWioF8widay: TStringField;
    ZQueryWioF8wimdate: TStringField;
    ZQueryWioF8wiodate: TStringField;
    ZQueryWioF8wiotime: TTimeField;
    ZQueryWioF8wiplace: TStringField;
    ZQueryWioF8widate: TStringField;
    ZQueryWioF8wimark: TStringField;
    ZQueryWioF8indate: TStringField;
    ZQueryWioF8mark: TStringField;
    ZQueryWioF8wisel: TStringField;
    ZQueryWioF8pps: TIntegerField;
    ZQueryWioF8picture: TStringField;
    ZQueryWioF8crname: TStringField;
    ZQueryWioF8crtel: TStringField;
    MaskEditDate: TMaskEdit;
    Label20: TLabel;
    ListBox2: TListBox;
    Label22: TLabel;
    Panel_Search: TPanel;
    Label1: TLabel;
    Edit_Search: TEdit;
    Label9: TLabel;
    RzToolbarButtonF7: TRzToolbarButton;
    Action_F7: TAction;
    Action_F10: TAction;
    RzToolbarButtonF10: TRzToolbarButton;
    ActionCtrlAlt1: TAction;
    frxDesigner1: TfrxDesigner;
    ActionCtrlAlt3: TAction;
    frxReportF9: TfrxReport;
    ActionCtrlAltF9: TAction;
    Action_CF6: TAction;
    PlaceEdit9: TEdit;
    Label3: TLabel;
    ZQuery_wiocradr: TStringField;
    ZQuery_wiocrtelb: TStringField;
    ZQuery_wiocrtela: TStringField;
    RzToolbarButtonCF6: TRzToolbarButton;
    ActionCtrlF1: TAction;
    ActionCtrlAlt2: TAction;
    ActionCtrlAlt4: TAction;
    frxReportDot: TfrxReport;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    DBText5: TDBText;
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Action_ExitExecute(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action_F12Execute(Sender: TObject);
    procedure Action_F6Execute(Sender: TObject);
    procedure Editplace1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Editsno1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Editsno1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F2Execute(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Action_F4Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_CtrlPExecute(Sender: TObject);
    procedure Editsno2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Editplace2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure EditwicodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Editplace4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F5Execute(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Action_F9Execute(Sender: TObject);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F3Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Editsno3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F8Execute(Sender: TObject);
    procedure MaskEditDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit_wimarkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit_SearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action_F7Execute(Sender: TObject);
    procedure Action_F10Execute(Sender: TObject);
    procedure ActionCtrlAlt1Execute(Sender: TObject);
    procedure ActionCtrlAlt3Execute(Sender: TObject);
    procedure ActionCtrlAltF9Execute(Sender: TObject);
    procedure Action_CF6Execute(Sender: TObject);
    procedure PlaceEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ZQuery_wioAfterScroll(DataSet: TDataSet);
    procedure ActionCtrlF1Execute(Sender: TObject);
    procedure ActionCtrlAlt2Execute(Sender: TObject);
    procedure ActionCtrlAlt4Execute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure GetPlace();
    procedure SetPlace();
    procedure PrintF8();
    procedure PrintF9();
    procedure InputBC();
    procedure PrintLabel(); 
    procedure PrintLabel_iV3800S();
    procedure PrintLabelDot(wisno:String);
  end;

var
  WioPlaceForm: TWioPlaceForm;
  fkey, fstr, PlaceStr, msg: String;
  sdate, edate, YearStr: String;
  mark, wisnod: Integer;
  bm: TBookMark;

implementation

uses WDModule, LCUtils, ShowPic, PPreview, QueryCust, SelPlace, PrinterLib, util_utf8;
{$R *.DFM}

    var dpCrLf : AnsiString = chr(13)+chr(10);
    var sznop1     : AnsiString = 'nop_front' + Chr(13) + chr(10);
    var sznop2     : AnsiString = 'nop_middle' + Chr(13) + chr(10);

function A_Bar2d_Maxi(x:integer; y:integer; primary:integer; secondary:integer; country:integer;
              service:integer; mode:char; numeric:integer; data:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Bar2d_Maxi_Ori(x:integer; y:integer; ori:integer; primary:integer; secondary:integer;
              country:integer; service:integer; mode:char; numeric:integer; data:AnsiString):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Bar2d_PDF417(x:integer; y:integer; narrow:integer; width:integer; normal:char;
              security:integer; aspect:integer; row:integer; column:integer; mode:char;
              numeric:integer; data:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Bar2d_PDF417_Ori(x:integer; y:integer; ori:integer; narrow:integer; width:integer;
              normal:char; security:integer; aspect:integer; row:integer; column:integer; mode:char;
              numeric:integer; data:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Bar2d_DataMatrix(x:integer; y:integer; rotation:integer; hor_mul:integer;
              ver_mul:integer; ECC:integer; data_format:integer; num_rows:integer; num_col:integer;
              mode:char; numeric:integer; data:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
Procedure A_Clear_Memory();stdcall;external 'WINPPLA.DLL';
Procedure A_ClosePrn();stdcall;external 'WINPPLA.DLL';
function A_CreatePrn(selection:integer; filename:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Del_Graphic(mem_mode:integer; graphic:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Draw_Box(mode:char; x:integer; y:integer; width:integer; height:integer; top:integer;
              side:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Draw_Line(mode:char; x:integer; y:integer; width:integer; height:integer):integer;
              stdcall;external 'WINPPLA.DLL';
Procedure A_Feed_Label();stdcall;external 'WINPPLA.DLL';
function A_Get_DLL_Version(nShowMessage:integer):PAnsiChar;stdcall;external 'WINPPLA.DLL';
function A_Get_DLL_VersionA(nShowMessage:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Get_Graphic(x:integer; y:integer; mem_mode:integer; format:char; filename:AnsiString):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Get_Graphic_ColorBMP(x:integer; y:integer; mem_mode:integer; format:char;
              filename:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Get_Graphic_ColorBMPEx(x:integer; y:integer; nWidth:integer; nHeight:integer;
              rotate:integer; mem_mode:integer; format:char; id_name:AnsiString; filename:AnsiString):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Get_Graphic_ColorBMP_HBitmap(x:integer; y:integer; nWidth:integer; nHeight:integer;
              rotate:integer; mem_mode:integer; format:char; id_name:AnsiString; hbm:HBITMAP):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Initial_Setting(Type_Renamed:integer; Source:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_WriteData(IsImmediate:integer; pbuf:AnsiString; length:integer):integer;stdcall;
              external 'WINPPLA.DLL';
function A_ReadData(pbuf:PAnsiChar; length:integer; dwTimeoutms:integer):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Load_Graphic(x:integer; y:integer; graphic_name:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Open_ChineseFont(path:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Print_Form(width:integer; height:integer; copies:integer; amount:integer;
              form_name:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Print_Out(width:integer; height:integer; copies:integer; amount:integer):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Prn_Barcode(x:integer; y:integer; ori:integer; type_Renamed:char; narrow:integer;
              width:integer; height:integer; mode:char; numeric:integer; data:AnsiString):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Prn_Text(x:integer; y:integer; ori:integer; font:integer; type_Renamed:integer;
              hor_factor:integer; ver_factor:integer; mode:char; numeric:integer; data:AnsiString):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Prn_Text_Chinese(x:integer; y:integer; fonttype:integer; id_name:AnsiString; data:AnsiString;
              mem_mode:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Prn_Text_TrueType(x:integer; y:integer; FSize:integer; FType:AnsiString; Fspin:integer;
              FWeight:integer; FItalic:integer; FUnline:integer; FStrikeOut:integer; id_name:AnsiString;
              data:AnsiString; mem_mode:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Prn_Text_TrueType_W(x:integer; y:integer; FHeight:integer; FWidth:integer;
              FType:AnsiString; Fspin:integer; FWeight:integer; FItalic:integer; FUnline:integer;
              FStrikeOut:integer; id_name:AnsiString; data:AnsiString; mem_mode:integer):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Set_Backfeed(back:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_BMPSave(nSave:integer; pstrBMPFName:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Set_Cutting(cutting:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Darkness(heat:UINT):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_DebugDialog(nEnable:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Feed(rate:char):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Form(formfile:AnsiString; form_name:AnsiString; mem_mode:integer):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Set_Margin(position:integer; margin:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Prncomport(baud:integer; parity:integer; data:integer; stop:integer):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Set_Prncomport_PC(nBaudRate:integer; nByteSize:integer; nParity:integer;
              nStopBits:integer; nDsr:integer; nCts:integer; nXonXoff:integer):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Set_Sensor_Mode(type_Renamed:char; continuous:integer):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Set_Speed(speed:char):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Syssetting(transfer:integer; cut_peel:integer; length:integer; zero:integer;
              pause:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Unit(unit_Renamed:char):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Gap(gap:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_Logic(logic:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_ProcessDlg(nShow:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_ErrorDlg(nShow:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_LabelVer(centiInch:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_GetUSBBufferLen():integer;stdcall;external 'WINPPLA.DLL';
function A_EnumUSB(buf:PAnsiChar):integer;stdcall;external 'WINPPLA.DLL';
function A_CreateUSBPort(nPort:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_CreatePort(nPortType:integer; nPort:integer; filename:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Clear_MemoryEx(nMode:integer):integer;stdcall;external 'WINPPLA.DLL';
Procedure A_Set_Mirror();stdcall;external 'WINPPLA.DLL';
function A_Bar2d_RSS(x:integer; y:integer; ori:integer; ratio:integer; height:integer;
              rtype:char; mult:integer; seg:integer; data1:AnsiString; data2:AnsiString):integer;stdcall;
              external 'WINPPLA.DLL';
function A_Bar2d_QR_M(x:integer; y:integer; ori:integer; mult:char; value:integer; model:integer;
              error:char; mask:integer; dinput:char; mode:char; numeric:integer; data:AnsiString):integer;
              stdcall;external 'WINPPLA.DLL';
function A_Bar2d_QR_A(x:integer; y:integer; ori:integer; mult:char; value:integer; mode:char;
              numeric:integer; data:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_GetNetPrinterBufferLen():integer;stdcall;external 'WINPPLA.DLL';
function A_EnumNetPrinter(buf:PAnsiChar):integer;stdcall;external 'WINPPLA.DLL';
function A_CreateNetPort(nPort:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Prn_Text_TrueType_Uni(x:integer; y:integer; FSize:integer; FType:AnsiString; Fspin:integer;
              FWeight:integer; FItalic:integer; FUnline:integer; FStrikeOut:integer; id_name:AnsiString;
              data:PWideChar; format:integer; mem_mode:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_Prn_Text_TrueType_UniB(x:integer; y:integer; FSize:integer; FType:AnsiString; Fspin:integer;
              FWeight:integer; FItalic:integer; FUnline:integer; FStrikeOut:integer; id_name:AnsiString;
              data:PWideChar; format:integer ; mem_mode:integer):integer;stdcall;external 'WINPPLA.DLL';
function A_GetUSBDeviceInfo(nPort:integer; pDeviceName:PAnsiChar; pDeviceNameLen:PInteger;
              pDevicePath:PAnsiChar; pDevicePathLen:PInteger):integer;stdcall;external 'WINPPLA.DLL';
function A_Set_EncryptionKey(encryptionKey:AnsiString):integer;stdcall;external 'WINPPLA.DLL';
function A_Check_EncryptionKey(decodeKey:AnsiString; encryptionKey:AnsiString;
              dwTimeoutms:integer):integer;stdcall;external 'WINPPLA.DLL';

//TSC TTP-247 標籤機 (OS-214plus)
procedure TWioPlaceForm.PrintLabel();
var
  ret,nLen,sw : integer;
  pbuf : array[0..256] of AnsiChar;
  ver : PAnsiChar;
  strmsg: String;
  len1,len2,x_axis,y_axis : integer;
  buf1,buf2 : AnsiString;
  buff1 : array[0..256] of WideChar;
  wiquty, wiacc, crname, winame: String;
begin
  ver := A_Get_DLL_Version(0);
  if WDM.lkind.Value='' then
    begin
    exit;
    end
  else if WDM.lkind.Value='lpt' then
    begin
    ret := A_CreatePrn(1, ''); // open 1,2,3=LPT 12=usb.if 0 < ret then
    If 0 < ret then
      begin
      ShowMessage('印表機開啟失敗！');
      exit;
      end;
    end
  else if pos('USB',WDM.lkind.Value)>0 then
    begin
    nLen := A_GetUSBBufferLen() + 1;
    A_EnumUSB(pbuf);
    A_GetUSBDeviceInfo(1, PAnsiChar(buf1), @len1, PAnsiChar(buf2), @len2);
    ret := A_CreatePrn(11, PAnsiChar(WDM.lkind.Value)); // open 1,2,3=LPT 12=USBXXX.
    if 0 < ret then
      begin
      ShowMessage('USB未開啟，標籤無法列印！');
      exit;
      end;
    end;
  //A_Set_DebugDialog(1);  //設定除錯環境
  A_Set_Unit('m'); //設定度量單位為公厘
  A_Set_Syssetting(2, 0, 0, 0, 0); //設定轉印模式
  A_Set_Darkness(8);  // 設定熱感頭列印熱度 0~20
  A_Set_Speed('A'); //設定列印速度 A~E
  A_Clear_Memory();   // clear memory.
  A_WriteData(0, sznop2, StrLen(PAnsiChar(sznop2)));
  A_WriteData(1, sznop1, StrLen(PAnsiChar(sznop1)));

  wiquty:='件數：'+IntToStr(ZQuery_wio.FieldByName('wiquty').AsInteger);
  if Length(ZQuery_wio.FieldByName('crname').AsString)=0 then
    crname:=' '
  else
    crname:=ZQuery_wio.FieldByName('crname').AsString;
  if Length(ZQuery_wio.FieldByName('wiacc').AsString)=0 then
    wiacc:=' '
  else
    wiacc:=ZQuery_wio.FieldByName('wiacc').AsString;
  if Length(ZQuery_wio.FieldByName('winame').AsString)=0 then
    winame:=' '
  else
    winame:=ZQuery_wio.FieldByName('winame').AsString+' ';
  x_axis:=50;
  y_axis:=0;
  A_Prn_Text_TrueType(x_axis, y_axis+320, 60, 'Arial', 1, 400, 0, 0, 0, 'A1', ZQuery_wio.FieldByName('crcode').AsString, 1);
  A_Prn_Text_TrueType_W(x_axis, y_axis+225, 80, 20, '標楷體', 1, 400, 0, 0, 0, 'A2', crname, 1);
  A_Prn_Barcode(x_axis+240, y_axis+250, 1, 'A', 0, 0, 100, 'N', 99, ZQuery_wio.FieldByName('wisno').AsString);

  A_Prn_Text_TrueType(x_axis, y_axis+150, 60, 'Arial', 1, 400, 0, 0, 0, 'A3', ZQuery_wio.FieldByName('wicode').AsString, 1);
  A_Prn_Text_TrueType(x_axis+270, y_axis+145, 80, 'Arial', 1, 400, 0, 0, 0, 'A4', ZQuery_wio.FieldByName('wisno').AsString, 1);
  A_Prn_Text_TrueType(x_axis, y_axis+90, 40, 'Arial', 1, 400, 0, 0, 0, 'A5', ZQuery_wio.FieldByName('indate').AsString, 1);
  A_Prn_Text_TrueType_W(x_axis+240, y_axis+90, 50, 20, '標楷體', 1, 400, 0, 0, 0, 'A6', winame, 1);
  A_Prn_Text_TrueType_W(x_axis, y_axis+15, 50, 20, '標楷體', 1, 400, 0, 0, 0, 'A7', wiquty, 1);
  A_Prn_Text_TrueType_W(x_axis+240, y_axis+15, 50, 20, '標楷體', 1, 400, 0, 0, 0, 'A8', wiacc, 1);
  A_Set_Backfeed(830); //退出標籤830
  A_Print_Out(1, 1, 1, 1);
  A_ClosePrn();  //close port.
end;

//iV3800S標籤機
procedure TWioPlaceForm.PrintLabel_iV3800S();
var
  ret,nLen,sw : integer;
  pbuf : array[0..256] of AnsiChar;
  strmsg: String;
  len1,len2,x_axis,y_axis : integer;
  buf1,buf2 : AnsiString;
  buff1 : array[0..256] of WideChar;
  wiquty, wiacc, crname, winame: String;
  iResult: integer;
  strrfid: PByte;
  crmoney: String;
  Quantity, Accessories, str0: TStringList;
begin
  iResult := DemoPrinterCreator('iD4S');
  if iResult = 0 then
    begin
    iResult := DemoPortOpen('USB');
    if iResult = 0 then
      begin
      //開始
      iResult := DemoStartFormat();

      //設置打印濃度
      iResult := DemoSetPrintDarkness(20);
      //設置是否切刀、剝離等
      iResult := DemoSetPrintMode('T','N');
      iResult := DemoSetPrintQuantity(1,0,1,'N');
      //設置是否翻轉打印
      iResult := DemoSetPrintOrientation(0);

      wiquty:=IntToStr(ZQuery_wio.FieldByName('wiquty').AsInteger)+'件';
      if Length(ZQuery_wio.FieldByName('crname').AsString)=0 then
        crname:=' '
      else
        crname:=ZQuery_wio.FieldByName('crname').AsString;
      if Length(ZQuery_wio.FieldByName('wiacc').AsString)=0 then
        begin
        if Length(ZQuery_wio.FieldByName('wiitem').AsString)=0 then
          wiacc:=' '
        else
          wiacc:=ZQuery_wio.FieldByName('wiitem').AsString;
        end
      else
        wiacc:=ZQuery_wio.FieldByName('wiacc').AsString;
      if Length(ZQuery_wio.FieldByName('winame').AsString)=0 then
        winame:=' '
      else
        winame:=ZQuery_wio.FieldByName('winame').AsString+' ';
      crmoney:=IntToStr(ZQuery_wio.FieldByName('crmoney').AsInteger);
      x_axis:=220;
      y_axis:=20;

      //打印中文
      iResult := DemoSetChangeFontEncoding(28);
      iResult := DemoText(x_axis, y_axis, 16, 0, 48, 48, ZQuery_wio.FieldByName('crcode').AsString);
      iResult := DemoText(x_axis, y_axis+55, 16, 0, 40, 48, AnsiToUTF8(crname));
      iResult := DemoText(x_axis, y_axis+120, 16, 0, 48, 48, ZQuery_wio.FieldByName('wicode').AsString);
      iResult := DemoText(x_axis, y_axis+185, 16, 0, 38, 38, ZQuery_wio.FieldByName('indate').AsString);
      iResult := DemoText(x_axis, y_axis+240, 16, 0, 48, 48, AnsiToUTF8(wiquty));

      iResult := DemoText(x_axis+220, y_axis+120, 16, 0, 52, 52, ZQuery_wio.FieldByName('wisno').AsString);
      iResult := DemoText(x_axis+200, y_axis+180, 16, 0, 48, 48, AnsiToUTF8(winame));

      if WDM.Quantity.Value<>'' then
        begin
        Quantity:=TStringList.Create;
        Quantity:=TokenStr(',',WDM.Quantity.Value);
        iResult := DemoText(x_axis+StrToInt(Quantity[0]), y_axis+StrToInt(Quantity[1]), 16, 0, 48, 48, AnsiToUTF8(wiquty));
        end
      else
        iResult := DemoText(x_axis, y_axis+240, 16, 0, 48, 48, AnsiToUTF8(wiquty));

      if WDM.Accessories.Value<>'' then
        begin
        Accessories:=TStringList.Create;
        Accessories:=TokenStr(',',WDM.Accessories.Value);
        iResult := DemoText(x_axis+StrToInt(Accessories[0]), y_axis+StrToInt(Accessories[1]), 16, 0, 48, 48, AnsiToUTF8(wiacc));
        end
      else
        iResult := DemoText(x_axis+200, y_axis+240, 16, 0, 48, 48, AnsiToUTF8(wiacc));

      if WDM.LINE0.Value<>'' then
        begin
        str0:=TStringList.Create;
        str0:=TokenStr(',',WDM.LINE0.Value);
        iResult := DemoText(x_axis+StrToInt(str0[0]), y_axis+StrToInt(str0[1]), 16, 0, StrToInt(str0[2]), StrToInt(str0[2]), AnsiToUTF8(crmoney));
        end;

      //打印BarCode39條碼
      iResult := DemoBarCode39(x_axis+200, y_axis+10, 0, 2, 70, 'N', 'N', 'N', ZQuery_wio.FieldByName('wisno').AsString);

      //結束
      iResult := DemoEndFormat();
      //刪除打印機
      iResult := DemoPortClose();
      //銷毀
      iResult := DemoPrinterDestroy();
      end
    else
      begin
        ShowMessage('Usb Device not found');
      end;
    end
  else
    begin
      ShowMessage('Printer not found');
    end;
end;

procedure TWioPlaceForm.PrintLabelDot(wisno:String);
var
  wicode, Total: String;
begin
  try
    ZReadOnlyQuery1.Close;
    ZQueryWioF8.Close;
    ZQueryWioF8.SQL.Clear;
    ZQueryWioF8.SQL.Add('SELECT * FROM wio');
    ZQueryWioF8.SQL.Add('WHERE wisno='''+wisno+'''');
    ZQueryWioF8.Open;
    wicode:=ZQueryWioF8.FieldByName('wicode').AsString;
    ZReadOnlyQuery1.Close;
    ZReadOnlyQuery1.SQL.Clear;
    ZReadOnlyQuery1.SQL.Add('SELECT SUM(wiquty) as total FROM wio ');
    ZReadOnlyQuery1.SQL.Add('WHERE wicode='''+wicode+'''');
    ZReadOnlyQuery1.Open;
    Total:=ZReadOnlyQuery1.FieldByName('total').AsString;
    frxReportDot.LoadFromFile(WDM.WPath+'Report\PlaceLabelDot.rep');
    TfrxMemoView(frxReportDot.FindObject('Total')).Text:='共：'+Total+' 件';
    frxReportDot.PrepareReport;
    frxReportDot.PrintOptions.ShowDialog := False; //不顯示對話框
    frxReportDot.Print; //列印
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;

procedure TWioPlaceForm.InputBC();
var
  str1: String;
  sint1: Integer;
  pflag: Boolean;
begin
  pflag:=False;
  str1:=Editsno3.Text; //手機入庫處理
  sint1:=Length(str1);
  str1:=copy(str1,WDM.position.Value,wisnod);

  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM wio');
  ZQuery1.SQL.Add('WHERE wisno='''+str1+'''');
  ZQuery1.SQL.Add('AND wiodate='''''); //未取件
  ZQuery1.SQL.Add('AND indate=''''');
  ZQuery1.Open;
  if ZQuery1.RecordCount=0 then //無此編號並返回
    begin
    ZQuery_wio.Locate('wisno',vararrayof([str1]),[]);
    ShowMessage('無此編號或已入庫！');
    Editsno3.Text:='';
    Editsno3.SetFocus;
    pflag:=True;
    end
  else if ZQuery1.RecordCount=1 then //處理單件入庫
    begin
    if ZQuery1.FieldByName('indate').AsString<>'' then
      begin
      ZQuery_wio.Locate('wisno',vararrayof([str1]),[]);
      ShowMessage('編號：'+str1+' 已入庫！');
      pflag:=True;
      end
    else
      begin
      ZQuery1.Edit;
      ZQuery1.FieldByName('wiplace').Value:=PlaceStr;
      ZQuery1.FieldByName('indate').Value:=ChinaDate1(date);
      ZQuery1.FieldByName('wimark').Value:=mark;
      ZQuery1.Post;
      end;
    ZQuery_wio.Close; //重新排列入庫資料(入庫的放最前面)
    ZQuery_wio.Open;
    ZQuery_wio.Locate('wisno',vararrayof([str1]),[]);
    end
  else //整理編號>1
    begin
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('SELECT * FROM wio');
    ZQuery_wio.SQL.Add('WHERE wisno='''+str1+'''');
    ZQuery_wio.SQL.Add('AND wiodate='''''); //未取件
    ZQuery_wio.SQL.Add('AND indate='''''); //未入庫
    ZQuery_wio.SQL.Add('ORDER BY wicode');
    ZQuery_wio.Open;
    ZQuery_wio.First;
    Panel_SP4.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    RzToolbarButtonF1.Visible:=False;
    RzToolbarButtonF2.Visible:=False;
    RzToolbarButtonF3.Visible:=False;
    RzToolbarButtonF4.Visible:=False;
    RzToolbarButtonF5.Visible:=False;
    RzToolbarButtonF6.Visible:=False;
    RzToolbarButtonF8.Visible:=False;
    RzToolbarButtonF9.Visible:=False;
    RzToolbarButtonF10.Visible:=False;
    RzToolbarButtonF12.Visible:=False;
    RzToolbarButtonCF6.Visible:=False;
    RzToolbarButtonCP.Visible:=False;
    fkey:='CF4';
    end;
  WDM.ZQueryCust.Locate('crcode',vararrayof([ZQuery_wio.FieldByName('crcode').AsString]),[]);
  if (ZQuery_wio.FieldByName('indate').AsString<>'') and (pflag=False) then
    if WDM.ZTableCompy.FieldByName('HotOrDot').AsString='0' then
      begin
      if LowerCase(WDM.labkind.Value)='os-214plus' then
        PrintLabel() //列印標籤
      else if LowerCase(WDM.labkind.Value)='iv3800s' then
        PrintLabel_iV3800S();
      end
    else
      PrintLabelDot(Editsno3.Text);
  Editsno3.Text:='';
  Editsno3.SetFocus;
end;

procedure TWioPlaceForm.GetPlace();
begin
  try
     SelPlaceForm := TSelPlaceForm.Create(Application);
     SelPlaceForm.Top:=Panel_SP1.Top-200;
     SelPlaceForm.Left:=Panel_SP1.Left;
     SelPlaceForm.ShowModal;
     if SelPlaceForm.pname<>'' then
       begin
       if Editplace1.Focused then
         begin
         Editplace1.Text:=SelPlaceForm.pname;
         Editplace1.SelStart:=Length(Editplace1.Text);
         end;
       if Editplace2.Focused then
         begin
         Editplace2.Text:=SelPlaceForm.pname;
         Editplace2.SelStart:=Length(Editplace2.Text);
         end;
       if Editplace4.Focused then
         begin
         Editplace4.Text:=SelPlaceForm.pname;
         Editplace4.SelStart:=Length(Editplace4.Text);
         end;
       end;
     FreeAndNil(SelPlaceForm);
   except
     on E: Exception do
       MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
   end;
end;

procedure TWioPlaceForm.SetPlace();
var
  wicode, wisno: String;
begin
  wicode:=ZQuery_wio.FieldByName('wicode').AsString;
  wisno:=ZQuery_wio.FieldByName('wisno').AsString;
  ZQuery_wio.Edit;
  ZQuery_wio.FieldByName('wiplace').AsString:=EditPlace1.Text;
  ZQuery_wio.FieldByName('indate').AsString:=ChinaDate1(date);
  ZQuery_wio.FieldByName('wimark').Value:=mark;
  ZQuery_wio.Post;
  if fkey='CF4' then
    if WDM.ZTableCompy.FieldByName('HotOrDot').AsString='0' then
      begin
      if LowerCase(WDM.labkind.Value)='os-214plus' then
        PrintLabel() //列印標籤
      else if LowerCase(WDM.labkind.Value)='iv3800s' then
        PrintLabel_iV3800S();
      end
    else
      PrintLabelDot(wisno);
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('select * from wio');
  ZQuery_wio.SQL.Add('where wiodate=''''');
  ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
  ZQuery_wio.Open;
  ZQuery_wio.Locate('wicode;wisno',vararrayof([wicode,wisno]),[]);
  RzToolbarButtonF1.Visible:=True;
  RzToolbarButtonF2.Visible:=True;
  RzToolbarButtonF3.Visible:=True;
  RzToolbarButtonF4.Visible:=True;
  RzToolbarButtonF6.Visible:=True;
  RzToolbarButtonF9.Visible:=True;
  RzToolbarButtonF12.Visible:=True;
  RzToolbarButtonCP.Visible:=True;
end;

procedure TWioPlaceForm.PrintF8();
begin
  ZQueryWioF8.Close;
  ZQueryWioF8.SQL.Clear;
  ZQueryWioF8.SQL.Add('SELECT * FROM wio');
  ZQueryWioF8.SQL.Add('WHERE indate='''+MaskEditDate.Text+'''');
  ZQueryWioF8.SQL.Add('AND wimark='''+SpinEdit_wimark.Text+'''');
  ZQueryWioF8.SQL.Add('ORDER BY wisno');
  ZQueryWioF8.Open;
  if ListBox2.ItemIndex=0 then //一般標籤 2
    begin
    try
      PreviewForm := TPreviewForm.Create(Application);
      frxReport.LoadFromFile(WDM.WPath+'Report\PlaceLabel81.rep');
      frxReport.preview:=PreviewForm.frxPreview1;
      frxReport.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end
  else if ListBox2.ItemIndex=1 then //一般標籤 4
    begin
    try
      PreviewForm := TPreviewForm.Create(Application);
      frxReport.LoadFromFile(WDM.WPath+'Report\PlaceLabel814.rep');
      frxReport.preview:=PreviewForm.frxPreview1;
      frxReport.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end
  else //自黏標籤
    begin
    try
      PreviewForm := TPreviewForm.Create(Application);
      frxReport.LoadFromFile(WDM.WPath+'Report\PlaceLabel82.rep');
      frxReport.preview:=PreviewForm.frxPreview1;
      frxReport.ShowReport; //螢幕預覽
      PreviewForm.ShowModal;
      FreeAndNil(PreviewForm);
    except
      on E: Exception do
        MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
    end;
    end;
  PanelStick.SendToBack;
end;

procedure TWioPlaceForm.PrintF9();
begin
  ZQueryWioF8.Close;
  ZQueryWioF8.SQL.Clear;
  ZQueryWioF8.SQL.Add('SELECT * FROM wio');
  frxReportF9.LoadFromFile(WDM.WPath+'Report\PlaceReport.rep');
  if ListBox1.ItemIndex=0 then
    begin
    ZQueryWioF8.SQL.Add('WHERE wiodate='''''); //未取
    if fstr='F6' then
      ZQueryWioF8.SQL.Add('AND crcode='''+WDM.crcode+'''');
    ZQueryWioF8.SQL.Add('AND indate between '''+MaskEdit1.Text+''' and '''+MaskEdit2.Text+'''');
    if PlaceEdit9.Text<>'' then
      //ZQueryWioF8.SQL.Add('AND UPPER(wiplace)='''+UpperCase(PlaceEdit9.Text)+'''')
      ZQueryWioF8.SQL.Add('AND wiplace='''+PlaceEdit9.Text+'''')
    else
      ZQueryWioF8.SQL.Add('AND wiplace<>''''');  //未入庫
    if LabelMark.Caption<>'0' then
      ZQueryWioF8.SQL.Add('AND wimark='''+LabelMark.Caption+'''');
    ZQueryWioF8.SQL.Add('ORDER BY wicode,wisno');
    TfrxMemoView(frxReportF9.FindObject('MemoTitle')).Text:='☆☆☆入庫報表☆☆☆';
    TfrxMemoView(frxReportF9.FindObject('MemoSum')).Text:='衣物入庫總計件數:';
    end;
  if ListBox1.ItemIndex=1 then
    begin
    ZQueryWioF8.SQL.Add('WHERE widate between '''+MaskEdit1.Text+''' and '''+MaskEdit2.Text+'''');
    ZQueryWioF8.SQL.Add('AND wiodate=''''');
    if fstr='F6' then
      ZQueryWioF8.SQL.Add('AND crcode='''+WDM.crcode+'''');
    if PlaceEdit9.Text<>'' then
      ZQueryWioF8.SQL.Add('AND wiplace='''+PlaceEdit9.Text+'''')
    else
      ZQueryWioF8.SQL.Add('AND wiplace=''''');
    //ZQueryWioF8.SQL.Add('AND wimark='''+LabelMark.Caption+'''');
    ZQueryWioF8.SQL.Add('ORDER BY widate,wicode,wisno');
    TfrxMemoView(frxReportF9.FindObject('Memo5')).Text:='收件日期：';
    TfrxMemoView(frxReportF9.FindObject('MemoTitle')).Text:='☆☆☆未入庫報表☆☆☆';
    TfrxMemoView(frxReportF9.FindObject('MemoSum')).Text:='衣物未入庫總計件數:';
    end;
  ZQuery_wio.Open;
  try
    PreviewForm := TPreviewForm.Create(Application);
    if wisnod=5 then
      TfrxMemoView(frxReportF9.FindObject('Memo11')).Text:='洗號';
    TfrxMemoView(frxReportF9.FindObject('MemoDate')).Text:=ChinaDate1(Date);
    TfrxMemoView(frxReportF9.FindObject('MemoDateRange')).Text:=MaskEdit1.Text+'～'+MaskEdit2.Text;
    frxReportF9.preview:=PreviewForm.frxPreview1;
    frxReportF9.ShowReport; //螢幕預覽
    PreviewForm.ShowModal;
    FreeAndNil(PreviewForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError,[mbOK], 0);
  end;
end;
procedure TWioPlaceForm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (Field.FieldName='wicode') or (Field.FieldName='crcode') or (Field.FieldName='wisum') or (Field.FieldName='wiplace')then
    begin
    AFont.Color:=ClYellow;
    //AFont.Style:=[fsBold];
    end;
  if (Field.FieldName='wiquty') or (Field.FieldName='wimark') then
    Field.Alignment:=taCenter;
end;

procedure TWioPlaceForm.Action_ExitExecute(Sender: TObject);
begin
  if (fkey='F1')AND(fstr='') then
    begin
    RzToolbarButtonF7.Visible:=False;
    fkey:='';
    if not RzToolbarButtonF1.Visible then
      begin
      RzToolbarButtonF1.Visible:=True;
      RzToolbarButtonF2.Visible:=True;
      RzToolbarButtonF3.Visible:=True;
      RzToolbarButtonF4.Visible:=True;
      RzToolbarButtonF6.Visible:=True;
      RzToolbarButtonF9.Visible:=True;
      RzToolbarButtonF12.Visible:=True;
      RzToolbarButtonCP.Visible:=True;

      wwDBGrid1.DataSource.DataSet.DisableControls;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('select * from wio');
      ZQuery_wio.SQL.Add('where wiodate=''''');
      ZQuery_wio.SQL.Add('ORDER BY wiplace DESC,wicode DESC,wisno DESC');
      ZQuery_wio.Open;
      wwDBGrid1.DataSource.DataSet.EnableControls;
      end
    else
      begin
      //fkey:=fstr;
      Panel_SP1.SendToBack;
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end;
    end
  else if (fkey='F1')AND(fstr='CF1') then
    begin
    fstr:='';
    lbTotal.Visible:=False;
    LabelTotal.Visible:=False;
    lbY.Visible:=False;
    LabelY.Visible:=False;
    lbN.Visible:=False;
    LabelN.Visible:=False;
    RzToolbarButtonF1.Visible:=True;
    rButton_Exit.Caption:='Esc.離開';
    rButton_Exit.Width:=90;
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE wiodate=''''');
    ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
    ZQuery_wio.Open;
    wwDBGrid1.Enabled:=True;
    ZQuery_wio.GotoBookmark(bm);
    wwDBGrid1.Color:=$00C40000;
    Panel_SP1.BringToFront;
    end
  else if fkey='F2' then
    begin
    RzToolbarButtonF7.Visible:=False;
    fkey:='';
    Panel_SP2.SendToBack;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F3' then
    begin
    fkey:='';
    Panel_Search.SendToBack;
    wwDBGrid1.SetFocus;
    end
  else if fkey='F4' then
    begin
    fkey:='';
    Panel_SP4.SendToBack;
    wwDBGrid1.Enabled:=True;
    wwDBGrid1.SetFocus;
    end
  else if fkey='CF4' then
    begin
    RzToolbarButtonF1.Visible:=True;
    RzToolbarButtonF2.Visible:=True;
    RzToolbarButtonF3.Visible:=True;
    RzToolbarButtonF4.Visible:=True;
    RzToolbarButtonF5.Visible:=True;
    RzToolbarButtonF6.Visible:=True;
    RzToolbarButtonF8.Visible:=True;
    RzToolbarButtonF9.Visible:=True;
    RzToolbarButtonF10.Visible:=True;
    RzToolbarButtonF12.Visible:=True;
    RzToolbarButtonCF6.Visible:=True;
    RzToolbarButtonCP.Visible:=True;
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE wiodate=''''');
    ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
    ZQuery_wio.Open;
    fkey:='F4';
    Editsno3.Text:='';
    Editsno3.Enabled:=True;
    Panel_SP4.BringToFront;
    Editsno3.SetFocus;
    wwDBGrid1.Enabled:=False;
    Exit;
    end
  else if fkey='F5' then
    begin
    RzToolbarButtonF7.Visible:=False;
    fkey:='';
    Panel_SP5.SendToBack;
    wwDBGrid1.SetFocus;
    end
  else if (fstr='F6')or(fstr='CF6') then
    if (fkey='F9') then
      begin
      fkey:='';
      PanelF9.SendToBack;
      end
    else
      begin
      fstr:='';
      fkey:='';
      lbTotal.Visible:=False;
      LabelTotal.Visible:=False;
      lbY.Visible:=False;
      LabelY.Visible:=False;
      lbN.Visible:=False;
      LabelN.Visible:=False;
      RzToolbarButtonF6.Visible:=True;
      rButton_Exit.Caption:='Esc.離開';
      rButton_Exit.Width:=90;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('select * from wio');
      ZQuery_wio.SQL.Add('WHERE wiodate=''''');
      ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
      ZQuery_wio.Open;
      ZQuery_wio.GotoBookmark(bm);
      wwDBGrid1.Color:=$00C40000;
      end
  else if fkey='F8' then
    begin
    fkey:='';
    PanelStick.SendToBack;
    end
  else if fkey='F9' then
    begin
    fkey:='';
    PanelF9.SendToBack;
    end
  else if fkey='F12' then
    begin
    fkey:='';
    Panel_mark.SendToBack;
    end
  else
    Close;
  wwDBGrid1.SetFocus;
  if fkey='F1' then
    wwDBGrid1.Enabled:=False;
end;

procedure TWioPlaceForm.Action_F1Execute(Sender: TObject);
begin
  if ((fkey='') or (fstr='F6')) and (ZQuery_wio.RecordCount>0) then
    begin
    if (fkey='') then
      begin
      fkey:='F1';
      Panel_SP1.BringToFront;
      //Editsno1.Enabled:=True;
      Editplace1.Text:=PlaceStr;
      Editsno1.SetFocus;
      wwDBGrid1.Enabled:=False;
      RzToolbarButtonF7.Caption:='F7.入庫片語';
      RzToolbarButtonF7.Visible:=True;
      end;
    end;
end;

procedure TWioPlaceForm.SpinEdit1Change(Sender: TObject);
begin
  SpinEdit1.SelectAll;
end;

procedure TWioPlaceForm.Button1Click(Sender: TObject);
begin
  fkey:='';
  mark:=SpinEdit1.Value;
  LabelMark.Caption:=IntToStr(mark);
  Panel_Mark.SendToBack;
  wwDBGrid1.SetFocus;
end;

procedure TWioPlaceForm.Action_F12Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F12';
    Panel_mark.BringToFront;
    SpinEdit1.SetFocus;
    end;
end;

procedure TWioPlaceForm.Action_F6Execute(Sender: TObject);
var
  ycnt,ncnt: Integer;
begin
  if (fkey='')AND(fstr<>'F6') then
    try
      fstr:='F6';
      QueryCustForm := TQueryCustForm.Create(Application);
      QueryCustForm.ShowModal;
      FreeAndNil(QueryCustForm);
      wwDBGrid1.Color:=ClTeal;
      bm:=ZQuery_wio.GetBookmark;
      //RzToolbarButtonF5.Visible:=True;
      lbTotal.Visible:=True;
      LabelTotal.Visible:=True;
      lbY.Visible:=True;
      LabelY.Visible:=True;
      lbN.Visible:=True;
      LabelN.Visible:=True;
      ycnt:=0;
      ncnt:=0;
      RzToolbarButtonF6.Visible:=False;
      rButton_Exit.Caption:='Esc.離開客戶衣物';
      rButton_Exit.Width:=130;

      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT * FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
      ZQuery_wio.SQL.Add('AND (wiodate='''')');
      ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
      ZQuery_wio.Open;
      LabelTotal.Caption:=IntToStr(ZQuery_wio.RecordCount);
      while not ZQuery_wio.Eof do
        begin
        if ZQuery_wio.FieldByName('indate').AsString='' then
          ncnt:=ncnt+1
        else
          ycnt:=ycnt+1;
        ZQuery_wio.Next;
        end;
      ZQuery_wio.First;
      LabelY.Caption:=IntToStr(ycnt);
      LabelN.Caption:=IntToStr(ncnt);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioPlaceForm.Editplace1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) AND (fkey='F1') then
    begin
    Key:=0;
    if Editsno1.Text='' then
      begin
      Editsno1.SetFocus;
      Exit;
      end;
    Editsno1.Text:=StrZero(StrToInt(Editsno1.Text),wisnod);
    PlaceStr:=Editplace1.Text;
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM wio');
    ZQuery1.SQL.Add('WHERE wisno='''+Editsno1.Text+'''');
    ZQuery1.SQL.Add('AND wiodate='''''); //未取件
    ZQuery1.SQL.Add('AND indate=''''');
    ZQuery1.Open;
    if ZQuery1.RecordCount=0 then //無此編號並返回
      begin
      ZQuery_wio.Locate('wisno',vararrayof([Editsno1.Text]),[]);
      ShowMessage('無此編號或已入庫！');
      Editsno1.Text:='';
      Editsno1.SetFocus;
      end
    else if ZQuery1.RecordCount=1 then //處理單件入庫
      begin
      if ZQuery1.FieldByName('indate').AsString<>'' then
        begin
        ZQuery_wio.Locate('wisno',vararrayof([Editsno1.Text]),[]);
        ShowMessage('整理編號：'+Editsno1.Text+' 已入庫！');
        Editsno1.Text:='';
        Editsno1.SetFocus;
        end
      else
        begin
        ZQuery1.Edit;
        ZQuery1.FieldByName('wiplace').Value:=EditPlace1.Text;
        ZQuery1.FieldByName('indate').Value:=ChinaDate1(date);
        ZQuery1.FieldByName('wimark').Value:=mark;
        ZQuery1.Post;
        end;
      ZQuery_wio.Close; //重新排列入庫資料(入庫的放最前面)
      ZQuery_wio.Open;
      ZQuery_wio.Locate('wisno',vararrayof([Editsno1.Text]),[]);
      Editsno1.Text:='';
      Editsno1.SetFocus;
      if WDM.SingleStorePrint.Value=1 then
        if WDM.ZTableCompy.FieldByName('HotOrDot').AsString='0' then
          begin
          if LowerCase(WDM.labkind.Value)='os-214plus' then
            PrintLabel() //列印標籤
          else if LowerCase(WDM.labkind.Value)='iv3800s' then
            PrintLabel_iV3800S();
          end
        else if WDM.ZTableCompy.FieldByName('HotOrDot').AsString='1' then
          PrintLabelDot(ZQuery_wio.FieldByName('wisno').AsString);
      end
    else //整理編號>1
      begin
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT * FROM wio');
      ZQuery_wio.SQL.Add('WHERE wisno='''+Editsno1.Text+'''');
      ZQuery_wio.SQL.Add('AND wiodate='''''); //未取件
      ZQuery_wio.SQL.Add('AND indate='''''); //未入庫
      ZQuery_wio.SQL.Add('ORDER BY wicode');
      ZQuery_wio.Open;
      RzToolbarButtonF1.Visible:=False;
      RzToolbarButtonF2.Visible:=False;
      RzToolbarButtonF3.Visible:=False;
      RzToolbarButtonF4.Visible:=False;
      RzToolbarButtonF6.Visible:=False;
      RzToolbarButtonF9.Visible:=False;
      RzToolbarButtonF12.Visible:=False;
      RzToolbarButtonCP.Visible:=False;
      Panel_SP1.SendToBack;
      Editsno1.Text:='';
      wwDBGrid1.Enabled:=True;
      wwDBGrid1.SetFocus;
      end;
    //WDM.ZTableCust.Locate('crcode',vararrayof([ZQuery_wio.FieldByName('crcode').AsString]),[]);
    end;
end;

procedure TWioPlaceForm.Editsno1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return)AND(Editsno1.Text<>'') then
    begin
    //Perform(WM_NextDlgCtl, 0, 0);
    Editsno1.Text:=StrZero(StrToInt(Editsno1.Text),wisnod);
    Key:=0;
    end;
end;

procedure TWioPlaceForm.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    if fkey='F1' then
      begin
      fkey:='';
      SetPlace();
      Action_F1Execute(Self);
      Exit;
      end;
    if fkey='CF4' then //條碼重複入庫處理
      begin
      SetPlace();
      fkey:='';
      Action_F4Execute(Self);
      Exit;
      end;
    {
    else if fkey='' then
      begin
      if ZQuery_wio.FieldByName('wiplace').AsString='' then
        Action_F2Execute(Self)
      else
        begin
        msg:='確定取消入庫？';
        if IDYES=MessageBox(handle,PChar(msg),'取消',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
          begin
          ZQuery_wio.Edit;
          ZQuery_wio.FieldByName('wiplace').AsString:='';
          ZQuery_wio.FieldByName('indate').AsString:='';
          ZQuery_wio.FieldByName('wimark').Value:=Null;
          ZQuery_wio.Post;
          end;
        end;
      end;}
    if ZQuery_wio.FieldByName('indate').AsString='' then
      begin
      Editsno2.Text:=ZQuery_wio.FieldByName('wisno').AsString;
      Editplace2.Text:=PlaceStr;
      SpinEdit2.Text:=LabelMark.Caption;
      Action_F2Execute(Self)
      end
    else
      begin
      msg:='確定取消入庫？';
      if IDYES=MessageBox(handle,PChar(msg),'取消',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
        begin
        ZQuery_wio.Edit;
        ZQuery_wio.FieldByName('wiplace').AsString:='';
        ZQuery_wio.FieldByName('indate').AsString:='';
        ZQuery_wio.FieldByName('wimark').AsString:='';
        ZQuery_wio.Post;
        end;
      end;
    end;  
end;

procedure TWioPlaceForm.SpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    mark:=SpinEdit1.Value;
    LabelMark.Caption:=IntToStr(mark);
    Panel_Mark.SendToBack;
    end;
end;

procedure TWioPlaceForm.Editsno1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(Editsno1.Text)=wisnod then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
end;

procedure TWioPlaceForm.Action_F2Execute(Sender: TObject);
begin
  if ((fkey='') or (fstr='F6')) and (ZQuery_wio.RecordCount>0) then
    begin
    if (fkey='') then
      begin
      fkey:='F2';
      Editsno2.Text:=ZQuery_wio.FieldByName('wisno').AsString;
      Editsno2.Enabled:=False;
      if ZQuery_wio.FieldByName('wiplace').AsString<>'' then
        Editplace2.Text:=ZQuery_wio.FieldByName('wiplace').AsString;
      if ZQuery_wio.FieldByName('wimark').AsString<>'' then
        SpinEdit2.Text:=ZQuery_wio.FieldByName('wimark').AsString;
      Editplace2.SetFocus;
      Panel_SP2.BringToFront;
      RzToolbarButtonF7.Caption:='F7.入庫片語';
      RzToolbarButtonF7.Visible:=True;
      end;
    end;
end;

procedure TWioPlaceForm.wwDBGrid1DblClick(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    SetPlace();
    Action_F1Execute(Self);
    end
  else if (fkey='')or(fkey='F6') then
    begin
    if ZQuery_wio.FieldByName('wiplace').AsString='' then
      Action_F2Execute(Self)
    else
      begin
      msg:='確定取消入庫？';
      if IDYES=MessageBox(handle,PChar(msg),'取消',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
        begin
        ZQuery_wio.Edit;
        ZQuery_wio.FieldByName('wiplace').AsString:='';
        ZQuery_wio.FieldByName('indate').AsString:='';
        ZQuery_wio.FieldByName('wimark').Value:=Null;
        ZQuery_wio.Post;
        end;
      end;
    end;
end;

procedure TWioPlaceForm.Action_F4Execute(Sender: TObject);
begin
  if ((fkey='') or (fstr='F6')) and (ZQuery_wio.RecordCount>0) then
    begin
    if (fkey='') then
      begin
      fkey:='F4';
      Editsno3.Text:='';
      Editsno3.Enabled:=True;
      Panel_SP4.BringToFront;
      Editsno3.SetFocus;
      wwDBGrid1.Enabled:=False;
      end;
    end;
end;

procedure TWioPlaceForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  WDM.ZTableCompy.Close;
  WDM.ZTableCompy.Open;

  wwDBGrid1.BringToFront;
  Panel_Mark.SendToBack;
  Panel_SP1.SendToBack;
  Panel_SP2.SendToBack;
  Panel_SP4.SendToBack;
  Panel_SP5.SendToBack;
  PanelF9.SendToBack;
  PanelStick.SendToBack;
  mark:=1;
  PlaceStr:=FormatDateTime('MMDD',date);
  MaskEdit1.Text:=ChinaDate1(Date); //入庫日期
  MaskEdit2.Text:=ChinaDate1(Date);
  MaskEditDate.Text:=ChinaDate1(Date); //標籤日期

  YearStr:=Copy(ChinaDate1(date),1,3);
  sdate:=ChinaDate1(date-61);
  edate:=ChinaDate1(date);
  WDM.ZQueryCust.Close;
  WDM.ZQueryCust.Open;
  ZQuery_wio.Close;
  ZQuery_wio.SQL.Clear;
  ZQuery_wio.SQL.Add('select * from wio');
  ZQuery_wio.SQL.Add('WHERE wiodate=''''');
  //ZQuery_wio.SQL.Add('AND (widate BETWEEN '''+sdate+''' AND '''+edate+''')');
  ZQuery_wio.SQL.Add('ORDER BY widate DESC,wicode DESC,wisno DESC');
  ZQuery_wio.Open;

  wisnod:=WDM.ZTableCompy.FieldByName('cpwisno_d').AsInteger;
  wwDBGrid1.IniAttributes.FileName:=WDM.WPath+'Clothes.ini';
  wwDBGrid1.IniAttributes.SectionName:='PlaceF8'+IntToStr(wisnod);
  wwDBGrid1.LoadFromIniFile;

  if (wisnod=5)or(wisnod=6) then
    begin
    Label_wisno1.Caption:='洗號入庫';
    Label_wisno2.Caption:='洗    號';
    Label_wisno3.Caption:='條碼入庫';
    end;
end;

procedure TWioPlaceForm.Action_CtrlPExecute(Sender: TObject);
begin
  if (fkey='') and (ZQuery_wio.RecordCount>0) then
    begin
    Image1Click(Self);
    wwDBGrid1.SetFocus;
    end
  else
    ShowMessage('沒有照片！');
end;

procedure TWioPlaceForm.Editsno2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
end;

procedure TWioPlaceForm.Editplace2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
  if (Key=VK_Return) then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
end;

procedure TWioPlaceForm.SpinEdit2Change(Sender: TObject);
begin
  SpinEdit2.SelectAll;
end;

procedure TWioPlaceForm.SpinEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) and (fkey='F2') then
    begin
    fkey:='';
    ZQuery_wio.Edit;
    ZQuery_wio.FieldByName('wiplace').Value:=Editplace2.Text;
    ZQuery_wio.FieldByName('wimark').Value:=SpinEdit2.Text;
    ZQuery_wio.FieldByName('indate').AsString:=ChinaDate1(date);
    ZQuery_wio.Post;
    Panel_SP2.SendToBack;
    wwDBGrid1.SetFocus;
    Key:=0;
    end;
end;

procedure TWioPlaceForm.Image1Click(Sender: TObject);
var
  pname: string;
begin
  pname:=ZQuery_wio.FieldByName('wicode').AsString+'_'+ZQuery_wio.FieldByName('wisno').AsString+'_';
  if FileExists(WDM.WPath+'captures\'+pname+'01.jpg') then
    begin
    try
      ShowPicForm := TShowPicForm.Create(Application);
      ShowPicForm.PicName:=pname;
      ShowPicForm.ShowModal;
      FreeAndNil(ShowPicForm);
      wwDBGrid1.SetFocus;
    except
      on E: Exception do
        MessageDlg ('視窗錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end;
end;

procedure TWioPlaceForm.EditwicodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key:=0;
    end;
end;

procedure TWioPlaceForm.Editplace4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  wicode: String;
begin
  if (Key=VK_Return) AND (fkey='F5') then
    begin
    wicode:=StrZero(StrToInt(Editwicode.Text),6);
    PlaceStr:=Editplace4.Text;
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM wio');
    ZQuery1.SQL.Add('WHERE wicode='''+wicode+'''');
    ZQuery1.Open;
    if ZQuery1.RecordCount=0 then //無此編號並返回
      begin
      ShowMessage('無此編號！');
      Editwicode.Text:='';
      Editwicode.SetFocus;
      end
    else //處理洗單入庫
      begin
      while not ZQuery1.Eof do
        begin
        if (ZQuery1.FieldByName('indate').AsString='') AND (ZQuery1.FieldByName('wiplace').AsString='') then
          begin
          ZQuery1.Edit;
          ZQuery1.FieldByName('wiplace').Value:=EditPlace4.Text;
          ZQuery1.FieldByName('indate').Value:=ChinaDate1(date);
          ZQuery1.FieldByName('wimark').Value:=mark;
          ZQuery1.Post;
          end;
        ZQuery1.Next;
        end;
      ZQuery_wio.Close; //重新排列入庫資料(入庫的放最前面)
      ZQuery_wio.Open;
      ZQuery_wio.Locate('wicode',vararrayof([wicode]),[]);
      Editwicode.Text:='';
      Panel_SP5.SendToBack;
      fkey:='';
      end;
    Key:=0;
    wwDBGrid1.SetFocus;
    end;
end;

procedure TWioPlaceForm.Action_F5Execute(Sender: TObject);
begin
  if ((fkey='') or (fstr='F6')) and (ZQuery_wio.RecordCount>0) then
    begin
    if (fkey='') then
      begin
      fkey:='F5';
      Editplace4.Text:=PlaceStr;
      Panel_SP5.BringToFront;
      Editwicode.SetFocus;
      RzToolbarButtonF7.Caption:='F7.入庫片語';
      RzToolbarButtonF7.Visible:=True;
      end;
    end;
end;

procedure TWioPlaceForm.wwDBGrid1RowChanged(Sender: TObject);
var
  crcode, picname: String;
begin
  if (fkey='') and (ZQuery_wio.RecordCount>0) then
    begin
    crcode:=ZQuery_wio.FieldByName('crcode').AsString;
    //WDM.ZTableCust.Locate('crcode',vararrayof([crcode]),[]);
    //WDM.crcode:=WDM.ZTableCust.FieldByName('crcode').AsString;
    picname:=WDM.WPath+'Captures\'+ZQuery_wio.FieldByName('wicode').AsString+'_'+ZQuery_wio.FieldByName('wisno').AsString+'_01.jpg';
    if FileExists(picname) then
      begin
      Image1.Picture.LoadFromFile(picname);
      Image1.Visible:=True;
      end
    else
      Image1.Visible:=False;
    end
  else
    Image1.Visible:=False;
end;

procedure TWioPlaceForm.Action_F9Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F9';
    PlaceEdit9.Text:='';
    MaskEdit1.SetFocus;
    ListBox1.ItemIndex:=0;
    PanelF9.BringToFront;
    end;
end;

procedure TWioPlaceForm.ListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  fkey:='';
  wwDBGrid1.DataSource.DataSet.DisableControls;
  PrintF9();
  wwDBGrid1.DataSource.DataSet.EnableControls;
  PanelF9.SendToBack;
end;

procedure TWioPlaceForm.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    fkey:='';
    wwDBGrid1.DataSource.DataSet.DisableControls;
    PrintF9();
    wwDBGrid1.DataSource.DataSet.EnableControls;
    PanelF9.SendToBack;
    Key:=0;
    end;
end;

procedure TWioPlaceForm.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioPlaceForm.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioPlaceForm.Action_F3Execute(Sender: TObject); 
begin
  if fkey='' then
    begin
    fkey:='F3';
    Edit_Search.SetFocus;
    Panel_Search.BringToFront;
    end;
end;

procedure TWioPlaceForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(WioPlaceForm);
  fkey:='';
  fstr:='';
  ZQuery_wio.Open;
  wwDBGrid1.SetFocus;
  Panel_SP1.Left:=Trunc((Width-Panel_SP1.Width)/2);
  Panel_SP1.Top:=Trunc((Height-Panel_SP1.Height)/2);
  Panel_SP2.Left:=Trunc((Width-Panel_SP2.Width)/2);
  Panel_SP2.Top:=Trunc((Height-Panel_SP2.Height)/2);
  Panel_SP4.Left:=Trunc((Width-Panel_SP4.Width)/2);
  Panel_SP4.Top:=Trunc((Height-Panel_SP4.Height)/2);
  Panel_SP5.Left:=Trunc((Width-Panel_SP5.Width)/2);
  Panel_SP5.Top:=Trunc((Height-Panel_SP5.Height)/2);
  Panel_Mark.Left:=Trunc((Width-Panel_Mark.Width)/2);
  Panel_Mark.Top:=Trunc((Height-Panel_Mark.Height)/2);
  PanelF9.Left:=Trunc((Width-PanelF9.Width)/2);
  PanelF9.Top:=Trunc((Height-PanelF9.Height)/2);
  PanelStick.Left:=Trunc((Width-PanelStick.Width)/2);
  PanelStick.Top:=Trunc((Height-PanelStick.Height)/2);
  Panel_Search.Left:=Trunc((Width-Panel_Search.Width)/2);
  Panel_Search.Top:=Trunc((Height-Panel_Search.Height)/2);
end;

procedure TWioPlaceForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not wwDBGrid1.Focused then
    begin
    if (Key=VK_UP)
      AND(not MaskEdit1.Focused)
      AND(not SpinEdit_wimark.Focused)
      AND(not ListBox1.Focused)
      AND(not ListBox2.Focused)
      AND(not Editsno1.Focused) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 1, 0);
        end;
    if (Key=VK_DOWN)
      AND(not SpinEdit_wimark.Focused)
      AND(not ListBox1.Focused)
      AND(not ListBox2.Focused)
      AND(not Editplace1.Focused) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 0, 0);
        end;
    if (Key=VK_LEFT)
      AND(not MaskEdit1.Focused)
      AND(not MaskEdit2.Focused)
      AND(not MaskEditDate.Focused) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 1, 0);
        end;
    if (Key=VK_RIGHT)
      AND(not MaskEdit1.Focused)
      AND(not MaskEdit2.Focused)
      AND(not MaskEditDate.Focused) then
        begin
        Key:=0;
        Perform(WM_NextDlgCtl, 0, 0);
        end;
    end;
end;

procedure TWioPlaceForm.Editsno3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    InputBC();
    end;
end;

procedure TWioPlaceForm.Action_F8Execute(Sender: TObject);
begin
  if fkey='' then
    begin
    fkey:='F8';
    MaskEditDate.SetFocus;
    SpinEdit_wimark.Text:=LabelMark.Caption;
    ListBox2.ItemIndex:=0;
    PanelStick.BringToFront;
    end;
end;

procedure TWioPlaceForm.MaskEditDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioPlaceForm.SpinEdit_wimarkKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    ListBox2.ItemIndex:=0;
    end;
end;

procedure TWioPlaceForm.ListBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    fkey:='';
    PrintF8();
    wwDBGrid1.SetFocus;
    end;
end;

procedure TWioPlaceForm.ListBox3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  fkey:='';
  PrintF8();
  wwDBGrid1.SetFocus;
end;

procedure TWioPlaceForm.Edit_SearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Return then
    begin
    fkey:='';
    ZQuery_wio.Close;
    ZQuery_wio.SQL.Clear;
    ZQuery_wio.SQL.Add('select * from wio');
    ZQuery_wio.SQL.Add('WHERE (wiodate='''')');
    if Edit_Search.Text<>'' then
      begin
      ZQuery_wio.SQL.Add('AND ((wiitem like ''%'+Edit_Search.Text+'%'')');
      ZQuery_wio.SQL.Add('OR (winame like ''%'+Edit_Search.Text+'%'')');
      ZQuery_wio.SQL.Add('OR (wicode like ''%'+Edit_Search.Text+'%'')');
      ZQuery_wio.SQL.Add('OR (wisno like ''%'+Edit_Search.Text+'%''))');
      end
    else
      begin
      ZQuery_wio.SQL.Add('AND (widate BETWEEN '''+sdate+''' AND '''+edate+''')');
      end;
    ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
    ZQuery_wio.Open;
    Panel_Search.SendToBack;
    wwDBGrid1.SetFocus;
    key:=0;
    end;
end;

procedure TWioPlaceForm.Action_F7Execute(Sender: TObject);
begin
  if (Editplace1.Focused)OR(Editplace2.Focused)OR(Editplace4.Focused) then
     GetPlace();
end;

procedure TWioPlaceForm.Action_F10Execute(Sender: TObject);
begin
  if wwDBGrid1.DataSource.DataSet.FieldByName('wiplace').AsString<>'' then
    begin
    wwDBGrid1.DataSource.DataSet.Edit;
    wwDBGrid1.DataSource.DataSet.FieldByName('wiplace').AsString:='回洗';
    wwDBGrid1.DataSource.DataSet.FieldByName('wimark').AsString:='';
    wwDBGrid1.DataSource.DataSet.FieldByName('indate').AsString:='';
    wwDBGrid1.DataSource.DataSet.Post;
    end;
end;

procedure TWioPlaceForm.ActionCtrlAlt1Execute(Sender: TObject);
begin
  frxReport.LoadFromFile(WDM.WPath+'Report\PlaceLabel81.rep');
  frxReport.DesignReport;
end;

procedure TWioPlaceForm.ActionCtrlAlt3Execute(Sender: TObject);
begin
  frxReport.LoadFromFile(WDM.WPath+'Report\PlaceLabel82.rep');
  frxReport.DesignReport;
end;

procedure TWioPlaceForm.ActionCtrlAltF9Execute(Sender: TObject);
begin
  frxReportF9.LoadFromFile(WDM.WPath+'Report\PlaceReport.rep');
  frxReportF9.DesignReport;
end;

procedure TWioPlaceForm.Action_CF6Execute(Sender: TObject);
var
  ycnt,ncnt: Integer;
begin
  if (fkey='')AND(fstr<>'CF6') then
    try
      fstr:='CF6';
      wwDBGrid1.Color:=ClTeal;
      bm:=ZQuery_wio.GetBookmark;
      //RzToolbarButtonF5.Visible:=True;
      lbTotal.Visible:=True;
      LabelTotal.Visible:=True;
      lbY.Visible:=True;
      LabelY.Visible:=True;
      lbN.Visible:=True;
      LabelN.Visible:=True;
      ycnt:=0;
      ncnt:=0;
      RzToolbarButtonF6.Visible:=False;
      rButton_Exit.Caption:='Esc.離開客戶衣物';
      rButton_Exit.Width:=130;
      WDM.crcode:=ZQuery_wio.FieldByName('crcode').AsString;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT * FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
      ZQuery_wio.SQL.Add('AND (wiodate='''')');
      ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
      ZQuery_wio.Open;
      LabelTotal.Caption:=IntToStr(ZQuery_wio.RecordCount);
      while not ZQuery_wio.Eof do
        begin
        if ZQuery_wio.FieldByName('indate').AsString='' then
          ncnt:=ncnt+1
        else
          ycnt:=ycnt+1;
        ZQuery_wio.Next;
        end;
      ZQuery_wio.First;
      LabelY.Caption:=IntToStr(ycnt);
      LabelN.Caption:=IntToStr(ncnt);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TWioPlaceForm.PlaceEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin   
  if (Key=VK_Return) then
    begin
    Key:=0;
    Perform(WM_NextDlgCtl, 0, 0);
    end;
end;

procedure TWioPlaceForm.ZQuery_wioAfterScroll(DataSet: TDataSet);
begin
  Caption:='衣物入庫作業-電腦編號：'+ZQuery_wio.FieldByName('crtelb').AsString+'-行動電話：'+ZQuery_wio.FieldByName('crtela').AsString;
end;

procedure TWioPlaceForm.ActionCtrlF1Execute(Sender: TObject);
var
  ycnt, ncnt: Integer;
begin
  if fKey='F1' Then
    begin
    fstr:='CF1';
    Panel_SP1.SendToBack;
    crcode:=wwDbGrid1.DataSource.DataSet.FieldByName('crcode').AsString;
    try
      wwDBGrid1.Color:=ClTeal;
      bm:=ZQuery_wio.GetBookmark;
      lbTotal.Visible:=True;
      LabelTotal.Visible:=True;
      lbY.Visible:=True;
      LabelY.Visible:=True;
      lbN.Visible:=True;
      LabelN.Visible:=True;
      ycnt:=0;
      ncnt:=0;
      RzToolbarButtonF1.Visible:=False;
      rButton_Exit.Caption:='Esc.離開客戶衣物';
      rButton_Exit.Width:=130;
      WDM.crcode:=ZQuery_wio.FieldByName('crcode').AsString;
      ZQuery_wio.Close;
      ZQuery_wio.SQL.Clear;
      ZQuery_wio.SQL.Add('SELECT * FROM wio');
      ZQuery_wio.SQL.Add('WHERE crcode='''+WDM.crcode+'''');
      ZQuery_wio.SQL.Add('AND (wiodate='''')');
      ZQuery_wio.SQL.Add('ORDER BY wicode DESC,wisno DESC');
      ZQuery_wio.Open;
      LabelTotal.Caption:=IntToStr(ZQuery_wio.RecordCount);
      while not ZQuery_wio.Eof do
        begin
        if ZQuery_wio.FieldByName('indate').AsString='' then
          ncnt:=ncnt+1
        else
          ycnt:=ycnt+1;
        ZQuery_wio.Next;
        end;
      ZQuery_wio.First;
      LabelY.Caption:=IntToStr(ycnt);
      LabelN.Caption:=IntToStr(ncnt);
    except
      on E: Exception do
        MessageDlg ('開啟錯誤: '+E.Message, mtError, [mbOK], 0);
    end;
    end;
end;

procedure TWioPlaceForm.ActionCtrlAlt2Execute(Sender: TObject);
begin
  frxReport.LoadFromFile(WDM.WPath+'Report\PlaceLabel814.rep');
  frxReport.DesignReport;
end;

procedure TWioPlaceForm.ActionCtrlAlt4Execute(Sender: TObject);
begin
  frxReportDot.LoadFromFile(WDM.WPath+'Report\PlaceLabelDot.rep');
  frxReportDot.DesignReport;
end;

end.
