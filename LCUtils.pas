{ New : ShowModalName, TokenStr, ExecuteFile, CopyFile, IsParadoxDB, IsDbaseDB, MixStrList, MixStrings }
{       CreateMsgForm, UpdateMsg, ExtractFileNameNoExt, AddSlashToPath, PrintTextFile, NumToChinaNum }
{       lcFldReadOnly, Left, Right, SubStr }

{ �ϥΫe�`�N�ƶ� }
{ 1.�����Ʈ榡�w�]���G��~��,�YYYMMDD, �Y�ϥΤT��h�ݩ� Call SetDateLen(3) }
{ 2.�Y�O�ϥ� SQL �����, �Щ�DFORM���إߤ@ TDatabase ������, �H���o AliasName }
{       �άO Call SetQryDB( cDatabaseName:string ) }
unit LCUtils;

interface

uses
  DBITypes, DBIProcs,
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  DBCtrls, Mask, LZExpand, Printers, wwdbedit, Wwdotdot, Wwdbcomb, Wwkeycb;

type
  TPickDlg = class(TForm)
    DBGrid1: TDBGrid;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    Label2: TLabel;
  private
     oTable : TTABLE;
     ackeyField : TStringList;
     DBType : TTableType;
     ModalType : Word;
  public

  end;

{ �r���� }
function PadL( cStr:string; nLen:Word; cPad:Char ):string; //����ɦr��
function PadC( cStr:string; nLen:Word; cPad:Char ):string; //���k��ɦr��
function PadR( cStr:string; nLen:Word; cPad:Char ):string; //����ɦr��
function RTrim( cStr:string ):string;
function LTrim( cStr:string ):string;
function StrZero( nVal, nLen: LongInt ):string;
function LeftStr( cStr: string; nLen: LongInt ):string;
function RightStr( cStr: string; nLen: LongInt ):string;
function SubStr( cStr: string; nStart, nLen: LongInt ):string;
function TDMY( cStr: string ):TDateTime;
function AllTrim(cStr:string) :string;
function WrapString( cStr:string; nWrapLen:Word ):string; { �N����r��̫��w������� }
function TokenStr( cCh, cSrc:string ):TStringList;
function MixStrList( oStrList:TStringList; cSepCh:string ):string;
function MixStrings( oStrs:TStrings; cSepCh:string ):string;
{ �Ǧ^�r�껡�������۹�r�� }
FUNCTION SayCase( cValue:string; aValue, aShowTxt: array of string ):string;
{ ���զr��O�_���^��r�� }
FUNCTION StrIsAlpha( cTestStr : STRING ) : Boolean;

{ ������ }
Procedure SetDateLen( nLength : Integer );
function DateNum(cDate:String) : TDateTime;   { �N��������r���ഫ�� TDateTime }
function ChinaDate( dDateTime:TDateTime ):String;   { �ഫ DateTime ����������r��-YYYMMDD }
function ChinaDate1( dDateTime:TDateTime ):String;   { �ഫ DateTime ����������r��-YYY/MM/DD }
function DateStr:String;                    { ���o�����t�Τ���r��-YYMMDD }
function TimeStr:String;                    { ���o�ɶ��r��-HHMM }
function VaDate(cDateStr:String) : Boolean; { �ˬd��������r��O�_�X�k }
function VaTime( cTime:string ) : Boolean;  { �ˬd�ɶ��r��O�_�X�k }
function NextDate(cDateStr:String;nDelta:Integer):string; { �Ǧ^ n �ѫᤧ����r�� }
function NextMonth(cDateStr:String;nDelta:Integer):string; { �Ǧ^ n ��ᤧ����r�� }
function NextYear(cDateStr:String;nDelta:Integer):string; { �Ǧ^ n �~�ᤧ����r�� }
function NextMonthsDate(cDateStr:String;nDelta:Integer):string;  { �Ǧ^�Ƥ�ᤧ����r�� }
function NextYearsDate(cDateStr:String;nDelta:Integer):string;  { �Ǧ^�Ʀ~�ᤧ����r�� }
function GetDaysByMonth(cDateStr:String):Word; { �Ǧ^�Y������Ѽ� }
function GetPassDaysByMonth(cDateStr:String):Word; { �Ǧ^�Ӥ���w�L���Ѽ� }
function GetRemainDaysByMonth(cDateStr:String):Word; { �Ǧ^�Ӥ���ѤU���Ѽ� }
function CalcWholeMonth( cStDt, cEndDt:string ):Extended;  { �p��G���������Ƥ��� }
function CalcWholeYear( cStDt, cEndDt:string ):Extended;  { �p��G���������~��� }
function CalcCMonths( cStDt, cEndDt:string ):string;  { ���o�G���������Ƥ��Ҧr�� }
function CalcCYears( cStDt, cEndDt:string ):string;  { ���o�G���������Ʀ~��Ҧr�� }
function ChinaDateFmt( cDateStr:string; nType:Word ):string;  { �N��������r���ഫ�����w�榡 }
procedure CalcPassDays( cStDt, cEndDt:string; var nMons, nDays:Word ); { �p����ƤΤ�����Ƥ��Ѽ� }

{ �Ʀr��� }
{ �N�Ʀr�ন��r�Ʀr�r�� }
function CNum( nNum : Extended; nType:integer ):string;
{ �N�Ʀr�r���ন��r�Ʀr�r��, ���G�خ榡 }
function NumToChinaNum( cNum:String; nType:Integer ):string;
{ �N�Ʀr�ন�P�� }
function NumToChinaWeek( cNum:String ):string;
{ �i�N���w��Ƥ��B�I�ư��|�ˤ��J���ʧ@ }
function lcRound( nFloat:Extended; nPos:Integer ):Extended;

{ ������� }
function ChkIDNO( Idno:string ):Boolean;    { �ˬd�����Ҹ� }
function RunCommand( cCmdLine:string; nShowType:Word ):Word;   { ����~���{�� }
function ExecuteFile(const FileName, Params, DefaultDir: string;
    ShowCmd: Integer): THandle;
{ �]�w�����O�_��@�� }
function lcEnableControls( const oCtrlArray : array of TWinControl; lEnabled : Boolean ):Boolean;
function lcFldReadOnly( aDataSet: TDataSet; const acFldArray: array of string; lReadOnly: Boolean ):Boolean;
{ �]�w Tab Order to Form ���Ĥ@�� Control }
procedure SetFirstOrder( aForm : TForm );
{ ��ܦ��������ε{���W�٤��T����ܮ�, �ݥ��]�w���ε{�����W�� }
FUNCTION ShowMsg(cMsg:string) : integer;
{ �p���魫�O�_�з� }
FUNCTION CalcStdWeight( lSex:Boolean; nHeight, nWeight:Word ):Boolean;
{ �Ǧ^�з��魫���r�� }
FUNCTION GetStdWeight( lSex:Boolean; nHeight, nWeight:Word ):string;
function ExtractFileNameNoExt(cFile : String):string;
function AddSlashToPath( cPath:string ):string;
procedure PrintTextFile( cFile:string ); { �N�@��r�ɰe�ܦL��� }
function GetAutoNo(p1:string; p2:integer):string;

VAR
   PickDlg : TPickDlg;

implementation

{$R *.DFM}

uses SHELLAPI;

const
  ChinaNumMap1 : array[ '0'..'9' ] of string =
                    ( '��', '�@', '�G', '�T', '�|', '��', '��', '�C', '�K', '�E' );
  ChinaNumMap2 : array[ '0'..'9' ] of string =
                    ( '�s', '��', '�L', '��', '�v', '��', '��', '�m', '��', '�h' );
  ChinaWeek : array['0'..'7'] of string =
                    ( '','�@', '�G', '�T', '�|', '��', '��', '��' );
var
   cDBName:string;
   nYearLen : Integer;
   lQry, Selrec : Boolean;
   BM : TBookmarkStr;

function IsParadoxDB( oTbl:TTable ):Boolean;
var
   cExtension:string;
begin
   Result := ( oTbl.TableType = ttParadox );
   if ( not Result ) then
   begin
      cExtension := Copy( oTbl.TableName, Pos( '.', oTbl.TableName )+1, 255 );
      Result := ( cExtension = 'DB' );
   end;
end;

function IsDbaseDB( oTbl:TTable ):Boolean;
begin
   Result := ( oTbl.TableType = ttDbase ) or ( Pos( 'DBF', oTbl.TableName ) > 0 );
end;

procedure SetQryDB( cDatabaseName:string );
begin
   cDBName := cDatabaseName;
end;

FUNCTION MinArrayLen( Array1, Array2 : ARRAY OF STRING ):Integer;
VAR
   nLen1, nLen2 : Integer;
BEGIN
   nLen1 := High( Array1 );
   nLen2 := High( Array2 );
   IF ( nLen1 >= nLen2 ) THEN
      MinArrayLen := nLen1
   ELSE
      MinArrayLen := nLen2
END;

{ xBase }
function VaExist( cKeyValue : String; tbl : TTable; cIndexName : string )
                :Boolean;
var
   oTbl : TTABLE;
begin
   oTbl := TTABLE.Create( Application );
   try
      with oTbl do
      begin
         DatabaseName := cDBName;
         TableType := tbl.TableType;
         TableName := tbl.TableName;
         if ( IsParadoxDB( tbl ) ) then
            IndexFieldNames := cIndexName
         else
            IndexName := cIndexName;
         Active := True;
         Result := FindKey( [cKeyValue] );
         Active := False;
         Free;
      end;
   except
      Result := False;
   end;
end;

FUNCTION VaMExist(const aKeyValue : Array of const; tbl : TTable; cIndexName : STRING )
                :Boolean;
VAR
   lParadox:Boolean;
   cOldIndexName : STRING;
   aIndexList : TStringList;
   tbm : TBookMark;
   lFound : Boolean;
BEGIN
   WITH tbl DO
   BEGIN
      aIndexList := TStringList.Create;
      lParadox := IsParadoxDB( tbl );
      if ( lParadox ) then
         GetFieldNames( aIndexList )
      else
         GetIndexNames( aIndexList );
      IF ( aIndexList.IndexOf( cIndexName ) > -1 ) THEN
      BEGIN
         if ( lParadox ) then
            cOldIndexName := IndexFieldNames
         else
            cOldIndexName := IndexName;
         DisableControls;
         tbm := GetBookMark;
         if ( lParadox ) then
            IndexFieldNames := cIndexName
         else
            IndexName := cIndexName;
         lFound := FindKey( aKeyValue );
         GotoBookMark( tbm );
         freeBookMark( tbm );
         if ( lParadox ) then
            IndexFieldNames := cOldIndexName
         else
            IndexName := cOldIndexName;
         EnableControls;
      END
      ELSE
         RAISE Exception.Create( '����:'+cIndexName+'���s�b' );
      aIndexList.free;
      VaMExist := lFound;
   END;
END;

FUNCTION SayCase( cValue:string; aValue, aShowTxt: array of string ):string;
var
   n, nArrLen : integer;
begin
   Result := '';
   nArrLen := High( aValue );
   for n := 0 to nArrLen do
       if ( cValue = aValue[n] ) then
       begin
          Result := aShowTxt[n];
          break;
       end;
end;

FUNCTION StrIsAlpha( cTestStr : STRING ) : Boolean;
VAR
   n, nLen : Integer;
   lNotAlpha : Boolean;
BEGIN
   lNotAlpha := False;
   nLen := Length( cTestStr );
   n := 0;
   REPEAT
      lNotAlpha := NOT ( cTestStr[n] IN [ 'A'..'Z', 'a'..'z' ] );
      INC( n );
   UNTIL ( (lNotAlpha) OR (n = nLen) );
   StrIsAlpha := NOT lNotAlpha;
END;


FUNCTION ShowMsg(cMsg:string) : integer;
var
   pString : ARRAY[0..79] of Char;
   pAppTitle : array[0..79] of Char;
begin
   StrPCopy(pString, cMsg);
   StrPCopy( pAppTitle, Application.Title );
   ShowMsg := Application.MessageBox(pString, pAppTitle, mb_OK);
end;

{ �p���魫�O�_�з� }
FUNCTION CalcStdWeight( lSex:Boolean; nHeight, nWeight:Word ):Boolean;
var
   nStdWeight : Extended;
begin
   if ( lSex ) then
      nStdWeight := ( nHeight - 80 ) * 0.7
   else
      nStdWeight := ( nHeight - 70 ) * 0.6;
   Result := ( nWeight >= ( nStdWeight * 0.9 ) ) AND
             ( nWeight <= ( nStdWeight * 1.1 ) );
end;

{ �Ǧ^�з��魫 }
FUNCTION GetStdWeight( lSex:Boolean; nHeight, nWeight:Word ):string;
var
   nStdWeight : Extended;
begin
   if ( lSex ) then
      nStdWeight := ( nHeight - 80 ) * 0.7
   else
      nStdWeight := ( nHeight - 70 ) * 0.6;
   Result := '�з��魫: ' +
      Format( '%6s', [FormatFloat( '0.0', ( nStdWeight * 0.9 ) )] ) +  ' �� ' +
      Format( '%6s', [FormatFloat( '0.0', ( nStdWeight * 1.1 ) )] ) + '����o ';
end;

{ BIG-5 �X�s�X }
{ Hi-Byte  : 81H-8DH, 8EH-A0H, A1H-FEH }
{ Low-Byte : 40H-7EH, A1H-FEH }
Function WrapString( cStr:string; nWrapLen:Word ):string; { �N����r��̫��w�������, FOR BIG-5 }
var
   lChinese:Boolean;
   nPos, nLen, nCh, nCount, nDis : Word;
begin
   nPos := 1;
   Result := '';
   nLen := Length( cStr );
   nCount := 0;
   while ( nPos < nLen ) do
   begin
      nCh := Integer( cStr[nPos] );
      lChinese := nCh > 128;
      if ( lChinese ) then
         nDis := 2
      else
         nDis := 1;
      if ( ( nCount + nDis ) > nWrapLen ) then
      begin
         nCount := 0;
         Result := Result + #13#10;
      end;
      Result := Result + Copy( cStr, nPos, nDis );
      Inc( nPos, nDis );
      Inc( nCount, nDis );
   end;
end;

Function ChkIDNO( IDNo:string ):Boolean; //�ˬd�����r��
var
  Numstring : string[ 27 ];
  Alphabetoffset , i : shortint;
  Checksum : integer;

const
  AlphabetMapNum : array[ 1..26 ] of shortint =
                   ( 10 , 11 , 12 , 13 , 14 , 15 , 16 , 17 , 18 ,
                     19 , 20 , 21 , 22 , 23 , 24 , 25 , 26 , 27 ,
                     28 , 29 , 30 , 31 , 32 , 33 , 34 , 35);
  AlphabetString : string[ 27 ] = 'ABCDEFGHJKLMNPQRSTUVXYWZIO';
begin
  CheckSum := 0;
  AlphabetOffset := Pos( IDNO[ 1 ] , AlphabetString );
  if ( AlphabetOffset = 0 ) then    { Check first alphabet }
  begin
     Result := False;
     Exit;
  end;
  { Get map number }
  NumString := IntToStr ( AlphabetMapNum[ AlphabetOffset ] );
  CheckSum := CheckSum + ( StrToInt ( NumString[ 2 ] ) * 9 );
  CheckSum := CheckSum +  StrToInt ( NumString[ 1 ] );
  { �p��Ʀr���� }
  for i := 2 to 10 do
  begin
     if ( not ( IDNO[ i ] in [ '0'..'9' ] ) ) then
     begin
        Result := False;
        Exit;
     end;
     case i of    { This is ID_Number offset 1 }
        2: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 8 );

        3: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 7 );

        4: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 6 );

        5: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 5 );

        6: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 4 );

        7: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 3 );

        8: CheckSum := CheckSum + ( StrToInt( IDNO[ i ] ) * 2 );

        9: CheckSum := CheckSum +  StrToInt( IDNO[ i ] );

       10: CheckSum := CheckSum +  StrToInt( IDNO[ i ] );
     end;
  end;
  if ( ( CheckSum Mod 10 ) = 0 ) then
    Result := True
  else
    Result := False;
end;

{ ---------------------------------------------------------------------------- }
{ ���U���������䴩����譱�����                                               }
{ ---------------------------------------------------------------------------- }
Procedure SetDateLen( nLength : Integer ); { �]�w�����ƩҤ䴩���~������ }
begin
   nYearLen := nLength;
end;

FUNCTION DateNum(cDate:String):TDateTime; { ���o����Ʀr : TDateTime }
var
   nYear, nMonth, nDate : word;
begin
   nYear := StrToInt(copy(cDate,1,nYearLen))+1911;
   nMonth := StrToInt(copy(cDate,nYearLen+1,2));
   nDate := StrToInt(copy(cDate,nYearLen+3,2));
   Result := EncodeDate(nYear, nMonth, nDate);
end;

FUNCTION ChinaDate( dDateTime:TDateTime ):String; { �ഫ DateTime ����������r��-YYMMDD   }
var
   nYear, nMonth, nDate : word;
begin
   DecodeDate(dDateTime, nYear, nMonth, nDate);
   Result := Copy( FormatDateTime('yyyymmdd',
      EncodeDate(nYear-1911, nMonth, nDate)), 5-nYearLen, 8);
end;

FUNCTION DateStr:String;   { ���o�����t�Τ���r��-YYMMDD }
var
   nYear, nMonth, nDate : word;
begin
   DecodeDate(Date, nYear, nMonth, nDate);
   Result := Copy( FormatDateTime('yyyymmdd',
      EncodeDate(nYear-1911, nMonth, nDate)), 5-nYearLen, 8);
end;

FUNCTION TimeStr:String;   { ���o�ɶ��r��-HHMM }
var
   nHour, nMin, nSec, nMSec : word;
begin
   DecodeTime(Time, nHour, nMin, nSec, nMSec);
   TimeStr := FormatDateTime('hhnn',
       EncodeTime(nHour, nMin, nSec, nMSec));
end;

FUNCTION VaDate(cDateStr:String):Boolean;   {  �ˬd��������r��O�_�X�k }
var
   lRet : Boolean;
   nYear, nMonth, nDate : word;
   dDate : TDateTime;
begin
   Try
      nYear := StrToInt(copy(cDateStr, 1, nYearLen))+1911;
      nMonth := StrToInt(copy(cDateStr, nYearLen+1, 2));
      nDate := StrToInt(copy(cDateStr, nYearLen+3, 2));
      dDate := EncodeDate(nYear, nMonth, nDate);
      Result := True;
   except
      Result := False;
   end;
end;

FUNCTION VaTime( cTime:string ) : Boolean;  {  ����ɶ���ƬO�_���T  }
var
   nHour, nMin : integer;
begin
   nHour := StrToInt(copy(cTime, 1,2));
   nMin := StrToInt(copy(cTime,3,2));
   if (nHour<0) or (nhour>23) or (nMin<0) or (nMin>59) then
      VaTime := False
   else
      VaTime := True;
end;

Function NextDate(cDateStr:String;nDelta:Integer):string; { �Ǧ^ n �ѫᤧ����r�� }
var
   oDateTime : TDateTime;
begin
   Try
      oDateTime := DateNum( cDateStr ) + nDelta;
      Result := ChinaDate1( oDateTime );
   Except
      Result := '';
      Raise Exception.Create( '�p������ƿ��~' );
   End;
end;

FUNCTION ChinaDate1( dDateTime:TDateTime ):String; { �ഫ DateTime ����������r��-YY/MM/DD   }
var
   nYear, nMonth, nDate : word;
begin
   DecodeDate(dDateTime, nYear, nMonth, nDate);
   Result := Copy( FormatDateTime('yyyy/mm/dd',
      EncodeDate(nYear-1911, nMonth, nDate)), 5-nYearLen, 9);
end;

{ ���on����ᤧ����r�� }
Function NextMonth(cDateStr:String;nDelta:Integer):string; { �Ǧ^ n ��ᤧ����r�� }
var
   n, nDays, nAbsDelta : Integer;
   dDate : TDateTime;
   nYear, nMonth, nDate : word;
begin
   Try
      if ( nDelta > 0 ) then
         nDays := 30
      else
         nDays := -30;
      nAbsDelta := Abs( nDelta );
      nYear := StrToInt(copy(cDateStr, 1, nYearLen))+1911;
      nMonth := StrToInt(copy(cDateStr, nYearLen+1, 2));
      for n := 1 to nAbsDelta do
      begin
         dDate := EncodeDate(nYear, nMonth, 15 )+nDays;
         if ( n < nAbsDelta ) then
            DecodeDate( dDate, nYear, nMonth, nDate );
      end;
      Result := Copy( ChinaDate( dDate ), 1, 2+nYearLen );
   Except
      Result := '';
      Raise Exception.Create( '�����ƭp����~' );
   End;
end;

{ �Ǧ^ n ��ᤧ�e�@�Ѥ�� }
function NextMonthsDate(cDateStr:String;nDelta:Integer):string;
begin
   Result := NextMonth( cDateStr, nDelta );
   Result := Result + Copy( cDateStr, nYearLen+3, 2 );
   Result := NextDate( Result, -1 );
end;

{ �Ǧ^ n �~�ᤧ�e�@�Ѥ�� }
function NextYearsDate(cDateStr:String;nDelta:Integer):string;
begin
   Result := NextYear( cDateStr, nDelta );
   Result := Result + Copy( cDateStr, nYearLen+1, 4 );
   Result := NextDate( Result, -1 );
end;

{ ���on�~�ᤧ����r�� }
Function NextYear(cDateStr:String;nDelta:Integer):string;
var
   n, nDays, nAbsDelta : Integer;
   dDate : TDateTime;
   nYear, nMonth, nDate : word;
begin
   Try
      if ( nDelta > 0 ) then
         nDays := 300
      else
         nDays := -300;
      nAbsDelta := Abs( nDelta );
      nYear := StrToInt(copy(cDateStr, 1, nYearLen))+1911;
      nMonth := StrToInt(copy(cDateStr, nYearLen+1, 2));
      for n := 1 to nAbsDelta do
      begin
         dDate := EncodeDate(nYear, 07, 15 )+nDays;
         if ( n < nAbsDelta ) then
            DecodeDate( dDate, nYear, nMonth, nDate );
      end;
      Result := Copy( ChinaDate( dDate-1 ), 1, nYearLen );
   Except
      Result := '';
      Raise Exception.Create( '�����ƭp����~' );
   End;
end;

Function GetDaysByMonth(cDateStr:String):Word; { �Ǧ^�Y������Ѽ� }
var
   dDate : TDateTime;
   n, nYear, nMonth : word;
begin
   try
      nYear := StrToInt(copy(cDateStr, 1, nYearLen))+1911;
      nMonth := StrToInt(copy(cDateStr, nYearLen+1, 2));
      for n := 29 to 31 do
         dDate := EncodeDate(nYear, nMonth, n);
      Result := n;
   except
      Result := n-1;
   end;
end;

Function GetPassDaysByMonth(cDateStr:String):Word; { �Ǧ^�Ӥ���w�L���Ѽ� }
var
   oDateTime : TDateTime;
begin
   Try
      oDateTime := DateNum( cDateStr );
      Result := StrToInt(copy(cDateStr, nYearLen+3, 2));
   Except
      Result := 0;
      Raise Exception.Create( '�����ƿ��~' );
   End;
end;

Function GetRemainDaysByMonth(cDateStr:String):Word; { �Ǧ^�Ӥ���ѤU���Ѽ� }
var
   nDays : Word;
   oDateTime : TDateTime;
begin
   Try
      nDays := GetDaysByMonth( cDateStr );
      oDateTime := DateNum( cDateStr );
      Result := nDays - StrToInt(copy(cDateStr, nYearLen+3, 2));
   Except
      Result := 0;
      Raise Exception.Create( '�����ƿ��~' );
   End;
end;

procedure CalcPassDays( cStDt, cEndDt:string; var nMons, nDays:Word ); { �p����ƤΤ������Ѽ� }
var
   cNextMon, cEndMon:string;
   nPass, nDaysByMonth:Word;
begin
   nMons := 0;   nDays := 0;
   cEndMon := Copy( cEndDt, 1, nYearLen+2 );
   nPass := GetPassDaysByMonth( cStDt ) - 1;
   if ( nPass <> 0 ) then
   begin
      nDaysByMonth := GetDaysByMonth( cStDt );
      Inc( nDays, nDaysByMonth-nPass )
   end
   else
      Inc( nMons, 1 );   { ������[1 }
   cNextMon := NextMonth( cStDt, 1 );
   while ( cNextMon < cEndMon ) do
   begin
      Inc( nMons, 1 );
      NextMonth( cNextMon, 1 );
   end;
   if ( cNextMon = cEndMon ) then
   begin
      nDaysByMonth := GetDaysbyMonth( cEndDt );
      nPass := GetPassDaysByMonth( cEndDt );
      if ( nPass = nDaysByMonth ) then
         Inc( nMons, 1 )
      else
         Inc( nDays, nPass );
   end;
end;

function CalcWholeMonth( cStDt, cEndDt:string ):Extended;
var
   nDays, nDay1, nDay2:Word;
   cDay, cNextMon:string;
begin
   Result := 0;
   cDay := Copy( cStDt, nYearLen+3, 2 );
   cNextMon := NextMonth( cStDt, 1 )+cDay;
   while ( cNextMon <= cEndDt ) do
   begin
      Result := Result + 1;
      cNextMon := NextMonth( cNextMon, 1 )+cDay;
   end;
   nDays := GetDaysByMonth( cEndDt );
   nDay1 := GetPassDaysByMonth( cNextMon );
   nDay2 := GetPassDaysByMonth( cEndDt );
   Result := Result + ( nDay2-nDay1+1 ) / nDays;
end;

function CalcWholeYear( cStDt, cEndDt:string ):Extended;
var
   nDays, nDay1, nDay2:Word;
   cDay, cNextMon:string;
begin
   Result := 0;
   cDay := Copy( cStDt, nYearLen+3, 2 );
   cNextMon := NextMonth( cStDt, 1 )+cDay;
   while ( cNextMon <= cEndDt ) do
   begin
      Result := Result + 1;
      cNextMon := NextMonth( cNextMon, 1 )+cDay;
   end;
   nDays := GetDaysByMonth( cEndDt );
   nDay1 := GetPassDaysByMonth( cNextMon );
   nDay2 := GetPassDaysByMonth( cEndDt );
   Result := Result / 12 + ( nDay2-nDay1+1 ) / ( nDays * 12 );
end;

function CalcCMonths( cStDt, cEndDt:string ):string;
var
   nMonths, nDays, nDay1, nDay2:Word;
   cDay, cNextMon:string;
begin
   nMonths := 0;
   cDay := Copy( cStDt, nYearLen+3, 2 );
   cNextMon := NextMonth( cStDt, 1 )+cDay;
   while ( cNextMon <= cEndDt ) do
   begin
      Inc(nMonths);
      cNextMon := NextMonth( cNextMon, 1 )+cDay;
   end;
   nDays := GetDaysByMonth( cEndDt );
   nDay1 := GetPassDaysByMonth( cNextMon );
   nDay2 := GetPassDaysByMonth( cEndDt );
   Result := IntToStr(nMonths) + ' ' + IntToStr( nDay2-nDay1+1 ) + '/' + IntToStr( nDays );
end;

function CalcCYears( cStDt, cEndDt:string ):string;
var
   nMonths, nDays, nDay1, nDay2:Word;
   cDay, cNextMon:string;
begin
   nMonths := 0;
   cDay := Copy( cStDt, nYearLen+3, 2 );
   cNextMon := NextMonth( cStDt, 1 )+cDay;
   while ( cNextMon <= cEndDt ) do
   begin
      Inc(nMonths);
      cNextMon := NextMonth( cNextMon, 1 )+cDay;
   end;
   nDays := GetDaysByMonth( cEndDt );
   nDay1 := GetPassDaysByMonth( cNextMon );
   nDay2 := GetPassDaysByMonth( cEndDt );
   Result := IntToStr(nMonths*nDays+nDay2-nDay1+1) + ' / ' + IntToStr( nDays*12 );
end;

function PadL( cStr:string; nLen:Word; cPad:Char ):string;
var
   i, n:LongInt;
begin
   Result := '';
   n := Length( cStr );
   for i := 0 to (nLen-n-1) do
       Result := Result + cPad;
   Result := Result + cStr;
end;

function PadC( cStr:string; nLen:Word; cPad:Char ):string;
var
   i, n, nDiv:LongInt;
begin
   Result := '';
   n := Length( cStr );
   if ( nLen > n ) then
      nDiv := ( nLen-n ) div 2
   else
      nDiv := 0;
   for i := 0 to nDiv-1 do
       Result := Result + cPad;
   Result := Result + cStr;
   n := Length( Result );
   for i := n to nLen-1 do
       Result := Result + cPad;
end;

function PadR( cStr:string; nLen:Word; cPad:Char ):string;
var
   i, n:LongInt;
begin
   Result := cStr;
   n := Length( cStr );
   for i := 0 to (nLen-n-1) do
       Result := Result + cPad;
end;

function RunCommand( cCmdLine:string; nShowType:Word ):Word;   { ����~���{�� }
var
   pStr : array[0..255] of Char;
begin
   StrPCopy( pStr, cCmdLine );
   Result := WinExec( pStr, nShowType );
end;

function ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
var
   zFileName, zParams, zDir: array[0..79] of Char;
begin
   Result := ShellExecute(Application.MainForm.Handle, nil,
   StrPCopy(zFileName, FileName), StrPCopy(zParams, Params),
   StrPCopy(zDir, DefaultDir), ShowCmd );
end;

{ �]�w�����O�_��@�� }
function lcEnableControls( const oCtrlArray : array of TWinControl; lEnabled : Boolean ):Boolean;
var
   n : LongInt;
begin
   for n := 0 to High( oCtrlArray ) do
       oCtrlArray[n].Enabled := lEnabled;
end;

function lcFldReadOnly( aDataSet: TDataSet; const acFldArray: array of string; lReadOnly: Boolean ):Boolean;
var
   n : LongInt;
begin
   for n := 0 to High( acFldArray ) do
       aDataSet.FieldByName( acFldArray[n]).ReadOnly := lReadOnly;
end;

function CNum(nNum : Extended; nType:integer) : String;
var
   cNumber, cAbs, cSect, cUnit, cDig  : string;
   nPrev, i, nLen, nDec, nSect, nUnit, nDig : integer;
   lNotFirstZero : Boolean;
begin
   if nType = 0 then cNumber := '�s���L�Ѹv��m�èh'
   else cNumber := '�s�@�G�T�|�����C�K�E';
   RESULT := '';
   cAbs := FloatToStr(abs(nNum));
   nDec := Pos('.',cAbs);
   if nDec > 0 then
   begin
      nLen := nDec - 1;
      for i := 1 to (Length(cAbs)-nDec) do
      begin
         nDig := StrToInt(copy(cAbs, Length(cAbs)-i+1, 1));
         cDig := copy(cNumber, nDig*2+1, 2);
         RESULT := cDig + RESULT;
      end;
      RESULT := '�I'+RESULT;
   end
   else
      nLen := Length(cAbs);

   nPrev := 1;
   lNotFirstZero := False;
   for i := 1 to nLen do
   begin
      nSect := trunc((i-1)/4);
      case nSect of
         0 : cSect := '';
         1 : cSect := '�U';
         2 : cSect := '��';
         3 : cSect := '��';
      else
         cSect := '*';
      end;

      nUnit := ((i-1) mod 4);
      case nUnit of
         0 : cUnit := '';
         1 : if nType = 0 then cUnit := '�B'
               else cUnit := '�Q';
         2 : if nType = 0 then cUnit := '��'
               else cUnit := '��';
         3 : if nType = 0 then cUnit := '�a'
               else cUnit := '�d';
      else
         cUnit := '*';
      end;

      nDig := StrToInt(copy(cAbs, nLen-i+1, 1));
      {��Ȭ��s�B�e�@�줣���s�B�����Ĥ@���X�{���s�B�����Ӧ�Ƥ����}
      if (nDig = 0) and (nPrev <> 0) and (lNotFirstZero) and (nUnit <> 0) then
      begin
         nPrev := nDig;
         RESULT := '�s'+RESULT;
      end
      else if (nDig <> 0) then
      begin
         nPrev := nDig;
         cDig := copy(cNumber, nDig*2+1, 2);
         if nUnit = 0 then
            RESULT := cDig + cUnit + cSect + RESULT
         else
            RESULT := cDig + cUnit + RESULT;
         lNotFirstZero := True;
      end;
   end;
   if nNum < 0 then
      RESULT := '�t'+RESULT;
end;

function NumToChinaNum( cNum:String; nType:Integer ):string;
var
   n, nLen:LongInt;
begin
   try
      nLen := Length( cNum );
      Result := '';
      for n := 1 to nLen do
          case nType of
             1 : Result := Result + ChinaNumMap1[ Copy( cNum, n, 1 )[1] ];
             2 : Result := Result + ChinaNumMap2[ Copy( cNum, n, 1 )[1] ];
          else
          end;
   except
      Result := '';
   end;
end;

function NumToChinaWeek( cNum:String ):string;
begin
  Result := ChinaWeek[cNum[1]];
end;

function lcRound( nFloat:Extended; nPos:Integer ):Extended;
var
   n, nTimes:Integer;
   nSqr:LongInt;
begin
   nSqr := 1;
   nTimes := Abs( nPos );
   Result := nFloat;
   for n := 1 to nTimes do
       nSqr := nSqr * 10;
   if ( nPos > 0 ) then
   begin
      Result := Result / nSqr;
      Result := Round( Result );
      Result := Result * nSqr;
   end
   else begin
      Result := Result * nSqr;
      Result := Round( Result );
      Result := Result / nSqr;
   end;
end;

function ChinaDateFmt( cDateStr:string; nType:Word ):string;
var
   nLen:Word;
begin
   nLen := Length( cDateStr );
   if ( nLen = 0 ) then
      Exit;
   case nType of
      1, 2 : Result := Copy( cDateStr, 1, nYearlen );
      3, 4 : Result := CNum(StrToInt(Copy(cDateStr,1,nYearLen)),0);
   else
   end;
   Dec( nLen, nYearLen );
   case nType of
      1,3,4 : Result := Result + '�~';
      2     : if ( nLen > 0 ) then
                 Result := Result + '/';
   end;
   if ( nLen <= 0 ) then
      Exit;
   case nType of
      1, 2 : Result := Result + Copy( cDateStr, nYearlen+1, 2 );
      3, 4 : Result := Result + CNum(StrToInt(Copy( cDateStr, nYearlen+1, 2 )), 0);
   else
   end;
   Dec( nLen, 2 );
   case nType of
      1,3,4 : Result := Result + '��';
      2     : if ( nLen > 0 ) then
                 Result := Result + '/';
   end;
   if ( nLen <= 0 ) then
      Exit;
   case nType of
      1, 2 : Result := Result + Copy( cDateStr, nYearlen+3, 2 );
      3, 4 : Result := Result + CNum(StrToInt(Copy( cDateStr, nYearlen+3, 2 )), 0);
   else
   end;
   case nType of
      1,3,4 : Result := Result + '��';
   else
   end;
   if ( nType = 3 ) then
      Result := '���إ���'+Result;
end;

function AllTrim(cStr:string) :string;
var
   i, nStart, nEnd : integer;
begin
   nStart := 1;
   nEnd := Length(cStr);
   for i := 1 to Length(cStr) do
       if (cStr[i] <> ' ') then
       begin
          nStart := i;
          break;
       end;
   for i := Length(cStr) downto 0 do
       if (cStr[i] <> ' ') then
       begin
          nEnd := i;
          break;
       end;
   Result := Copy( cStr, nStart, nEnd-nStart+1 );
end;

function LTrim(cStr:string):string;
var
   n, nLen : integer;
begin
   nLen := Length(cStr);
   for n := 1 to nLen do
       if ( cStr[n] = ' ' ) then
          Continue
       else
          Break;
   Result := Copy( cStr, n, nLen-n+1 );
end;

function RTrim( cStr:string ):string;
var
   n : integer;
begin
   for n := Length( cStr ) downto 1 do
       if ( cStr[n] = ' ' ) then
          Continue
       else
          Break;
   Result := Copy( cStr, 1, n );
end;

procedure SetFirstOrder( aForm : TForm );
var
   n, nCtrls:Word;
   oWinCtrl:TWinControl;
begin
   nCtrls := aForm.ComponentCount;
   for n := 0 to nCtrls-1 do
   begin
      oWinCtrl := TWinControl(aForm.Components[n]);
      if ( ( oWinCTrl.TabOrder = 0 ) and ( oWinCtrl.TabStop ) ) then
      begin
         oWinCtrl.SetFocus;
         Break;
      end;
   end;
end;

function TokenStr( cCh, cSrc:string ):TStringList;
var
   n:LongInt;
   oStr:TStringList;
begin
   try
      Result := TStringList.Create;
      while ( cSrc <> '' ) do
      begin
         n := Pos( cCh[1], cSrc );
         if ( n <= 0 ) then
         begin
            Result.Add( cSrc );
            Break;
         end
         else
            Result.Add( Copy( cSrc, 1, n-1 ) );
         cSrc := Copy( cSrc, n+1, 255 );
      end;
   except
      Result := nil;
   end;
end;

function MixStrList( oStrList:TStringList; cSepCh:string ):string;
var
   n, nCount:LongInt;
begin
   Result := '';
   nCount := oStrList.Count;
   for n := 0 to nCount-1 do
   begin
      Result := Result + oStrList[n];
      if ( n <> nCount ) then
         Result := Result + cSepCh;
   end;
end;

function MixStrings( oStrs:TStrings; cSepCh:string ):string;
var
   n, nCount:LongInt;
begin
   Result := '';
   nCount := oStrs.Count;
   for n := 0 to nCount-1 do
   begin
      Result := Result + oStrs[n];
      if ( n <> nCount ) then
         Result := Result + cSepCh;
   end;
end;

Function ExtractFileNameNoExt(cFile : String):string;
var
   nPos : integer;
begin
   Result := ExtractFileName( cFile );
   nPos := Pos('.', Result);
   if ( nPos > 0 ) then
      Result := copy( Result, 1, nPos-1);
end;

function AddSlashToPath( cPath:string ):string;
var
   n:LongInt;
begin
   n := Length( cPath );
   if ( n <> 0 ) then
      if ( cPath[n] <> '\' ) then
         Result := cPath+'\'
      else
         Result := cPath
   else
      Result := '';
end;

procedure PrintTextFile( cFile:string );
var
   cLine:string;
   InFile, PrnFile:TextFile;
begin
   try
      AssignFile( InFile, cFile );
      Reset( InFile );
      AssignPrn( PrnFile );
      ReWrite( PrnFile );
      Printer.Title := cFile;
      Printer.Canvas.Font.Name := '�ө���';
      Printer.Canvas.Font.Size := 12;
      while ( not EOF( InFile ) ) do
      begin
         Readln( InFile, cLine );
         Writeln( PrnFile, cLine );
      end;
      Writeln( PrnFile, #12 );
      Printer.Title := '';
   finally
      CloseFile( InFile );
      System.Close( PrnFile );
   end;
end;

function StrZero( nVal, nLen: LongInt ):string;
begin
   Result := PadL( IntToStr(nVal), nLen, '0' );
end;

function LeftStr( cStr: string; nLen: LongInt ):string;
var
   nLength: LongInt;
begin
   if ( cStr <> '' ) then
   begin
      nLength := Length( cStr );
      if ( nLen > nLength ) then
         Result := Copy( cStr, 1, nLength )
      else
         Result := Copy( cStr, 1, nLen );
   end
   else  Result := '';
end;

function RightStr( cStr: string; nLen: LongInt ):string;
var
   nLength: LongInt;
begin
   if ( cStr <> '' ) then
   begin
      nLength := Length( cStr );
      if ( nLen > nLength ) then
         Result := Copy( cStr, 1, nLength )
      else
         Result := Copy( cStr, nLength-nLen+1, nLen );
   end
   else  Result := '';
end;

function SubStr( cStr: string; nStart, nLen: LongInt ):string;
begin
   Result := Copy( cStr, nStart, nLen );
end;

function TDMY( cStr: string ):TDateTime;
var
   dDateTime: TDateTime;
   nStr: string;
begin
   Result := strtodate(nStr);
end;

function GetAutoNo(p1:string; p2:integer):string;
begin
   Result := strZero(Strtoint(p1)+1,p2);
end;

Initialization
   nYearLen := 3;
END.