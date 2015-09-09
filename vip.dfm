object VIPForm: TVIPForm
  Left = 220
  Top = 127
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '貴賓卡登入作業'
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
      'vpcode'#9'5'#9'卡號'
      'crcode'#9'5'#9'客編'
      'crname'#9'7'#9'姓名'
      'vpmoney'#9'7'#9'買卡金額'
      'vpdscnt'#9'3'#9'卡折'
      'vpreman'#9'7'#9'買卡實額'
      'vppsen'#9'3'#9'個折'
      'vpsdate'#9'9'#9'起始日期'
      'vpedate'#9'9'#9'終止日期')
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
    TitleFont.Name = '細明體'
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
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonAdd
      RzToolbarButtonQuery
      RzToolbarButtonEsc)
    object RzToolbarButtonAdd: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F1
      Caption = 'F1.新增'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonQuery: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F3
      Caption = 'F3.刪除'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 184
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.離開'
      HotNumGlyphs = 0
    end
  end
  object Panel_Buy: TPanel
    Left = 165
    Top = 65
    Width = 316
    Height = 376
    BevelWidth = 5
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 306
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '購買VIP'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -32
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 35
      Top = 52
      Width = 116
      Height = 27
      Caption = '客戶編號'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 33
      Top = 85
      Width = 118
      Height = 27
      Caption = 'VIP 卡號'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 35
      Top = 120
      Width = 116
      Height = 27
      Caption = '買卡金額'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 35
      Top = 161
      Width = 116
      Height = 27
      Caption = '買卡折扣'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 19
      Top = 242
      Width = 132
      Height = 27
      Caption = 'VIP卡實額'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 35
      Top = 282
      Width = 116
      Height = 27
      Caption = '起始日期'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 35
      Top = 323
      Width = 116
      Height = 27
      Caption = '終止日期'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 210
      Top = 160
      Width = 29
      Height = 27
      Caption = '％'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 156
      Top = 52
      Width = 15
      Height = 27
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 156
      Top = 84
      Width = 15
      Height = 27
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 35
      Top = 201
      Width = 116
      Height = 27
      Caption = '個人折扣'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 210
      Top = 200
      Width = 29
      Height = 27
      Caption = '％'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Edit1: TEdit
      Left = 156
      Top = 115
      Width = 85
      Height = 37
      BiDiMode = bdRightToLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 156
      Top = 156
      Width = 51
      Height = 37
      BiDiMode = bdRightToLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnKeyDown = Edit2KeyDown
    end
    object Edit4: TEdit
      Left = 156
      Top = 237
      Width = 85
      Height = 37
      BiDiMode = bdRightToLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Text = '0'
    end
    object Edit3: TEdit
      Left = 156
      Top = 196
      Width = 51
      Height = 37
      BiDiMode = bdRightToLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object MaskEditDate2: TMaskEdit
      Left = 156
      Top = 318
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
      TabOrder = 4
      Text = '   /  /  '
      OnKeyDown = MaskEditDate2KeyDown
    end
    object MaskEditDate1: TMaskEdit
      Left = 156
      Top = 277
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
      TabOrder = 5
      Text = '   /  /  '
      OnKeyDown = MaskEditDate1KeyDown
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
    Left = 312
    Top = 40
  end
  object ActionList1: TActionList
    Left = 272
    Top = 40
    object Action_F1: TAction
      Caption = 'F1.新增'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_CtrlF2: TAction
      Caption = 'Ctrl+F2.修改'
      ShortCut = 16497
      OnExecute = Action_CtrlF2Execute
    end
    object Action_F3: TAction
      Caption = 'F3.刪除'
      ShortCut = 114
      OnExecute = Action_F3Execute
    end
    object Action_PgDn: TAction
      Caption = 'PgDn.儲存'
      ShortCut = 34
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object ZQuery_vip: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM vip')
    Params = <>
    Left = 344
    Top = 40
    object ZQuery_vipvpcode: TStringField
      DisplayLabel = '卡號'
      DisplayWidth = 5
      FieldName = 'vpcode'
      Required = True
      Size = 5
    end
    object ZQuery_vipcrcode: TStringField
      DisplayLabel = '客編'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_vipcrname: TStringField
      DisplayLabel = '姓名'
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
      DisplayLabel = '買卡金額'
      DisplayWidth = 7
      FieldName = 'vpmoney'
    end
    object ZQuery_vipvpdscnt: TIntegerField
      DisplayLabel = '卡折'
      DisplayWidth = 3
      FieldName = 'vpdscnt'
    end
    object ZQuery_vipvpreman: TFloatField
      DisplayLabel = '買卡實額'
      DisplayWidth = 7
      FieldName = 'vpreman'
    end
    object ZQuery_vipvppsen: TIntegerField
      DisplayLabel = '個折'
      DisplayWidth = 3
      FieldName = 'vppsen'
    end
    object ZQuery_vipvpsdate: TStringField
      DisplayLabel = '起始日期'
      DisplayWidth = 9
      FieldName = 'vpsdate'
      Size = 9
    end
    object ZQuery_vipvpedate: TStringField
      DisplayLabel = '終止日期'
      DisplayWidth = 9
      FieldName = 'vpedate'
      Size = 9
    end
  end
  object wwDataSource1: TwwDataSource
    DataSet = ZQuery_vip
    Left = 376
    Top = 40
  end
  object DosMove1: TDosMove
    Active = True
    ActiveColor = True
    EnterColor = 8454016
    NPClassNames.Strings = (
      'TEdit')
    Left = 381
    Top = 73
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM vip')
    Params = <>
    Left = 344
    Top = 72
    object StringField1: TStringField
      DisplayLabel = '卡號'
      DisplayWidth = 5
      FieldName = 'vpcode'
      Required = True
      Size = 5
    end
    object StringField2: TStringField
      DisplayLabel = '客編'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object StringField3: TStringField
      DisplayLabel = '姓名'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Lookup = True
    end
    object FloatField1: TFloatField
      DisplayLabel = '買卡金額'
      DisplayWidth = 7
      FieldName = 'vpmoney'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = '卡折'
      DisplayWidth = 3
      FieldName = 'vpdscnt'
    end
    object FloatField2: TFloatField
      DisplayLabel = '買卡實額'
      DisplayWidth = 7
      FieldName = 'vpreman'
    end
    object FloatField3: TFloatField
      DisplayLabel = '個折'
      DisplayWidth = 3
      FieldKind = fkLookup
      FieldName = 'crpsen'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crpsen'
      KeyFields = 'crcode'
      Lookup = True
    end
    object StringField4: TStringField
      DisplayLabel = '起始日期'
      DisplayWidth = 9
      FieldName = 'vpsdate'
      Size = 9
    end
    object StringField5: TStringField
      DisplayLabel = '終止日期'
      DisplayWidth = 9
      FieldName = 'vpedate'
      Size = 9
    end
  end
  object ZQuery_wo: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 341
    Top = 105
  end
end
