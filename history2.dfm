object History2Form: THistory2Form
  Left = 192
  Top = 127
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '���B���Ӹ��'
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
    Font.Height = -16
    Font.Name = '�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF9
      RzToolbarButtonExit)
    object RzToolbarButtonExit: TRzToolbarButton
      Left = 194
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.���}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F1
      Caption = 'F1.�]�w���'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 104
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F9
      Caption = 'F9.�C�L'
      HotNumGlyphs = 0
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 33
    Width = 784
    Height = 400
    Selected.Strings = (
      'widate'#9'9'#9'���ڤ��'#9#9
      'wicode'#9'6'#9'�~�渹'#9#9
      'wisno'#9'4'#9'�㸹'#9'F'#9
      'woptotal'#9'6'#9'����B'#9#9
      'frgetmo'#9'6'#9'�����B'#9#9
      'worealmo'#9'6'#9'�ꦬ'#9#9
      'wocntmo'#9'6'#9'�����B'#9#9
      'wopsen'#9'4'#9'�ӧ�'#9'F'#9
      'wototal'#9'6'#9'�s���B'#9#9
      'Kind'#9'8'#9'���ʮɾ�'#9'F'#9
      'sfname'#9'6'#9'���ڤH'#9#9
      'witime'#9'8'#9'���ڮɶ�'#9#9
      'crcode'#9'5'#9'�Ƚs'#9#9
      'crtel'#9'10'#9'�q��'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clNavy
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 12845056
    DataSource = wwDS_wio
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = '�ө���'
    Font.Style = []
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -24
    TitleFont.Name = '�ө���'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    IndicatorIconColor = clYellow
    GroupFieldName = 'widate'
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 33
    Align = alTop
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 88
      Height = 21
      Caption = '�Ȥ�s��'
    end
    object Label2: TLabel
      Left = 194
      Top = 5
      Width = 44
      Height = 21
      Caption = '�m�W'
    end
    object Label3: TLabel
      Left = 392
      Top = 5
      Width = 44
      Height = 21
      Caption = '�q��'
    end
    object DBText4: TDBText
      Left = 100
      Top = 6
      Width = 80
      Height = 21
      DataField = 'crcode'
      DataSource = wwDS_wio
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 240
      Top = 6
      Width = 109
      Height = 21
      DataField = 'crname'
      DataSource = wwDS_wio
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 440
      Top = 6
      Width = 161
      Height = 21
      DataField = 'crtel'
      DataSource = wwDS_wio
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelDateSet: TPanel
    Left = 264
    Top = 144
    Width = 244
    Height = 177
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 112
      Height = 27
      Caption = '�}�l���'
    end
    object Label9: TLabel
      Left = 8
      Top = 88
      Width = 112
      Height = 27
      Caption = '�������'
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 234
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '�]�w���'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '�ө���'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MaskEditDate1: TMaskEdit
      Left = 121
      Top = 44
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
      OnKeyDown = MaskEditDate1KeyDown
    end
    object MaskEditDate2: TMaskEdit
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
      OnKeyDown = MaskEditDate2KeyDown
    end
    object PrintButton: TButton
      Left = 72
      Top = 133
      Width = 97
      Height = 33
      Caption = '�C�L'
      TabOrder = 2
      OnClick = PrintButtonClick
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
    Left = 621
    Top = 208
  end
  object ZQuery_wo: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQuery_woCalcFields
    Params = <>
    Left = 624
    Top = 240
    object ZQuery_wowidate: TStringField
      DisplayLabel = '���ڤ��'
      DisplayWidth = 9
      FieldName = 'widate'
      Size = 10
    end
    object ZQuery_wowicode: TStringField
      DisplayLabel = '�~�渹'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_wowisno: TStringField
      DisplayLabel = '�㸹'
      DisplayWidth = 4
      FieldName = 'wisno'
      Size = 6
    end
    object ZQuery_wowoptotal: TFloatField
      DisplayLabel = '����B'
      DisplayWidth = 6
      FieldName = 'woptotal'
    end
    object ZQuery_wofrgetmo: TFloatField
      DisplayLabel = '�����B'
      DisplayWidth = 6
      FieldName = 'frgetmo'
    end
    object ZQuery_woworealmo: TFloatField
      DisplayLabel = '�ꦬ'
      DisplayWidth = 6
      FieldName = 'worealmo'
    end
    object ZQuery_wowocntmo: TFloatField
      DisplayLabel = '�����B'
      DisplayWidth = 6
      FieldName = 'wocntmo'
    end
    object ZQuery_wowopsen: TFloatField
      DisplayLabel = '�ӧ�'
      DisplayWidth = 4
      FieldName = 'wopsen'
    end
    object ZQuery_wowototal: TFloatField
      DisplayLabel = '�s���B'
      DisplayWidth = 6
      FieldName = 'wototal'
    end
    object ZQuery_woKind: TStringField
      DisplayLabel = '���ʮɾ�'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Kind'
      Size = 8
      Calculated = True
    end
    object ZQuery_wosfname: TStringField
      DisplayLabel = '���ڤH'
      DisplayWidth = 6
      FieldName = 'sfname'
      Size = 8
    end
    object ZQuery_wowitime: TStringField
      DisplayLabel = '���ڮɶ�'
      DisplayWidth = 8
      FieldName = 'witime'
      Size = 8
    end
    object ZQuery_wocrcode: TStringField
      DisplayLabel = '�Ƚs'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_wocrtel: TStringField
      DisplayLabel = '�q��'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQuery_wodiffmoney: TFloatField
      DisplayLabel = '�t�B'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'diffmoney'
      Visible = False
      Calculated = True
    end
    object ZQuery_wocrname: TStringField
      DisplayLabel = '�m�W'
      DisplayWidth = 8
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
    object ZQuery_wofritem: TStringField
      DisplayLabel = '���ڮɾ�'
      DisplayWidth = 8
      FieldName = 'fritem'
      Visible = False
      Size = 1
    end
    object ZQuery_wowiosn: TLargeintField
      DisplayWidth = 5
      FieldName = 'wiosn'
      Visible = False
    end
    object ZQuery_wocrtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQuery_wocradr: TStringField
      FieldKind = fkLookup
      FieldName = 'cradr'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'cradr'
      KeyFields = 'crcode'
      Size = 50
      Lookup = True
    end
  end
  object wwDS_wio: TwwDataSource
    DataSet = ZQuery_wo
    Left = 656
    Top = 240
  end
  object ActionList1: TActionList
    Left = 656
    Top = 208
    object Action_F1: TAction
      Caption = 'F1.�]�w���'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_F9: TAction
      Caption = 'F9.�C�L'
      ShortCut = 120
      OnExecute = Action_F9Execute
    end
    object Action_Esc: TAction
      Caption = 'Esc.���}'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
    object CtrlAltF9: TAction
      Caption = 'CtrlAltF9'
      ShortCut = 49272
      OnExecute = CtrlAltF9Execute
    end
  end
  object frxReportF9: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = '�w�]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40429.4469092361
    ReportOptions.LastChange = 41530.5753924306
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDSWo
        DataSetName = 'frxDBDSWo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 166
      PaperHeight = 102
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      object MasterData4: TfrxMasterData
        Height = 18.89765
        Top = 238.11039
        Width = 612.28386
        DataSet = frxDBDSWo
        DataSetName = 'frxDBDSWo'
        RowCount = 0
        object frxDBDSWowicode: TfrxMemoView
          Left = 234.33086
          Width = 56.69295
          Height = 18.89765
          DataField = 'wicode'
          DataSet = DailyRepForm.frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."wicode"]')
          ParentFont = False
        end
        object frxDBDSWowototal: TfrxMemoView
          Left = 298.58287
          Width = 68.03154
          Height = 18.89765
          DataField = 'frgetmo'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."frgetmo"]')
          ParentFont = False
        end
        object frxDBDSWowidate: TfrxMemoView
          Left = 3.77953
          Width = 68.03154
          Height = 18.89765
          DataField = 'widate'
          DataSet = DailyRepForm.frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."widate"]')
          ParentFont = False
        end
        object frxDBDSWowitime: TfrxMemoView
          Left = 536.69326
          Width = 64.25201
          Height = 18.89765
          DataField = 'wototal'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."wototal"]')
          ParentFont = False
        end
        object frxDBDSWosfname: TfrxMemoView
          Left = 461.10266
          Width = 64.25201
          Height = 18.89765
          DataField = 'wocntmo'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."wocntmo"]')
          ParentFont = False
        end
        object frxDBDSWoKind: TfrxMemoView
          Left = 143.62214
          Width = 79.37013
          Height = 18.89765
          DataField = 'Kind'
          DataSet = DailyRepForm.frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."Kind"]')
          ParentFont = False
        end
        object frxDBDSWodiffmoney: TfrxMemoView
          Left = 381.73253
          Width = 64.25201
          Height = 18.89765
          DataField = 'worealmo'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."worealmo"]')
          ParentFont = False
        end
        object frxDBDSWowitime1: TfrxMemoView
          Left = 71.81107
          Width = 64.25201
          Height = 18.89765
          DataField = 'witime'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."witime"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 34.01577
        Top = 181.41744
        Width = 612.28386
        object Memo91: TfrxMemoView
          Left = 230.55133
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '洗衣單號')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 532.91373
          Width = 64.2519685
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '餘額')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 3.77953
          Top = 15.11812
          Width = 612.28386
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
        object Memo99: TfrxMemoView
          Left = 143.62214
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '交易時機')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 3.77953
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '交易日期')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 377.953
          Width = 64.2519685
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '收款金額')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 298.58287
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '交易金額')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 457.32313
          Width = 64.2519685
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '折讓金額')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 102.04731
        Top = 18.89765
        Width = 612.28386
        object Memo92: TfrxMemoView
          Left = 3.77953
          Top = 56.69295
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '電腦編號:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 5
          Width = 90.70872
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '�з���'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '門市名稱:')
          ParentFont = False
        end
        object frxDBDS_Compycpname: TfrxMemoView
          Left = 95.92919
          Width = 359.05535
          Height = 18.8976378
          DataField = 'cpname'
          DataSet = frxDBDS_Compy
          DataSetName = 'frxDBDS_Compy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '�з���'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Compy."cpname"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 396.85065
          Width = 56.69295
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '�з���'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '電話:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 457.32313
          Width = 139.84251236
          Height = 18.89765
          DataSet = frxDBDS_Compy
          DataSetName = 'frxDBDS_Compy'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '�з���'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Compy."cptel"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = -18.89765
          Top = 26.45671
          Width = 650.07916
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = '�з���'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '☆☆☆客戶對帳單☆☆☆')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.77953
          Top = 79.37013
          Width = 64.25201
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '對帳日期:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 68.03154
          Top = 81.37013
          Width = 215.43321
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 136.06308
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
            '客戶編號:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 279.68522
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
            '客戶姓名:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 453.5436
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
            '客戶電話:')
          ParentFont = False
        end
        object frxDBDSWocrname: TfrxMemoView
          Left = 343.93723
          Top = 56.69295
          Width = 86.92919
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."crname"]')
          ParentFont = False
        end
        object frxDBDSWocrcode: TfrxMemoView
          Left = 200.31509
          Top = 56.69295
          Width = 56.69295
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."crcode"]')
          ParentFont = False
        end
        object frxDBDSWocrtel: TfrxMemoView
          Left = 517.79561
          Top = 56.69295
          Width = 79.37013
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."crtel"]')
          ParentFont = False
        end
        object frxDBDSWocrtelb: TfrxMemoView
          Left = 68.03154
          Top = 56.69295
          Width = 60.47248
          Height = 18.89765
          DataField = 'crtelb'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."crtelb"]')
          ParentFont = False
        end
        object frxDBDSWocradr: TfrxMemoView
          Left = 343.93723
          Top = 79.37013
          Width = 400.63018
          Height = 18.89765
          DataField = 'cradr'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."cradr"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDSWo: TfrxDBDataset
    UserName = 'frxDBDSWo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'widate=widate'
      'wicode=wicode'
      'wisno=wisno'
      'woptotal=woptotal'
      'frgetmo=frgetmo'
      'worealmo=worealmo'
      'wocntmo=wocntmo'
      'wopsen=wopsen'
      'wototal=wototal'
      'Kind=Kind'
      'sfname=sfname'
      'witime=witime'
      'crcode=crcode'
      'crtel=crtel'
      'diffmoney=diffmoney'
      'crname=crname'
      'fritem=fritem'
      'wiosn=wiosn'
      'crtelb=crtelb'
      'cradr=cradr')
    DataSet = ZQuery_wo
    Left = 656
    Top = 280
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
    DataSet = WDM.ZTableCompy
    Left = 656
    Top = 312
  end
end
