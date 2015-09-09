object Form1: TForm1
  Left = 192
  Top = 127
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 37
    Width = 854
    Height = 425
    Align = alClient
    Color = 12615680
    ParentColor = False
    TabOrder = 0
    object VisualReport1: TVisualReport
      Left = 0
      Top = 0
      Width = 720
      Height = 1056
      PrintFixDetails = False
      ViewWord = False
      Detail = Detial
      FixedDetails = 0
      MaxDetails = 0
      Columns = 1
      DetailCount = 0
      DetailBreak = Gspace
      PageFooter = PageFooter
      PageHeader = PageHead
      Orientation = poPortrait
      PageNumber = 1
      ReportTitle = 'Alex'
      DispPercent = 100
      WidthInch = 750
      HeightInch = 1100
      MarginLeft = 60
      MarginTop = 60
      MarginRight = 0
      MarginBottom = 0
      ColGap = 0
      Stretch = False
      PictureWidth = 680
      PictureHeight = 980
      PaperSize = psA4
      ReSetPaperSize = False
      DisplayProgress = True
      CalTotalPages = True
      JobPages = 1
      Copies = 1
      FromPage = 0
      ToPage = 0
      ColumnOrientation = oHorizontal
      TextHeight = 25
      TextWidth = 5
      TextLines = 50
      FaxComport = 1
      FaxBaudRate = 19200
      FaxDataLength = 8
      FAxParity = fpNone
      FaxOutput = FaxModem
      PrintPicture = True
      BufferOption = bfAll
      DispRecordProgress = False
      object PageHead: TRptPanel
        Left = 0
        Top = 0
        Width = 720
        Height = 73
        Color = clWhite
        BorderStyle = psClear
        PenSize = 1
        object RptField2: TRptField
          Left = 229
          Top = 49
          Width = 209
          Height = 18
          Alignment = taLeftJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = []
          DisplayWidth = 0
          Orientation = coHorizontal
          Transparent = False
          DataField = 'TE514N'
        end
        object ENAME: TRptField
          Left = 226
          Top = 11
          Width = 320
          Height = 33
          Alignment = taLeftJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Black'
          Font.Style = []
          DisplayWidth = 0
          Orientation = coHorizontal
          Transparent = False
          DataField = 'TEC122'
        end
      end
      object GFooter: TRptPanel
        Left = 0
        Top = 122
        Width = 720
        Height = 59
        Color = clWhite
        BorderStyle = psClear
        PenSize = 1
        object RptField1: TRptField
          Left = 225
          Top = 3
          Width = 144
          Height = 17
          Alignment = taLeftJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          DisplayWidth = 0
          Orientation = coHorizontal
          Transparent = False
          DataField = 'TE522'
        end
      end
      object RptGroup1: TRptGroup
        Left = 8
        Top = 480
        Width = 40
        Height = 20
        DetailCount = 0
        FooterPanel = GFooter
        MultiKey = False
        DataField = 'TE511'
        Level = 0
        PaintNewPage = True
        NewPage = True
        PageNumber = 0
      end
      object Detial: TRptPanel
        Left = 0
        Top = 73
        Width = 720
        Height = 23
        Color = clWhite
        BorderStyle = psClear
        PenSize = 1
        object SDetial: TRptSubPanel
          Left = 0
          Top = 0
          Width = 688
          Height = 23
          Align = alNone
          Color = clWhite
          BorderStyle = psClear
          PenSize = 1
          DetailCount = 0
          Moveable = False
          object RptField16: TRptField
            Left = 225
            Top = 3
            Width = 144
            Height = 17
            Alignment = taLeftJustify
            AutoSize = False
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            DisplayWidth = 0
            Orientation = coHorizontal
            Transparent = False
            DataField = 'TE522'
          end
        end
      end
      object Gspace: TRptPanel
        Left = 0
        Top = 96
        Width = 720
        Height = 23
        Color = clWhite
        BorderStyle = psClear
        PenSize = 1
        object Space: TRptSubPanel
          Left = 0
          Top = 0
          Width = 688
          Height = 23
          Align = alNone
          Color = clWhite
          BorderStyle = psClear
          PenSize = 1
          DetailCount = 0
          Moveable = False
        end
      end
      object PageFooter: TRptPanel
        Left = 0
        Top = 119
        Width = 720
        Height = 3
        Color = clWhite
        BorderStyle = psClear
        PenSize = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 37
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 109
      Top = 6
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object SpeedButton2: TSpeedButton
      Left = 177
      Top = 6
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object Label1: TLabel
      Left = 213
      Top = 9
      Width = 60
      Height = 19
      Caption = '總頁數'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 10
      Top = 5
      Width = 91
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      Text = '100%'
      Items.Strings = (
        '100%'
        ' 75%'
        ' 50%'
        '200%'
        '全頁'
        '頁寬')
    end
    object BitBtn2: TBitBtn
      Left = 400
      Top = 6
      Width = 70
      Height = 25
      Caption = '關閉'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Kind = bkClose
    end
    object BitBtn1: TBitBtn
      Left = 321
      Top = 6
      Width = 70
      Height = 25
      Caption = '列印'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Edit1: TEdit
      Left = 276
      Top = 6
      Width = 36
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '999'
    end
    object Edit_Page: TEdit
      Left = 138
      Top = 6
      Width = 36
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '1'
    end
  end
end
