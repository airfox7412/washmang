object CustRepForm: TCustRepForm
  Left = 205
  Top = 131
  Width = 800
  Height = 500
  Caption = 'CustRepForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 784
    Height = 351
    Align = alClient
    Color = 12845056
    TabOrder = 0
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 782
      Height = 349
      Selected.Strings = (
        'wicode'#9'6'#9'¨~≥Ê∏π'
        'wisno'#9'4'#9'Ωs∏π'
        'wiitem'#9'6'#9'™·¶‚'
        'winame'#9'8'#9'¶Á™´¶W∫Ÿ'
        'wiacc'#9'6'#9'∞t•Û'
        'wimemo'#9'7'#9'¶Á™Aµ˘©˙'
        'wiwamo'#9'4'#9'≥Êª˘'
        'wiquty'#9'3'#9'•Û'
        'wisum'#9'4'#9'§p≠p'
        'wiurge'#9'2'#9'´Ê'
        'wimdate'#9'9'#9'¿≥•Ê§È¥¡'
        'wiplace'#9'4'#9'¶Ï∏m'
        'wiwash'#9'4'#9'¨~™k'
        'wiexkind'#9'7'#9'•[§u'
        'wiexmo'#9'7'#9'§u∂O'
        'wiodate'#9'10'#9'®˙•Û§È¥¡'
        'wiotime'#9'10'#9'®˙•ÛÆ…∂°'
        'widate'#9'10'#9'¶¨•Û§È¥¡')
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 12845056
      DataSource = wwDSWio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -19
      TitleFont.Name = '≤”©˙≈È'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      PaintOptions.ActiveRecordColor = clHighlight
    end
    object PanelDateSet: TPanel
      Left = 312
      Top = 88
      Width = 244
      Height = 134
      Color = clHighlight
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 48
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
        Top = 88
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
        Left = 64
        Top = 4
        Width = 116
        Height = 27
        Caption = '≥]©w§È¥¡'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -27
        Font.Name = 'º–∑¢≈È'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MaskEditDate1: TMaskEdit
        Left = 121
        Top = 44
        Width = 111
        Height = 37
        EditMask = '999/99/99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 0
        Text = '   /  /  '
        OnKeyDown = MaskEditDate1KeyDown
      end
      object MaskEditDate2: TMaskEdit
        Left = 121
        Top = 84
        Width = 111
        Height = 37
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
        OnKeyDown = MaskEditDate2KeyDown
      end
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 408
    Width = 784
    Height = 54
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
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF2
      RzToolbarButtonF3
      RzToolbarButtonF5
      RzToolbarButtonF7
      RzToolbarButtonF8
      RzToolbarButtonF9
      RzToolbarButtonF10
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF1
      Caption = 'F1.≥Ê§@´»§·'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF2: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF2
      Caption = 'F2.•˛≥°´»§·'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 4
      Top = 28
      Width = 90
      Height = 22
      Action = ActionESC
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF8: TRzToolbarButton
      Left = 494
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF8
      Caption = 'F8.§Îµ≤≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 584
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF9
      Caption = 'F9.§uºt≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF7: TRzToolbarButton
      Left = 364
      Top = 3
      Width = 130
      Height = 22
      Action = ActionF7
      Caption = 'F7.§uºt¨~≥Ê∏π≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 184
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF3
      Caption = 'F3.≥]©w§È¥¡'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF10: TRzToolbarButton
      Left = 674
      Top = 3
      Width = 100
      Height = 22
      Action = ActionF10
      Caption = 'F10.∫ﬁ≤z≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF5: TRzToolbarButton
      Left = 274
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF5
      Caption = 'F5.•ÊØZ≥¯™Ì'
      HotNumGlyphs = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 57
    Align = alTop
    Color = clHighlight
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 88
      Height = 21
      Caption = '´»§·Ωs∏π'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
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
      Font.Name = 'º–∑¢≈È'
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
      Font.Name = 'º–∑¢≈È'
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
      Font.Name = 'º–∑¢≈È'
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
      Font.Name = 'º–∑¢≈È'
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
      DataSource = WDM.DS_cr
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
      DataSource = WDM.DS_cr
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
      DataSource = WDM.DS_cr
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 400
      Top = 30
      Width = 44
      Height = 21
      Caption = '¶aß}'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 448
      Top = 32
      Width = 331
      Height = 20
      Color = clNavy
      DataField = 'cradr'
      DataSource = WDM.DS_cr
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 699
      Top = 6
      Width = 79
      Height = 21
      Alignment = taRightJustify
      Color = clGreen
      DataField = 'crmoney'
      DataSource = WDM.DS_cr
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 56
    object ActionF1: TAction
      Caption = 'F1.≥Ê§@´»§·'
      ShortCut = 112
      OnExecute = ActionF1Execute
    end
    object ActionF2: TAction
      Caption = 'F2.•˛≥°´»§·'
      ShortCut = 113
      OnExecute = ActionF2Execute
    end
    object ActionF3: TAction
      Caption = 'F3.≥]©w§È¥¡'
      OnExecute = ActionF3Execute
    end
    object ActionF5: TAction
      Caption = 'F5.•ÊØZ≥¯™Ì'
      ShortCut = 116
    end
    object ActionF7: TAction
      Caption = 'F7.§uºt¨~≥Ê∏π≥¯™Ì'
      ShortCut = 118
    end
    object ActionF8: TAction
      Caption = 'F8.§Îµ≤≥¯™Ì'
      ShortCut = 119
    end
    object ActionF9: TAction
      Caption = 'F9.§uºt≥¯™Ì'
      ShortCut = 120
      OnExecute = ActionF9Execute
    end
    object ActionF10: TAction
      Caption = 'F10.∫ﬁ≤z≥¯™Ì'
      ShortCut = 121
    end
    object ActionESC: TAction
      Caption = 'Esc.¬˜∂}'
      ShortCut = 27
      OnExecute = ActionESCExecute
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washhouse'
    User = 'root'
    Catalog = 'washhouse'
    DesignConnection = True
    SQLHourGlass = True
    Left = 464
    Top = 56
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
    ReportOptions.LastChange = 40336.6754507292
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      PaperHeight = 297
      PaperSize = 127
      LeftMargin = 2
      TopMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      object ReportTitle1: TfrxReportTitle
        Height = 79.37013
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
          Left = 15.11812
          Top = 26.45671
          Width = 755.906
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÂ∑•Âª†Êó•Â†±Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 18.89765
          Top = 56.69295
          Width = 102.04731
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Ë£ΩË°®Êó•Êúü:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 120.94496
          Top = 57.47248
          Width = 211.65368
          Height = 22.67718
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.67718
        Top = 120.94496
        Width = 786.14224
        object Memo7: TfrxMemoView
          Left = 18.89765
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 71.81107
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 128.50402
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥ÁêÜËôü')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 196.53556
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
          Left = 253.22851
          Width = 60.47248
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
        object Memo17: TfrxMemoView
          Left = 321.26005
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈÖç‰ª∂')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 374.17347
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
          Left = 729.44929
          Width = 41.57483
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
          Left = 684.09493
          Width = 45.35436
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
          Left = 15.11812
          Top = 11.33859
          Width = 763.46506
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
        object Memo29: TfrxMemoView
          Left = 411.96877
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë®≠ÂÆöÈ°ç')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 472.44125
          Width = 30.23624
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
          Left = 517.79561
          Width = 30.23624
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
        object Memo32: TfrxMemoView
          Left = 559.37044
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÊÄ•')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 604.7248
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®ªÊòé')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.11811024
        Top = 204.09462
        Width = 786.14224
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.8976378
        Top = 241.88992
        Width = 786.14224
        Condition = 'frxDBDataset1."wicode"'
        KeepChild = True
        object frxDBDataset1crname: TfrxMemoView
          Left = 71.81107
          Width = 49.13389
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crname"]')
          ParentFont = False
        end
        object frxDBDataset1wicode: TfrxMemoView
          Left = 18.89765
          Width = 49.13389
          Height = 18.89765
          DataField = 'wicode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wicode"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 128.50402
          Width = 646.29963
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
      end
      object DetailData1: TfrxDetailData
        Height = 15.11811024
        Top = 283.46475
        Width = 786.14224
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 128.50402
          Width = 49.13389
          Height = 18.89765
          DataField = 'wisno'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wisno"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 196.53556
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiitem"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 253.22851
          Width = 64.25201
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."winame"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 321.26005
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiacc'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiacc"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 374.17347
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiwash'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiwash"]')
          ParentFont = False
        end
        object frxDBDataset1wiwamo: TfrxMemoView
          Left = 411.96877
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiwamo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wiwamo"]')
          ParentFont = False
        end
        object frxDBDataset1wiquty: TfrxMemoView
          Left = 472.44125
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiquty'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiquty"]')
          ParentFont = False
        end
        object frxDBDataset1wisum: TfrxMemoView
          Left = 521.57514
          Width = 30.23624
          Height = 18.89765
          DataField = 'wisum'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wisum"]')
          ParentFont = False
        end
        object frxDBDataset1wiurge: TfrxMemoView
          Left = 566.9295
          Width = 15.11812
          Height = 18.89765
          DataField = 'wiurge'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiurge"]')
          ParentFont = False
        end
        object frxDBDataset1wimemo: TfrxMemoView
          Left = 604.7248
          Width = 113.3859
          Height = 18.89765
          DataField = 'wimemo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wimemo"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 89.81107
        Top = 321.26005
        Width = 786.14224
        object SysMemo3: TfrxSysMemoView
          Left = 226.7718
          Top = 18
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."wiwamo">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 226.7718
          Top = 36.89765
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."wisum">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 226.7718
          Top = 55.7953
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."wiquty">,DetailData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 128.50402
          Top = 18
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®≠ÂÆöÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 128.50402
          Top = 36.89765
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶ÈöõÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 128.50402
          Top = 55.7953
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©‰ª∂Êï∏Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 321.26005
          Top = 18
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
        object Memo24: TfrxMemoView
          Left = 321.26005
          Top = 36.89765
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
        object Memo25: TfrxMemoView
          Left = 321.26005
          Top = 55.7953
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
          Left = 15.11812
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
          Left = 15.11812
          Top = 68.03154
          Width = 763.46506
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
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wisno=wisno'
      'wiitem=wiitem'
      'winame=winame'
      'wiwash=wiwash'
      'wiwamo=wiwamo'
      'wiurge=wiurge'
      'wimdate=wimdate'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'pps=pps'
      'picture=picture'
      'wiplace=wiplace'
      'wiotime=wiotime'
      'wicode=wicode'
      'crcode=crcode'
      'widay=widay'
      'wiodate=wiodate'
      'widate=widate'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'crname=crname'
      'crtel=crtel'
      'cradr=cradr'
      'crmoney=crmoney')
    DataSet = ZQueryWio
    Left = 496
    Top = 120
  end
  object frxDBDS_cr: TfrxDBDataset
    UserName = 'frxDBDS_cr'
    CloseDataSource = False
    DataSet = WDM.ZTableCust
    Left = 496
    Top = 152
  end
  object frxDBDS_Compy: TfrxDBDataset
    UserName = 'frxDBDS_Compy'
    CloseDataSource = False
    DataSet = WDM.ZTableCompy
    Left = 496
    Top = 88
  end
  object ZQueryWio: TZQuery
    Connection = WDM.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM wio'
      'WHERE widate>='#39'099/05/23'#39' and widate<='#39'099/05/23'#39' '
      'ORDER BY crcode')
    Params = <>
    Left = 532
    Top = 120
    object StringField12: TStringField
      DisplayLabel = '¨~≥Ê∏π'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object StringField1: TStringField
      DisplayLabel = 'Ωs∏π'
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 4
    end
    object StringField2: TStringField
      DisplayLabel = '™·¶‚'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object StringField3: TStringField
      DisplayLabel = '¶Á™´¶W∫Ÿ'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object StringField7: TStringField
      DisplayLabel = '∞t•Û'
      DisplayWidth = 6
      FieldName = 'wiacc'
      Size = 10
    end
    object StringField8: TStringField
      DisplayLabel = '¶Á™Aµ˘©˙'
      DisplayWidth = 7
      FieldName = 'wimemo'
      Size = 10
    end
    object FloatField1: TFloatField
      DisplayLabel = '≥Êª˘'
      DisplayWidth = 4
      FieldName = 'wiwamo'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = '•Û'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object FloatField2: TFloatField
      DisplayLabel = '§p≠p'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object StringField5: TStringField
      DisplayLabel = '´Ê'
      DisplayWidth = 2
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object StringField6: TStringField
      DisplayLabel = '¿≥•Ê§È¥¡'
      DisplayWidth = 9
      FieldName = 'wimdate'
      Size = 10
    end
    object StringField11: TStringField
      DisplayLabel = '¶Ï∏m'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Size = 4
    end
    object StringField4: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object StringField9: TStringField
      DisplayLabel = '•[§u'
      DisplayWidth = 7
      FieldName = 'wiexkind'
      Size = 10
    end
    object FloatField3: TFloatField
      DisplayLabel = '§u∂O'
      DisplayWidth = 7
      FieldName = 'wiexmo'
    end
    object StringField15: TStringField
      DisplayLabel = '®˙•Û§È¥¡'
      DisplayWidth = 10
      FieldName = 'wiodate'
      Size = 10
    end
    object TimeField1: TTimeField
      DisplayLabel = '®˙•ÛÆ…∂°'
      DisplayWidth = 10
      FieldName = 'wiotime'
    end
    object StringField16: TStringField
      DisplayLabel = '¶¨•Û§È¥¡'
      DisplayWidth = 10
      FieldName = 'widate'
      Size = 10
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'ßÈ¶©'
      DisplayWidth = 4
      FieldName = 'pps'
      Visible = False
    end
    object StringField10: TStringField
      DisplayLabel = '∑”§˘'
      DisplayWidth = 11
      FieldName = 'picture'
      Visible = False
    end
    object StringField20: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZTableCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Visible = False
      Size = 10
      Lookup = True
    end
    object StringField21: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZTableCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Visible = False
      Size = 10
      Lookup = True
    end
    object StringField22: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'cradr'
      LookupDataSet = WDM.ZTableCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'cradr'
      KeyFields = 'crcode'
      Visible = False
      Size = 50
      Lookup = True
    end
    object ZQueryWiocrmoney: TFloatField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Visible = False
      Lookup = True
    end
    object StringField13: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Visible = False
      Size = 5
    end
    object StringField14: TStringField
      DisplayWidth = 2
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object StringField17: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object StringField18: TStringField
      DisplayWidth = 10
      FieldName = 'indate'
      Visible = False
      Size = 10
    end
    object StringField19: TStringField
      DisplayWidth = 1
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
  end
  object wwDSWio: TwwDataSource
    DataSet = ZQueryWio
    Left = 568
    Top = 121
  end
  object frxReportF21: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 40337.6393208681
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      PaperWidth = 216
      PaperHeight = 278
      PaperSize = 127
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Columns = 2
      ColumnWidth = 90
      ColumnPositions.Strings = (
        '0'
        '104')
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        Height = 98.26771654
        Top = 18.89765
        Width = 340.1577
        Columns = 1
        ColumnWidth = 359.055118110236
        ColumnGap = 37.7952755905512
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1crtel: TfrxMemoView
          Left = 18.89765
          Top = 68.03154
          Width = 49.13389
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crcode"]')
          ParentFont = False
        end
        object frxDBDataset1winame: TfrxMemoView
          Left = 190.62214
          Top = 68.03154
          Width = 60.47248
          Height = 18.89765
          DataField = 'wicode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wicode"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 68.69295
          Top = 68.03154
          Width = 37.7953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-Tel:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 251.7718
          Top = 68.03154
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object frxDBDataset1wiitem: TfrxMemoView
          Left = 259.99227
          Top = 68.03154
          Width = 79.37013
          Height = 18.89765
          DataField = 'wiodate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiodate"]')
          ParentFont = False
        end
        object frxDBDataset1crname: TfrxMemoView
          Left = 18.89765
          Top = 18.89765
          Width = 188.9765
          Height = 49.13389
          DataField = 'crname'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = '@º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crname"]')
          ParentFont = False
        end
        object frxDBDataset1wisno: TfrxMemoView
          Left = 219.21274
          Top = 18.89765
          Width = 120.94496
          Height = 49.13389
          DataField = 'wisno'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wisno"]')
          ParentFont = False
        end
        object frxDBDataset1crtel1: TfrxMemoView
          Left = 105.82684
          Top = 68.03154
          Width = 79.37013
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crtel"]')
          ParentFont = False
        end
      end
    end
  end
  object frxReportF22: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 40337.6519039583
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      PaperWidth = 216
      PaperHeight = 278
      PaperSize = 127
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      Columns = 2
      ColumnWidth = 107
      ColumnPositions.Strings = (
        '0'
        '107')
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      object MasterData1: TfrxMasterData
        Height = 98.26771654
        Top = 18.89765
        Width = 404.40971
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1crtel: TfrxMemoView
          Left = 18.89765
          Width = 75.5906
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crtel"]')
          ParentFont = False
        end
        object frxDBDataset1winame: TfrxMemoView
          Left = 190.62214
          Width = 64.25201
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."winame"]')
          ParentFont = False
        end
        object frxDBDataset1wiodate: TfrxMemoView
          Left = 103.70872
          Width = 75.5906
          Height = 18.89765
          DataField = 'wiodate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiodate"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 95.14966
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 180.06308
          Top = 0.22047
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 255.43321
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object frxDBDataset1wiitem: TfrxMemoView
          Left = 267.43321
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiitem"]')
          ParentFont = False
        end
        object frxDBDataset1crname: TfrxMemoView
          Left = 18.89765
          Top = 18.89765
          Width = 188.9765
          Height = 49.13389
          DataField = 'crname'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crname"]')
          ParentFont = False
        end
        object frxDBDataset1wisno: TfrxMemoView
          Left = 207.87415
          Top = 18.89765
          Width = 120.94496
          Height = 49.13389
          DataField = 'wisno'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wisno"]')
          ParentFont = False
        end
      end
    end
  end
end
