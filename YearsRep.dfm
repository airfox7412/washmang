object YearRepForm: TYearRepForm
  Left = 318
  Top = 201
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '¶~´◊≤Œ≠pß@∑~'
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
  object PanelProcess: TPanel
    Left = 456
    Top = 152
    Width = 247
    Height = 92
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label7: TLabel
      Left = 18
      Top = 46
      Width = 210
      Height = 27
      Caption = '≤Œ≠p§§Ω–µy≠‘...'
    end
    object Label13: TLabel
      Left = 5
      Top = 5
      Width = 237
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '≥B≤z∞TÆß'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object RzPanelBrowse: TRzPanel
    Left = 0
    Top = 42
    Width = 784
    Height = 391
    Align = alClient
    Color = clHighlight
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 2
      Top = 2
      Width = 253
      Height = 387
      Selected.Strings = (
        'month'#9'2'#9'§Î'#9#9
        'cashtotal'#9'8'#9'≤{™˜¡`√B'#9#9
        'washtotal'#9'8'#9'¶Á™´πÍ√B'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      OnRowChanged = wwDBGrid1RowChanged
      FixedCols = 0
      ShowHorzScrollBar = False
      ShowVertScrollBar = False
      Align = alLeft
      Color = 12845056
      DataSource = wwDSYears
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -21
      TitleFont.Name = '≤”©˙≈È'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      IndicatorIconColor = clYellow
      OnUpdateFooter = wwDBGrid1UpdateFooter
      FooterColor = clNavy
      FooterCellColor = 12845056
    end
    object wwDBGrid2: TwwDBGrid
      Left = 255
      Top = 2
      Width = 527
      Height = 387
      Selected.Strings = (
        'wiweek'#9'2'#9'¨P'#9'F'#9
        'widay'#9'2'#9'§È'#9'F'#9
        'm1'#9'6'#9'VIP√B'#9'F'#9
        'm2'#9'6'#9'≤{™˜√B'#9'F'#9
        'm5'#9'4'#9'≥]©w√B'#9'F'#9
        'm6'#9'6'#9'πÍª⁄√B'#9'F'#9
        'm8'#9'4'#9'•Ûº∆'#9'F'#9
        'm4'#9'6'#9'®˙•Û√B'#9'F'#9
        'm3'#9'6'#9'≤{™˜ßÈ'#9'F'#9
        'm7'#9'4'#9'ßÈ¶©'#9'F'#9
        'm9'#9'4'#9'•[§u'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 12845056
      DataSource = wwDSMonthly
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -19
      TitleFont.Name = '≤”©˙≈È'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorIconColor = clYellow
    end
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
    Font.Height = -12
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF9
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 100
      Height = 22
      Action = ActionF1
      Caption = 'F1.≥]©w¶~•˜'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 194
      Top = 3
      Width = 90
      Height = 22
      Action = ActionESC
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 104
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF9
      Caption = 'F9.¶C¶L'
      HotNumGlyphs = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 42
    Align = alTop
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 64
      Top = 11
      Width = 44
      Height = 21
      Caption = '¶~´◊'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object DisplayMoney: TLabel
      Left = 128
      Top = 11
      Width = 11
      Height = 21
    end
    object EditYear: TEdit
      Left = 16
      Top = 8
      Width = 41
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '999'
      OnKeyDown = EditYearKeyDown
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 56
    object ActionF1: TAction
      Caption = 'F1.≥]©w¶~•˜'
      ShortCut = 112
      OnExecute = ActionF1Execute
    end
    object ActionF9: TAction
      Caption = 'F9.¶C¶L'
      ShortCut = 120
      OnExecute = ActionF9Execute
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
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    DesignConnection = True
    SQLHourGlass = True
    Left = 464
    Top = 56
  end
  object wwDSYears: TwwDataSource
    DataSet = ZQuery_Years
    Left = 128
    Top = 65
  end
  object ZQuery_Monthly: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQuery_MonthlyCalcFields
    SQL.Strings = (
      'select * from monthly')
    Params = <>
    Left = 464
    Top = 90
    object ZQuery_Monthlywiweek: TStringField
      DisplayLabel = '¨P'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'wiweek'
      Size = 2
      Calculated = True
    end
    object ZQuery_Monthlywiday: TStringField
      DisplayLabel = '§È'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'widay'
      Size = 2
      Calculated = True
    end
    object ZQuery_Monthlym1: TFloatField
      DisplayLabel = 'VIP√B'
      DisplayWidth = 6
      FieldName = 'm1'
    end
    object ZQuery_Monthlym2: TFloatField
      DisplayLabel = '≤{™˜√B'
      DisplayWidth = 6
      FieldName = 'm2'
    end
    object ZQuery_Monthlym5: TFloatField
      DisplayLabel = '≥]©w√B'
      DisplayWidth = 4
      FieldName = 'm5'
    end
    object ZQuery_Monthlym6: TFloatField
      DisplayLabel = 'πÍª⁄√B'
      DisplayWidth = 6
      FieldName = 'm6'
    end
    object ZQuery_Monthlym8: TIntegerField
      DisplayLabel = '•Ûº∆'
      DisplayWidth = 4
      FieldName = 'm8'
    end
    object ZQuery_Monthlym4: TFloatField
      DisplayLabel = '®˙•Û√B'
      DisplayWidth = 6
      FieldName = 'm4'
    end
    object ZQuery_Monthlym3: TFloatField
      DisplayLabel = '≤{™˜ßÈ'
      DisplayWidth = 6
      FieldName = 'm3'
    end
    object ZQuery_Monthlym7: TIntegerField
      DisplayLabel = 'ßÈ¶©'
      DisplayWidth = 4
      FieldName = 'm7'
    end
    object ZQuery_Monthlym9: TIntegerField
      DisplayLabel = '•[§u'
      DisplayWidth = 4
      FieldName = 'm9'
    end
    object ZQuery_Monthlym10: TIntegerField
      DisplayLabel = 'æ„øS'
      DisplayWidth = 4
      FieldName = 'm10'
      Visible = False
    end
    object ZQuery_Monthlym11: TFloatField
      DisplayLabel = '•[§u'
      DisplayWidth = 4
      FieldName = 'm11'
      Visible = False
    end
    object ZQuery_Monthlywidate: TStringField
      DisplayLabel = '§È¥¡'
      DisplayWidth = 9
      FieldName = 'widate'
      Visible = False
      Size = 9
    end
  end
  object wwDSMonthly: TwwDataSource
    DataSet = ZQuery_Monthly
    Left = 496
    Top = 90
  end
  object ZQuery_Years: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from years'
      'order by month')
    Params = <>
    Left = 96
    Top = 66
    object ZQuery_Yearsmonth: TIntegerField
      DisplayLabel = '§Î'
      DisplayWidth = 2
      FieldName = 'month'
    end
    object ZQuery_Yearswashtotal: TFloatField
      DisplayLabel = '¶Á™´πÍª⁄√B'
      DisplayWidth = 10
      FieldName = 'washtotal'
    end
    object ZQuery_Yearscashtotal: TFloatField
      DisplayLabel = '≤{™˜¡`√B'
      DisplayWidth = 8
      FieldName = 'cashtotal'
    end
  end
  object ZQuery_wo: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 464
    Top = 120
  end
  object ZQuery_wio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM Wio')
    Params = <>
    Left = 496
    Top = 120
  end
  object frxReportF92: TfrxReport
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
      '      '
      'end.')
    Left = 432
    Top = 152
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
        DataSet = frxDBDS_Wo
        DataSetName = 'frxDBDS_Wo'
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
      PaperSize = 9
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
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
          Width = 238.11029236
          Height = 18.89765
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
            '‚òÜ‚òÜ‚òÜÁèæÈáëÊî∂Ê¨æÊòéÁ¥∞Â†±Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 15.11812
          Top = 56.69295
          Width = 64.25201
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë£ΩË°®Êó•Êúü:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 86.92919
          Top = 58.69295
          Width = 177.63791
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.47248
        Top = 120.94496
        Width = 786.14224
        object Memo7: TfrxMemoView
          Left = 3.77953
          Top = 26.45671
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Ëôü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 60.47248
          Top = 26.45671
          Width = 64.25201
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
          Left = 351.49629
          Top = 26.45671
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
            'Êñ∞ÈáëÈ°ç')
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
          Left = 3.77953
          Top = 11.33859
          Width = 774.80365
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
        object Memo23: TfrxMemoView
          Left = 3.77953
          Top = 41.57483
          Width = 774.80365
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
        object Memo24: TfrxMemoView
          Left = 128.50402
          Top = 26.45671
          Width = 71.81107
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
        object Memo8: TfrxMemoView
          Left = 283.46475
          Top = 26.45671
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
            'ÂéüÈáëÈ°ç')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 699.21305
          Top = 26.45671
          Width = 79.37013
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
        object Memo10: TfrxMemoView
          Left = 419.52783
          Top = 26.45671
          Width = 64.25197339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂØ¶Êî∂ÈáëÈ°ç')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 207.87415
          Top = 26.45671
          Width = 64.25201
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
        object Memo12: TfrxMemoView
          Left = 495.11843
          Top = 26.45671
          Width = 64.25197339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÊäòËÆìÈáëÈ°ç')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 627.40198
          Top = 26.45671
          Width = 64.25197339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æ‰∫∫Âì°')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976378
        Top = 264.5671
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_Wo
        DataSetName = 'frxDBDS_Wo'
        RowCount = 0
        object frxDBDS_Wocrname: TfrxMemoView
          Left = 60.47248
          Width = 64.25201
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."crname"]')
          ParentFont = False
        end
        object frxDBDS_Wocrcode: TfrxMemoView
          Left = 3.77953
          Width = 49.13389
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."crcode"]')
          ParentFont = False
        end
        object frxDBDS_Wowidate: TfrxMemoView
          Left = 128.50402
          Width = 71.81107
          Height = 18.89765
          DataField = 'widate'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."widate"]')
          ParentFont = False
        end
        object frxDBDS_Wowototal: TfrxMemoView
          Left = 283.46475
          Width = 56.69295
          Height = 18.89765
          DataField = 'woptotal'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."woptotal"]')
          ParentFont = False
        end
        object frxDBDS_Wowoptotal: TfrxMemoView
          Left = 351.49629
          Width = 56.69295
          Height = 18.89765
          DataField = 'wototal'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."wototal"]')
          ParentFont = False
        end
        object frxDBDS_Woworealmo: TfrxMemoView
          Left = 419.52783
          Width = 64.25201
          Height = 18.89765
          DataField = 'worealmo'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."worealmo"]')
          ParentFont = False
        end
        object frxDBDS_WoKind: TfrxMemoView
          Left = 699.21305
          Width = 79.37013
          Height = 18.89765
          DataField = 'Kind'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."Kind"]')
          ParentFont = False
        end
        object frxDBDS_Wowitime: TfrxMemoView
          Left = 207.87415
          Width = 64.25201
          Height = 18.89765
          DataField = 'witime'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."witime"]')
          ParentFont = False
        end
        object frxDBDS_Wowocntmo: TfrxMemoView
          Left = 495.11843
          Width = 64.25201
          Height = 18.89765
          DataField = 'wocntmo'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."wocntmo"]')
          ParentFont = False
        end
        object frxDBDS_Wosfname: TfrxMemoView
          Left = 627.40198
          Width = 64.25201
          Height = 18.89765
          DataField = 'sfname'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."sfname"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 1.22E-5
        Top = 241.88992
        Width = 786.14224
        Condition = 'frxDBDS_Wo."widate"'
        KeepChild = True
      end
      object Footer1: TfrxFooter
        Height = 86.92919
        Top = 347.71676
        Width = 786.14224
        object Memo27: TfrxMemoView
          Left = 3.77953
          Top = 46.91342
          Width = 774.80365
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
        object SysMemo3: TfrxSysMemoView
          Left = 495.11843
          Top = 30.23624
          Width = 64.25201
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Wo."wocntmo">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 419.52783
          Top = 30.23624
          Width = 64.25201
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Wo."worealmo">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 419.52783
          Width = 64.25197339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂØ¶Êî∂Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 495.11843
          Width = 64.25197339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÊäòËÆìÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.77953
          Top = 15.11812
          Width = 774.80365
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
      object GroupFooter1: TfrxGroupFooter
        Height = 18.89765
        Top = 306.14193
        Width = 786.14224
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo18: TfrxMemoView
          Left = 3.77953
          Top = 1
          Width = 774.80365
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
  object ZQueryF9: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQueryF9CalcFields
    SQL.Strings = (
      'SELECT * FROM wo')
    Params = <>
    Left = 464
    Top = 154
    object ZQueryF9wiosn: TLargeintField
      FieldName = 'wiosn'
    end
    object ZQueryF9crcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryF9wicode: TStringField
      FieldName = 'wicode'
      Size = 6
    end
    object ZQueryF9wisno: TStringField
      FieldName = 'wisno'
      Size = 4
    end
    object ZQueryF9wototal: TFloatField
      FieldName = 'wototal'
    end
    object ZQueryF9woptotal: TFloatField
      FieldName = 'woptotal'
    end
    object ZQueryF9worealmo: TFloatField
      FieldName = 'worealmo'
    end
    object ZQueryF9frgetmo: TFloatField
      FieldName = 'frgetmo'
    end
    object ZQueryF9wocntmo: TFloatField
      FieldName = 'wocntmo'
    end
    object ZQueryF9wopsen: TFloatField
      FieldName = 'wopsen'
    end
    object ZQueryF9widate: TStringField
      FieldName = 'widate'
      Size = 10
    end
    object ZQueryF9witime: TStringField
      FieldName = 'witime'
      Size = 8
    end
    object ZQueryF9sfname: TStringField
      FieldName = 'sfname'
      Size = 8
    end
    object ZQueryF9fritem: TStringField
      FieldName = 'fritem'
      Size = 1
    end
    object ZQueryF9crname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQueryF9Kind: TStringField
      FieldKind = fkCalculated
      FieldName = 'Kind'
      Size = 8
      Calculated = True
    end
  end
  object frxDBDS_Wo: TfrxDBDataset
    UserName = 'frxDBDS_Wo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wiosn=wiosn'
      'crcode=crcode'
      'wicode=wicode'
      'wisno=wisno'
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
      'Kind=Kind')
    DataSet = ZQueryF9
    Left = 432
    Top = 186
  end
  object frxDBDS_Compy: TfrxDBDataset
    UserName = 'frxDBDS_Compy'
    CloseDataSource = False
    DataSet = WDM.ZTableCompy
    Left = 464
    Top = 184
  end
  object frxDBDS_cr: TfrxDBDataset
    UserName = 'frxDBDS_cr'
    CloseDataSource = False
    DataSet = WDM.ZQueryCust
    Left = 496
    Top = 184
  end
  object frxReportF91: TfrxReport
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
      '      '
      'end.')
    Left = 96
    Top = 96
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
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
      PaperSize = 9
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
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
          Width = 238.11029236
          Height = 18.89765
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
            '‚òÜ‚òÜ‚òÜÂπ¥Â∫¶Êúà‰ªΩÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 15.11812
          Top = 56.69295
          Width = 64.25201
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë£ΩË°®Êó•Êúü:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 86.92919
          Top = 58.69295
          Width = 177.63791
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976378
        Top = 249.44898
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1month: TfrxMemoView
          Left = 3.77953
          Width = 49.13389
          Height = 18.89765
          DataField = 'month'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."month"]')
          ParentFont = False
        end
        object frxDBDataset1washtotal: TfrxMemoView
          Left = 158.74026
          Width = 75.5906
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."washtotal"]')
          ParentFont = False
        end
        object frxDBDataset1cashtotal: TfrxMemoView
          Left = 68.03154
          Width = 75.5906
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."cashtotal"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 56.69295
        Top = 291.02381
        Width = 786.14224
        object Memo23: TfrxMemoView
          Left = 3.77953
          Top = 37.7953
          Width = 774.80365
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
        object SysMemo3: TfrxSysMemoView
          Left = 158.74026
          Top = 14.23624
          Width = 75.5906
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."washtotal">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 68.03154
          Top = 14.23624
          Width = 75.5906
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."cashtotal">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.77953
          Top = 15.11812
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂêàË®à')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.77953
          Top = 2.89765
          Width = 774.80365
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
      object Header1: TfrxHeader
        Height = 66.92919
        Top = 158.74026
        Width = 786.14224
        object Memo7: TfrxMemoView
          Left = 3.77953
          Top = 30.23624
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Êúà‰ªΩ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 68.03154
          Top = 30.23624
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÁèæÈáëÁ∏ΩÈ°ç')
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
          Left = 3.77953
          Top = 11.33859
          Width = 774.80365
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
        object Memo24: TfrxMemoView
          Left = 158.74026
          Top = 30.23624
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶È°ç')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.77953
          Top = 48.03154
          Width = 774.80365
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
      'month=month'
      'washtotal=washtotal'
      'cashtotal=cashtotal')
    DataSet = ZQueryF91
    Left = 160
    Top = 96
  end
  object ZQueryF91: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from years'
      'ORDER BY month')
    Params = <>
    Left = 128
    Top = 96
    object IntegerField1: TIntegerField
      DisplayLabel = '§Î'
      DisplayWidth = 2
      FieldName = 'month'
    end
    object FloatField1: TFloatField
      DisplayLabel = '¶Á™´πÍª⁄√B'
      DisplayWidth = 10
      FieldName = 'washtotal'
    end
    object FloatField2: TFloatField
      DisplayLabel = '≤{™˜¡`√B'
      DisplayWidth = 8
      FieldName = 'cashtotal'
    end
  end
  object ZQuery_stbwio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM stbwio')
    Params = <>
    Left = 496
    Top = 248
  end
end
