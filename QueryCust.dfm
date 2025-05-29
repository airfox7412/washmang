object QueryCustForm: TQueryCustForm
  Left = 201
  Top = 128
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '查詢客戶'
  ClientHeight = 522
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 41
    Width = 784
    Height = 427
    IniAttributes.Delimiter = ';;'
    TitleColor = 12845056
    OnRowChanged = wwDBGrid1RowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = []
    Align = alClient
    Color = 12845056
    DataSource = WDM.DS_cr
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = '細明體'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -29
    TitleFont.Name = '細明體'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = wwDBGrid1DblClick
    OnKeyDown = wwDBGrid1KeyDown
    IndicatorIconColor = clYellow
    PaintOptions.ActiveRecordColor = clHighlight
  end
  object PanelWisno: TPanel
    Left = 336
    Top = 224
    Width = 249
    Height = 97
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '標楷體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 96
      Height = 24
      Alignment = taRightJustify
      Caption = '整理編號'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = '標楷體'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 54
      Top = 7
      Width = 112
      Height = 27
      Caption = '整號查詢'
    end
    object EditWisno: TEdit
      Left = 104
      Top = 39
      Width = 129
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0000000'
      OnKeyDown = EditWisnoKeyDown
    end
  end
  object PanelWicode: TPanel
    Left = 336
    Top = 120
    Width = 249
    Height = 97
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '標楷體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label8: TLabel
      Left = 16
      Top = 48
      Width = 96
      Height = 24
      Caption = '洗衣單號'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = '標楷體'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 64
      Top = 7
      Width = 112
      Height = 27
      Caption = '洗單查詢'
    end
    object EditWicode: TEdit
      Left = 112
      Top = 39
      Width = 117
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      Text = '000000'
      OnKeyDown = EditWicodeKeyDown
    end
  end
  object PanelCust: TPanel
    Left = 176
    Top = 184
    Width = 269
    Height = 89
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '標楷體'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label7: TLabel
      Left = 80
      Top = 9
      Width = 112
      Height = 27
      Caption = '客戶查詢'
    end
    object SearchEdit: TEdit
      Left = 10
      Top = 39
      Width = 247
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = SearchEditChange
      OnKeyDown = SearchEditKeyDown
    end
    object Button1: TButton
      Left = 196
      Top = 11
      Width = 61
      Height = 25
      Caption = '全部'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 468
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
    Font.Height = -16
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF2
      RzToolbarButtonF3
      RzToolbarButtonF4
      RzToolbarButtonF5
      RzToolbarButtonF6
      RzToolbarButtonF7
      RzToolbarButtonF8
      RzToolbarButtonF9
      RzToolbarButtonF10
      RzToolbarButtonF11
      RzToolbarButtonCP
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F1
      Caption = 'F1.客戶新增'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 450
      Top = 28
      Width = 100
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.離開'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF4: TRzToolbarButton
      Left = 314
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F4
      Caption = 'F4.洗單查詢'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF7: TRzToolbarButton
      Left = 614
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F7
      Caption = 'F7.未取明細'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 214
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F3
      Caption = 'F3.客戶查詢'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF5: TRzToolbarButton
      Left = 414
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F5
      Caption = 'F5.整號查詢'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF11: TRzToolbarButton
      Left = 277
      Top = 28
      Width = 73
      Height = 22
      Action = Action_F11
      Caption = 'F11.拍照'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonCP: TRzToolbarButton
      Left = 350
      Top = 28
      Width = 100
      Height = 22
      Action = Action_CtrlP
      Caption = 'Ctrl+P.照片'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF8: TRzToolbarButton
      Left = 4
      Top = 28
      Width = 100
      Height = 22
      Action = Action_F8
      Caption = 'F8.地址片語'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 104
      Top = 28
      Width = 100
      Height = 22
      Action = Action_F9
      Caption = 'F9.姓名片語'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF2: TRzToolbarButton
      Left = 104
      Top = 3
      Width = 110
      Height = 22
      Action = Action_F2
      Caption = 'F2.電腦號查詢'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF6: TRzToolbarButton
      Left = 514
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F6
      Caption = 'F6.客號查詢'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF10: TRzToolbarButton
      Left = 204
      Top = 28
      Width = 73
      Height = 22
      Action = Action_F10
      Caption = 'F10.預約'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      Visible = False
      HotNumGlyphs = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    Align = alTop
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label1: TLabel
      Left = 289
      Top = 10
      Width = 55
      Height = 21
      Caption = '姓名:'
    end
    object lb_crname: TLabel
      Left = 346
      Top = 10
      Width = 89
      Height = 21
      AutoSize = False
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = '細明體'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 448
      Top = 10
      Width = 121
      Height = 21
      Caption = '已入庫未取:'
    end
    object lb_pcnt: TLabel
      Left = 571
      Top = 10
      Width = 35
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = '細明體'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 617
      Top = 10
      Width = 121
      Height = 21
      Caption = '未取總件數:'
    end
    object lb_ncnt: TLabel
      Left = 742
      Top = 10
      Width = 35
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = '細明體'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 41
      Height = 37
      Align = alLeft
      Stretch = True
      OnClick = Action_CtrlPExecute
    end
  end
  object ActionList1: TActionList
    Left = 480
    Top = 56
    object Action_F1: TAction
      Caption = 'F1.客戶新增'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_F2: TAction
      Caption = 'F2.電腦號查詢'
      ShortCut = 113
      OnExecute = Action_F2Execute
    end
    object Action_F3: TAction
      Caption = 'F3.客戶查詢'
      ShortCut = 114
      OnExecute = Action_F3Execute
    end
    object Action_F4: TAction
      Caption = 'F4.洗單查詢'
      ShortCut = 115
      OnExecute = Action_F4Execute
    end
    object Action_F5: TAction
      Caption = 'F5.整號查詢'
      ShortCut = 116
      OnExecute = Action_F5Execute
    end
    object Action_F6: TAction
      Caption = 'F6.客號查詢'
      ShortCut = 117
      OnExecute = Action_F6Execute
    end
    object Action_F7: TAction
      Caption = 'F7.未取明細'
      ShortCut = 118
      OnExecute = Action_F7Execute
    end
    object Action_F8: TAction
      Caption = 'F8.地址片語'
      ShortCut = 119
      OnExecute = Action_F8Execute
    end
    object Action_F9: TAction
      Caption = 'F9.姓名片語'
      ShortCut = 120
      OnExecute = Action_F9Execute
    end
    object Action_F10: TAction
      Caption = 'F10.預約'
      ShortCut = 121
      OnExecute = Action_F10Execute
    end
    object Action_F11: TAction
      Caption = 'F11.拍照'
      ShortCut = 122
      OnExecute = Action_F11Execute
    end
    object Action_CtrlP: TAction
      Caption = 'Ctrl+P.照片'
      ShortCut = 16464
      OnExecute = Action_CtrlPExecute
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object ZQuery_wio: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT wiodate,wiplace FROM wio')
    Params = <>
    Left = 544
    Top = 56
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 560
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 88
    object N1: TMenuItem
      Action = Action_F11
    end
    object N2: TMenuItem
      Action = Action_CtrlP
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
    Left = 512
    Top = 56
  end
end
