object CustDelForm: TCustDelForm
  Left = 236
  Top = 129
  Align = alClient
  BorderStyle = bsDialog
  Caption = '�R���Ȥ���'
  ClientHeight = 437
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 408
    Width = 984
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
      RzToolbarButtonF2
      RzToolbarButtonF3
      RzToolbarButtonF4
      RzToolbarButtonCtrlDel
      RzToolbarButton_Esc)
    object RzToolbarButtonCtrlDel: TRzToolbarButton
      Left = 404
      Top = 3
      Width = 125
      Height = 22
      Action = Action_CtrlDel
      Caption = 'Ctrl+Del.�R��'
      HotNumGlyphs = 0
    end
    object RzToolbarButton_Esc: TRzToolbarButton
      Left = 529
      Top = 3
      Width = 100
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.���}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 204
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F3
      Caption = 'F3.���'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF4: TRzToolbarButton
      Left = 304
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F4
      Caption = 'F4.�[�����'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF2: TRzToolbarButton
      Left = 104
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F2
      Caption = 'F2.����'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F1
      Caption = 'F1.�z��'
      HotNumGlyphs = 0
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 984
    Height = 408
    Selected.Strings = (
      'crcode'#9'5'#9'�Ȥ�s��'#9#9
      'crname'#9'10'#9'�m�W'#9#9
      'crmoney'#9'10'#9'�l�B'#9'F'#9
      'storage'#9'10'#9'����'#9#9
      'sdate'#9'9'#9'�̪���'#9#9
      'sday'#9'10'#9'������Ѽ�'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 12845056
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = []
    Align = alClient
    Color = 12845056
    DataSource = CustDelDS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = '�ө���'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -29
    TitleFont.Name = '�ө���'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    IndicatorIconColor = clYellow
    PaintOptions.ActiveRecordColor = clHighlight
  end
  object Panel_F1: TPanel
    Left = 301
    Top = 128
    Width = 276
    Height = 169
    BevelWidth = 5
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = '�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label19: TLabel
      Left = 5
      Top = 5
      Width = 266
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '�z�����'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -32
      Font.Name = '�ө���'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 100
      Height = 19
      Caption = '�X�ѥ����'
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 74
      Width = 100
      Height = 17
      Caption = '�l�B��0'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 98
      Width = 137
      Height = 17
      Caption = '�����窫��0'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object Button1: TButton
      Left = 104
      Top = 128
      Width = 75
      Height = 25
      Caption = '�T�w'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit_sday: TEdit
      Left = 120
      Top = 44
      Width = 137
      Height = 27
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = '�ө���'
      Font.Style = []
      ImeMode = imSAlpha
      ParentFont = False
      TabOrder = 2
      Text = '365'
    end
  end
  object PanelPBar: TPanel
    Left = 280
    Top = 16
    Width = 313
    Height = 63
    BevelWidth = 3
    Color = clFuchsia
    TabOrder = 3
    object LabelWait: TLabel
      Left = 3
      Top = 3
      Width = 307
      Height = 27
      Align = alTop
      Caption = '��ƳB�z���A�еy��...'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '�ө���'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RzProgressBar1: TRzProgressBar
      Left = 3
      Top = 30
      Width = 307
      Height = 30
      Align = alClient
      BarStyle = bsGradient
      BorderWidth = 0
      InteriorOffset = 0
      PartsComplete = 0
      Percent = 50
      TotalParts = 0
    end
  end
  object CustDelDS: TDataSource
    DataSet = ZQueryCrdelete
    Left = 208
    Top = 24
  end
  object ActionList1: TActionList
    Left = 136
    Top = 24
    object Action_F1: TAction
      Caption = 'F1.�z��'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_F2: TAction
      Caption = 'F2.����'
      ShortCut = 113
      OnExecute = Action_F2Execute
    end
    object Action_F3: TAction
      Caption = 'F3.���'
      ShortCut = 114
      OnExecute = Action_F3Execute
    end
    object Action_F4: TAction
      Caption = 'F4.�[�����'
      ShortCut = 115
      OnExecute = Action_F4Execute
    end
    object Action_CtrlDel: TAction
      Caption = 'Ctrl+Del.�R��'
      ShortCut = 16430
      OnExecute = Action_CtrlDelExecute
    end
    object Action_Esc: TAction
      Caption = 'Esc.���}'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object ZQuery_wio: TZQuery
    Connection = WDM.ZConnection1
    SQL.Strings = (
      'select crcode, wiquty, wiodate from wio')
    Params = <>
    Left = 136
    Top = 88
  end
  object ZQuery_cr: TZQuery
    Connection = WDM.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from cr'
      'where crmark='#39'Y'#39' AND crmoney=0')
    Params = <>
    Left = 136
    Top = 56
    object ZQuery_crcrcode: TStringField
      DisplayLabel = '�Ƚs'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_crcrname: TStringField
      DisplayLabel = '�Ȥ�m�W'
      DisplayWidth = 10
      FieldName = 'crname'
      Size = 10
    end
    object ZQuery_crcrtel: TStringField
      DisplayLabel = '�q��'
      DisplayWidth = 10
      FieldName = 'crtel'
      Size = 10
    end
    object ZQuery_crcradr: TStringField
      DisplayLabel = '�a�}'
      DisplayWidth = 25
      FieldName = 'cradr'
      Size = 50
    end
    object ZQuery_crcrmoney: TFloatField
      DisplayLabel = '�l�B'
      DisplayWidth = 5
      FieldName = 'crmoney'
    end
    object ZQuery_crcrallquty: TIntegerField
      DisplayLabel = '����'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'crallquty'
      Calculated = True
    end
    object ZQuery_crcrwidate: TStringField
      DisplayLabel = '�̪������'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'crwidate'
      Size = 10
      Calculated = True
    end
    object ZQuery_crcrwiday: TIntegerField
      DisplayLabel = '������Ѽ�'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'crwiday'
      Calculated = True
    end
    object ZQuery_crcrdate: TStringField
      DisplayWidth = 10
      FieldName = 'crdate'
      Visible = False
      Size = 10
    end
    object ZQuery_crcsex: TStringField
      DisplayWidth = 2
      FieldName = 'csex'
      Visible = False
      Size = 2
    end
    object ZQuery_crcrid: TStringField
      DisplayWidth = 10
      FieldName = 'crid'
      Visible = False
      Size = 10
    end
    object ZQuery_crcrtela: TStringField
      DisplayWidth = 10
      FieldName = 'crtela'
      Visible = False
      Size = 10
    end
    object ZQuery_crcrtelb: TStringField
      DisplayWidth = 10
      FieldName = 'crtelb'
      Visible = False
      Size = 10
    end
    object ZQuery_crcrmoney1: TFloatField
      DisplayWidth = 10
      FieldName = 'crmoney1'
      Visible = False
    end
    object ZQuery_crcrpsen: TFloatField
      DisplayWidth = 10
      FieldName = 'crpsen'
      Visible = False
    end
    object ZQuery_crcrdate2: TStringField
      DisplayWidth = 10
      FieldName = 'crdate2'
      Visible = False
      Size = 10
    end
    object ZQuery_crcrcnt: TFloatField
      DisplayWidth = 10
      FieldName = 'crcnt'
      Visible = False
    end
    object ZQuery_crcrvip: TStringField
      DisplayWidth = 1
      FieldName = 'crvip'
      Visible = False
      Size = 1
    end
    object ZQuery_crcrarea: TStringField
      DisplayWidth = 10
      FieldName = 'crarea'
      Visible = False
      Size = 10
    end
    object ZQuery_crcurst: TStringField
      DisplayWidth = 20
      FieldName = 'curst'
      Visible = False
    end
    object ZQuery_crcrs1: TStringField
      DisplayWidth = 2
      FieldName = 'crs1'
      Visible = False
      Size = 2
    end
    object ZQuery_crcrs2: TStringField
      DisplayWidth = 2
      FieldName = 'crs2'
      Visible = False
      Size = 2
    end
    object ZQuery_crcrmark: TStringField
      DisplayWidth = 1
      FieldName = 'crmark'
      Visible = False
      Size = 1
    end
  end
  object ZQueryCrdelete: TZQuery
    Connection = WDM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM crdelete')
    Params = <>
    Left = 176
    Top = 24
    object ZQueryCrdeletecrcode: TStringField
      DisplayLabel = '�Ȥ�s��'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryCrdeletecrname: TStringField
      DisplayLabel = '�m�W'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQueryCrdeletecrmoney: TFloatField
      DisplayLabel = '�l�B'
      DisplayWidth = 10
      FieldName = 'crmoney'
    end
    object ZQueryCrdeletestorage: TIntegerField
      DisplayLabel = '����'
      DisplayWidth = 10
      FieldName = 'storage'
    end
    object ZQueryCrdeletesdate: TStringField
      DisplayLabel = '�̪���'
      DisplayWidth = 9
      FieldName = 'sdate'
      Size = 9
    end
    object ZQueryCrdeletesday: TIntegerField
      DisplayLabel = '������Ѽ�'
      DisplayWidth = 10
      FieldName = 'sday'
    end
  end
end
