unit Desktop;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtDlgs, ActnList, Buttons, RzButton, RzPanel, ExtCtrls;

type
  TDeskTopForm = class(TForm)
    RzPanel1: TRzPanel;
    Image1: TImage;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonEsc: TRzToolbarButton;
    ActionList1: TActionList;
    Action_Esc: TAction;
    Action_F1: TAction;
    RzToolbarButtonF1: TRzToolbarButton;
    OpenDialog1: TOpenDialog;
    procedure FormActivate(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_F1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeskTopForm: TDeskTopForm;

implementation

uses WDModule;

{$R *.DFM}

procedure TDeskTopForm.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  for i:=0 to DeskTopForm.ComponentCount -1 do
    begin
    if DeskTopForm.Components[i] is TRzPanel then
      begin
      (DeskTopForm.Components[i] as TRzPanel).Color:=WDM.PCOLOR.Value;
      (DeskTopForm.Components[i] as TRzPanel).Font.Color:=WDM.PFCOLOR.Value;
      (DeskTopForm.Components[i] as TRzPanel).Font.Name:=WDM.PFONT.Value;
      end;
    if DeskTopForm.Components[i] is TRzToolbar then
      begin
      (DeskTopForm.Components[i] as TRzToolbar).Color:=WDM.BCOLOR.Value;
      (DeskTopForm.Components[i] as TRzToolbar).Font.Color:=WDM.BFCOLOR.Value;
      (DeskTopForm.Components[i] as TRzToolbar).Font.Name:=WDM.BFONT.Value;
      end;
    end;
end;

procedure TDeskTopForm.Action_EscExecute(Sender: TObject);
begin
  Close;
end;

procedure TDeskTopForm.FormCreate(Sender: TObject);
begin
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'images';
  if FileExists(WDM.PathName.Value) then
    Image1.Picture.LoadFromFile(WDM.PathName.Value);
end;

procedure TDeskTopForm.Action_F1Execute(Sender: TObject);
begin  
  if OpenDialog1.Execute then
    begin
    Image1.Picture.LoadFromFile(OpenDialog1.FileName);
    WDM.PathName.Value:=OpenDialog1.FileName;
    end;
end;

end.
