object VipRepForm: TVipRepForm
  Left = 205
  Top = 127
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '∂Qª´•d≤Œ≠pß@∑~'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 826
    Height = 480
    Selected.Strings = (
      'vpcode'#9'5'#9'•d∏π'#9#9
      'crcode'#9'5'#9'´»Ωs'#9#9
      'crname'#9'7'#9'©m¶W'#9#9
      'vpmoney'#9'7'#9'∂R•d™˜√B'#9#9
      'vpdscnt'#9'3'#9'•dßÈ'#9#9
      'vpreman'#9'7'#9'∂R•dπÍ√B'#9#9
      'vppsen'#9'3'#9'≠”ßÈ'#9#9
      'vpsdate'#9'9'#9'∞_©l§È¥¡'#9#9
      'vpedate'#9'9'#9'≤◊§Ó§È¥¡'#9#9)
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
  object RzToolbarF10: TRzToolbar
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
      RzToolbarButtonF3
      RzToolbarButtonCH
      RzToolbarButtonCE
      RzToolbarButtonF9
      RzToolbarButtonF10
      RzToolbarButtonEsc)
    object RzToolbarButtonCH: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 135
      Height = 22
      Action = ActionCtrlHome
      Caption = 'Ctrl+Home.≤ƒ§@µß'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonCE: TRzToolbarButton
      Left = 229
      Top = 3
      Width = 135
      Height = 22
      Action = ActionCtrlEnd
      Caption = 'Ctrl+End.≥Ã´·µß'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F3
      Caption = 'F3.¨d∏ﬂ'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 564
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 364
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F9
      Caption = 'F9.¶C¶L'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF10: TRzToolbarButton
      Left = 454
      Top = 3
      Width = 110
      Height = 22
      Action = Action_F10
      Caption = 'F10.®Ï¥¡≤Œ≠p'
      HotNumGlyphs = 0
    end
  end
  object PanelDate: TPanel
    Left = 296
    Top = 168
    Width = 321
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
      Width = 311
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '¶C¶L§È¥¡'
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
      Width = 22
      Height = 21
      Caption = '±q'
    end
    object Label3: TLabel
      Left = 162
      Top = 58
      Width = 22
      Height = 21
      Caption = '¶‹'
    end
    object MaskEditDate1: TMaskEdit
      Left = 47
      Top = 50
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
      TabOrder = 0
      Text = '   /  /  '
    end
    object MaskEditDate2: TMaskEdit
      Left = 187
      Top = 50
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
      OnKeyDown = MaskEditDate2KeyDown
    end
  end
  object PanelQuery: TPanel
    Left = 296
    Top = 288
    Width = 228
    Height = 105
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label4: TLabel
      Left = 5
      Top = 5
      Width = 218
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '¨d∏ﬂ'
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
      Caption = '´»§·Ωs∏π'
    end
    object Editcrcode: TEdit
      Left = 116
      Top = 53
      Width = 85
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EditcrcodeKeyDown
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    DesignConnection = True
    SQLHourGlass = True
    Left = 312
    Top = 40
  end
  object ActionList1: TActionList
    Left = 272
    Top = 40
    object Action_F3: TAction
      Caption = 'F3.¨d∏ﬂ'
      ShortCut = 114
      OnExecute = Action_F3Execute
    end
    object Action_F9: TAction
      Caption = 'F9.¶C¶L'
      ShortCut = 120
      OnExecute = Action_F9Execute
    end
    object Action_F10: TAction
      Caption = 'F10.®Ï¥¡≤Œ≠p'
      ShortCut = 121
      OnExecute = Action_F10Execute
    end
    object ActionCtrlHome: TAction
      Caption = 'Ctrl+Home.≤ƒ§@µß'
      ShortCut = 16420
      OnExecute = ActionCtrlHomeExecute
    end
    object ActionCtrlEnd: TAction
      Caption = 'Ctrl+End.≥Ã´·µß'
      ShortCut = 16419
      OnExecute = ActionCtrlEndExecute
    end
    object Action_Esc: TAction
      Caption = 'Esc.¬˜∂}'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object ZQuery_vip: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM pross_vip')
    Params = <>
    Left = 384
    Top = 408
    object ZQuery_vipvpcode: TStringField
      DisplayLabel = '•d∏π'
      DisplayWidth = 5
      FieldName = 'vpcode'
      Required = True
      Size = 5
    end
    object ZQuery_vipcrcode: TStringField
      DisplayLabel = '´»Ωs'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_vipcrname: TStringField
      DisplayLabel = '©m¶W'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Lookup = True
    end
    object ZQuery_vipvpmoney: TFloatField
      DisplayLabel = '∂R•d™˜√B'
      DisplayWidth = 7
      FieldName = 'vpmoney'
    end
    object ZQuery_vipvpdscnt: TIntegerField
      DisplayLabel = '•dßÈ'
      DisplayWidth = 3
      FieldName = 'vpdscnt'
    end
    object ZQuery_vipvpreman: TFloatField
      DisplayLabel = '∂R•dπÍ√B'
      DisplayWidth = 7
      FieldName = 'vpreman'
    end
    object ZQuery_vipvppsen: TIntegerField
      DisplayLabel = '≠”ßÈ'
      DisplayWidth = 3
      FieldName = 'vppsen'
    end
    object ZQuery_vipvpsdate: TStringField
      DisplayLabel = '∞_©l§È¥¡'
      DisplayWidth = 9
      FieldName = 'vpsdate'
      Size = 9
    end
    object ZQuery_vipvpedate: TStringField
      DisplayLabel = '≤◊§Ó§È¥¡'
      DisplayWidth = 9
      FieldName = 'vpedate'
      Size = 9
    end
    object ZQuery_vipcrtel: TStringField
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
    DataSet = ZQuery_vip
    Left = 416
    Top = 408
  end
  object DosMove1: TDosMove
    Active = True
    ActiveColor = True
    EnterColor = 8454016
    NPClassNames.Strings = (
      'TEditMask')
    Left = 381
    Top = 41
  end
  object ZQuery_pross_vip: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM pross_vip')
    Params = <>
    Left = 472
    Top = 408
    object ZQuery_pross_vipsn: TLargeintField
      FieldName = 'sn'
    end
    object ZQuery_pross_vipcrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_pross_vippross: TStringField
      FieldName = 'pross'
      Required = True
      Size = 8
    end
    object ZQuery_pross_vipn_money: TFloatField
      FieldName = 'n_money'
      Required = True
    end
    object ZQuery_pross_vipo_money: TFloatField
      FieldName = 'o_money'
      Required = True
    end
    object ZQuery_pross_vippross_date: TStringField
      FieldName = 'pross_date'
      Required = True
      Size = 9
    end
    object ZQuery_pross_vippross_time: TStringField
      FieldName = 'pross_time'
      Required = True
      Size = 8
    end
    object ZQuery_pross_vipsfname: TStringField
      FieldName = 'sfname'
      Size = 8
    end
    object ZQuery_pross_vipcrname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQuery_pross_vipcrtel: TStringField
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
    Left = 384
    Top = 440
    Datasets = <
      item
        DataSet = frxDBDatasetVIP
        DataSetName = 'frxDBDatasetVIP'
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
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      OnBeforePrint = 'Page1OnBeforePrint'
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
          Left = 20.787415
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
            '‚òÜ‚òÜ‚òÜË≤¥Ë≥ìÂç°Ë≥ºË≤∑Áµ±Ë®àÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
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
            'Êó•Êúü:')
          ParentFont = False
        end
        object MemoSEDate: TfrxMemoView
          Left = 264.5671
          Top = 56.69295
          Width = 204.09462
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
        Width = 786.14224
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
        object Memo7: TfrxMemoView
          Left = 216.866265
          Width = 45.35432339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âç°Ëôü')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 395.740415
          Width = 52.91338339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Âç°Êäò')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 512.905845
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ëµ∑ÂßãÊó•Êúü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 596.055505
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÁµÇÊ≠¢Êó•Êúü')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 264.5671
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
            'ÈáëÈ°ç')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 328.81911
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
            'Âç°ÂØ¶È°ç')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 453.5436
          Width = 52.91338339
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
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 204.09462
        Width = 786.14224
        DataSet = frxDBDatasetVIP
        DataSetName = 'frxDBDatasetVIP'
        RowCount = 0
        object frxDBDatasetVIPvpcode: TfrxMemoView
          Left = 219.21274
          Width = 45.3543307086614
          Height = 18.89765
          DataField = 'vpcode'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vpcode"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpmoney: TfrxMemoView
          Left = 268.34663
          Width = 56.69295
          Height = 18.89765
          DataField = 'vpmoney'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vpmoney"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrcode: TfrxMemoView
          Left = 18.89765
          Width = 41.57483
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDatasetVIP."crcode"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrname: TfrxMemoView
          Left = 69.54330709
          Width = 60.47248
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDatasetVIP."crname"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrtel: TfrxMemoView
          Left = 136.06308
          Width = 79.37013
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDatasetVIP."crtel"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpdscnt: TfrxMemoView
          Left = 396.85065
          Width = 52.91342
          Height = 18.89765
          DataField = 'vpdscnt'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vpdscnt"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpsdate: TfrxMemoView
          Left = 514.01608
          Width = 71.81107
          Height = 18.89765
          DataField = 'vpsdate'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vpsdate"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpedate: TfrxMemoView
          Left = 597.16574
          Width = 71.81107
          Height = 18.89765
          DataField = 'vpedate'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vpedate"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpreman: TfrxMemoView
          Left = 328.81911
          Width = 60.47248
          Height = 18.89765
          DataField = 'vpreman'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vpreman"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 453.5436
          Width = 52.91342
          Height = 18.89765
          DataField = 'vppsen'
          DataSet = frxDBDatasetVIP
          DataSetName = 'frxDBDatasetVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDatasetVIP."vppsen"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 41.57483
        Top = 245.66945
        Width = 786.14224
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
          Left = 200.31509
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
          Left = 268.34663
          Top = 15.11812
          Width = 56.69295
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDatasetVIP."vpmoney">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 332.59864
          Top = 15.11812
          Width = 56.69295
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDatasetVIP."vpreman">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetVIP: TfrxDBDataset
    UserName = 'frxDBDatasetVIP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'vpcode=vpcode'
      'crcode=crcode'
      'crname=crname'
      'vpmoney=vpmoney'
      'vpdscnt=vpdscnt'
      'vpreman=vpreman'
      'vppsen=vppsen'
      'vpsdate=vpsdate'
      'vpedate=vpedate'
      'crtel=crtel')
    DataSet = ZQuery_vip
    Left = 416
    Top = 440
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
    Left = 344
    Top = 40
  end
  object wwDS_prossvip: TwwDataSource
    DataSet = ZQuery_pross_vip
    Left = 504
    Top = 408
  end
  object frxDBDSProssVIP: TfrxDBDataset
    UserName = 'frxDBDSProssVIP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sn=sn'
      'crcode=crcode'
      'pross=pross'
      'n_money=n_money'
      'o_money=o_money'
      'pross_date=pross_date'
      'pross_time=pross_time'
      'sfname=sfname'
      'crname=crname'
      'crtel=crtel')
    DataSet = ZQuery_pross_vip
    Left = 504
    Top = 440
  end
  object frxReportF10: TfrxReport
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
    Left = 472
    Top = 440
    Datasets = <
      item
        DataSet = frxDBDSProssVIP
        DataSetName = 'frxDBDSProssVIP'
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
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      OnBeforePrint = 'Page1OnBeforePrint'
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
          Left = 20.787415
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
            '‚òÜ‚òÜ‚òÜË≤¥Ë≥ìÂç°Ê≠∏Èõ∂Áµ±Ë®àÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
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
            'Êó•Êúü:')
          ParentFont = False
        end
        object MemoSEDate: TfrxMemoView
          Left = 264.5671
          Top = 56.69295
          Width = 204.09462
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
        Width = 786.14224
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
        object Memo11: TfrxMemoView
          Left = 415.7480315
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êó•Êúü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 510.23622047
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÊôÇÈñì')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 264.5671
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
            'ÁèæÂú®ÈáëÈ°ç')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 328.81911
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
            'ÂâçÊúüÈ§òÈ°ç')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 204.09462
        Width = 786.14224
        DataSet = frxDBDSProssVIP
        DataSetName = 'frxDBDSProssVIP'
        RowCount = 0
        object frxDBDatasetVIPvpmoney: TfrxMemoView
          Left = 268.34663
          Width = 56.69295
          Height = 18.89765
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSProssVIP."n_money"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrcode: TfrxMemoView
          Left = 18.89765
          Width = 41.57483
          Height = 18.89765
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSProssVIP."crcode"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrname: TfrxMemoView
          Left = 69.54330709
          Width = 60.47248
          Height = 18.89765
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSProssVIP."crname"]')
          ParentFont = False
        end
        object frxDBDatasetVIPcrtel: TfrxMemoView
          Left = 136.06308
          Width = 79.37013
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSProssVIP."crtel"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpsdate: TfrxMemoView
          Left = 415.748031496063
          Width = 71.81107
          Height = 18.89765
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSProssVIP."pross_date"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpedate: TfrxMemoView
          Left = 510.236220472441
          Width = 71.81107
          Height = 18.89765
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSProssVIP."pross_time"]')
          ParentFont = False
        end
        object frxDBDatasetVIPvpreman: TfrxMemoView
          Left = 328.81911
          Width = 60.47248
          Height = 18.89765
          DataSet = frxDBDSProssVIP
          DataSetName = 'frxDBDSProssVIP'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSProssVIP."o_money"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 41.57483
        Top = 245.66945
        Width = 786.14224
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
          Left = 200.31509
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
        object SysMemo3: TfrxSysMemoView
          Left = 328.81911
          Top = 15.11812
          Width = 60.47248
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSProssVIP."o_money">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
