object CustRankForm: TCustRankForm
  Left = 206
  Top = 133
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '´»§·±∆¶Ê≤Œ≠p'
  ClientHeight = 509
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 826
    Height = 480
    Selected.Strings = (
      'crcode'#9'5'#9'´»Ωs'#9'F'#9
      'crname'#9'8'#9'©m¶W'#9'F'#9
      'aq1'#9'8'#9'§W§Î™˜√B'#9'F'#9
      'aq2'#9'8'#9'•ª§Î™˜√B'#9'F'#9
      'aq3'#9'8'#9'•h¶~™˜√B'#9'F'#9
      'aq4'#9'8'#9'§µ¶~™˜√B'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clNavy
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 12845056
    DataSource = wwDataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    KeyOptions = [dgAllowDelete]
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -24
    TitleFont.Name = '≤”©˙≈È'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    PaintOptions.ActiveRecordColor = clHighlight
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 480
    Width = 826
    Height = 29
    Align = alBottom
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdBottom]
    BorderWidth = 0
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF2
      RzToolbarButtonF3
      RzToolbarButtonF9
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F1
      Caption = 'F1.≤Œ≠p§Î•˜'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 394
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 304
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F9
      Caption = 'F9.¶C¶L'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF2: TRzToolbarButton
      Left = 104
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F2
      Caption = 'F2.•ª§Î±∆¶Ê'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 204
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F3
      Caption = 'F3.•ª¶~±∆¶Ê'
      HotNumGlyphs = 0
    end
  end
  object PanelMonth: TPanel
    Left = 296
    Top = 168
    Width = 201
    Height = 105
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 191
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '≤Œ≠p§Î•˜'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -32
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 58
      Width = 55
      Height = 21
      Caption = '¶~/§Î'
    end
    object MaskEditMonth: TMaskEdit
      Left = 83
      Top = 50
      Width = 86
      Height = 37
      AutoSelect = False
      EditMask = '999/99;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      Text = '   /  '
      OnKeyDown = MaskEditMonthKeyDown
    end
  end
  object PanelProcess: TPanel
    Left = 240
    Top = 288
    Width = 417
    Height = 73
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 5
      Top = 5
      Width = 407
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '  ≤Œ≠p§§Ω–µy≠‘...'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RzProgressBar1: TRzProgressBar
      Left = 5
      Top = 37
      Width = 407
      Height = 31
      Align = alClient
      BarStyle = bsGradient
      BorderWidth = 0
      InteriorOffset = 0
      PartsComplete = 0
      Percent = 50
      TotalParts = 0
    end
  end
  object PanelF9: TPanel
    Left = 432
    Top = 160
    Width = 209
    Height = 105
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label4: TLabel
      Left = 5
      Top = 5
      Width = 199
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '¶C¶Lº∆∂q'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -32
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 22
      Top = 58
      Width = 88
      Height = 21
      Caption = '¶C¶L¶W√B'
    end
    object Label6: TLabel
      Left = 166
      Top = 58
      Width = 22
      Height = 21
      Caption = '¶W'
    end
    object Edit1: TEdit
      Left = 116
      Top = 54
      Width = 45
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '10'
      OnKeyDown = Edit1KeyDown
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
    Left = 312
    Top = 40
  end
  object ActionList1: TActionList
    Left = 272
    Top = 40
    object Action_F1: TAction
      Caption = 'F1.≤Œ≠p§Î•˜'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_F2: TAction
      Caption = 'F2.•ª§Î±∆¶Ê'
      ShortCut = 113
      OnExecute = Action_F2Execute
    end
    object Action_F3: TAction
      Caption = 'F3.•ª¶~±∆¶Ê'
      ShortCut = 114
      OnExecute = Action_F3Execute
    end
    object Action_F9: TAction
      Caption = 'F9.¶C¶L'
      ShortCut = 120
      OnExecute = Action_F9Execute
    end
    object Action_Esc: TAction
      Caption = 'Esc.¬˜∂}'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object ZQuery_crproc: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM crproc'
      'WHERE crcode='#39#39)
    Params = <>
    Left = 344
    Top = 40
    object ZQuery_crproccrcode: TStringField
      DisplayLabel = '´»Ωs'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_crproccrname: TStringField
      DisplayLabel = '©m¶W'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQuery_crprocaq1: TFloatField
      DisplayLabel = '§W§Î™˜√B'
      DisplayWidth = 8
      FieldName = 'aq1'
      Required = True
    end
    object ZQuery_crprocaq2: TFloatField
      DisplayLabel = '•ª§Î™˜√B'
      DisplayWidth = 8
      FieldName = 'aq2'
      Required = True
    end
    object ZQuery_crprocaq3: TFloatField
      DisplayLabel = '•h¶~™˜√B'
      DisplayWidth = 8
      FieldName = 'aq3'
      Required = True
    end
    object ZQuery_crprocaq4: TFloatField
      DisplayLabel = '§µ¶~™˜√B'
      DisplayWidth = 8
      FieldName = 'aq4'
      Required = True
    end
    object ZQuery_crproccrtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
  end
  object wwDataSource1: TwwDataSource
    DataSet = ZQuery_crproc
    Left = 376
    Top = 40
  end
  object ZQueryF1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM cr')
    Params = <>
    Left = 344
    Top = 72
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
    ReportOptions.LastChange = 40337.7745959722
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDS_crproc
        DataSetName = 'frxDBDS_crproc'
      end
      item
        DataSet = frxDBDatasetCompy
        DataSetName = 'frxDBDatasetCompy'
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
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 79.37013
        Top = 18.89765
        Width = 778.58318
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
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDatasetCompy."cpname"]')
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
          Width = 147.40157236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDatasetCompy."cptel"]')
          ParentFont = False
        end
        object MemoTitle: TfrxMemoView
          Align = baCenter
          Left = 17.007885
          Top = 26.45671
          Width = 744.56741
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÂÆ¢Êà∂ÊéíË°åÁµ±Ë®àÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
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
        object MemoDate: TfrxMemoView
          Left = 98.26778
          Top = 56.69295
          Width = 109.60637
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 219.21274
          Top = 56.69295
          Width = 45.35436
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êúà‰ªΩ:')
          ParentFont = False
        end
        object MemoSEDate: TfrxMemoView
          Left = 264.5671
          Top = 56.69295
          Width = 102.04731
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
        Height = 22.67718
        Top = 120.94496
        Width = 778.58318
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
        object Memo14: TfrxMemoView
          Left = 69.480365
          Width = 60.47244339
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
        object Memo15: TfrxMemoView
          Left = 133.952845
          Width = 79.37009339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 18.89765
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Êà∂Ëôü')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.73228346
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
            'ÂéªÂπ¥ÈáëÈ°ç')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 222.99227
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
            '‰∏äÊúàÈáëÈ°ç')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 302.3624
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
            'Êú¨ÊúàÈáëÈ°ç')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 461.10266
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
            '‰ªäÂπ¥ÈáëÈ°ç')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 204.09462
        Width = 778.58318
        DataSet = frxDBDS_crproc
        DataSetName = 'frxDBDS_crproc'
        RowCount = 0
        object frxDBDatasetVIPcrname: TfrxMemoView
          Left = 69.54330709
          Width = 60.47248
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_crproc."crname"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrtel: TfrxMemoView
          Left = 136.06308
          Width = 79.37013
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_crproc."crtel"]')
          ParentFont = False
        end
        object frxDBDS_crproccrcode: TfrxMemoView
          Left = 18.89765
          Width = 41.57483
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_crproc."crcode"]')
          ParentFont = False
        end
        object frxDBDS_crprocaq1: TfrxMemoView
          Left = 222.99227
          Width = 64.25201
          Height = 18.89765
          DataField = 'aq1'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_crproc."aq1"]')
          ParentFont = False
        end
        object frxDBDS_crprocaq2: TfrxMemoView
          Left = 302.3624
          Width = 64.25201
          Height = 18.89765
          DataField = 'aq2'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_crproc."aq2"]')
          ParentFont = False
        end
        object frxDBDS_crprocaq3: TfrxMemoView
          Left = 381.73253
          Width = 64.25201
          Height = 18.89765
          DataField = 'aq3'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_crproc."aq3"]')
          ParentFont = False
        end
        object frxDBDS_crprocaq4: TfrxMemoView
          Left = 461.10266
          Width = 64.25201
          Height = 18.89765
          DataField = 'aq4'
          DataSet = frxDBDS_crproc
          DataSetName = 'frxDBDS_crproc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_crproc."aq4"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 41.57483
        Top = 245.66945
        Width = 778.58318
        object Memo9: TfrxMemoView
          Left = 18.89765
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
        object MemoSum: TfrxMemoView
          Left = 136.06308
          Top = 15.11812
          Width = 60.47244339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Á∏ΩË®àÈ§òÈ°ç:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 18.89765
          Top = 30.23624
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
        object SysMemo1: TfrxSysMemoView
          Left = 222.99227
          Top = 15.11812
          Width = 64.25201
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_crproc."aq1">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 302.3624
          Top = 15.11812
          Width = 64.25201
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_crproc."aq2">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 381.73253
          Top = 15.11812
          Width = 64.25201
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_crproc."aq3">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 461.10266
          Top = 15.11812
          Width = 64.25201
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_crproc."aq4">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDS_crproc: TfrxDBDataset
    UserName = 'frxDBDS_crproc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'crcode=crcode'
      'crname=crname'
      'aq1=aq1'
      'aq2=aq2'
      'aq3=aq3'
      'aq4=aq4'
      'crtel=crtel')
    DataSet = ZQuery_crproc
    Left = 344
    Top = 104
  end
  object frxDBDatasetCompy: TfrxDBDataset
    UserName = 'frxDBDatasetCompy'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cpname=cpname'
      'cpaddr=cpaddr'
      'cptel=cptel'
      'cppsen=cppsen'
      'cpwino=cpwino'
      'cpwisno=cpwisno'
      'cpdayn=cpdayn'
      'cpqday=cpqday'
      'ppaa=ppaa'
      'ppcc=ppcc'
      'getitem=getitem'
      'serialno=serialno')
    DataSet = WDM.ZTableCompy
    Left = 376
    Top = 104
  end
  object DosMove1: TDosMove
    Active = True
    ActiveColor = True
    EnterColor = 8454016
    NPClassNames.Strings = (
      'TEditMask')
    Left = 381
    Top = 73
  end
  object ZQuery_wio: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 416
    Top = 40
  end
end
