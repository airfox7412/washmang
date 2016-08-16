unit PPreview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ZConnection, Db, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, frxClass, frxPreview, frxDBSet, ExtCtrls,
  Buttons, ActnList, RzButton, RzPanel, Mask, RzEdit, RzCmboBx,
  frxExportXLS;

type
  TPreviewForm = class(TForm)
    frxPreview1: TfrxPreview;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonPdUp: TRzToolbarButton;
    RzToolbarButtonHome: TRzToolbarButton;
    ActionList1: TActionList;
    ActionPgDn: TAction;
    ActionHome: TAction;
    ActionPgUp: TAction;
    ActionEnd: TAction;
    RzToolbarButtonPgDn: TRzToolbarButton;
    RzToolbarButtonEnd: TRzToolbarButton;
    RzEditPage: TRzEdit;
    RzToolbarButtonF9: TRzToolbarButton;
    RzToolbarButtonEsc: TRzToolbarButton;
    ActionF9: TAction;
    ActionEsc: TAction;
    RzComboBox1: TRzComboBox;
    RzToolbarButtonF10: TRzToolbarButton;
    ActionF10: TAction;
    frxXLSExport1: TfrxXLSExport;
    ActionF8: TAction;
    RzToolbarButtonF8: TRzToolbarButton;
    procedure ActionPgDnExecute(Sender: TObject);
    procedure ActionHomeExecute(Sender: TObject);
    procedure ActionPgUpExecute(Sender: TObject);
    procedure ActionEndExecute(Sender: TObject);
    procedure ActionF9Execute(Sender: TObject);
    procedure ActionEscExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure frxPreview1PageChanged(Sender: TfrxPreview; PageNo: Integer);
    procedure RzComboBox1Change(Sender: TObject);
    procedure ActionF10Execute(Sender: TObject);
    procedure ActionF8Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreviewForm: TPreviewForm;

implementation

uses WDModule;

{$R *.DFM}

procedure TPreviewForm.ActionHomeExecute(Sender: TObject);
begin
  frxPreview1.First;
  RzEditPage.Text:=IntToStr(frxPreview1.PageNo);
  RzToolbarButtonHome.Enabled:=False;
  RzToolbarButtonEnd.Enabled:=True;
end;

procedure TPreviewForm.ActionPgUpExecute(Sender: TObject);
begin
  frxPreview1.Prior;
  RzEditPage.Text:=IntToStr(frxPreview1.PageNo);
  RzToolbarButtonEnd.Enabled:=True;
  if frxPreview1.PageNo>1 then
    RzToolbarButtonHome.Enabled:=True
  else
    RzToolbarButtonHome.Enabled:=False;
end;

procedure TPreviewForm.ActionPgDnExecute(Sender: TObject);
begin
  frxPreview1.Next;
  RzEditPage.Text:=IntToStr(frxPreview1.PageNo);
  RzToolbarButtonHome.Enabled:=True;
  if frxPreview1.PageNo=frxPreview1.PageCount then
    RzToolbarButtonEnd.Enabled:=False
  else
    RzToolbarButtonEnd.Enabled:=True;
end;

procedure TPreviewForm.ActionEndExecute(Sender: TObject);
begin
  frxPreview1.Last;
  RzEditPage.Text:=IntToStr(frxPreview1.PageNo);
  RzToolbarButtonEnd.Enabled:=False;
  RzToolbarButtonHome.Enabled:=True;
end;

procedure TPreviewForm.ActionF9Execute(Sender: TObject);
begin
  frxPreview1.Print;
end;

procedure TPreviewForm.ActionEscExecute(Sender: TObject);
begin
  frxPreview1.Cancel;
  Close;
end;

procedure TPreviewForm.FormActivate(Sender: TObject);
begin
  RzToolbar1.Color:=WDM.BCOLOR.Value;
  RzToolbar1.Font.Color:=WDM.BFCOLOR.Value;
  RzToolbar1.Font.Name:=WDM.BFONT.Value;
  RzToolbar1.Font.Size:=WDM.BSIZE.Value;

  frxPreview1.BackColor:=WDM.PCOLOR.Value;

  frxPreview1.ZoomMode:=zmPageWidth;
end;

procedure TPreviewForm.frxPreview1PageChanged(Sender: TfrxPreview;
  PageNo: Integer);
begin
  RzEditPage.Text:=IntToStr(PageNo);
end;

procedure TPreviewForm.RzComboBox1Change(Sender: TObject);
begin
  if RzComboBox1.ItemIndex=0 then
    frxPreview1.Zoom:=1
  else if RzComboBox1.ItemIndex=1 then
    frxPreview1.ZoomMode:=zmPageWidth
  else
    frxPreview1.ZoomMode:=zmWholePage;
  RzEditPage.SetFocus;  
end;

procedure TPreviewForm.ActionF10Execute(Sender: TObject);
begin
  frxPreview1.Cancel;
end;

procedure TPreviewForm.ActionF8Execute(Sender: TObject);
begin
  if pos('л╚дс',frxXLSExport1.FileName)<>0 then
    frxPreview1.Export(frxXLSExport1);
end;

end.
