object HistoryRepForm: THistoryRepForm
  Left = 253
  Top = 134
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'æ˙•v¶Á™´≤Œ≠pß@∑~'
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
  object RzPanelBrowse: TRzPanel
    Left = 0
    Top = 60
    Width = 784
    Height = 348
    Align = alClient
    Color = clHighlight
    TabOrder = 5
    object wwDBGrid2: TwwDBGrid
      Left = 281
      Top = 2
      Width = 501
      Height = 344
      Selected.Strings = (
        'wisno'#9'4'#9'Ωs∏π'#9'F'#9
        'winame'#9'8'#9'¶Á™A'#9#9
        'wiitem'#9'6'#9'™·¶‚'#9#9
        'wiwash'#9'4'#9'¨~™k'#9#9
        'wiquty'#9'3'#9'•Û'#9'F'#9
        'wisum'#9'4'#9'§p≠p'#9#9
        'wiodate'#9'9'#9'®˙•Û§È¥¡'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 12845056
      DataSource = wwDSstbwio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      IndicatorIconColor = clYellow
      PaintOptions.ActiveRecordColor = clHighlight
    end
    object wwDBGrid1: TwwDBGrid
      Left = 2
      Top = 2
      Width = 279
      Height = 344
      Selected.Strings = (
        'wicode'#9'6'#9'¨~≥Ê∏π'#9#9
        'wototal'#9'6'#9'¡`™˜√B'#9#9
        'widate'#9'9'#9'¶¨•Û§È¥¡'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      Color = 12845056
      DataSource = wwDSstawo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -19
      TitleFont.Name = '≤”©˙≈È'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorIconColor = clYellow
      PaintOptions.ActiveRecordColor = clHighlight
      GroupFieldName = 'wicode'
    end
  end
  object PanelWicode: TPanel
    Left = 456
    Top = 152
    Width = 201
    Height = 113
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label7: TLabel
      Left = 21
      Top = 54
      Width = 56
      Height = 27
      Caption = '¨~≥Ê'
    end
    object Label13: TLabel
      Left = 5
      Top = 5
      Width = 191
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '¨~¶Á≥Ê¨d∏ﬂ'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Editwicode: TEdit
      Left = 82
      Top = 50
      Width = 92
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EditwicodeKeyDown
    end
  end
  object RzToolbarF7: TRzToolbar
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
    Font.Height = -12
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF2
      RzToolbarButtonF4
      RzToolbarButtonF5
      RzToolbarButtonF6
      RzToolbarButton1
      RzToolbarButtonF9
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 150
      Height = 22
      Action = ActionF1
      Caption = 'F1.´»§·æ˙•v∏ÍÆ∆¨d∏ﬂ'
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
    object RzToolbarButtonF2: TRzToolbarButton
      Left = 154
      Top = 3
      Width = 100
      Height = 22
      Action = ActionF2
      Caption = 'F2.¨~≥Ê¨d∏ﬂ'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF5: TRzToolbarButton
      Left = 354
      Top = 3
      Width = 100
      Height = 22
      Action = ActionF5
      Caption = 'F5.æ„∏π¨d∏ﬂ'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF4: TRzToolbarButton
      Left = 254
      Top = 3
      Width = 100
      Height = 22
      Action = ActionF4
      Caption = 'F4.ßR∞£æ˙•v'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 644
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF9
      Caption = 'F9.¶C¶L'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF6: TRzToolbarButton
      Left = 454
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF6
      Caption = 'F6.πL±b'
      HotNumGlyphs = 0
    end
    object RzToolbarButton1: TRzToolbarButton
      Left = 544
      Top = 3
      Width = 100
      Height = 22
      Action = ActionF7
      Caption = 'F7.¥_≠ÏπL±b'
      HotNumGlyphs = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 60
    Align = alTop
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 10
      Top = 6
      Width = 66
      Height = 21
      Caption = '´»§·∏π'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 85
      Top = 6
      Width = 44
      Height = 21
      Caption = '©m¶W'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 180
      Top = 6
      Width = 44
      Height = 21
      Caption = 'πq∏‹'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 415
      Top = 6
      Width = 88
      Height = 21
      Caption = '≤{¶≥æl√B'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 10
      Top = 32
      Width = 65
      Height = 20
      Color = clNavy
      DataField = 'crcode'
      DataSource = wwDSstawo
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 85
      Top = 32
      Width = 89
      Height = 20
      Color = clNavy
      DataField = 'crname'
      DataSource = wwDSstawo
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 180
      Top = 32
      Width = 112
      Height = 20
      Color = clNavy
      DataField = 'crtel'
      DataSource = wwDSstawo
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 298
      Top = 32
      Width = 112
      Height = 20
      Color = clNavy
      DataField = 'crtela'
      DataSource = wwDSstawo
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 415
      Top = 32
      Width = 88
      Height = 20
      Alignment = taRightJustify
      Color = clNavy
      DataField = 'crmoney'
      DataSource = wwDSstawo
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Panelwisno: TPanel
    Left = 456
    Top = 240
    Width = 201
    Height = 113
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label6: TLabel
      Left = 21
      Top = 54
      Width = 56
      Height = 27
      Caption = 'æ„∏π'
    end
    object Label12: TLabel
      Left = 5
      Top = 5
      Width = 191
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'æ„∏π¨d∏ﬂ'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Editwisno: TEdit
      Left = 82
      Top = 50
      Width = 92
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EditwisnoKeyDown
    end
  end
  object PanelDelete: TPanel
    Left = 72
    Top = 248
    Width = 209
    Height = 137
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 48
      Width = 56
      Height = 27
      Caption = '§È¥¡'
    end
    object Label11: TLabel
      Left = 5
      Top = 5
      Width = 199
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'ßR∞£∏ÍÆ∆'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MaskEditDel: TMaskEdit
      Left = 74
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
      OnKeyDown = MaskEditDelKeyDown
    end
    object Button2: TButton
      Left = 56
      Top = 96
      Width = 105
      Height = 25
      Caption = '∂}©lßR∞£'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object PanelDateSet: TPanel
    Left = 64
    Top = 80
    Width = 289
    Height = 209
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label8: TLabel
      Left = 32
      Top = 88
      Width = 88
      Height = 21
      Caption = '∂}©l§È¥¡'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 32
      Top = 128
      Width = 88
      Height = 21
      Caption = 'µ≤ßÙ§È¥¡'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 279
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '≥]©w§È¥¡'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 32
      Top = 48
      Width = 88
      Height = 21
      Caption = '´»§·Ωs∏π'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 208
      Top = 51
      Width = 23
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = SpeedButton1Click
    end
    object MaskEditDate1: TMaskEdit
      Left = 129
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
      OnKeyDown = MaskEditDate1KeyDown
    end
    object MaskEditDate2: TMaskEdit
      Left = 129
      Top = 124
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
      TabOrder = 2
      Text = '   /  /  '
      OnKeyDown = MaskEditDate2KeyDown
    end
    object Edit_crcode: TEdit
      Left = 129
      Top = 43
      Width = 72
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = Edit_crcodeExit
      OnKeyDown = Edit_crcodeKeyDown
    end
    object ButtonF1: TButton
      Left = 107
      Top = 169
      Width = 75
      Height = 25
      Caption = 'ΩT©w'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = ButtonF1Click
    end
  end
  object Panel_F6: TPanel
    Left = 272
    Top = 168
    Width = 289
    Height = 169
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object Label15: TLabel
      Left = 23
      Top = 45
      Width = 88
      Height = 21
      Caption = 'µ≤ßÙ§È¥¡'
    end
    object Label16: TLabel
      Left = 5
      Top = 5
      Width = 279
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'πL±b§È¥¡'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 23
      Top = 77
      Width = 246
      Height = 43
      AutoSize = False
      Caption = '¶π§È¥¡´e©“¶≥§w®˙•Û¶Á™´'#13'πL¿…¶‹æ˙•v∏ÍÆ∆'
    end
    object MaskEdit1: TMaskEdit
      Left = 132
      Top = 36
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
      OnKeyDown = MaskEdit1KeyDown
    end
    object Button1: TButton
      Left = 91
      Top = 126
      Width = 121
      Height = 33
      Caption = '∂}©lπL±b'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel_F7: TPanel
    Left = 416
    Top = 168
    Width = 289
    Height = 174
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    object Label18: TLabel
      Left = 32
      Top = 48
      Width = 88
      Height = 21
      Caption = '∂}©l§È¥¡'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 32
      Top = 88
      Width = 88
      Height = 21
      Caption = 'µ≤ßÙ§È¥¡'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 5
      Top = 5
      Width = 279
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '¥_≠ÏπL±b§È¥¡'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MaskEditRSD: TMaskEdit
      Left = 129
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
      OnKeyDown = MaskEditRSDKeyDown
    end
    object MaskEditRED: TMaskEdit
      Left = 129
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
      OnKeyDown = MaskEditREDKeyDown
    end
    object Button3: TButton
      Left = 91
      Top = 128
      Width = 121
      Height = 33
      Caption = '∂}©l¶^¥_'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object PanelPBar: TPanel
    Left = 224
    Top = 210
    Width = 313
    Height = 85
    BevelWidth = 3
    Color = clFuchsia
    TabOrder = 7
    object RzProgressBar1: TRzProgressBar
      Left = 3
      Top = 30
      Width = 307
      Height = 27
      Align = alTop
      BarStyle = bsGradient
      BorderWidth = 0
      InteriorOffset = 0
      PartsComplete = 0
      Percent = 50
      TotalParts = 0
    end
    object LabelWait: TLabel
      Left = 3
      Top = 3
      Width = 307
      Height = 27
      Align = alTop
      Caption = '∏ÍÆ∆≥B≤z§§°AΩ–µy≠‘...'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label_rec: TLabel
      Left = 3
      Top = 57
      Width = 132
      Height = 21
      Caption = '≥B≤z¡`µßº∆:0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object Button4: TButton
      Left = 275
      Top = 57
      Width = 35
      Height = 25
      Caption = '§§¬_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 56
    object ActionF1: TAction
      Caption = 'F1.´»§·æ˙•v∏ÍÆ∆¨d∏ﬂ'
      ShortCut = 112
      OnExecute = ActionF1Execute
    end
    object ActionF2: TAction
      Caption = 'F2.¨~≥Ê¨d∏ﬂ'
      ShortCut = 113
      OnExecute = ActionF2Execute
    end
    object ActionF3: TAction
      Caption = 'F3.´»§·¨d∏ﬂ'
      ShortCut = 114
    end
    object ActionF4: TAction
      Caption = 'F4.ßR∞£æ˙•v'
      ShortCut = 115
      OnExecute = ActionF4Execute
    end
    object ActionF5: TAction
      Caption = 'F5.æ„∏π¨d∏ﬂ'
      ShortCut = 116
      OnExecute = ActionF5Execute
    end
    object ActionF6: TAction
      Caption = 'F6.πL±b'
      ShortCut = 117
      OnExecute = ActionF6Execute
    end
    object ActionF7: TAction
      Caption = 'F7.¥_≠ÏπL±b'
      ShortCut = 118
      OnExecute = ActionF7Execute
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
    Password = 'root'
    Catalog = 'washshop'
    DesignConnection = True
    SQLHourGlass = True
    Left = 464
    Top = 56
  end
  object ZQueryStawo: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM stawo')
    Params = <>
    Left = 500
    Top = 56
    object ZQueryStawowicode: TStringField
      DisplayLabel = '¨~≥Ê∏π'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQueryStawowototal: TFloatField
      DisplayLabel = '¡`™˜√B'
      DisplayWidth = 6
      FieldName = 'wototal'
      Required = True
    end
    object ZQueryStawowidate: TStringField
      DisplayLabel = '¶¨•Û§È¥¡'
      DisplayWidth = 9
      FieldName = 'widate'
      Required = True
      Size = 10
    end
    object ZQueryStawocrcode: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Visible = False
      Size = 5
    end
    object ZQueryStawowopsen: TFloatField
      DisplayWidth = 10
      FieldName = 'wopsen'
      Required = True
      Visible = False
    end
    object ZQueryStawowoptotal: TFloatField
      DisplayWidth = 10
      FieldName = 'woptotal'
      Required = True
      Visible = False
    end
    object ZQueryStawoworealmo: TFloatField
      DisplayWidth = 10
      FieldName = 'worealmo'
      Required = True
      Visible = False
    end
    object ZQueryStawowoowimo: TFloatField
      DisplayWidth = 10
      FieldName = 'woowimo'
      Required = True
      Visible = False
    end
    object ZQueryStawowitime: TStringField
      DisplayWidth = 8
      FieldName = 'witime'
      Required = True
      Visible = False
      Size = 8
    end
    object ZQueryStawostoverdat: TStringField
      DisplayWidth = 10
      FieldName = 'stoverdat'
      Required = True
      Visible = False
      Size = 10
    end
    object ZQueryStawocrname: TStringField
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
    object ZQueryStawocrtel: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Visible = False
      Size = 10
      Lookup = True
    end
    object ZQueryStawocrmoney: TFloatField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Visible = False
      Lookup = True
    end
    object ZQueryStawocrtela: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crtela'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtela'
      KeyFields = 'crcode'
      Visible = False
      Size = 10
      Lookup = True
    end
    object ZQueryStawocrtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 6
      Lookup = True
    end
  end
  object wwDSstawo: TwwDataSource
    DataSet = ZQueryStawo
    Left = 536
    Top = 57
  end
  object ZQueryStbwio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM stbwio')
    Params = <>
    MasterFields = 'wicode'
    MasterSource = wwDSstawo
    LinkedFields = 'wicode'
    Left = 500
    Top = 88
    object ZQueryStbwiowisno: TStringField
      DisplayLabel = 'Ωs∏π'
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 6
    end
    object ZQueryStbwiowiname: TStringField
      DisplayLabel = '¶Á™A'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQueryStbwiowiitem: TStringField
      DisplayLabel = '™·¶‚'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQueryStbwiowiwash: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQueryStbwiowiquty: TIntegerField
      DisplayLabel = '•Û'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object ZQueryStbwiowisum: TFloatField
      DisplayLabel = '§p≠p'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object ZQueryStbwiowiodate: TStringField
      DisplayLabel = '®˙•Û§È¥¡'
      DisplayWidth = 9
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQueryStbwiowiwamo: TFloatField
      DisplayWidth = 10
      FieldName = 'wiwamo'
      Visible = False
    end
    object ZQueryStbwiowiexkind: TStringField
      DisplayWidth = 10
      FieldName = 'wiexkind'
      Visible = False
      Size = 10
    end
    object ZQueryStbwiowiexmo: TFloatField
      DisplayWidth = 10
      FieldName = 'wiexmo'
      Visible = False
    end
    object ZQueryStbwiowiurge: TStringField
      DisplayWidth = 6
      FieldName = 'wiurge'
      Required = True
      Visible = False
      Size = 1
    end
    object ZQueryStbwiowiday: TStringField
      DisplayWidth = 5
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object ZQueryStbwiowimdate: TStringField
      DisplayWidth = 9
      FieldName = 'wimdate'
      Visible = False
      Size = 9
    end
    object ZQueryStbwiowiotime: TTimeField
      DisplayWidth = 10
      FieldName = 'wiotime'
      Visible = False
    end
    object ZQueryStbwiowiplace: TStringField
      DisplayWidth = 7
      FieldName = 'wiplace'
      Visible = False
      Size = 4
    end
    object ZQueryStbwiowidate: TStringField
      DisplayWidth = 9
      FieldName = 'widate'
      Visible = False
      Size = 9
    end
    object ZQueryStbwiowimark: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object ZQueryStbwioindate: TStringField
      DisplayWidth = 9
      FieldName = 'indate'
      Visible = False
      Size = 9
    end
    object ZQueryStbwiomark: TStringField
      DisplayWidth = 4
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object ZQueryStbwiowisel: TStringField
      DisplayWidth = 5
      FieldName = 'wisel'
      Visible = False
      Size = 1
    end
    object ZQueryStbwiopps: TIntegerField
      DisplayWidth = 10
      FieldName = 'pps'
      Visible = False
    end
    object ZQueryStbwiopicture: TStringField
      DisplayWidth = 20
      FieldName = 'picture'
      Visible = False
    end
    object ZQueryStbwiowiacc: TStringField
      DisplayWidth = 10
      FieldName = 'wiacc'
      Visible = False
      Size = 10
    end
    object ZQueryStbwiowimemo: TStringField
      DisplayWidth = 10
      FieldName = 'wimemo'
      Visible = False
      Size = 10
    end
    object ZQueryStbwiocrcode: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Visible = False
      Size = 5
    end
    object ZQueryStbwiowicode: TStringField
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Visible = False
      Size = 6
    end
    object ZQueryStbwiowitime: TTimeField
      FieldName = 'witime'
    end
  end
  object wwDSstbwio: TwwDataSource
    DataSet = ZQueryStbwio
    Left = 536
    Top = 89
  end
  object ZConnection2: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    User = 'root'
    Left = 432
    Top = 348
  end
  object ZQuerystawo_del: TZQuery
    Connection = ZConnection2
    SQL.Strings = (
      'select * from stawo')
    Params = <>
    Left = 464
    Top = 348
  end
  object ZQuerystbwio_del: TZQuery
    Connection = ZConnection2
    SQL.Strings = (
      'SELECT * FROM stbwio')
    Params = <>
    Left = 464
    Top = 380
  end
  object ZQuerystawo_org: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from stawo')
    Params = <>
    Left = 336
    Top = 348
  end
  object ZQuerystbwio_org: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM stbwio')
    Params = <>
    MasterFields = 'wicode'
    LinkedFields = 'wicode'
    Left = 336
    Top = 380
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM stbwio')
    Params = <>
    Left = 508
    Top = 368
    object StringField1: TStringField
      DisplayLabel = 'Ωs∏π'
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 4
    end
    object StringField2: TStringField
      DisplayLabel = '¶Á™A'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object StringField3: TStringField
      DisplayLabel = '™·¶‚'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object StringField4: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object IntegerField1: TIntegerField
      DisplayLabel = '•Û'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object FloatField1: TFloatField
      DisplayLabel = '§p≠p'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object StringField5: TStringField
      DisplayLabel = '®˙•Û§È¥¡'
      DisplayWidth = 9
      FieldName = 'wiodate'
      Size = 9
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'wiwamo'
      Visible = False
    end
    object StringField6: TStringField
      DisplayWidth = 10
      FieldName = 'wiexkind'
      Visible = False
      Size = 10
    end
    object FloatField3: TFloatField
      DisplayWidth = 10
      FieldName = 'wiexmo'
      Visible = False
    end
    object StringField7: TStringField
      DisplayWidth = 6
      FieldName = 'wiurge'
      Required = True
      Visible = False
      Size = 1
    end
    object StringField8: TStringField
      DisplayWidth = 5
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object StringField9: TStringField
      DisplayWidth = 9
      FieldName = 'wimdate'
      Visible = False
      Size = 9
    end
    object TimeField1: TTimeField
      DisplayWidth = 10
      FieldName = 'wiotime'
      Visible = False
    end
    object StringField10: TStringField
      DisplayWidth = 7
      FieldName = 'wiplace'
      Visible = False
      Size = 4
    end
    object StringField11: TStringField
      DisplayWidth = 9
      FieldName = 'widate'
      Visible = False
      Size = 9
    end
    object StringField12: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object StringField13: TStringField
      DisplayWidth = 9
      FieldName = 'indate'
      Visible = False
      Size = 9
    end
    object StringField14: TStringField
      DisplayWidth = 4
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object StringField15: TStringField
      DisplayWidth = 5
      FieldName = 'wisel'
      Visible = False
      Size = 1
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'pps'
      Visible = False
    end
    object StringField16: TStringField
      DisplayWidth = 20
      FieldName = 'picture'
      Visible = False
    end
    object StringField17: TStringField
      DisplayWidth = 10
      FieldName = 'wiacc'
      Visible = False
      Size = 10
    end
    object StringField18: TStringField
      DisplayWidth = 10
      FieldName = 'wimemo'
      Visible = False
      Size = 10
    end
    object StringField19: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Visible = False
      Size = 5
    end
    object StringField20: TStringField
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Visible = False
      Size = 6
    end
    object ZQuery1crtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQuery1crtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 6
      Lookup = True
    end
    object ZQuery1crname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
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
      'var'
      '  grcnt: Integer=1;    '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDS_Wiowicode.Visible:=False;           '
      '    frxDBDS_Wiowidate.Visible:=False;'
      '    frxDBDS_Wocrname.Visible:=False;  '
      '    frxDBDS_Wocrtel.Visible:=False;          '
      '    end'
      '  else   '
      '    begin'
      '    frxDBDS_Wiowicode.Visible:=True;         '
      '    frxDBDS_Wiowidate.Visible:=True;'
      '    frxDBDS_Wocrname.Visible:=True;'
      '    frxDBDS_Wocrtel.Visible:=True;          '
      '    end;  '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=grcnt+1;  '
      'end;    '
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=1;  '
      'end;  '
      ''
      'begin'
      ''
      'end.')
    Left = 512
    Top = 336
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_Wio
        DataSetName = 'frxDBDS_Wio'
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
          Width = 238.11029236
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
          Left = 13.228355
          Top = 26.45671
          Width = 752.12647
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÂÆ¢Êà∂Ê≠∑Âè≤Ë°£Áâ©ÊòéÁ¥∞Ë°®‚òÜ‚òÜ‚òÜ')
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
          Width = 249.44898
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
        Height = 37.67718
        Top = 120.94496
        Width = 778.58318
        object Memo34: TfrxMemoView
          Left = 18.89765
          Top = 15.11812
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 79.37013
          Top = 15.11812
          Width = 71.81107
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 154.96073
          Top = 15
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óË°£ÂñÆËôü')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 294.80334
          Top = 15
          Width = 37.7953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥Ëôü')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 343.93723
          Top = 15
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
          Left = 404.40971
          Top = 15
          Width = 68.03154
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
        object Memo18: TfrxMemoView
          Left = 483.77984
          Top = 15
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
          Top = 26.33859
          Width = 752.12647
          Height = 11.33859
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
        object Memo30: TfrxMemoView
          Left = 517.79561
          Top = 15
          Width = 37.7953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 563.14997
          Top = 15
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Â∞èË®à')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 222.99227
          Top = 15
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂‰ª∂Êó•Êúü')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 631.18151
          Top = 15
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êáâ‰∫§Êó•Êúü')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 706.77211
          Top = 15
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âèñ‰ª∂Êó•Êúü')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 241.88992
        Width = 778.58318
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_Wio
        DataSetName = 'frxDBDS_Wio'
        RowCount = 0
        object frxDBDS_Wocrname: TfrxMemoView
          Left = 18.89765
          Width = 60.47248
          Height = 18.89765
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."crname"]')
          ParentFont = False
        end
        object frxDBDS_Wocrtel: TfrxMemoView
          Left = 79.37013
          Width = 71.81107
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."crtel"]')
          ParentFont = False
        end
        object frxDBDS_Wiowicode: TfrxMemoView
          Left = 154.96073
          Width = 64.25201
          Height = 18.89765
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."wicode"]')
          ParentFont = False
        end
        object frxDBDS_Wiowidate: TfrxMemoView
          Left = 222.99227
          Width = 68.03154
          Height = 18.89765
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."widate"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 294.80334
          Width = 37.7953
          Height = 18.89765
          DataField = 'wisno'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."wisno"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 343.93723
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."wiitem"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 404.40971
          Width = 68.03154
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."winame"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 483.77984
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiwash'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."wiwash"]')
          ParentFont = False
        end
        object frxDBDataset1wiquty: TfrxMemoView
          Left = 517.79561
          Width = 37.7953
          Height = 18.89765
          DataField = 'wiquty'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wio."wiquty"]')
          ParentFont = False
        end
        object frxDBDataset1wisum: TfrxMemoView
          Left = 563.14997
          Width = 64.25201
          Height = 18.89765
          DataField = 'wisum'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wio."wisum"]')
          ParentFont = False
        end
        object frxDBDataset1wiurge: TfrxMemoView
          Left = 631.62245
          Width = 64.2519685
          Height = 18.89765
          DataField = 'wimdate'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."wimdate"]')
          ParentFont = False
        end
        object frxDBDataset1wimemo: TfrxMemoView
          Left = 706.77211
          Width = 64.25201
          Height = 18.89765
          DataField = 'wiodate'
          DataSet = frxDBDS_Wio
          DataSetName = 'frxDBDS_Wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wio."wiodate"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 29.7953
        Top = 283.46475
        Width = 778.58318
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object SysMemo1: TfrxSysMemoView
          Left = 461.10266
          Width = 52.91342
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Wio."wisum">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 404.40971
          Width = 37.7953
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Wio."wiquty">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 18.89765
          Top = 10.89765
          Width = 752.12647
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 306.14193
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Êú¨ÂñÆÂêàË®àÔºö')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 514.01608
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
          Left = 442.20501
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
      end
      object ReportSummary1: TfrxReportSummary
        Height = 37.7953
        Top = 374.17347
        Width = 778.58318
        object SysMemo4: TfrxSysMemoView
          Left = 461.10266
          Width = 52.91342
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Wio."wisum">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 404.40971
          Width = 37.7953
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Wio."wiquty">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 306.14193
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 18.89765
          Top = 18.89765
          Width = 752.12647
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
          Left = 514.01608
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
        object Memo26: TfrxMemoView
          Left = 442.20501
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
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 219.21274
        Width = 778.58318
        Condition = 'frxDBDS_Wio."wicode"'
      end
    end
  end
  object frxDBDS_Wio: TfrxDBDataset
    UserName = 'frxDBDS_Wio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wisno=wisno'
      'winame=winame'
      'wiitem=wiitem'
      'wiwash=wiwash'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiodate=wiodate'
      'wiwamo=wiwamo'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wiurge=wiurge'
      'widay=widay'
      'wimdate=wimdate'
      'wiotime=wiotime'
      'wiplace=wiplace'
      'widate=widate'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'wisel=wisel'
      'pps=pps'
      'picture=picture'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'crcode=crcode'
      'wicode=wicode'
      'crtel=crtel'
      'crtelb=crtelb'
      'crname=crname')
    DataSet = ZQuery1
    Left = 544
    Top = 336
  end
  object frxDBDS_Compy: TfrxDBDataset
    UserName = 'frxDBDS_Compy'
    CloseDataSource = False
    DataSet = WDM.ZTableCompy
    Left = 544
    Top = 368
  end
  object ZQueryWio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wio')
    Params = <>
    Left = 604
    Top = 120
  end
  object ZQueryWo: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wo')
    Params = <>
    Left = 572
    Top = 120
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 536
    Top = 120
  end
end
