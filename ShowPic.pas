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
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Action_ESCExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PicPath: String;
    PicName: String;
    Picno: integer;
  end;

var
  ShowPicForm: TShowPicForm;

implementation

{$R *.DFM}

uses lcutils;

procedure TShowPicForm.FormActivate(Sender: TObject);
var
  jpg: TJPEGImage;
begin
  {jpg:= TJPEGImage.Create;
  jpg.LoadFromFile(PictureName);
  Image1.Picture.Assign(jpg);
  jpg.Free;}
  Image1.Picture.LoadFromFile(PicPath+PicName+StrZero(Picno,2)+'.jpg');
  Width:=Image1.Width;
  Height:=Image1.Height;
end;

procedure TShowPicForm.Action_ESCExecute(Sender: TObject);
begin
  Close;
end;

procedure TShowPicForm.FormCreate(Sender: TObject);
begin
  Picno:=1;
  PicPath:=ExtractFilePath(Application.ExeName)+'Captures\';
end;

procedure TShowPicForm.Image1Click(Sender: TObject);
begin
  Image1.Visible:=true;
  Picno:=Picno+1;
  if FileExists(PicPath+PicName+StrZero(Picno,2)+'.jpg') then
    begin
    Image1.Picture.LoadFromFile(PicPath+PicName+StrZero(Picno,2)+'.jpg');
    end
  else
    begin
    Picno:=1;
    if FileExists(PicPath+PicName+StrZero(Picno,2)+'.jpg') then
      Image1.Picture.LoadFromFile(PicPath+PicName+StrZero(Picno,2)+'.jpg')
    else
      Image1.Visible:=false;
    end;
  ShowPicForm.Caption:='照片查驗-按(ESC-關閉)-'+PicPath+PicName+StrZero(Picno,2)+'.jpg';
end;

procedure TShowPicForm.Image2Click(Sender: TObject);
var
  ret: Word;
  fname: string;
begin
  ret:=MessageBox(handle,PChar('刪除這張照片？'),'刪除',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2);
  if ret=idYes then
    begin
    fname:=PicPath+PicName+StrZero(Picno,2)+'.jpg';
    DeleteFile(fname);
    picno:=picno+1;
    while FileExists(PicPath+PicName+StrZero(Picno,2)+'.jpg') do
      begin
      RenameFile(PicPath+PicName+StrZero(Picno,2)+'.jpg',PicPath+PicName+StrZero(Picno-1,2)+'.jpg');
      picno:=picno+1;
      end;
    Image1Click(Sender);
    end;
end;

end.
