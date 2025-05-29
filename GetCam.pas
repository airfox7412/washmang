unit GetCam;

interface

uses
  Windows, Messages, SysUtils, FileCtrl, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DSUtil, DSPack, DirectShow9, ActnList, Jpeg;

type
  TGetCamForm = class(TForm)
    ActionList1: TActionList;
    Action_Esc: TAction;
    Panel1: TPanel;
    CamDevice: TComboBox;
    Label1: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    BitBtn2: TBitBtn;
    SampleGrabber: TSampleGrabber;
    Filter: TFilter;
    FilterGraph: TFilterGraph;
    VideoWindow: TVideoWindow;
    procedure SampleGrabberBuffer(sender: TObject; SampleTime: Double;
      pBuffer: Pointer; BufferLen: Integer);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Action_EscExecute(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OnSelectDevice(sender: TObject);
  end;

var
  GetCamForm: TGetCamForm;
  SysDev: TSysDevEnum;
  CallBack, camflag: Boolean;
  fkey: String;

implementation

uses WDModule;

{$R *.DFM}

procedure TGetCamForm.OnSelectDevice(sender: TObject);
var
  CaptureGraph: ICaptureGraphBuilder2;
  SourceFilter, SampleFilter, DestFilter: IBaseFilter;
  CaptureFile: WideString;
begin
  CaptureFile:='d:\test.avi';
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
  Filter.BaseFilter.Moniker := SysDev.GetMoniker(CamDevice.ItemIndex);
  FilterGraph.Active := true;
  FilterGraph.Mode:= gmCapture;
  {with FilterGraph as ICaptureGraphBuilder2 do
    begin
    SetOutputFileName(MEDIASUBTYPE_Avi, PWideChar(CaptureFile), Multiplexer, Writer);
    RenderStream(@PIN_CATEGORY_CAPTURE, nil, Filter as IBaseFilter, nil, Multiplexer as IBaseFilter);
    RenderStream(@PIN_CATEGORY_PREVIEW, nil, Filter as IBaseFilter, nil, VideoWindow as IBaseFilter);
    end;}
  FilterGraph.QueryInterface(ICaptureGraphBuilder2, CaptureGraph);
  Filter.QueryInterface(IBaseFilter, SourceFilter);
  SampleGrabber.QueryInterface(IBaseFilter, SampleFilter);
  VideoWindow.QueryInterface(IBaseFilter, DestFilter);
  CaptureGraph.RenderStream(nil, nil, SourceFilter, SampleFilter, DestFilter);
  FilterGraph.Play;
  CaptureGraph := nil;
  SourceFilter := nil;
  SampleFilter := nil;
  DestFilter   := nil;
end;

procedure TGetCamForm.SampleGrabberBuffer(sender: TObject; SampleTime: Double;
  pBuffer: Pointer; BufferLen: Integer);
begin
  if CallBack then
    begin
    Image1.Canvas.Lock;
    try
      SampleGrabber.GetBitmap(Image1.Picture.Bitmap, pBuffer, BufferLen);
    finally
      Image1.Canvas.Unlock;
    end;
    end;
end;

procedure TGetCamForm.FormCreate(Sender: TObject);
var
  i: integer;
begin
  SysDev:= TSysDevEnum.Create(CLSID_VideoInputDeviceCategory);
  if SysDev.CountFilters > 0 then
    begin
    CamDevice.Items.Clear;
    for i := 0 to SysDev.CountFilters - 1 do
      CamDevice.Items.Add(SysDev.Filters[i].FriendlyName);
    CamDevice.OnClick:=OnSelectDevice;
    camflag:=True;
    end
  else
    camflag:=False;
  CamDevice.ItemIndex:=WDM.CamIndex.Value;
end;

procedure TGetCamForm.BitBtn2Click(Sender: TObject);
var
  fpath: String;
  jpg: TJPEGImage;
begin
  if camflag then
    begin
    if MessageDlg('롭ㆉ촑�_픵쫟좭', mtWarning, [mbYes, mbNo], 0)=mrYes then
      begin
      fpath:=WDM.WPath+'Captures\';
      if Not DirectoryExists(fpath) then
        Mkdir(fpath);
      jpg:= TJPEGImage.Create;
      jpg.Assign(Image1.Picture.Graphic);
      jpg.SaveToFile(fpath+GetCamForm.Caption);
      jpg.Free;
      Close;
      end;
    end
  else
    ShowMessage('쬋쮁┳롭й업좥킠챞픵쫟좮');  
end;

procedure TGetCamForm.Action_EscExecute(Sender: TObject);
begin
  if fkey='cap' then
    CallBack:=True
  else
    Close
end;

procedure TGetCamForm.Image1Click(Sender: TObject);
begin  
  fkey:='cap';
  CallBack:=not CallBack;
  SampleGrabber.GetBitmap(Image1.Picture.Bitmap);
end;

procedure TGetCamForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CallBack:=False;
  SysDev.Free;
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
  WDM.CamIndex.Value:=CamDevice.ItemIndex;
end;

procedure TGetCamForm.Button1Click(Sender: TObject);
begin
  OnSelectDevice(Sender);
end;

procedure TGetCamForm.FormShow(Sender: TObject);
begin
  if CamDevice.ItemIndex>=0 then
    begin
    OnSelectDevice(Self);
    CallBack:=True;
    end;
end;

end.
