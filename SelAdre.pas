unit SelAdre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ZConnection, Db, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, StdCtrls, ExtCtrls, ActnList;

type
  TSelAdreForm = class(TForm)
    ZTableWaadr: TZTable;
    ZConnection1: TZConnection;
    Panel1: TPanel;
    LB_Adrs: TListBox;
    ActionList1: TActionList;
    Action_Esc: TAction;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LB_AdrsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LB_AdrsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Action_EscExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    adrname: String;
  end;

var
  SelAdreForm: TSelAdreForm;
  adrStr: String;
  
implementation

uses WDModule;

{$R *.DFM}

procedure TSelAdreForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(SelAdreForm);
end;

procedure TSelAdreForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  ZTableWaadr.Open;
  while not ZTableWaadr.Eof do
    begin
    LB_Adrs.Items.Add(ZTableWaadr.FieldByName('wano8').AsString+' '+ZTableWaadr.FieldByName('waadr').AsString);
    ZTableWaadr.Next;
    end;
  ZTableWaadr.Close;
  name:='';
  LB_Adrs.ItemIndex:=0;
end;

procedure TSelAdreForm.LB_AdrsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    adrStr:=LB_Adrs.Items.Strings[LB_Adrs.ItemIndex];
    adrname:=Copy(adrStr,4,Length(adrStr)-2);
    Close;
    end;
end;

procedure TSelAdreForm.LB_AdrsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  adrStr:=LB_Adrs.Items.Strings[LB_Adrs.ItemIndex];
  adrname:=Copy(adrStr,4,Length(adrStr)-2);
  Close;
end;

procedure TSelAdreForm.Action_EscExecute(Sender: TObject);
begin
  adrname:='';
  Close;
end;

end.
