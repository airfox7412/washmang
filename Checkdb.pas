unit Checkdb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ZAbstractRODataset, ZDataset, ZConnection, StdCtrls, Profile,
  ZAbstractDataset;

type
  TForm1 = class(TForm)
    ProfileFile1: TProfileFile;
    MYSQL: TProfileSection;
    protocol: TProfileString;
    myuser: TProfileString;
    mypassword: TProfileString;
    myport: TProfileInteger;
    mydbname: TProfileString;
    Button1: TButton;
    ZConnection1: TZConnection;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    Button2: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button3: TButton;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function DataTypeToStr(const ftType: TFieldType) : String;
begin
  case ftType of
    //ftUnknown :          Result := 'Empty';
    ftInteger, ftLargeint : Result := 'INT';
    ftSmallInt :         Result := 'SMALLINT';
    ftFloat :            Result := 'FLOAT';
    ftString:            Result := 'CHAR';
    ftMemo :             Result := 'TEXT';
    ftCurrency :         Result := 'Currency';
    ftBoolean :          Result := 'Boolean';
    ftVariant :          Result := 'Variant';
    ftIDispatch :        Result := 'IDispatch';
    ftUnknown :          Result := 'IUnknown';
    ftGUID :             Result := 'GUID';
    ftDate :             Result := 'Date';
    ftArray :            Result := 'Array';
    else
        Result := 'none';
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  WPath: String;
begin
  WPath:=ExtractFilePath(Application.ExeName);
  ProfileFile1.Filename:=WPath+'Clothes.ini';
  ZConnection1.LoginPrompt:=False;
  ZConnection1.Catalog:=mydbname.Value;
  ZConnection1.Database:=mydbname.Value;
  ZConnection1.HostName:='localhost';
  ZConnection1.Port:=myport.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Protocol:=protocol.Value;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  tablename: String;
begin
  ZConnection1.Connected:=True;
  ZConnection1.GetTableNames('',ListBox1.Items);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1Click(Self);
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
var
  i: Integer;
  fno, fn, dt, ds: String;
  tablename: String;
begin
  tablename:=ListBox1.Items.Strings[ListBox1.ItemIndex];
  ZReadOnlyQuery1.Close;
  ZReadOnlyQuery1.SQL.Clear;
  ZReadOnlyQuery1.SQL.Add('select * from `'+tablename+'`');
  ZReadOnlyQuery1.Open;
  ListBox2.Items.Clear;
  for i:=0 to ZReadOnlyQuery1.FieldCount-1 do
    begin
    fn:=ZReadOnlyQuery1.Fields[i].FieldName;
    fno:=IntToStr(ZReadOnlyQuery1.Fields[i].FieldNo);
    dt:=DataTypeToStr(ZReadOnlyQuery1.Fields[i].DataType);
    ds:=IntToStr(ZReadOnlyQuery1.Fields[i].DataSize-1);
    ListBox2.Items.Add(fno+': '+fn+' '+dt+' '+ds);
    ListBox2.Items.Add('------------------------');
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i, c, f: integer;
begin
  c:=ListBox1.Items.Count-1;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Delect From checktable');
  ZQuery1.ExecSQL;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Select * From checktable');
  ZQuery1.Open;
  for i:=0 to c do
    begin
    ZReadOnlyQuery1.Close;
    ZReadOnlyQuery1.SQL.Clear;
    ZReadOnlyQuery1.SQL.Add('Select * From '+ListBox1.Items.Strings[i]);
    ZReadOnlyQuery1.Open;
    for f:=0 to ZReadOnlyQuery1.FieldCount-1 do
      begin
      fn:=ZReadOnlyQuery1.Fields[f].FieldName;
      fno:=IntToStr(ZReadOnlyQuery1.Fields[f].FieldNo);
      dt:=DataTypeToStr(ZReadOnlyQuery1.Fields[f].DataType);
      ds:=IntToStr(ZReadOnlyQuery1.Fields[f].DataSize-1);
      end;
end;

end.
