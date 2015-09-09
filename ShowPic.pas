unit ShowPic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RzBckgnd, Jpeg, ActnList;

type
  TShowPicForm = class(TForm)
    Image1: TImage;
    ActionList1: TActionList;
    Action_ESC: TAction;
    procedure FormActivate(Sender: TObject);
    procedure Action_ESCExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PicName: String;
  end;

var
  ShowPicForm: TShowPicForm;

implementation

{$R *.DFM}

procedure TShowPicForm.FormActivate(Sender: TObject);
var
  jpg: TJPEGImage;
begin
  {jpg:= TJPEGImage.Create;
  jpg.LoadFromFile(PictureName);
  Image1.Picture.Assign(jpg);
  jpg.Free;}
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Captures\'+PicName);
  Width:=Image1.Width;
  Height:=Image1.Height;
end;

procedure TShowPicForm.Action_ESCExecute(Sender: TObject);
begin
  Close;
end;

end.
