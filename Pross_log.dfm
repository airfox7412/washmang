object Pross_logForm: TPross_logForm
  Left = 252
  Top = 132
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '來客紀錄'
  ClientHeight = 462
  ClientWidth = 805
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
    Top = 0
    Width = 805
    Height = 433
    Selected.Strings = (
      'pross_date'#9'9'#9'日期'#9'F'#9
      'pross_time'#9'8'#9'時間'#9'F'#9
      'crcode'#9'5'#9'客編'#9#9
      'crtelb'#9'4'#9'電腦號'#9'F'
      'pross'#9'5'#9'狀態'#9#9
      'crname'#9'8'#9'姓名'#9#9
      'crtel'#9'10'#9'電話'#9#9
      'cradr'#9'50'#9'地址'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 12845056
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 12845056
    DataSource = WDM.wwDS_pross_log
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
    OnDblClick = wwDBGrid1DblClick
    OnKeyDown = wwDBGrid1KeyDown
    PaintOptions.ActiveRecordColor = clHighlight
    GroupFieldName = 'pross_date'
  end
  object PanelDateSet: TPanel
    Left = 296
    Top = 128
    Width = 329
    Height = 249
    BevelWidth = 5
    Color = clFuchsia
    TabOrder = 1
    object Label8: TLabel
      Left = 8
      Top = 58
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
      Left = 5
      Top = 5
      Width = 319
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '查詢'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '標楷體'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 176
      Top = 58
      Width = 28
      Height = 27
      Caption = '∼'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '標楷體'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 106
      Width = 112
      Height = 27
      Caption = '客戶編號'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '標楷體'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 154
      Width = 112
      Height = 27
      Caption = '電腦編號'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = '標楷體'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditDate1: TMaskEdit
      Left = 64
      Top = 56
      Width = 111
      Height = 37
      AutoSelect = False
      EditMask = '999/99/99;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeMode = imSAlpha
      MaxLength = 9
      ParentFont = False
      TabOrder = 0
      Text = '   /  /  '
      OnKeyDown = MaskEditDate1KeyDown
    end
    object MaskEditDate2: TMaskEdit
      Left = 201
      Top = 54
      Width = 111
      Height = 37
      AutoSelect = False
      EditMask = '999/99/99;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeMode = imSAlpha
      MaxLength = 9
      ParentFont = False
      TabOrder = 1
      Text = '   /  /  '
      OnKeyDown = MaskEditDate2KeyDown
    end
    object EditCode: TEdit
      Left = 128
      Top = 104
      Width = 185
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = EditCodeKeyDown
    end
    object Button1: TButton
      Left = 128
      Top = 200
      Width = 97
      Height = 33
      Caption = '查詢'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = '新細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object EditTelb: TEdit
      Left = 128
      Top = 152
      Width = 185
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = EditTelbKeyDown
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 433
    Width = 805
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
    TabOrder = 2
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F1
      Caption = 'F1.查詢'
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
  object ActionList1: TActionList
    Left = 456
    Top = 16
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
end
