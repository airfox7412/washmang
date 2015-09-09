object CustRepForm: TCustRepForm
  Left = 226
  Top = 140
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '´»§·©˙≤”≥¯™Ì'
  ClientHeight = 462
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 57
    Width = 784
    Height = 376
    Selected.Strings = (
      'wicode'#9'6'#9'¨~≥Ê∏π'#9#9
      'wisno'#9'4'#9'Ωs∏π'#9#9
      'wiitem'#9'6'#9'™·¶‚'#9#9
      'winame'#9'8'#9'¶Á™´¶W∫Ÿ'#9#9
      'wiacc'#9'6'#9'∞t•Û'#9#9
      'wimemo'#9'7'#9'¶Á™Aµ˘©˙'#9#9
      'wiwamo'#9'4'#9'≥Êª˘'#9#9
      'wiquty'#9'3'#9'•Û'#9#9
      'wisum'#9'4'#9'§p≠p'#9#9
      'wiurge'#9'2'#9'´Ê'#9#9
      'wimdate'#9'9'#9'¿≥•Ê§È¥¡'#9#9
      'wiplace'#9'4'#9'¶Ï∏m'#9#9
      'wiwash'#9'4'#9'¨~™k'#9#9
      'wiexkind'#9'7'#9'•[§u'#9#9
      'wiexmo'#9'7'#9'§u∂O'#9#9
      'wiodate'#9'10'#9'®˙•Û§È¥¡'#9#9
      'wiotime'#9'8'#9'®˙•ÛÆ…∂°'#9#9
      'widate'#9'10'#9'¶¨•Û§È¥¡'#9#9
      'witime'#9'8'#9'¶¨•ÛÆ…∂°'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 12845056
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 12845056
    DataSource = wwDStempwio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -19
    TitleFont.Name = '≤”©˙≈È'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorIconColor = clYellow
    PaintOptions.ActiveRecordColor = clHighlight
    GroupFieldName = 'wicode'
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 433
    Width = 784
    Height = 29
    Align = alBottom
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdBottom]
    BorderWidth = 0
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF8
      RzToolbarButtonF9
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF1
      Caption = 'F1.¨d∏ﬂ'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 354
      Top = 3
      Width = 90
      Height = 22
      Action = ActionESC
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 224
      Top = 3
      Width = 130
      Height = 22
      Action = ActionF9
      Caption = 'F9.™˜√B©˙≤”¶C¶L'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF8: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 130
      Height = 22
      Action = ActionF8
      Caption = 'F8.¶Á™A©˙≤”¶C¶L'
      HotNumGlyphs = 0
    end
  end
  object PanelDateSet: TPanel
    Left = 200
    Top = 120
    Width = 244
    Height = 225
    BevelWidth = 5
    Color = clFuchsia
    TabOrder = 1
    object Label8: TLabel
      Left = 8
      Top = 88
      Width = 112
      Height = 27
      Caption = '∂}©l§È¥¡'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 128
      Width = 112
      Height = 27
      Caption = 'µ≤ßÙ§È¥¡'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 234
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '±¯•Û¨d∏ﬂ'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 112
      Height = 27
      Caption = '´»§·Ωs∏π'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 200
      Top = 51
      Width = 23
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = SpeedButton1Click
    end
    object RzProgressBar1: TRzProgressBar
      Left = 5
      Top = 200
      Width = 234
      Height = 20
      Align = alBottom
      BorderWidth = 0
      InteriorOffset = 0
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
    end
    object MaskEditDate1: TMaskEdit
      Left = 121
      Top = 84
      Width = 111
      Height = 37
      AutoSelect = False
      EditMask = '999/99/99;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 1
      Text = '   /  /  '
      OnKeyDown = MaskEditDate1KeyDown
    end
    object MaskEditDate2: TMaskEdit
      Left = 121
      Top = 124
      Width = 111
      Height = 37
      AutoSelect = False
      EditMask = '999/99/99;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 2
      Text = '   /  /  '
      OnKeyDown = MaskEditDate2KeyDown
    end
    object Edit_crcode: TEdit
      Left = 121
      Top = 43
      Width = 72
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = Edit_crcodeExit
      OnKeyDown = Edit_crcodeKeyDown
    end
    object Button1: TButton
      Left = 91
      Top = 169
      Width = 75
      Height = 25
      Caption = 'ΩT©w'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 57
    Align = alTop
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 88
      Height = 21
      Caption = '´»§·Ωs∏π'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 151
      Top = 30
      Width = 22
      Height = 21
      Caption = '®Ï'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 600
      Top = 6
      Width = 99
      Height = 21
      Caption = '≤{¶≥æl√B:'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbDate1: TLabel
      Left = 48
      Top = 31
      Width = 99
      Height = 21
      Alignment = taRightJustify
      Caption = '099/01/01'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbDate2: TLabel
      Left = 177
      Top = 31
      Width = 99
      Height = 21
      Alignment = taRightJustify
      Caption = '099/01/01'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 224
      Top = 6
      Width = 44
      Height = 21
      Caption = '©m¶W'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 400
      Top = 6
      Width = 44
      Height = 21
      Caption = 'πq∏‹'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 104
      Top = 8
      Width = 58
      Height = 20
      Color = clNavy
      DataField = 'crcode'
      DataSource = WDM.DS_Cust
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 272
      Top = 8
      Width = 97
      Height = 20
      Color = clNavy
      DataField = 'crname'
      DataSource = WDM.DS_Cust
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 448
      Top = 8
      Width = 121
      Height = 20
      Color = clNavy
      DataField = 'crtel'
      DataSource = WDM.DS_Cust
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 389
      Top = 30
      Width = 44
      Height = 21
      Caption = '¶aß}'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 436
      Top = 32
      Width = 331
      Height = 20
      Color = clNavy
      DataField = 'cradr'
      DataSource = WDM.DS_Cust
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 688
      Top = 6
      Width = 79
      Height = 21
      Alignment = taRightJustify
      Color = clGreen
      DataField = 'crmoney'
      DataSource = WDM.DS_Cust
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 30
      Width = 22
      Height = 21
      Caption = '±q'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 80
    object ActionF1: TAction
      Caption = 'F1.¨d∏ﬂ'
      ShortCut = 112
      OnExecute = ActionF1Execute
    end
    object ActionF2: TAction
      Caption = 'F2.•˛≥°´»§·'
      ShortCut = 113
    end
    object ActionF3: TAction
      Caption = 'F3.≥]©w§È¥¡'
      ShortCut = 114
    end
    object ActionF8: TAction
      Caption = 'F8.¶Á™A©˙≤”¶C¶L'
      ShortCut = 119
      OnExecute = ActionF8Execute
    end
    object ActionF9: TAction
      Caption = 'F9.™˜√B©˙≤”¶C¶L'
      ShortCut = 120
      OnExecute = ActionF9Execute
    end
    object ActionESC: TAction
      Caption = 'Esc.¬˜∂}'
      ShortCut = 27
      OnExecute = ActionESCExecute
    end
    object CtrlAltF8: TAction
      Caption = 'CtrlAltF8'
      ShortCut = 49271
      OnExecute = CtrlAltF8Execute
    end
    object CtrlAltF9: TAction
      Caption = 'CtrlAltF9'
      ShortCut = 49272
      OnExecute = CtrlAltF9Execute
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    Connected = True
    DesignConnection = True
    SQLHourGlass = True
    Left = 464
    Top = 80
  end
  object frxReportF9: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 41530.5921344792
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_cr
        DataSetName = 'frxDBDS_cr'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 105.82684
        Top = 18.89765
        Width = 786.14224
        object Memo1: TfrxMemoView
          Left = 20.11812
          Width = 90.70872
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ÈñÄÂ∏ÇÂêçÁ®±:')
          ParentFont = False
        end
        object frxDBDS_Compycpname: TfrxMemoView
          Left = 111.04731
          Width = 359.05535
          Height = 18.8976378
          DataField = 'cpname'
          DataSet = frxDBDS_Compy
          DataSetName = 'frxDBDS_Compy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Compy."cpname"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 476.22078
          Width = 56.69295
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ÈõªË©±:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 532.91373
          Width = 83.14956236
          Height = 18.89765
          DataSet = frxDBDS_Compy
          DataSetName = 'frxDBDS_Compy'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Compy."cptel"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 17.007885
          Top = 26.45671
          Width = 752.12647
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÂÆ¢Êà∂ÈáëÈ°çÊòéÁ¥∞Â†±Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 18.89765
          Top = 56.69295
          Width = 79.37013
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë£ΩË°®Êó•Êúü:')
          ParentFont = False
        end
        object frxDBDataset1crname: TfrxMemoView
          Left = 355.27582
          Top = 79.37013
          Width = 94.48825
          Height = 18.89765
          DataSet = frxDBDSWIO
          DataSetName = 'frxDBDSWIO'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."crname"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 309.92146
          Top = 79.37013
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 99.04731
          Top = 79.37013
          Width = 60.47248
          Height = 18.89765
          DataSet = frxDBDSWIO
          DataSetName = 'frxDBDSWIO'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."crcode"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 18.89765
          Top = 79.37013
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Êà∂Á∑®Ëôü:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 510.23655
          Top = 79.37013
          Width = 117.16543
          Height = 18.89765
          DataSet = frxDBDSWIO
          DataSetName = 'frxDBDSWIO'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."crtel"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 464.88219
          Top = 79.37013
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 98.26778
          Top = 56.69295
          Width = 234.33086
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 242.66945
          Top = 79.37013
          Width = 60.47248
          Height = 18.89765
          DataSet = frxDBDSWIO
          DataSetName = 'frxDBDSWIO'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."crtelb"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 162.51979
          Top = 79.37013
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªËÖ¶Á∑®Ëôü:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.67718
        Top = 147.40167
        Width = 786.14224
        object Memo14: TfrxMemoView
          Left = 97.04731
          Width = 56.6929133858268
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óË°£ÂñÆËôü')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 153.96073
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂéüÂÆ¢È°ç')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 211.65368
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Êî∂‰ª∂È°ç')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 268.34663
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂØ¶Êî∂')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 733.22882
          Width = 37.7953
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 695.43352
          Width = 37.7953
          Height = 15.11812
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            'È†ÅÊï∏:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 18.89765
          Top = 11.33859
          Width = 752.12642118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= ')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 325.03958
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÊäòËÆìÈ°ç')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 381.73253
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂÄãÊäò')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 20.007885
          Width = 75.5906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊó•Êúü')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 438.42548
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Êñ∞ÂÆ¢È°ç')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 509.11843
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊôÇÊ©ü')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 580.81138
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊôÇÈñì')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 230.55133
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 98.26778
          Width = 56.69295
          Height = 18.89765
          DataSet = frxDBDSWIO
          DataSetName = 'frxDBDSWIO'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."wicode"]')
          ParentFont = False
        end
        object frxDBDataset1wicode1: TfrxMemoView
          Left = 18.89765
          Width = 79.37013
          Height = 18.89765
          DataSet = frxDBDSWIO
          DataSetName = 'frxDBDSWIO'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."widate"]')
          ParentFont = False
        end
        object frxDBDataset2wototal: TfrxMemoView
          Left = 154.96073
          Width = 56.69295
          Height = 18.89765
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."woptotal"]')
          ParentFont = False
        end
        object frxDBDataset2frgetmo: TfrxMemoView
          Left = 215.43321
          Width = 52.91342
          Height = 18.89765
          DataField = 'frgetmo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."frgetmo"]')
          ParentFont = False
        end
        object frxDBDataset2worealmo: TfrxMemoView
          Left = 268.34663
          Width = 56.69295
          Height = 18.89765
          DataField = 'worealmo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."worealmo"]')
          ParentFont = False
        end
        object frxDBDataset2wocntmo: TfrxMemoView
          Left = 325.03958
          Width = 56.69295
          Height = 18.89765
          DataField = 'wocntmo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."wocntmo"]')
          ParentFont = False
        end
        object frxDBDataset2wopsen: TfrxMemoView
          Left = 381.73253
          Width = 56.69295
          Height = 18.89765
          DataField = 'wopsen'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."wopsen"]')
          ParentFont = False
        end
        object frxDBDataset2wototal1: TfrxMemoView
          Left = 438.42548
          Width = 56.69295
          Height = 18.89765
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."wototal"]')
          ParentFont = False
        end
        object frxDBDataset2witime: TfrxMemoView
          Left = 585.82715
          Width = 64.25201
          Height = 18.89765
          DataField = 'witime'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."witime"]')
          ParentFont = False
        end
        object frxDBDataset2fritem: TfrxMemoView
          Left = 510.23655
          Width = 64.25201
          Height = 18.89765
          DataField = 'Kind'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."Kind"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDSWIO: TfrxDBDataset
    UserName = 'frxDBDSWIO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wicode=wicode'
      'wisno=wisno'
      'wiitem=wiitem'
      'winame=winame'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiwamo=wiwamo'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiurge=wiurge'
      'wimdate=wimdate'
      'wiplace=wiplace'
      'wiwash=wiwash'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wiodate=wiodate'
      'wiotime=wiotime'
      'widate=widate'
      'witime=witime'
      'crcode=crcode'
      'widay=widay'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'wisel=wisel'
      'pps=pps'
      'picture=picture'
      'crname=crname'
      'crtel=crtel'
      'crmoney=crmoney'
      'crtelb=crtelb')
    DataSet = ZQuery_tempwio
    Left = 496
    Top = 120
  end
  object frxDBDS_cr: TfrxDBDataset
    UserName = 'frxDBDS_cr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'crcode=crcode'
      'crdate=crdate'
      'crname=crname'
      'csex=csex'
      'crid=crid'
      'crtel=crtel'
      'crtela=crtela'
      'crtelb=crtelb'
      'cradr=cradr'
      'crmoney=crmoney'
      'crpsen=crpsen'
      'crdate2=crdate2'
      'crcnt=crcnt'
      'crvip=crvip'
      'crarea=crarea'
      'curst=curst'
      'crs1=crs1'
      'crs2=crs2'
      'crmark=crmark')
    DataSet = ZTableCr
    Left = 496
    Top = 184
  end
  object frxDBDS_Compy: TfrxDBDataset
    UserName = 'frxDBDS_Compy'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cpname=cpname'
      'cpaddr=cpaddr'
      'cptel=cptel'
      'cppsen=cppsen'
      'cpwino=cpwino'
      'cpwisno=cpwisno'
      'cpwisno_d=cpwisno_d'
      'cpdayn=cpdayn'
      'cpqday=cpqday'
      'ppaa=ppaa'
      'ppcc=ppcc'
      'getitem=getitem'
      'getdisplay=getdisplay'
      'Expansion=Expansion'
      'expmode=expmode'
      'asmb=asmb'
      'sp300=sp300'
      'exit=exit'
      'serialno=serialno')
    DataSet = ZTableCompy
    Left = 496
    Top = 152
  end
  object wwDStempwio: TwwDataSource
    DataSet = ZQuery_tempwio
    Left = 528
    Top = 81
  end
  object frxReportF8: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 40603.5999215046
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  grcnt: Integer=1;'
      '    '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=grcnt+1;      '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDSWIOwicode.Visible:=False;           '
      '    frxDBDSWIOwidate.Visible:=False;        '
      '    end'
      '  else   '
      '    begin'
      '    frxDBDSWIOwicode.Visible:=True;         '
      '    frxDBDSWIOwidate.Visible:=True;        '
      '    end;  '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=1;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 464
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_cr
        DataSetName = 'frxDBDS_cr'
      end
      item
        DataSet = frxDBDSWIO
        DataSetName = 'frxDBDSWIO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 105.82684
        Top = 18.89765
        Width = 786.14224
        object Memo1: TfrxMemoView
          Left = 20.11812
          Width = 90.70872
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ÈñÄÂ∏ÇÂêçÁ®±:')
          ParentFont = False
        end
        object frxDBDS_Compycpname: TfrxMemoView
          Left = 111.04731
          Width = 359.05535
          Height = 18.8976378
          DataField = 'cpname'
          DataSet = frxDBDS_Compy
          DataSetName = 'frxDBDS_Compy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Compy."cpname"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 476.22078
          Width = 56.69295
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ÈõªË©±:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 532.91373
          Width = 83.14956236
          Height = 18.89765
          DataSet = frxDBDS_Compy
          DataSetName = 'frxDBDS_Compy'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Compy."cptel"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 17.007885
          Top = 26.45671
          Width = 752.12647
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÂÆ¢Êà∂Ë°£Áâ©ÊòéÁ¥∞Â†±Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 18.89765
          Top = 56.69295
          Width = 79.37013
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë£ΩË°®Êó•Êúü:')
          ParentFont = False
        end
        object frxDBDataset1crname: TfrxMemoView
          Left = 351.49629
          Top = 79.37013
          Width = 94.48825
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."crname"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 306.14193
          Top = 79.37013
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 98.26778
          Top = 79.37013
          Width = 60.47248
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."crcode"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 18.89765
          Top = 79.37013
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Êà∂Á∑®Ëôü:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 506.45702
          Top = 79.37013
          Width = 117.16543
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."crtel"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 461.10266
          Top = 79.37013
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 98.26778
          Top = 56.69295
          Width = 249.44898
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 631.18151
          Top = 79.37013
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÁèæÊúâÈ§òÈ°ç:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 695.43352
          Top = 79.37013
          Width = 75.5906
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."crmoney"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 238.11039
          Top = 79.37013
          Width = 60.47248
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."crtelb"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 162.51979
          Top = 79.37013
          Width = 75.5906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªËÖ¶Á∑®Ëôü:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.67718
        Top = 147.40167
        Width = 786.14224
        object Memo7: TfrxMemoView
          Left = 11.33859
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óË°£ÂñÆËôü')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 154.96073
          Width = 34.01577
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥Ëôü')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 192.75603
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ëä±Ëâ≤')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 245.66945
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£ÊúçÂêçÁ®±')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 317.48052
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÊ≥ï')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 733.22882
          Width = 37.7953
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 695.43352
          Width = 37.7953
          Height = 15.11812
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            'È†ÅÊï∏:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 11.33859
          Top = 11.33859
          Width = 752.12647
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= ')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 461.10266
          Width = 37.7953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 502.67749
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Â∞èË®à')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 83.14966
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂‰ª∂Êó•Êúü')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 555.59091
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êáâ‰∫§Êó•Êúü')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 627.40198
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âèñ‰ª∂Êó•Êúü')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 351.49629
          Width = 56.69295
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âä†Â∑•')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 411.96877
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âä†Â∑•È°ç')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765976
        Top = 253.22851
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = WioDetailForm.frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDSWIOwisno: TfrxMemoView
          Left = 154.96073
          Width = 34.01577
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."wisno"]')
          ParentFont = False
        end
        object frxDBDSWIOwiitem: TfrxMemoView
          Left = 192.75603
          Width = 49.13389
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."wiitem"]')
          ParentFont = False
        end
        object frxDBDSWIOwiname: TfrxMemoView
          Left = 245.66945
          Width = 68.03154
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."winame"]')
          ParentFont = False
        end
        object frxDBDSWIOwiwash: TfrxMemoView
          Left = 317.48052
          Width = 30.23624
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."wiwash"]')
          ParentFont = False
        end
        object frxDBDSWIOwiquty: TfrxMemoView
          Left = 461.10266
          Width = 37.7953
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWIO."wiquty"]')
          ParentFont = False
        end
        object frxDBDSWIOwisum: TfrxMemoView
          Left = 502.67749
          Width = 45.35436
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWIO."wisum"]')
          ParentFont = False
        end
        object frxDBDSWIOwiurge: TfrxMemoView
          Left = 556.03185
          Width = 64.2519685
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."wimdate"]')
          ParentFont = False
        end
        object frxDBDSWIOwimemo: TfrxMemoView
          Left = 627.40198
          Width = 64.25201
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."wiodate"]')
          ParentFont = False
        end
        object frxDBDSWIOwiexkind: TfrxMemoView
          Left = 355.27582
          Width = 56.69295
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWIO."wiexkind"]')
          ParentFont = False
        end
        object frxDBDSWIOwiexmo: TfrxMemoView
          Left = 415.7483
          Width = 45.35436
          Height = 18.89765
          DataSet = WioDetailForm.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWIO."wiexmo"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 52.91342
        Top = 336.37817
        Width = 786.14224
        object SysMemo5: TfrxSysMemoView
          Left = 461.10232803
          Top = 17
          Width = 37.7953
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSWIO."wiquty">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 555.9295
          Top = 17
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Á∏ΩË®àÈáëÈ°ç:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 396.85035953
          Top = 17
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Á∏ΩË®à‰ª∂Êï∏:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 498.89760362
          Top = 17
          Width = 18.89765
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 11.33859
          Width = 759.68553
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 11.33859
          Top = 34.01577
          Width = 759.68553
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ' +
              '= ')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 621.35429409
          Top = 16.89765
          Width = 71.81102362
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSWIO."wisum">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 751.89023
          Top = 20.67718
          Width = 18.89765
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÖÉ')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 20.45671
        Top = 294.80334
        Width = 786.14224
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        AllowSplit = True
        object SysMemo1: TfrxSysMemoView
          Left = 621.38621
          Top = 1
          Width = 71.81107
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSWIO."wisum">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 461.10266
          Top = 1
          Width = 37.7953
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSWIO."wiquty">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 556.1342
          Top = 1
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂêàË®àÈáëÈ°ç:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 11.33859
          Top = 1
          Width = 385.51206
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.TopLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - -')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 498.89796
          Top = 1
          Width = 18.89765
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 751.7480315
          Top = 1
          Width = 18.89765
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÖÉ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 396.85065
          Top = 1.55906
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂêàË®à‰ª∂Êï∏:')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 230.55133
        Visible = False
        Width = 786.14224
        Condition = 'frxDBDataset1."wicode"'
      end
      object frxDBDSWIOwicode: TfrxMemoView
        Left = 11.33859
        Top = 251.88992
        Width = 64.25201
        Height = 18.89765
        DataSet = WioDetailForm.frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.DecimalSeparator = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[frxDBDSWIO."wicode"]')
        ParentFont = False
      end
      object frxDBDSWIOwidate: TfrxMemoView
        Left = 83.14966
        Top = 251.88992
        Width = 68.03154
        Height = 18.89765
        DataSet = WioDetailForm.frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.DecimalSeparator = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[frxDBDSWIO."widate"]')
        ParentFont = False
      end
    end
  end
  object ZQueryWo: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQueryWoCalcFields
    SQL.Strings = (
      'SELECT * FROM wo'
      'WHERE (widate>='#39'099/05/23'#39' and widate<='#39'099/06/23'#39')'
      'and (crcode='#39'00001'#39')')
    Params = <>
    Left = 532
    Top = 216
    object ZQueryWowiosn: TLargeintField
      FieldName = 'wiosn'
    end
    object ZQueryWocrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryWowicode: TStringField
      FieldName = 'wicode'
      Size = 6
    end
    object ZQueryWowototal: TFloatField
      FieldName = 'wototal'
    end
    object ZQueryWowoptotal: TFloatField
      FieldName = 'woptotal'
    end
    object ZQueryWoworealmo: TFloatField
      FieldName = 'worealmo'
    end
    object ZQueryWofrgetmo: TFloatField
      FieldName = 'frgetmo'
    end
    object ZQueryWowocntmo: TFloatField
      FieldName = 'wocntmo'
    end
    object ZQueryWowopsen: TFloatField
      FieldName = 'wopsen'
    end
    object ZQueryWowidate: TStringField
      FieldName = 'widate'
      Size = 10
    end
    object ZQueryWowitime: TStringField
      FieldName = 'witime'
      Size = 8
    end
    object ZQueryWosfname: TStringField
      FieldName = 'sfname'
      Size = 8
    end
    object ZQueryWofritem: TStringField
      FieldName = 'fritem'
      Size = 1
    end
    object ZQueryWocrname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQueryWocrtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQueryWoKind: TStringField
      FieldKind = fkCalculated
      FieldName = 'Kind'
      Size = 8
      Calculated = True
    end
    object ZQueryWocrtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 6
      Lookup = True
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wiosn=wiosn'
      'crcode=crcode'
      'wicode=wicode'
      'wototal=wototal'
      'woptotal=woptotal'
      'worealmo=worealmo'
      'frgetmo=frgetmo'
      'wocntmo=wocntmo'
      'wopsen=wopsen'
      'widate=widate'
      'witime=witime'
      'sfname=sfname'
      'fritem=fritem'
      'crname=crname'
      'crtel=crtel'
      'Kind=Kind'
      'crtelb=crtelb')
    DataSet = ZQueryWo
    Left = 496
    Top = 217
  end
  object ZQuery_tempwio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM tempwio'
      'ORDER BY wicode desc')
    Params = <>
    Left = 496
    Top = 80
    object ZQuery_tempwiowicode: TStringField
      DisplayLabel = '¨~≥Ê∏π'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_tempwiowisno: TStringField
      DisplayLabel = 'Ωs∏π'
      DisplayWidth = 5
      FieldName = 'wisno'
      Required = True
      Size = 5
    end
    object ZQuery_tempwiowiitem: TStringField
      DisplayLabel = '™·¶‚'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQuery_tempwiowiname: TStringField
      DisplayLabel = '¶Á™´¶W∫Ÿ'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQuery_tempwiowiacc: TStringField
      DisplayLabel = '∞t•Û'
      DisplayWidth = 6
      FieldName = 'wiacc'
      Size = 10
    end
    object ZQuery_tempwiowimemo: TStringField
      DisplayLabel = '¶Á™Aµ˘©˙'
      DisplayWidth = 7
      FieldName = 'wimemo'
      Size = 10
    end
    object ZQuery_tempwiowiwamo: TFloatField
      DisplayLabel = '≥Êª˘'
      DisplayWidth = 4
      FieldName = 'wiwamo'
    end
    object ZQuery_tempwiowiquty: TIntegerField
      DisplayLabel = '•Û'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object ZQuery_tempwiowisum: TFloatField
      DisplayLabel = '§p≠p'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object ZQuery_tempwiowiurge: TStringField
      DisplayLabel = '´Ê'
      DisplayWidth = 2
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object ZQuery_tempwiowimdate: TStringField
      DisplayLabel = '¿≥•Ê§È¥¡'
      DisplayWidth = 9
      FieldName = 'wimdate'
      Size = 9
    end
    object ZQuery_tempwiowiplace: TStringField
      DisplayLabel = '¶Ï∏m'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Size = 4
    end
    object ZQuery_tempwiowiwash: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQuery_tempwiowiexkind: TStringField
      DisplayLabel = '•[§u'
      DisplayWidth = 7
      FieldName = 'wiexkind'
      Size = 10
    end
    object ZQuery_tempwiowiexmo: TFloatField
      DisplayLabel = '§u∂O'
      DisplayWidth = 7
      FieldName = 'wiexmo'
    end
    object ZQuery_tempwiowiodate: TStringField
      DisplayLabel = '®˙•Û§È¥¡'
      DisplayWidth = 10
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQuery_tempwiowiotime: TTimeField
      DisplayLabel = '®˙•ÛÆ…∂°'
      DisplayWidth = 8
      FieldName = 'wiotime'
    end
    object ZQuery_tempwiowidate: TStringField
      DisplayLabel = '¶¨•Û§È¥¡'
      DisplayWidth = 10
      FieldName = 'widate'
      Size = 9
    end
    object ZQuery_tempwiowitime: TTimeField
      DisplayLabel = '¶¨•ÛÆ…∂°'
      DisplayWidth = 8
      FieldName = 'witime'
    end
    object ZQuery_tempwiocrcode: TStringField
      FieldName = 'crcode'
      Visible = False
      Size = 5
    end
    object ZQuery_tempwiowiday: TStringField
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object ZQuery_tempwiowimark: TStringField
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object ZQuery_tempwioindate: TStringField
      FieldName = 'indate'
      Visible = False
      Size = 9
    end
    object ZQuery_tempwiomark: TStringField
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object ZQuery_tempwiowisel: TStringField
      FieldName = 'wisel'
      Visible = False
      Size = 1
    end
    object ZQuery_tempwiopps: TIntegerField
      FieldName = 'pps'
      Visible = False
    end
    object ZQuery_tempwiopicture: TStringField
      FieldName = 'picture'
      Visible = False
    end
    object ZQuery_tempwiocrname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Visible = False
      Size = 8
      Lookup = True
    end
    object ZQuery_tempwiocrtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Visible = False
      Size = 10
      Lookup = True
    end
    object ZQuery_tempwiocrmoney: TFloatField
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Visible = False
      Lookup = True
    end
    object ZQuery_tempwiocrtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 6
      Lookup = True
    end
  end
  object ZTableCompy: TZTable
    Connection = ZConnection1
    Active = True
    TableName = 'compy'
    Left = 528
    Top = 152
    object ZTableCompycpname: TStringField
      FieldName = 'cpname'
      Required = True
      Size = 30
    end
    object ZTableCompycpaddr: TStringField
      FieldName = 'cpaddr'
      Size = 40
    end
    object ZTableCompycptel: TStringField
      FieldName = 'cptel'
      Size = 10
    end
    object ZTableCompycppsen: TLargeintField
      FieldName = 'cppsen'
    end
    object ZTableCompycpwino: TLargeintField
      FieldName = 'cpwino'
    end
    object ZTableCompycpwisno: TLargeintField
      FieldName = 'cpwisno'
    end
    object ZTableCompycpwisno_d: TLargeintField
      FieldName = 'cpwisno_d'
    end
    object ZTableCompycpdayn: TLargeintField
      FieldName = 'cpdayn'
    end
    object ZTableCompycpqday: TLargeintField
      FieldName = 'cpqday'
    end
    object ZTableCompyppaa: TStringField
      FieldName = 'ppaa'
      Size = 2
    end
    object ZTableCompyppcc: TStringField
      FieldName = 'ppcc'
      Size = 2
    end
    object ZTableCompygetitem: TStringField
      FieldName = 'getitem'
      Size = 2
    end
    object ZTableCompygetdisplay: TStringField
      FieldName = 'getdisplay'
      Size = 1
    end
    object ZTableCompyExpansion: TStringField
      FieldName = 'Expansion'
      Size = 2
    end
    object ZTableCompyexpmode: TStringField
      FieldName = 'expmode'
      Size = 1
    end
    object ZTableCompyasmb: TStringField
      FieldName = 'asmb'
      Size = 2
    end
    object ZTableCompysp300: TStringField
      FieldName = 'sp300'
      Size = 2
    end
    object ZTableCompyexit: TStringField
      FieldName = 'exit'
      Size = 2
    end
    object ZTableCompyserialno: TStringField
      FieldName = 'serialno'
      Size = 10
    end
  end
  object ZTableCr: TZTable
    Connection = ZConnection1
    TableName = 'cr'
    Left = 528
    Top = 184
    object ZTableCrcrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZTableCrcrdate: TStringField
      FieldName = 'crdate'
      Size = 10
    end
    object ZTableCrcrname: TStringField
      FieldName = 'crname'
      Size = 8
    end
    object ZTableCrcsex: TStringField
      FieldName = 'csex'
      Size = 2
    end
    object ZTableCrcrid: TStringField
      FieldName = 'crid'
      Size = 10
    end
    object ZTableCrcrtel: TStringField
      FieldName = 'crtel'
      Size = 10
    end
    object ZTableCrcrtela: TStringField
      FieldName = 'crtela'
      Size = 10
    end
    object ZTableCrcrtelb: TStringField
      FieldName = 'crtelb'
      Size = 10
    end
    object ZTableCrcradr: TStringField
      FieldName = 'cradr'
      Size = 50
    end
    object ZTableCrcrmoney: TFloatField
      FieldName = 'crmoney'
    end
    object ZTableCrcrpsen: TFloatField
      FieldName = 'crpsen'
    end
    object ZTableCrcrdate2: TStringField
      FieldName = 'crdate2'
      Size = 10
    end
    object ZTableCrcrcnt: TFloatField
      FieldName = 'crcnt'
    end
    object ZTableCrcrvip: TStringField
      FieldName = 'crvip'
      Size = 1
    end
    object ZTableCrcrarea: TStringField
      FieldName = 'crarea'
      Size = 10
    end
    object ZTableCrcurst: TStringField
      FieldName = 'curst'
    end
    object ZTableCrcrs1: TStringField
      FieldName = 'crs1'
      Size = 2
    end
    object ZTableCrcrs2: TStringField
      FieldName = 'crs2'
      Size = 2
    end
    object ZTableCrcrmark: TStringField
      FieldName = 'crmark'
      Size = 1
    end
  end
  object wwDSCr: TwwDataSource
    DataSet = ZTableCr
    Left = 560
    Top = 184
  end
  object wwDSCompy: TwwDataSource
    DataSet = ZTableCompy
    Left = 560
    Top = 152
  end
  object ZQuery_wio: TZReadOnlyQuery
    Connection = ZConnection1
    Params = <>
    Left = 560
    Top = 80
  end
  object ZQuery_stbwio: TZReadOnlyQuery
    Connection = ZConnection1
    Params = <>
    Left = 560
    Top = 112
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 464
    Top = 152
  end
end
