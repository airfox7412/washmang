unit SelName;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ZConnection, Db, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, StdCtrls, ExtCtrls, ActnList;

type
  TSelNameForm = class(TForm)
    ZTableWaname: TZTable;
    ZConnection1: TZConnection;
    Panel1: TPanel;
    LB_Name: TListBox;
    ActionList1: TActionList;
    Action_Esc: TAction;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LB_NameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LB_NameMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Action_EscExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    name: String;
  end;

var
  SelNameForm: TSelNameForm;
  namestr: String;
  
implementation

uses WDModule;

{$R *.DFM}

procedure TSelNameForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(SelNameForm);
end;

procedure TSelNameForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  ZTableWaname.Open;
  while not ZTableWaname.Eof do
    begin
    LB_Name.Items.Add(ZTableWaname.FieldByName('wano1').AsString+' '+ZTableWaname.FieldByName('waname').AsString);
    ZTableWaname.Next;
    end;
  ZTableWaname.Close;
  name:='';
  LB_Name.ItemIndex:=0;
end;

procedure TSelNameForm.LB_NameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    nameStr:=LB_Name.Items.Strings[LB_Name.ItemIndex];
    name:=Copy(nameStr,4,Length(nameStr)-2);
    Close;
    end;
end;

procedure TSelNameForm.LB_NameMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  nameStr:=LB_Name.Items.Strings[LB_Name.ItemIndex];
  name:=Copy(nameStr,4,Length(nameStr)-2);
  Close;
end;

procedure TSelNameForm.Action_EscExecute(Sender: TObject);
begin
  name:='';
  Close;
end;

end.
