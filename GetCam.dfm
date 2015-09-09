object GetCamForm: TGetCamForm
  Left = 193
  Top = 130
  BorderStyle = bsDialog
  Caption = '攝影機設定'
  ClientHeight = 513
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 642
    Height = 480
    Align = alBottom
    Color = 12845056
    TabOrder = 1
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 640
      Height = 478
      Cursor = crHandPoint
      Align = alClient
      Constraints.MaxHeight = 480
      Constraints.MaxWidth = 640
      Constraints.MinHeight = 240
      Constraints.MinWidth = 320
      Stretch = True
      OnClick = Image1Click
    end
    object VideoWindow: TVideoWindow
      Left = 8
      Top = 8
      Width = 89
      Height = 73
      FilterGraph = FilterGraph
      VMROptions.Mode = vmrWindowed
      VMROptions.Streams = 1
      Color = clBlack
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 642
    Height = 33
    Align = alClient
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 104
      Height = 20
      AutoSize = False
      Caption = '攝影機來源'
    end
    object CamDevice: TComboBox
      Left = 109
      Top = 2
      Width = 356
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 552
      Top = 3
      Width = 87
      Height = 25
      Caption = '儲存照片'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object ActionList1: TActionList
    Left = 24
    Top = 168
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object SampleGrabber: TSampleGrabber
    OnBuffer = SampleGrabberBuffer
    FilterGraph = FilterGraph
    MediaType.data = {
      7669647300001000800000AA00389B717DEB36E44F52CE119F530020AF0BA770
      FFFFFFFF00000000010000000000000000000000000000000000000000000000
      0000000000000000}
    Left = 24
    Top = 136
  end
  object Filter: TFilter
    BaseFilter.data = {
      EA00000037D415438C5BD011BD3B00A0C911CE86D60000004000640065007600
      6900630065003A0070006E0070003A005C005C003F005C007500730062002300
      7600690064005F00300034006600320026007000690064005F00620033006400
      360026006D0069005F0030003000230036002600390039006100650030003700
      6100260030002600300030003000300023007B00360035006500380037003700
      330064002D0038006600350036002D0031003100640030002D00610033006200
      39002D003000300061003000630039003200320033003100390036007D005C00
      67006C006F00620061006C000000}
    FilterGraph = FilterGraph
    Left = 24
    Top = 104
  end
  object FilterGraph: TFilterGraph
    Mode = gmCapture
    GraphEdit = True
    LinearVolume = True
    Left = 24
    Top = 72
  end
end
