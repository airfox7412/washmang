object ChangelogForm: TChangelogForm
  Left = 252
  Top = 132
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '金額異動報表'
  ClientHeight = 462
  ClientWidth = 781
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 433
    Width = 781
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
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F1
      Caption = 'F1.設定日期'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.離開'
      HotNumGlyphs = 0
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 781
    Height = 433
    ActivePage = TabSheet2
    Align = alClient
    BackgroundColor = clHighlight
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '細明體'
    Font.Style = []
    HotTrackColor = clYellow
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    TabColors.HighlightBar = clYellow
    TabColors.Shadow = clSilver
    TabColors.Unselected = 12845056
    TabIndex = 0
    TabOrder = 2
    TextColors.Selected = clWhite
    TextColors.Unselected = clSilver
    Transparent = True
    OnChange = RzPageControl1Change
    FixedDimension = 27
    object TabSheet2: TRzTabSheet
      Color = clHighlight
      Caption = '客戶金額明細'
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 402
        Selected.Strings = (
          'widate'#9'9'#9'收款日期'#9#9
          'crcode'#9'5'#9'客編'#9#9
          'crname'#9'8'#9'姓名'#9'F'
          'wicode'#9'6'#9'洗單號'#9#9
          'wisno'#9'4'#9'整號'#9#9
          'woptotal'#9'6'#9'原客額'#9#9
          'frgetmo'#9'6'#9'收件額'#9#9
          'worealmo'#9'6'#9'實收'#9#9
          'wocntmo'#9'6'#9'折讓額'#9#9
          'wopsen'#9'4'#9'個折'#9#9
          'wototal'#9'6'#9'新客額'#9#9
          'Kind'#9'8'#9'異動時機'#9#9
          'sfname'#9'6'#9'收款人'#9#9
          'witime'#9'8'#9'收款時間'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = 12845056
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Color = 12845056
        DataSource = wwDS_wio
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -21
        TitleFont.Name = '細明體'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid2CalcCellColors
        OnDblClick = wwDBGrid2DblClick
        GroupFieldName = 'widate'
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clHighlight
      Caption = '洗單金額異動'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 402
        Selected.Strings = (
          'chgdate'#9'9'#9'異動日期'#9#9
          'chgtime'#9'8'#9'時間'#9#9
          'crcode'#9'5'#9'客編'#9#9
          'crname'#9'8'#9'姓名'#9'F'
          'wicode'#9'6'#9'洗單號'#9#9
          'wisno'#9'4'#9'整號'#9#9
          'orgmoney'#9'8'#9'原金額'#9#9
          'newmoney'#9'8'#9'新金額'#9#9
          'note'#9'8'#9'異動時機'#9#9
          'sfname'#9'8'#9'異動人'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = 12845056
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Color = 12845056
        DataSource = DS_wiochange
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = '新細明體'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFixedProportionalResize, dgHideBottomDataLine]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -21
        TitleFont.Name = '新細明體'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
        PaintOptions.ActiveRecordColor = clHighlight
        GroupFieldName = 'chgdate'
      end
    end
  end
  object PanelDateSet: TPanel
    Left = 296
    Top = 128
    Width = 193
    Height = 97
    Color = clFuchsia
    TabOrder = 0
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 56
      Height = 27
      Caption = '日期'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '標楷體'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 32
      Top = 4
      Width = 116
      Height = 27
      Caption = '設定日期'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '標楷體'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEditDate1: TMaskEdit
      Left = 65
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
  end
  object ActionList1: TActionList
    Left = 456
    Top = 40
    object Action_F1: TAction
      Caption = 'F1.設定日期'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Port = 3306
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    DesignConnection = True
    SQLHourGlass = True
    Left = 421
    Top = 40
  end
  object ZQuery_wo: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQuery_woCalcFields
    SQL.Strings = (
      'SELECT * FROM wo'
      'WHERE crcode='#39'00001'#39
      'ORDER BY widate DESC')
    Params = <>
    Left = 344
    Top = 80
    object ZQuery_wowidate: TStringField
      DisplayLabel = '收款日期'
      DisplayWidth = 9
      FieldName = 'widate'
      Size = 10
    end
    object ZQuery_wocrcode: TStringField
      DisplayLabel = '客編'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_wocrname: TStringField
      DisplayLabel = '姓名'
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
    object ZQuery_wowicode: TStringField
      DisplayLabel = '洗單號'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_wowisno: TStringField
      DisplayLabel = '整號'
      DisplayWidth = 5
      FieldName = 'wisno'
      Size = 5
    end
    object ZQuery_wowoptotal: TFloatField
      DisplayLabel = '原客額'
      DisplayWidth = 6
      FieldName = 'woptotal'
    end
    object ZQuery_wofrgetmo: TFloatField
      DisplayLabel = '收件額'
      DisplayWidth = 6
      FieldName = 'frgetmo'
    end
    object ZQuery_woworealmo: TFloatField
      DisplayLabel = '實收'
      DisplayWidth = 6
      FieldName = 'worealmo'
    end
    object ZQuery_wowocntmo: TFloatField
      DisplayLabel = '折讓額'
      DisplayWidth = 6
      FieldName = 'wocntmo'
    end
    object ZQuery_wowopsen: TFloatField
      DisplayLabel = '個折'
      DisplayWidth = 4
      FieldName = 'wopsen'
    end
    object ZQuery_wowototal: TFloatField
      DisplayLabel = '新客額'
      DisplayWidth = 6
      FieldName = 'wototal'
    end
    object ZQuery_woKind: TStringField
      DisplayLabel = '異動時機'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Kind'
      Size = 8
      Calculated = True
    end
    object ZQuery_wosfname: TStringField
      DisplayLabel = '收款人'
      DisplayWidth = 6
      FieldName = 'sfname'
      Size = 8
    end
    object ZQuery_wowitime: TStringField
      DisplayLabel = '收款時間'
      DisplayWidth = 8
      FieldName = 'witime'
      Size = 8
    end
    object ZQuery_wodiffmoney: TFloatField
      DisplayLabel = '差額'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'diffmoney'
      Visible = False
      Calculated = True
    end
    object ZQuery_wofritem: TStringField
      DisplayLabel = '收款時機'
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
  end
  object wwDS_wio: TwwDataSource
    DataSet = ZQuery_wo
    Left = 376
    Top = 80
  end
  object ZQuery_wiochange: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQuery_wiochangeCalcFields
    SQL.Strings = (
      'SELECT * FROM wio_change')
    Params = <>
    Left = 417
    Top = 76
    object ZQuery_wiochangechgdate: TStringField
      DisplayLabel = '異動日期'
      DisplayWidth = 9
      FieldName = 'chgdate'
      Required = True
      Size = 9
    end
    object ZQuery_wiochangechgtime: TStringField
      DisplayLabel = '時間'
      DisplayWidth = 8
      FieldName = 'chgtime'
      Required = True
      Size = 8
    end
    object ZQuery_wiochangecrcode: TStringField
      DisplayLabel = '客編'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_wiochangecrname: TStringField
      DisplayLabel = '姓名'
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
    object ZQuery_wiochangewicode: TStringField
      DisplayLabel = '洗單號'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_wiochangewisno: TStringField
      DisplayLabel = '整號'
      DisplayWidth = 5
      FieldName = 'wisno'
      Required = True
      Size = 5
    end
    object ZQuery_wiochangeorgmoney: TFloatField
      DisplayLabel = '原金額'
      DisplayWidth = 8
      FieldName = 'orgmoney'
    end
    object ZQuery_wiochangenewmoney: TFloatField
      DisplayLabel = '新金額'
      DisplayWidth = 8
      FieldName = 'newmoney'
    end
    object ZQuery_wiochangenote: TStringField
      DisplayLabel = '異動時機'
      DisplayWidth = 8
      FieldName = 'note'
      Size = 8
    end
    object ZQuery_wiochangesfname: TStringField
      DisplayLabel = '異動人'
      DisplayWidth = 8
      FieldName = 'sfname'
      Size = 8
    end
    object ZQuery_wiochangechgmoney: TFloatField
      DisplayLabel = '異動差額'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'chgmoney'
      Visible = False
      Calculated = True
    end
    object ZQuery_wiochangewiosn: TLargeintField
      DisplayWidth = 15
      FieldName = 'wiosn'
      Visible = False
    end
  end
  object DS_wiochange: TwwDataSource
    DataSet = ZQuery_wiochange
    Left = 449
    Top = 76
  end
end
