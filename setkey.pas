unit setkey;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, ZConnection, Profile, AHMSystemClass, AHMTAppStarter;

type
  TSetupForm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    ZConnection1: TZConnection;
    ZTable1: TZTable;
    Button1: TButton;
    ProfileFile1: TProfileFile;
    MYSQL: TProfileSection;
    protocol: TProfileString;
    myuser: TProfileString;
    mypassword: TProfileString;
    myport: TProfileInteger;
    mydbname: TProfileString;
    ZTable1cpname: TStringField;
    ZTable1cpaddr: TStringField;
    ZTable1cptel: TStringField;
    ZTable1cppsen: TLargeintField;
    ZTable1cpwino: TLargeintField;
    ZTable1cpwisno: TLargeintField;
    ZTable1cpdayn: TLargeintField;
    ZTable1cpqday: TLargeintField;
    ZTable1ppaa: TStringField;
    ZTable1ppcc: TStringField;
    ZTable1getitem: TStringField;
    ZTable1serialno: TStringField;
    ZTable2: TZTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    ZConnection2: TZConnection;
    AHMAppStarter1: TAHMAppStarter;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetupForm: TSetupForm;

implementation

{$R *.DFM}

uses LCUtils;

procedure TSetupForm.Button1Click(Sender: TObject);
begin
  ZTable1.Edit;
  ZTable1.FieldByName('serialno').AsString:=StrZero(StrToInt(Edit1.Text),10);
  ZTable1.Post;
  ZTable2.Edit;
  ZTable2.FieldByName('serialno').AsString:=StrZero(StrToInt(Edit1.Text),10);
  ZTable2.Post;
  Close;
end;

procedure TSetupForm.FormActivate(Sender: TObject);
begin
  ZConnection1.Protocol:=protocol.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Port:=myport.Value;
  ZConnection1.Catalog:='demo';
  ZConnection1.Database:='demo';
  ZTable1.Open;
  ZConnection2.Protocol:=protocol.Value;
  ZConnection2.User:=myuser.Value;
  ZConnection2.Password:=mypassword.Value;
  ZConnection2.Port:=myport.Value;
  ZConnection2.Catalog:='washshop';
  ZConnection2.Database:='washshop';
  ZTable2.Open;
  //Edit1.Text:=ZTable1.FieldByName('serialno').AsString;
end;

procedure TSetupForm.FormCreate(Sender: TObject);
begin
  AHMAppStarter1.Programs.Items[0].Execute;
  AHMAppStarter1.Programs.Items[1].Execute;
  ProfileFile1.Filename:=ExtractFilePath(Application.ExeName)+'Clothes.ini';
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=protocol.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Port:=myport.Value;
  ZConnection1.Catalog:=mydbname.Value;
  ZConnection1.Database:=mydbname.Value;
  ZConnection1.Connected:=True;

  ZConnection2.Connected:=False;
  ZConnection2.Protocol:=protocol.Value;
  ZConnection2.User:=myuser.Value;
  ZConnection2.Password:=mypassword.Value;
  ZConnection2.Port:=myport.Value;
  ZConnection2.Catalog:='demo';
  ZConnection2.Database:='demo';
  ZConnection2.Connected:=True;
end;

procedure TSetupForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    Button1Click(Self);
    end;
end;

end.
