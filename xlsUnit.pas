unit xlsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function PadL( cStr:string; nLen:Word; cPad:Char ):string;
function StrZero( nVal, nLen: LongInt ):string;
function TransCHT(value: String):string;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses ComObj;

function StrZero( nVal, nLen: LongInt ):string;
begin
   Result := PadL( IntToStr(nVal), nLen, '0' );
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

function TransCHT(value: String):string;
begin
  value:=StringReplace(value, '³\', '³\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '¥\', '¥\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '»\', '»\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, 'À\', 'À\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '·\', '·\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, 'Â\', 'Â\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '½\', '½\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '²\', '²\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '°\', '°\\\\',[rfReplaceAll, rfIgnoreCase]);
  value:=StringReplace(value, '¯\', '¯\\\\',[rfReplaceAll, rfIgnoreCase]);
  Result := value;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  Excel, WorkBook, mysheet: Variant;
  xlsFileName: string;
  crcode, crname, curst, crtel, csex, cradr, crmoney, crpsen: String;
  i: Integer;
begin
  xlsFileName:=Edit1.Text;
  Excel:=CreateOleObject('Excel.Application');
  Excel.Visible:=true;
  Excel.Workbooks.Open(xlsFileName);
  Excel.Workbooks[1].worksheets[1].activate;
  mysheet:=Excel.activesheet;
  Memo1.Lines.Clear;
  for i:=2 to 1541 do
    begin
    Application.ProcessMessages;
    crcode:=StrZero(mysheet.Cells[i,1].Value,5);
    crname:=TransCHT(Trim(mysheet.Cells[i,2].Value));
    crtel:=mysheet.Cells[i,3].Value;
    if Length(crtel)=9 then
      crtel:=StrZero(StrToInt(crtel),10);
    curst:=Trim(mysheet.Cells[i,6].Value+mysheet.Cells[i,7].Value);
    curst:=TransCHT(curst);
    cradr:=Trim(mysheet.Cells[i,5].Value)+' '+curst;
    crmoney:=mysheet.Cells[i,8].Value;
    crpsen:=IntToStr(100-StrToInt(mysheet.Cells[i,9].Value));
    if mysheet.Cells[i,13].Value='1' then
      csex:='¨k'
    else
      csex:='¤k';
    Memo1.Lines.Add(csex);
    Memo1.Lines.Add('-----------------------');
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO cr (crcode,crname,csex,crtel,cradr,crmoney,crpsen) VALUES(');
    ZQuery1.SQL.Add(''''+crcode+''',');
    ZQuery1.SQL.Add(''''+crname+''',');
    ZQuery1.SQL.Add(''''+csex+''',');
    ZQuery1.SQL.Add(''''+crtel+''',');
    ZQuery1.SQL.Add(''''+cradr+''',');
    ZQuery1.SQL.Add(crmoney+',');
    ZQuery1.SQL.Add(crpsen+')');
    ZQuery1.ExecSQL;
    end;
  Excel.Workbooks.Close;
  Excel.Quit;
end;

end.
