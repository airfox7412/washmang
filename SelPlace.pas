unit SelPlace;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ZConnection, Db, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, StdCtrls, ExtCtrls, ActnList;

type
  TSelPlaceForm = class(TForm)
    ZTableFplace: TZTable;
    ZConnection1: TZConnection;
    Panel1: TPanel;
    LB_Place: TListBox;
    ActionList1: TActionList;
    Action_Esc: TAction;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LB_PlaceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LB_PlaceMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Action_EscExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pname: String;
  end;

var
  SelPlaceForm: TSelPlaceForm;
  pStr: String;
  
implementation

uses WDModule;

{$R *.DFM}

procedure TSelPlaceForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(SelPlaceForm);
end;

procedure TSelPlaceForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  
  ZTableFplace.Open;
  while not ZTableFplace.Eof do
    begin
    LB_Place.Items.Add(ZTableFplace.FieldByName('wano10').AsString+' '+ZTableFplace.FieldByName('wiplace').AsString);
    ZTableFplace.Next;
    end;
  ZTableFplace.Close;
  name:='';
  LB_Place.ItemIndex:=0;
end;

procedure TSelPlaceForm.LB_PlaceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    pStr:=LB_Place.Items.Strings[LB_Place.ItemIndex];
    pname:=Copy(pStr,4,Length(pStr)-2);
    Close;
    end;
end;

procedure TSelPlaceForm.LB_PlaceMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pStr:=LB_Place.Items.Strings[LB_Place.ItemIndex];
  pname:=Copy(pStr,4,Length(pStr)-2);
  Close;
end;

procedure TSelPlaceForm.Action_EscExecute(Sender: TObject);
begin
  pname:='';
  Close;
end;

end.
