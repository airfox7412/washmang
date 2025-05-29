object DailyRepForm: TDailyRepForm
  Left = 200
  Top = 128
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '¶Á™´¶¨•Û≤Œ≠pß@∑~'
  ClientHeight = 520
  ClientWidth = 782
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
    Top = 33
    Width = 782
    Height = 433
    Selected.Strings = (
      'wicode'#9'6'#9'¨~≥Ê∏π'
      'wisno'#9'4'#9'Ωs∏π'
      'wiitem'#9'6'#9'™·¶‚'
      'winame'#9'8'#9'¶Á™´¶W∫Ÿ'
      'wiacc'#9'6'#9'∞t•Û'
      'wimemo'#9'7'#9'¶Á™Aµ˘©˙'
      'wiwamo'#9'4'#9'≥Êª˘'
      'wiquty'#9'3'#9'•Û'
      'wisum'#9'4'#9'§p≠p'
      'wiurge'#9'2'#9'´Ê'
      'wimdate'#9'9'#9'¿≥•Ê§È¥¡'
      'wiplace'#9'4'#9'¶Ï∏m'
      'wiwash'#9'4'#9'¨~™k'
      'wiexkind'#9'7'#9'•[§u'
      'wiexmo'#9'7'#9'§u∂O'
      'wiodate'#9'10'#9'®˙•Û§È¥¡'
      'wiotime'#9'10'#9'®˙•ÛÆ…∂°'
      'widate'#9'10'#9'¶¨•Û§È¥¡')
    IniAttributes.Delimiter = ';;'
    TitleColor = 12845056
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 12845056
    DataSource = wwDSWio
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
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
  object RzToolbarF12: TRzToolbar
    Left = 0
    Top = 466
    Width = 782
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
      RzToolbarButtonF3
      RzToolbarButtonF5
      RzToolbarButtonF7
      RzToolbarButtonF8
      RzToolbarButtonF9
      RzToolbarButtonF10
      RzToolbarButtonF11
      RzToolbarButtonF12
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 95
      Height = 22
      Action = ActionF1
      Caption = 'F1.≥]©w§È¥¡'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF2: TRzToolbarButton
      Left = 99
      Top = 3
      Width = 95
      Height = 22
      Action = ActionF2
      Caption = 'F2.º–≈“¶C¶L'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 337
      Top = 28
      Width = 95
      Height = 22
      Action = ActionESC
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF8: TRzToolbarButton
      Left = 514
      Top = 3
      Width = 95
      Height = 22
      Action = ActionF8
      Caption = 'F8.§Îµ≤≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 609
      Top = 3
      Width = 95
      Height = 22
      Action = ActionF9
      Caption = 'F9.§uºt≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF7: TRzToolbarButton
      Left = 384
      Top = 3
      Width = 130
      Height = 22
      Action = ActionF7
      Caption = 'F7.§uºt¨~≥Ê≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 194
      Top = 3
      Width = 95
      Height = 22
      Action = ActionF3
      Caption = 'F3.¶Á™´≤Œ≠p'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF10: TRzToolbarButton
      Left = 4
      Top = 28
      Width = 104
      Height = 22
      Action = ActionF10
      Caption = 'F10.∫ﬁ≤z≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF5: TRzToolbarButton
      Left = 289
      Top = 3
      Width = 95
      Height = 22
      Action = ActionF5
      Caption = 'F5.•ÊØZ≥¯™Ì'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF11: TRzToolbarButton
      Left = 108
      Top = 28
      Width = 104
      Height = 22
      Action = ActionF11
      Caption = 'F11.πq∏£Ωs∏π'
      Enabled = False
      Visible = False
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF12: TRzToolbarButton
      Left = 212
      Top = 28
      Width = 125
      Height = 22
      Action = ActionF12
      Caption = 'F12. ∂}√ˆæ˜¨ˆø˝'
      HotNumGlyphs = 0
    end
  end
  object PanelDateSet: TPanel
    Left = 200
    Top = 80
    Width = 244
    Height = 134
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 112
      Height = 27
      Caption = '∂}©l§È¥¡'
    end
    object Label9: TLabel
      Left = 8
      Top = 88
      Width = 112
      Height = 27
      Caption = 'µ≤ßÙ§È¥¡'
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 234
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
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 33
    Align = alTop
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 176
      Height = 21
      Caption = '¶Á™´¶¨•Û≤Œ≠pß@∑~'
    end
    object Label2: TLabel
      Left = 338
      Top = 6
      Width = 22
      Height = 21
      Caption = '±q'
    end
    object Label3: TLabel
      Left = 469
      Top = 6
      Width = 22
      Height = 21
      Caption = '®Ï'
    end
    object Label4: TLabel
      Left = 608
      Top = 6
      Width = 88
      Height = 21
      Caption = '¡`≠p•Ûº∆'
    end
    object lbquty: TLabel
      Left = 696
      Top = 7
      Width = 81
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0•Û'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbDate1: TLabel
      Left = 368
      Top = 7
      Width = 99
      Height = 21
      Alignment = taRightJustify
      Caption = '099/01/01'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbDate2: TLabel
      Left = 497
      Top = 7
      Width = 99
      Height = 21
      Alignment = taRightJustify
      Caption = '099/01/01'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = 'º–∑¢≈È'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object PanelMonth: TPanel
    Left = 248
    Top = 224
    Width = 185
    Height = 97
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label5: TLabel
      Left = 16
      Top = 48
      Width = 56
      Height = 27
      Caption = '¶~§Î'
    end
    object Label11: TLabel
      Left = 5
      Top = 5
      Width = 175
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '§Îµ≤≥¯™Ì'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MaskEditMonth: TMaskEdit
      Left = 73
      Top = 44
      Width = 88
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
  object PanelWicode: TPanel
    Left = 392
    Top = 200
    Width = 334
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
    object Label7: TLabel
      Left = 21
      Top = 54
      Width = 56
      Height = 27
      Caption = '¨~≥Ê'
    end
    object Label12: TLabel
      Left = 180
      Top = 54
      Width = 28
      Height = 27
      Caption = '°„'
    end
    object Label13: TLabel
      Left = 5
      Top = 5
      Width = 324
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '≥]©w¨~¶Á≥Ê∞_®¥∏πΩX'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EditwicodeS: TEdit
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
      OnKeyDown = EditwicodeSKeyDown
    end
    object EditwicodeE: TEdit
      Left = 213
      Top = 50
      Width = 92
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = EditwicodeEKeyDown
    end
  end
  object PanelStick: TPanel
    Left = 384
    Top = 152
    Width = 130
    Height = 185
    Color = clFuchsia
    TabOrder = 1
    object Label6: TLabel
      Left = 8
      Top = 4
      Width = 116
      Height = 27
      Caption = 'º–≈“¶C¶L'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'º–∑¢≈È'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ListBox1: TListBox
      Left = 25
      Top = 37
      Width = 80
      Height = 132
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ItemHeight = 32
      Items.Strings = (
        '™Ω¶L'
        'æÓ¶L'
        '≥Ê∏π'
        '≥sƒÚ')
      ParentFont = False
      TabOrder = 0
      OnKeyDown = ListBox1KeyDown
      OnMouseDown = ListBox1MouseDown
    end
  end
  object PanelWash: TPanel
    Left = 80
    Top = 232
    Width = 161
    Height = 177
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object Label16: TLabel
      Left = 5
      Top = 5
      Width = 151
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '¨~™k'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ListBoxWash: TListBox
      Left = 20
      Top = 36
      Width = 120
      Height = 101
      ExtendedSelect = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ItemHeight = 27
      MultiSelect = True
      ParentFont = False
      TabOrder = 0
    end
    object ButtonPrint: TButton
      Left = 40
      Top = 144
      Width = 75
      Height = 25
      Caption = '¶C¶L'
      TabOrder = 1
      OnClick = ButtonPrintClick
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 56
    object ActionF1: TAction
      Caption = 'F1.≥]©w§È¥¡'
      ShortCut = 112
      OnExecute = ActionF1Execute
    end
    object ActionF2: TAction
      Caption = 'F2.º–≈“¶C¶L'
      ShortCut = 113
      OnExecute = ActionF2Execute
    end
    object ActionF3: TAction
      Caption = 'F3.¶Á™´≤Œ≠p'
      ShortCut = 114
      OnExecute = ActionF3Execute
    end
    object ActionF5: TAction
      Caption = 'F5.•ÊØZ≥¯™Ì'
      ShortCut = 116
      OnExecute = ActionF5Execute
    end
    object ActionF7: TAction
      Caption = 'F7.§uºt¨~≥Ê≥¯™Ì'
      ShortCut = 118
      OnExecute = ActionF7Execute
    end
    object ActionF8: TAction
      Caption = 'F8.§Îµ≤≥¯™Ì'
      ShortCut = 119
      OnExecute = ActionF8Execute
    end
    object ActionF9: TAction
      Caption = 'F9.§uºt≥¯™Ì'
      ShortCut = 120
      OnExecute = ActionF9Execute
    end
    object ActionF10: TAction
      Caption = 'F10.∫ﬁ≤z≥¯™Ì'
      ShortCut = 121
      OnExecute = ActionF10Execute
    end
    object ActionF11: TAction
      Caption = 'F11.πq∏£Ωs∏π'
      ShortCut = 122
      OnExecute = ActionF11Execute
    end
    object ActionESC: TAction
      Caption = 'Esc.¬˜∂}'
      ShortCut = 27
      OnExecute = ActionESCExecute
    end
    object CtrlAlt1: TAction
      Caption = 'CtrlAlt1'
      ShortCut = 49201
      OnExecute = CtrlAlt1Execute
    end
    object CtrlAlt2: TAction
      Caption = 'CtrlAlt2'
      ShortCut = 49202
      OnExecute = CtrlAlt2Execute
    end
    object CtrlAlt3: TAction
      Caption = 'CtrlAlt3'
      ShortCut = 49203
      OnExecute = CtrlAlt3Execute
    end
    object CtrlAltF3: TAction
      Caption = 'CtrlAltF3'
      ShortCut = 49266
      OnExecute = CtrlAltF3Execute
    end
    object ActionF4: TAction
      Caption = 'ActionF4'
      ShortCut = 115
      OnExecute = ActionF4Execute
    end
    object CtrlAltF7: TAction
      Caption = 'CtrlAltF7'
      ShortCut = 49270
      OnExecute = CtrlAltF7Execute
    end
    object CtrlAlt8: TAction
      Caption = 'CtrlAlt8'
      ShortCut = 49208
      OnExecute = CtrlAlt8Execute
    end
    object CtrlAltF9: TAction
      Caption = 'CtrlAltF9'
      ShortCut = 49272
      OnExecute = CtrlAltF9Execute
    end
    object CtrlAltF10: TAction
      Caption = 'CtrlAltF10'
      ShortCut = 49273
      OnExecute = CtrlAltF10Execute
    end
    object CtrlAltF5: TAction
      Caption = 'CtrlAltF5'
      ShortCut = 49268
      OnExecute = CtrlAltF5Execute
    end
    object ActionF12: TAction
      Caption = 'F12. ∂}√ˆæ˜¨ˆø˝'
      ShortCut = 123
      OnExecute = ActionF12Execute
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    Connected = True
    DesignConnection = True
    SQLHourGlass = True
    Left = 464
    Top = 56
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
    ReportOptions.LastChange = 40697.6618828588
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var                                                 '
      '  twamo: Extended=0;'
      '  grcnt: Integer=1;'
      '    '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  twamo:=twamo+(<frxDBDSWio."wiwamo">*<frxDBDSWio."wiquty">);'
      '  grcnt:=grcnt+1;'
      'end;    '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDSWiowicode.Visible:=False;    '
      '    frxDBDSWiocrname.Visible:=False;'
      '    frxDBDSWiocrtel.Visible:=False;'
      
        '    frxDBDSWiocrtelb.Visible:=False;                            ' +
        '              '
      '    end'
      '  else   '
      '    begin'
      '    frxDBDSWiowicode.Visible:=True;    '
      '    frxDBDSWiocrname.Visible:=True;          '
      '    frxDBDSWiocrtel.Visible:=True;'
      '    frxDBDSWiocrtelb.Visible:=True;'
      '    end;                     '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=1;                  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 608
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDSWio
        DataSetName = 'frxDBDSWio'
      end
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_cr
        DataSetName = 'frxDBDS_cr'
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
      PrintIfEmpty = False
      OnAfterPrint = 'Page1OnAfterPrint'
      object ReportTitle1: TfrxReportTitle
        Height = 79.37013
        Top = 18.89765
        Width = 778.58318
        object Memo1: TfrxMemoView
          Left = 16.33859
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
          Left = 7.55906
          Top = 26.45671
          Width = 763.46506
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÂ∑•Âª†Êó•Â†±Ë°®‚òÜ‚òÜ‚òÜ')
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
          Left = 79.37013
          Top = 58.69295
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
      end
      object Footer1: TfrxFooter
        Height = 102.04731
        Top = 347.71676
        Width = 778.58318
        object Memo27: TfrxMemoView
          Left = 15.11812
          Top = 83.14966
          Width = 755.906
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
        object Memo20: TfrxMemoView
          Left = 264.5671
          Top = 18.89765
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©‰ª∂Êï∏Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 362.83488
          Top = 18.89765
          Width = 120.94496
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSWio."wiquty">,MasterData1)]  ‰ª∂')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 264.5671
          Top = 41.57483
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®≠ÂÆöÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 362.83488
          Top = 41.57483
          Width = 120.94496
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[twamo]  ÂÖÉ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 264.5671
          Top = 64.25201
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶ÈöõÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 362.83488
          Top = 64.25201
          Width = 120.94496
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSWio."wisum">,MasterData1)]  ÂÖÉ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 15.11812
          Width = 755.906
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
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 264.5671
        Width = 778.58318
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDSWio
        DataSetName = 'frxDBDSWio'
        RowCount = 0
        object Memo36: TfrxMemoView
          Left = 253.22851
          Width = 45.35436
          Height = 18.89765
          DataField = 'wisno'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wisno"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 298.58287
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiitem"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 351.49629
          Width = 64.25201
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."winame"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 419.52783
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiacc'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiacc"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 472.44125
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiwash'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiwash"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 514.01608
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiwamo'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWio."wiwamo"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 570.70903
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiquty'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWio."wiquty"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 604.7248
          Width = 45.35436
          Height = 18.89765
          DataField = 'wisum'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWio."wisum"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 650.07916
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiurge'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWio."wiurge"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 684.09493
          Width = 86.92919
          Height = 18.89765
          DataField = 'wimemo'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wimemo"]')
          ParentFont = False
        end
        object frxDBDSWiocrname: TfrxMemoView
          Left = 71.81107
          Width = 49.13389
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crname"]')
          ParentFont = False
        end
        object frxDBDSWiowicode: TfrxMemoView
          Left = 15.11812
          Width = 49.13389
          Height = 18.89765
          DataField = 'wicode'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wicode"]')
          ParentFont = False
        end
        object frxDBDSWiocrtel: TfrxMemoView
          Left = 173.85838
          Width = 79.37013
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crtel"]')
          ParentFont = False
        end
        object frxDBDSWiocrtelb: TfrxMemoView
          Left = 124.72449
          Width = 49.13389
          Height = 18.89765
          DataField = 'crtelb'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crtelb"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.89765
        Top = 306.14193
        Width = 778.58318
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo48: TfrxMemoView
          Left = 15.11812
          Width = 755.906
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
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
      object GroupHeader1: TfrxGroupHeader
        Top = 241.88992
        Width = 778.58318
        Condition = 'frxDBDSWio."wicode"'
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.47244094
        Top = 120.94496
        Width = 778.58318
        object Memo7: TfrxMemoView
          Left = 15.11812
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
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 71.81107
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
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 253.22851
          Top = 26.45671
          Width = 45.35436
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
          Left = 302.3624
          Top = 26.45671
          Width = 45.35436
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
          Left = 351.49629
          Top = 26.45671
          Width = 60.47248
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
        object Memo17: TfrxMemoView
          Left = 419.52783
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
            'ÈÖç‰ª∂')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 472.44125
          Top = 26.45671
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
          Left = 721.89023
          Width = 49.13389
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 684.09493
          Top = -6.93889390390723E-18
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
          Left = 15.11812
          Top = 11.33859
          Width = 755.906
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
        object Memo29: TfrxMemoView
          Left = 514.01608
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
            'Ë®≠ÂÆöÈ°ç')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 570.70903
          Top = 26.45671
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 604.7248
          Top = 26.45671
          Width = 41.57483
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
        object Memo32: TfrxMemoView
          Left = 650.07916
          Top = 26.45671
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÊÄ•')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 684.09493
          Top = 26.45671
          Width = 86.92919
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®ªÊòé')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 15.11812
          Top = 41.57483
          Width = 755.906
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
        object Memo10: TfrxMemoView
          Left = 173.85838
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
            'ÈõªË©±')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 124.72449
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
            'ÈõªËÖ¶Ëôü')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDSWio: TfrxDBDataset
    UserName = 'frxDBDSWio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wicode=wicode'
      'wisno=wisno'
      'wiitem=wiitem'
      'winame=winame'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiwamo=wiwamo'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiurge=wiurge'
      'wimdate=wimdate'
      'wiplace=wiplace'
      'wiwash=wiwash'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wiodate=wiodate'
      'wiotime=wiotime'
      'widate=widate'
      'pps=pps'
      'picture=picture'
      'widay=widay'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'crcode=crcode'
      'crname=crname'
      'crtel=crtel'
      'crtelb=crtelb'
      'cradr=cradr'
      'crmoney=crmoney'
      'crvip=crvip')
    DataSet = ZQueryWio
    Left = 464
    Top = 88
  end
  object frxDBDS_cr: TfrxDBDataset
    UserName = 'frxDBDS_cr'
    CloseDataSource = False
    DataSet = WDM.ZQueryCust
    Left = 496
    Top = 120
  end
  object frxDBDS_Compy: TfrxDBDataset
    UserName = 'frxDBDS_Compy'
    CloseDataSource = False
    DataSet = WDM.ZTableCompy
    Left = 464
    Top = 120
  end
  object ZQueryWio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wio'
      'WHERE widate>='#39'099/06/20'#39' and widate<='#39'099/06/23'#39' '
      'ORDER BY crcode')
    Params = <>
    Left = 532
    Top = 120
    object StringField12: TStringField
      DisplayLabel = '¨~≥Ê∏π'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object StringField1: TStringField
      DisplayLabel = 'Ωs∏π'
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 6
    end
    object StringField2: TStringField
      DisplayLabel = '™·¶‚'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object StringField3: TStringField
      DisplayLabel = '¶Á™´¶W∫Ÿ'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object StringField7: TStringField
      DisplayLabel = '∞t•Û'
      DisplayWidth = 6
      FieldName = 'wiacc'
      Size = 10
    end
    object StringField8: TStringField
      DisplayLabel = '¶Á™Aµ˘©˙'
      DisplayWidth = 7
      FieldName = 'wimemo'
      Size = 10
    end
    object FloatField1: TFloatField
      DisplayLabel = '≥Êª˘'
      DisplayWidth = 4
      FieldName = 'wiwamo'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = '•Û'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object FloatField2: TFloatField
      DisplayLabel = '§p≠p'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object StringField5: TStringField
      DisplayLabel = '´Ê'
      DisplayWidth = 2
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object StringField6: TStringField
      DisplayLabel = '¿≥•Ê§È¥¡'
      DisplayWidth = 9
      FieldName = 'wimdate'
      Size = 10
    end
    object StringField11: TStringField
      DisplayLabel = '¶Ï∏m'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Size = 4
    end
    object StringField4: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object StringField9: TStringField
      DisplayLabel = '•[§u'
      DisplayWidth = 7
      FieldName = 'wiexkind'
      Size = 10
    end
    object FloatField3: TFloatField
      DisplayLabel = '§u∂O'
      DisplayWidth = 7
      FieldName = 'wiexmo'
    end
    object StringField15: TStringField
      DisplayLabel = '®˙•Û§È¥¡'
      DisplayWidth = 10
      FieldName = 'wiodate'
      Size = 10
    end
    object TimeField1: TTimeField
      DisplayLabel = '®˙•ÛÆ…∂°'
      DisplayWidth = 10
      FieldName = 'wiotime'
    end
    object StringField16: TStringField
      DisplayLabel = '¶¨•Û§È¥¡'
      DisplayWidth = 10
      FieldName = 'widate'
      Size = 10
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'ßÈ¶©'
      DisplayWidth = 4
      FieldName = 'pps'
      Visible = False
    end
    object StringField10: TStringField
      DisplayLabel = '∑”§˘'
      DisplayWidth = 11
      FieldName = 'picture'
      Visible = False
    end
    object StringField14: TStringField
      DisplayWidth = 2
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object StringField17: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object StringField18: TStringField
      DisplayWidth = 10
      FieldName = 'indate'
      Visible = False
      Size = 10
    end
    object StringField19: TStringField
      DisplayWidth = 1
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object StringField13: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Visible = False
      Size = 5
    end
    object StringField20: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Visible = False
      Size = 10
      Lookup = True
    end
    object StringField21: TStringField
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
    object ZQueryWiocrtel2: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Visible = False
      Size = 6
      Lookup = True
    end
    object StringField22: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'cradr'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'cradr'
      KeyFields = 'crcode'
      Visible = False
      Size = 50
      Lookup = True
    end
    object ZQueryWiocrmoney: TFloatField
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
    object ZQueryWiocrvip: TStringField
      FieldKind = fkLookup
      FieldName = 'crvip'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crvip'
      KeyFields = 'crcode'
      Size = 1
      Lookup = True
    end
  end
  object wwDSWio: TwwDataSource
    DataSet = ZQueryWio
    Left = 568
    Top = 121
  end
  object frxReportLabel: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 40483.7769096528
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 344
    Datasets = <
      item
        DataSet = frxDBDSWio
        DataSetName = 'frxDBDSWio'
      end
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_cr
        DataSetName = 'frxDBDS_cr'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 35
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 1
      BottomMargin = 1
      MirrorMargins = True
      ColumnWidth = 206
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        Height = 98.26771654
        Top = 18.89765
        Width = 778.58318
        Columns = 2
        ColumnWidth = 359.055118110236
        ColumnGap = 37.7952755905512
        DataSet = frxDBDSWio
        DataSetName = 'frxDBDSWio'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 14.89765
          Top = 68.03154
          Width = 49.13389
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crcode"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 133.70872
          Top = 68.03154
          Width = 64.25201
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."winame"]')
          ParentFont = False
        end
        object frxDBDataset1wiodate: TfrxMemoView
          Left = 73.25201
          Top = 68.03154
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiitem"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 64.69295
          Top = 68.03154
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 123.14966
          Top = 68.25201
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 198.51979
          Top = 68.03154
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 206.74026
          Top = 68.03154
          Width = 60.47248
          Height = 18.89765
          DataField = 'wicode'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wicode"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 18.89765
          Top = 7.55906
          Width = 188.9765
          Height = 49.13389
          DataField = 'crname'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -43
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crname"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 207.87415
          Top = 7.55906
          Width = 143.62204724
          Height = 49.13389
          DataField = 'wisno'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWio."wisno"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 265.5671
          Top = 68.03154
          Width = 7.55906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '-')
          ParentFont = False
        end
        object frxDBDSWiowiodate: TfrxMemoView
          Left = 273.12616
          Top = 68.03154
          Width = 71.81107
          Height = 18.89765
          DataField = 'widate'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."widate"]')
          ParentFont = False
        end
      end
    end
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 256
    Top = 345
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 256
    Top = 377
  end
  object ZQuery_sumname: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQuery_sumnameCalcFields
    SQL.Strings = (
      'SELECT * FROM sumname')
    Params = <>
    Left = 224
    Top = 345
    object ZQuery_sumnamesumname: TStringField
      FieldName = 'sumname'
      Size = 8
    end
    object ZQuery_sumnamesumwash: TStringField
      FieldName = 'sumwash'
      Size = 4
    end
    object ZQuery_sumnamesumwamo: TFloatField
      FieldName = 'sumwamo'
    end
    object ZQuery_sumnamesumquty: TFloatField
      FieldName = 'sumquty'
    end
    object ZQuery_sumnamesumsum: TFloatField
      FieldName = 'sumsum'
    end
    object ZQuery_sumnamesumosum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'sumosum'
      Calculated = True
    end
    object ZQuery_sumnamesumwsmo7: TFloatField
      FieldName = 'sumwsmo7'
    end
  end
  object frxReportF3: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 41933.4421239583
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDSSumName
        DataSetName = 'frxDBDSSumName'
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
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 5
      BottomMargin = 5
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
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
          Left = 11.33859
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
            '‚òÜ‚òÜ‚òÜË°£Áâ©ÂêçÁ®±Áµ±Ë®àË°®‚òÜ‚òÜ‚òÜ')
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
          Left = 82.14966
          Top = 58.69295
          Width = 241.88992
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
        object Memo14: TfrxMemoView
          Left = 158.74026
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
        object Memo16: TfrxMemoView
          Left = 15.11812
          Width = 56.69295
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
          Left = 362.83488
          Width = 56.69295
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë®≠ÂÆöÂñÆÂÉπ')
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
          Left = 15.11812
          Top = 11.33859
          Width = 763.46506
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
        object Memo30: TfrxMemoView
          Left = 234.33086
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '‰ª∂Êï∏')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 430.86642
          Width = 75.5906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë®≠ÂÆöÈ°çÂ∞èË®à')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 517.79561
          Width = 75.5906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂØ¶ÈöõÈáëÈ°ç')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 291.02381
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÁôæÂàÜÊØî')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 604.7248
          Width = 56.69295
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '‰ª£Â∑•Ë≤ª')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 204.09462
        Width = 778.58318
        DataSet = frxDBDSSumName
        DataSetName = 'frxDBDSSumName'
        RowCount = 0
        object frxDBDataset2sumname: TfrxMemoView
          Left = 15.11812
          Width = 64.25201
          Height = 18.89765
          DataField = 'sumname'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSSumName."sumname"]')
          ParentFont = False
        end
        object frxDBDataset2sumwash: TfrxMemoView
          Left = 158.74026
          Top = 1.38777878078145E-17
          Width = 30.23624
          Height = 18.89765
          DataField = 'sumwash'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSSumName."sumwash"]')
          ParentFont = False
        end
        object frxDBDataset2sumwamo: TfrxMemoView
          Left = 366.61441
          Width = 52.91342
          Height = 18.89765
          DataField = 'sumwamo'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumwamo"]')
          ParentFont = False
        end
        object frxDBDataset2sumquty: TfrxMemoView
          Left = 215.43321
          Width = 49.13389
          Height = 18.89765
          DataField = 'sumquty'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumquty"]')
          ParentFont = False
        end
        object frxDBDataset2sumsum: TfrxMemoView
          Left = 517.79561
          Width = 75.59055118
          Height = 18.89765
          DataField = 'sumsum'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumsum"]')
          ParentFont = False
        end
        object frxDBDataset2sumosum: TfrxMemoView
          Left = 430.86642
          Width = 75.59055118
          Height = 18.89765
          DataField = 'sumosum'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumosum"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 604.7248
          Width = 56.69290118
          Height = 18.89765
          DataField = 'sumwsmo7'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumwsmo7"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 71.81107
        Top = 245.66945
        Width = 778.58318
        object SysMemo3: TfrxSysMemoView
          Left = 113.3859
          Top = 25.22047
          Width = 37.79527559
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumquty">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 313.70099
          Top = 25.22047
          Width = 45.35433071
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumosum">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 215.43321
          Top = 25.22047
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®≠ÂÆöÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 432.27582
          Top = 25.22047
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶ÈöõÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 15.11812
          Top = 25.22047
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©‰ª∂Êï∏Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 575.89796
          Top = 25.22047
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
          Left = 151.1812
          Top = 25.22047
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
        object Memo26: TfrxMemoView
          Left = 15.11812
          Width = 759.68553
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
        object Memo27: TfrxMemoView
          Left = 15.11812
          Top = 52.91342
          Width = 763.46506
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
        object SysMemo5: TfrxSysMemoView
          Left = 530.32313
          Top = 25.33859
          Width = 45.35433071
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumsum">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 359.05535
          Top = 25.32283465
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
        object Memo12: TfrxMemoView
          Left = 638.74057
          Top = 25.32283465
          Width = 71.81107
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '‰ª£Â∑•Á∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 755.906
          Top = 25.32283465
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
        object SysMemo1: TfrxSysMemoView
          Left = 710.33117
          Top = 25.32283465
          Width = 45.35433071
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumwsmo7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDSSumName: TfrxDBDataset
    UserName = 'frxDBDSSumName'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sumname=sumname'
      'sumwash=sumwash'
      'sumwamo=sumwamo'
      'sumquty=sumquty'
      'sumsum=sumsum'
      'sumosum=sumosum'
      'sumwsmo7=sumwsmo7')
    DataSet = ZQuery_sumname
    Left = 224
    Top = 377
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = ZConnection1
    Params = <>
    Left = 532
    Top = 153
  end
  object frxReportF5: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 45794.5932369792
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
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
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      object ReportTitle2: TfrxReportTitle
        Height = 79.37013
        Top = 18.89765
        Width = 778.58318
        object Memo9: TfrxMemoView
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
        object Memo10: TfrxMemoView
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
        object Memo21: TfrxMemoView
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
        object Memo22: TfrxMemoView
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
        object Memo33: TfrxMemoView
          Align = baCenter
          Left = 11.33859
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
            '‚òÜ‚òÜ‚òÜÁèæÈáëÊî∂Ê¨æÊòéÁ¥∞Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
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
        object Memo_Widate: TfrxMemoView
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
      object PageHeader2: TfrxPageHeader
        Height = 60.47248
        Top = 120.94496
        Width = 778.58318
        object Memo36: TfrxMemoView
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
        object Memo37: TfrxMemoView
          Left = 56.69295
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
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 338.40971
          Top = 26.45671
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
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
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
        object Memo49: TfrxMemoView
          Left = 3.77953
          Top = 11.33859
          Width = 767.24459
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
        object Memo50: TfrxMemoView
          Left = 3.77953
          Top = 41.57483
          Width = 767.24459
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
        object Memo53: TfrxMemoView
          Left = 500.21305
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
            'Êî∂Ê¨æÊôÇÊ©ü')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 192.75603
          Top = 26.45671
          Width = 64.25197339
          Height = 18.89765
          AutoWidth = True
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
        object Memo56: TfrxMemoView
          Left = 264.5671
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
        object Memo57: TfrxMemoView
          Left = 417.40198
          Top = 26.45671
          Width = 75.5905511811024
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊñπÂºè')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 132.28355
          Top = 26.45671
          Width = 56.69295
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªËÖ¶Ëôü')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976378
        Top = 264.5671
        Width = 778.58318
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_Wo
        DataSetName = 'frxDBDS_Wo'
        RowCount = 0
        object frxDBDS_Wocrname: TfrxMemoView
          Left = 56.69295
          Width = 71.81107
          Height = 18.89765
          DataField = 'crname'
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
          AutoWidth = True
          DataField = 'crcode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Wo."crcode"]')
          ParentFont = False
        end
        object frxDBDS_Wowoptotal: TfrxMemoView
          Left = 338.40971
          Width = 60.47248
          Height = 18.89765
          DataField = 'wototal'
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
          Left = 192.75603
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'worealmo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."worealmo"]')
          ParentFont = False
        end
        object frxDBDS_WoKind: TfrxMemoView
          Left = 500.21305
          Width = 71.81107
          Height = 18.89765
          DataField = 'Kind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."Kind"]')
          ParentFont = False
        end
        object frxDBDS_Wowocntmo: TfrxMemoView
          Left = 264.5671
          Width = 64.25201
          Height = 18.89765
          DataField = 'wocntmo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."wocntmo"]')
          ParentFont = False
        end
        object frxDBDS_Wosfname: TfrxMemoView
          Left = 417.40198
          Width = 75.59055118
          Height = 18.89765
          DataField = 'KindType'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."KindType"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 132.28355
          Width = 49.13389
          Height = 18.89765
          DataField = 'crtelb'
          DataSet = frxDBDS_Wo
          DataSetName = 'frxDBDS_Wo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."crtelb"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 1.22E-5
        Top = 241.88992
        Width = 778.58318
        Condition = 'frxDBDS_Wo."widate"'
        KeepChild = True
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.89765
        Top = 306.14193
        Width = 778.58318
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo62: TfrxMemoView
          Left = 3.77953
          Top = 1
          Width = 767.24459
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
    object Page2: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 2
      TopMargin = 10
      BottomMargin = 10
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      PrintOnPreviousPage = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 510.73253
        Top = 18.89765
        Width = 786.14224
        object Memo6: TfrxMemoView
          Left = 19.11812
          Top = 55.91342
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
        object Memo28: TfrxMemoView
          Left = 18.89765
          Top = 489.34663
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
        object Memo41: TfrxMemoView
          Left = 226.77165354
          Top = 147.70872
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë≤¥Ë≥ìÂç°Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 226.77165354
          Top = 170.3859
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÁèæÈáëÂØ¶Êî∂Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 226.77165354
          Top = 193.06308
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÁèæÈáëÊäòËÆìÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 226.7718
          Top = 72.03154
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈñÄÂ∏ÇÁáüÊ•≠Á∏ΩÈáëÈ°ç')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 226.7718
          Top = 215.74026
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂‰ª∂ÊäòÊâ£Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 226.7718
          Top = 238.41744
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âèñ‰ª∂Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 226.7718
          Top = 284.09462
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Êî∂‰ª∂Ë®≠ÂÆöÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 226.7718
          Top = 306.7718
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Êî∂‰ª∂ÂØ¶ÈöõÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 226.7718
          Top = 329.44898
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Á∏Ω‰ª∂Êï∏')
          ParentFont = False
        end
        object MemoTotal: TfrxMemoView
          Left = 385.51206
          Top = 72.03154
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object MemoVip: TfrxMemoView
          Left = 385.51206
          Top = 147.70872
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object MemoCashMoney: TfrxMemoView
          Left = 385.51206
          Top = 170.3859
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object MemoCashDiscount: TfrxMemoView
          Left = 385.51206
          Top = 193.06308
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 385.51206
          Top = 215.74026
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 385.51206
          Top = 238.41744
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 385.51206
          Top = 261.41744
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 385.51206
          Top = 284.09462
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 385.51206
          Top = 306.7718
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 483.77984
          Top = 72.03154
          Width = 18.89755236
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
        object Memo24: TfrxMemoView
          Left = 483.77984
          Top = 147.70872
          Width = 18.89755236
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
          Left = 483.77984
          Top = 170.3859
          Width = 18.89755236
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
          Left = 483.77984
          Top = 193.06308
          Width = 18.89755236
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
        object Memo27: TfrxMemoView
          Left = 483.77984
          Top = 215.74026
          Width = 18.89755236
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
        object Memo29: TfrxMemoView
          Left = 483.77984
          Top = 238.41744
          Width = 18.89755236
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
        object Memo30: TfrxMemoView
          Left = 483.77984
          Top = 284.09462
          Width = 18.89755236
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
        object Memo31: TfrxMemoView
          Left = 483.77984
          Top = 306.7718
          Width = 18.89755236
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
        object Memo32: TfrxMemoView
          Left = 483.77984
          Top = 329.44898
          Width = 18.89755236
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
        object Memo4: TfrxMemoView
          Left = 226.7718
          Top = 261.09462
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Âä†Â∑•Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 385.51206
          Top = 329.12616
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 483.77984
          Top = 261.09462
          Width = 18.89755236
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
        object Memo7: TfrxMemoView
          Left = 226.7718
          Top = 133.14966
          Width = 275.90564118
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
              '- - -')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 226.7718
          Top = 350.46475
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âπ≥ÂùáÂñÆÂÉπ')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 385.51206
          Top = 350.14193
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 483.77984
          Top = 350.14193
          Width = 18.89755236
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
        object MemoLine: TfrxMemoView
          Left = 226.7718
          Top = 376.92146
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LinePayÊî∂Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object MemoLinePay: TfrxMemoView
          Left = 385.51206
          Top = 376.59864
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 483.77984
          Top = 376.59864
          Width = 18.89755236
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
        object MemoTaiwan: TfrxMemoView
          Left = 226.7718
          Top = 399.59864
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TaiwanPayÊî∂Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object MemoTaiwanPay: TfrxMemoView
          Left = 385.51206
          Top = 399.27582
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 483.77984
          Top = 399.27582
          Width = 18.89755236
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
        object MemoCredit: TfrxMemoView
          Left = 226.7718
          Top = 422.27582
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Âà∑Âç°Êî∂Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object MemoCard: TfrxMemoView
          Left = 385.51206
          Top = 421.953
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 483.77984
          Top = 421.953
          Width = 18.89755236
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
        object Memo51: TfrxMemoView
          Left = 226.99227
          Top = 94.48825
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈñÄÂ∏ÇÁèæÈáëÂØ¶Êî∂Á∏ΩÈ°ç')
          ParentFont = False
        end
        object MemoCash: TfrxMemoView
          Left = 385.73253
          Top = 94.48825
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 484.00031
          Top = 94.48825
          Width = 18.89755236
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
        object Memo58: TfrxMemoView
          Left = 227.31509
          Top = 116.82684
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªÂ≠êÊîØ‰ªòÁ∏ΩÈáëÈ°ç')
          ParentFont = False
        end
        object MemoEpay: TfrxMemoView
          Left = 386.05535
          Top = 116.82684
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 484.32313
          Top = 116.82684
          Width = 18.89755236
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
        object Memo11: TfrxMemoView
          Left = 226.7718
          Top = 446.30736
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ËΩâÂ∏≥Êî∂Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object MemoAccount: TfrxMemoView
          Left = 385.51206
          Top = 445.98454
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 483.77984
          Top = 445.98454
          Width = 18.89755236
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
        object Memo14: TfrxMemoView
          Left = 226.7718
          Top = 468.98454
          Width = 151.18110236
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°óÂè£Êî∂Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object MemoStree: TfrxMemoView
          Left = 385.51206
          Top = 468.66172
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 483.77984
          Top = 468.66172
          Width = 18.89755236
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
      end
    end
  end
  object ZQuery_wo: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wo')
    Params = <>
    Left = 328
    Top = 344
  end
  object ZQuery_wio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM Wio')
    Params = <>
    Left = 424
    Top = 344
    object ZQuery_wiowicode: TStringField
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_wiowisno: TStringField
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 6
    end
    object ZQuery_wiocrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_wiowiitem: TStringField
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQuery_wiowiname: TStringField
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQuery_wiowiwash: TStringField
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQuery_wiowiacc: TStringField
      FieldName = 'wiacc'
      Size = 10
    end
    object ZQuery_wiowimemo: TStringField
      FieldName = 'wimemo'
      Size = 10
    end
    object ZQuery_wiowiwamo: TFloatField
      FieldName = 'wiwamo'
    end
    object ZQuery_wiowiexkind: TStringField
      FieldName = 'wiexkind'
      Size = 10
    end
    object ZQuery_wiowiexmo: TFloatField
      FieldName = 'wiexmo'
    end
    object ZQuery_wiowiquty: TIntegerField
      FieldName = 'wiquty'
    end
    object ZQuery_wiowisum: TFloatField
      FieldName = 'wisum'
    end
    object ZQuery_wiowiurge: TStringField
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object ZQuery_wiowiday: TStringField
      FieldName = 'widay'
      Size = 2
    end
    object ZQuery_wiowimdate: TStringField
      FieldName = 'wimdate'
      Size = 9
    end
    object ZQuery_wiowiodate: TStringField
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQuery_wiowiotime: TTimeField
      FieldName = 'wiotime'
    end
    object ZQuery_wiowiplace: TStringField
      FieldName = 'wiplace'
      Size = 4
    end
    object ZQuery_wiowidate: TStringField
      FieldName = 'widate'
      Size = 9
    end
    object ZQuery_wiowimark: TStringField
      FieldName = 'wimark'
      Size = 10
    end
    object ZQuery_wioindate: TStringField
      FieldName = 'indate'
      Size = 9
    end
    object ZQuery_wiomark: TStringField
      FieldName = 'mark'
      Size = 1
    end
    object ZQuery_wiowisel: TStringField
      FieldName = 'wisel'
      Size = 1
    end
    object ZQuery_wiopps: TIntegerField
      FieldName = 'pps'
    end
    object ZQuery_wiopicture: TStringField
      FieldName = 'picture'
    end
    object ZQuery_wiocrname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQuery_wiocrtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQuery_wiocrmoney: TFloatField
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Lookup = True
    end
  end
  object frxReportF7: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 40623.7395002778
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  isum: Real=0;'
      '  twamo: Real=0;'
      '  grcnt: Integer=1;      '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  isum:=<frxDBDS_wio."wiwamo">*<frxDBDS_wio."wiquty">;          ' +
        '               '
      '  twamo:=twamo+isum;'
      '  grcnt:=grcnt+1;      '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDS_wicode.Visible:=False;    '
      '    frxDBDS_crname.Visible:=False;'
      '    frxDBDS_wiocrtel.Visible:=False;'
      '    frxDBDS_wiocrcode.Visible:=False;'
      '    frxDBDS_wiocrmoney.Visible:=False;        '
      '    end'
      '  else   '
      '    begin      '
      '    frxDBDS_wicode.Visible:=True;'
      '    frxDBDS_crname.Visible:=True;'
      '    frxDBDS_wiocrtel.Visible:=True;          '
      '    frxDBDS_wiocrcode.Visible:=True;'
      '    frxDBDS_wiocrmoney.Visible:=True;                          '
      '    end;    '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=1;  '
      'end;'
      ''
      'begin'
      '      '
      'end.')
    Left = 392
    Top = 376
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
        DataSet = frxDBDS_wio
        DataSetName = 'frxDBDS_wio'
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
            '‚òÜ‚òÜ‚òÜÂ∑•Âª†Ê¥óË°£ÂñÆÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
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
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 60.47248
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
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 215.43321
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
            'Êï¥Ëôü')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 283.46475
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
            'Ëä±Ëâ≤')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 340.1577
          Top = 26.45671
          Width = 60.47248
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
        object Memo17: TfrxMemoView
          Left = 408.18924
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
            'ÈÖç‰ª∂')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 461.10266
          Top = 26.45671
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
        object Memo30: TfrxMemoView
          Left = 495.11843
          Top = 26.45671
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 529.1342
          Top = 26.45671
          Width = 41.57483
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
        object Memo32: TfrxMemoView
          Left = 574.48856
          Top = 26.45671
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÊÄ•')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 608.50433
          Top = 26.45671
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®ªÊòé')
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
          Left = 120.94496
          Top = 26.45671
          Width = 90.70872
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
        object Memo20: TfrxMemoView
          Left = 672.75634
          Top = 26.45671
          Width = 45.35436
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
        object Memo25: TfrxMemoView
          Left = 718.1107
          Top = 26.45671
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'È§òÈ°ç')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976378
        Top = 264.5671
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_wio
        DataSetName = 'frxDBDS_wio'
        RowCount = 0
        object frxDBDS_crname: TfrxMemoView
          Left = 60.47248
          Width = 49.13389
          Height = 18.89765
          DataField = 'crname'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."crname"]')
          ParentFont = False
        end
        object frxDBDS_wicode: TfrxMemoView
          Left = 3.77953
          Width = 49.13389
          Height = 18.89765
          DataField = 'wicode'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wicode"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 215.43321
          Width = 49.13389
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wisno"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 283.46475
          Width = 49.13389
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiitem"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 340.1577
          Width = 64.25201
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."winame"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 408.18924
          Width = 49.13389
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiacc"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 461.10266
          Width = 30.23624
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiwash"]')
          ParentFont = False
        end
        object frxDBDataset1wiquty: TfrxMemoView
          Left = 495.11843
          Width = 30.23624
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDS_wio."wiquty"]')
          ParentFont = False
        end
        object frxDBDataset1wisum: TfrxMemoView
          Left = 529.1342
          Width = 45.35436
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_wio."wisum"]')
          ParentFont = False
        end
        object frxDBDataset1wiurge: TfrxMemoView
          Left = 574.48856
          Width = 30.23624
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDS_wio."wiurge"]')
          ParentFont = False
        end
        object frxDBDataset1wimemo: TfrxMemoView
          Left = 608.50433
          Width = 60.47248
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wimemo"]')
          ParentFont = False
        end
        object frxDBDS_wiocrtel: TfrxMemoView
          Left = 120.94496
          Width = 90.70872
          Height = 18.89765
          DataField = 'crtel'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."crtel"]')
          ParentFont = False
        end
        object frxDBDS_wiocrcode: TfrxMemoView
          Left = 672.75634
          Width = 45.35436
          Height = 18.89765
          DataField = 'crcode'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."crcode"]')
          ParentFont = False
        end
        object frxDBDS_wiocrmoney: TfrxMemoView
          Left = 718.1107
          Width = 60.47248
          Height = 18.89765
          DataField = 'crmoney'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_wio."crmoney"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 1.22E-5
        Top = 241.88992
        Width = 786.14224
        Condition = 'frxDBDS_wio."wicode"'
        KeepChild = True
      end
      object Footer1: TfrxFooter
        Height = 56.69295
        Top = 351.49629
        Width = 786.14224
        object SysMemo4: TfrxSysMemoView
          Left = 665.19728
          Top = 18
          Width = 113.3859
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDS_wio."wisum">,MasterData1)]  ÂÖÉ')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 102.04731
          Top = 18
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_wio."wiquty">,MasterData1)]  ‰ª∂')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 566.9295
          Top = 18
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶ÈöõÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.77953
          Top = 18
          Width = 98.26778
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©‰ª∂Êï∏Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.77953
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
        object Memo27: TfrxMemoView
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
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.67718
        Top = 306.14193
        Width = 786.14224
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo19: TfrxMemoView
          Left = 3.77953
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
    end
  end
  object frxDBDS_wio: TfrxDBDataset
    UserName = 'frxDBDS_wio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wicode=wicode'
      'wisno=wisno'
      'crcode=crcode'
      'wiitem=wiitem'
      'winame=winame'
      'wiwash=wiwash'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiwamo=wiwamo'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiurge=wiurge'
      'widay=widay'
      'wimdate=wimdate'
      'wiodate=wiodate'
      'wiotime=wiotime'
      'wiplace=wiplace'
      'widate=widate'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'wisel=wisel'
      'pps=pps'
      'picture=picture'
      'crname=crname'
      'crtel=crtel'
      'crmoney=crmoney')
    DataSet = ZQuery_wio
    Left = 424
    Top = 376
  end
  object ZQuery_wio5: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM Wio')
    Params = <>
    Left = 360
    Top = 344
  end
  object frxReportF8: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 41737.9193453472
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_Monthly
        DataSetName = 'frxDBDS_Monthly'
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
      PrintIfEmpty = False
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
        object MemoTitle: TfrxMemoView
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
            '‚òÜ‚òÜ‚òÜÁáüÊ•≠ÊúàÁµêÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
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
          Width = 279.68522
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
        Height = 18.89765
        Top = 230.55133
        Width = 778.58318
        DataSet = frxDBDS_Monthly
        DataSetName = 'frxDBDS_Monthly'
        RowCount = 0
        object frxDBDS_Monthlym1: TfrxMemoView
          Left = 98.26771654
          Width = 56.69295
          Height = 18.89765
          DataField = 'm1'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m1"]')
          ParentFont = False
        end
        object frxDBDS_Monthlywidate: TfrxMemoView
          Left = 18.89765
          Width = 68.03154
          Height = 18.89765
          DataField = 'widate'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Monthly."widate"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym2: TfrxMemoView
          Left = 226.39374228
          Width = 56.69291339
          Height = 18.89765
          DataField = 'm2'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m2"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym3: TfrxMemoView
          Left = 291.77956906
          Width = 56.69295
          Height = 18.89765
          DataField = 'm3'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m3"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym4: TfrxMemoView
          Left = 357.16539583
          Width = 56.69291339
          Height = 18.89765
          DataField = 'm8'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m8"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym5: TfrxMemoView
          Left = 422.5512226
          Width = 56.69295
          Height = 18.89765
          DataField = 'm5'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m5"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym6: TfrxMemoView
          Left = 486.42523835
          Width = 56.69295
          Height = 18.89765
          DataField = 'm6'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m6"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym7: TfrxMemoView
          Left = 551.81106512
          Width = 56.69295
          Height = 18.89765
          DataField = 'm7'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m7"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym8: TfrxMemoView
          Left = 617.19689189
          Width = 56.69295
          Height = 18.89765
          DataField = 'm4'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m4"]')
          ParentFont = False
        end
        object frxDBDS_Monthlym9: TfrxMemoView
          Left = 681.07090764
          Width = 56.69291339
          Height = 18.89765
          DataField = 'm9'
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m9"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 162.51979
          Width = 56.69295
          Height = 18.89765
          DataSet = frxDBDS_Monthly
          DataSetName = 'frxDBDS_Monthly'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Monthly."m0"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 49.13389
        Top = 272.12616
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
          Left = 98.26771654
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m1">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 226.39374228
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m2">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 291.77956906
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m3">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 357.16539583
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m8">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 422.5512226
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m5">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 486.42523835
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m6">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 551.81106512
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m7">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 681.07090764
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m9">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 18.89765
          Top = 15.11812
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÊúàÁµêÈáëÈ°ç:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 617.19689189
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m4">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 162.51979
          Top = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Monthly."m0">,MasterData1)]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 47.13389
        Top = 120.94496
        Width = 778.58318
        object Memo28: TfrxMemoView
          Left = 18.89765
          Top = 32.01577
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
          Left = 226.441095
          Width = 56.69291339
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Áèæ    Èáë'
            'ÂØ¶Êî∂È°ç')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 291.913575
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Áèæ    Èáë'
            'ÊäòËÆìÈ°ç')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 18.89765
          Width = 68.03154
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ááü       Ê•≠'
            'Âπ¥/ Êúà/ Êó•')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 357.27582
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£    Áâ©'
            'Á∏Ω‰ª∂Êï∏')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 422.52783
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£    Áâ©'
            'Ë®≠ÂÆöÈ°ç')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.81138
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£    Áâ©'
            'ÊäòÊâ£È°ç')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 486.42525055
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£    Áâ©'
            'ÂØ¶ÈöõÈ°ç')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 617.06339
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£    Áâ©'
            'Âèñ‰ª∂È°ç')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 681.09493
          Width = 56.69291339
          Height = 34.01574803
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë°£    Áâ©'
            'Âä†Â∑•È°ç')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 98.26778
          Width = 56.69291339
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'V I P'
            'ÂØ¶Êî∂È°ç')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 162.51979
          Width = 56.69291339
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'V I P'
            'ÊäòËÆìÈ°ç')
          ParentFont = False
        end
      end
    end
  end
  object ZQuery_Monthly: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM monthly')
    Params = <>
    Left = 544
    Top = 344
  end
  object frxDBDS_Monthly: TfrxDBDataset
    UserName = 'frxDBDS_Monthly'
    CloseDataSource = False
    FieldAliases.Strings = (
      'widate=widate'
      'm1=m1'
      'm0=m0'
      'm2=m2'
      'm3=m3'
      'm4=m4'
      'm5=m5'
      'm6=m6'
      'm7=m7'
      'm8=m8'
      'm9=m9'
      'm10=m10'
      'm11=m11')
    DataSet = ZQuery_Monthly
    Left = 544
    Top = 376
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
    ReportOptions.LastChange = 42041.8555651389
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var                                                 '
      '  twamo: Extended=0;'
      '  grcnt: Integer=1;                                     '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  twamo:=twamo+(<frxDBDSWio."wiwamo">*<frxDBDSWio."wiquty">);'
      '  grcnt:=grcnt+1;                                    '
      'end;    '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDSWiowicode.Visible:=False;           '
      '    frxDBDSWiocrname.Visible:=False;'
      '    frxDBDSWiocrtel.Visible:=False;'
      '    frxDBDSWiocrcode.Visible:=False;'
      '    frxDBDSWiocrmoney.Visible:=False;        '
      '    end'
      '  else   '
      '    begin'
      '    frxDBDSWiowicode.Visible:=True;         '
      '    frxDBDSWiocrname.Visible:=True;'
      '    frxDBDSWiocrtel.Visible:=True;'
      '    frxDBDSWiocrcode.Visible:=True;'
      '    frxDBDSWiocrmoney.Visible:=True;        '
      '    end;                      '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  grcnt:=1;                  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 376
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
      end
      item
        DataSet = frxDBDSSumName
        DataSetName = 'frxDBDSSumName'
      end
      item
        DataSet = frxDBDSWio
        DataSetName = 'frxDBDSWio'
      end
      item
        DataSet = frxDBDSWioBak
        DataSetName = 'frxDBDSWioBak'
      end
      item
        DataSet = frxDBDSWioExkind
        DataSetName = 'frxDBDSWioExkind'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      MirrorMargins = True
      ColumnWidth = 206
      Frame.TopLine.Style = fsDot
      Frame.TopLine.Width = 5
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object ReportTitle1: TfrxReportTitle
        Height = 79.37013
        Top = 18.89765
        Width = 767.24459
        object Memo1: TfrxMemoView
          Left = 16.33859
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
          Left = 1.889765
          Top = 26.45671
          Width = 763.46506
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÁÆ°ÁêÜÂ†±Ë°®‚òÜ‚òÜ‚òÜ')
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
          Left = 79.37013
          Top = 58.69295
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
      end
      object Footer1: TfrxFooter
        Height = 56.69295
        Top = 343.93723
        Width = 767.24459
        object Memo27: TfrxMemoView
          Left = 7.55906
          Top = 37.7953
          Width = 755.906
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
        object Memo20: TfrxMemoView
          Left = 7.55906
          Top = 18.89765
          Width = 117.16543
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©‰ª∂Êï∏Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 124.72449
          Top = 18.89765
          Width = 170.07885
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSWio."wiquty">,MasterData1)]  ‰ª∂')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 521.57514
          Top = 18.89765
          Width = 117.16543
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶ÈöõÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 638.74057
          Top = 18.89765
          Width = 120.94496
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSWio."wisum">,MasterData1)]  ÂÖÉ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 7.55906
          Width = 755.906
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
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 264.5671
        Width = 767.24459
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDSWio
        DataSetName = 'frxDBDSWio'
        RowCount = 0
        object Memo36: TfrxMemoView
          Left = 219.21274
          Width = 37.7953
          Height = 18.89765
          AutoWidth = True
          DataField = 'wisno'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wisno"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 257.00804
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiitem'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiitem"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 313.70099
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'winame'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."winame"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 381.73253
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiacc'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiacc"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 434.64595
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiwash'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wiwash"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 468.66172
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiquty'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWio."wiquty"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 502.67749
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DataField = 'wisum'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWio."wisum"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 548.03185
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiurge'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWio."wiurge"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 582.04762
          Width = 56.69295
          Height = 18.89765
          AutoWidth = True
          DataField = 'wimemo'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wimemo"]')
          ParentFont = False
        end
        object frxDBDSWiocrname: TfrxMemoView
          Left = 64.25201
          Width = 60.47248
          Height = 18.89765
          AutoWidth = True
          DataField = 'crname'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crname"]')
          ParentFont = False
        end
        object frxDBDSWiowicode: TfrxMemoView
          Left = 7.55906
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wicode'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."wicode"]')
          ParentFont = False
        end
        object frxDBDSWiocrtel: TfrxMemoView
          Left = 128.50402
          Width = 86.92919
          Height = 18.89765
          AutoWidth = True
          DataField = 'crtel'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crtel"]')
          ParentFont = False
        end
        object frxDBDSWiocrcode: TfrxMemoView
          Left = 642.5201
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DataField = 'crvip'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWio."crvip"]')
          ParentFont = False
        end
        object frxDBDSWiocrmoney: TfrxMemoView
          Left = 687.87446
          Width = 52.91342
          Height = 18.89765
          AutoWidth = True
          DataField = 'crmoney'
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWio."crmoney"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 15.11812
        Top = 306.14193
        Width = 767.24459
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo48: TfrxMemoView
          Left = 7.55906
          Width = 755.906
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
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
      object GroupHeader1: TfrxGroupHeader
        Top = 241.88992
        Width = 767.24459
        Condition = 'frxDBDSWio."wicode"'
      end
      object PageHeader4: TfrxPageHeader
        Height = 60.47244094
        Top = 120.94496
        Width = 767.24459
        object Memo7: TfrxMemoView
          Left = 7.55906
          Top = 26.45671
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 64.25201
          Top = 26.45671
          Width = 60.47248
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 219.21274
          Top = 26.45671
          Width = 37.7953
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥Ëôü')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 257.00804
          Top = 26.45671
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ëä±Ëâ≤')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 309.92146
          Top = 26.45671
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£ÊúçÂêçÁ®±')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 381.73253
          Top = 26.45671
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈÖç‰ª∂')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 430.86642
          Top = 26.45671
          Width = 37.7953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÊ≥ï')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 691.65399
          Width = 49.13389
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 653.85869
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
          Left = 7.55906
          Top = 11.33859
          Width = 755.906
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
        object Memo30: TfrxMemoView
          Left = 468.66172
          Top = 26.45671
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 502.67749
          Top = 26.45671
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Â∞èË®à')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 548.03185
          Top = 26.45671
          Width = 26.45671
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÊÄ•')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 574.48856
          Top = 26.45671
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®ªÊòé')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 7.66141
          Top = 41.57483
          Width = 755.906
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
        object Memo112: TfrxMemoView
          Left = 128.50402
          Top = 26.45671
          Width = 86.92919
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 642.5201
          Top = 26.45671
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Ëôü')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 687.87446
          Top = 26.45671
          Width = 52.91342
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'È§òÈ°ç')
          ParentFont = False
        end
      end
    end
    object Page11: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 10
      BottomMargin = 10
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object Header11: TfrxHeader
        Height = 116.03149606
        Top = 18.89765
        Width = 755.906
        object Memo114: TfrxMemoView
          Top = 83.14966
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 56.69295
          Top = 83.14966
          Width = 60.47248
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 211.65368
          Top = 83.14966
          Width = 37.7953
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥Ëôü')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 249.44898
          Top = 83.14966
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ëä±Ëâ≤')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 302.3624
          Top = 83.14966
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£ÊúçÂêçÁ®±')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 374.17347
          Top = 83.14966
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈÖç‰ª∂')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 423.30736
          Top = 83.14966
          Width = 37.7953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÊ≥ï')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 684.09493
          Top = 56.69295
          Width = 49.13389
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 646.29963
          Top = 56.69295
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
        object Memo136: TfrxMemoView
          Top = 68.03154
          Width = 755.906
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
        object Memo137: TfrxMemoView
          Left = 461.10266
          Top = 83.14966
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 495.11843
          Top = 83.14966
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Â∞èË®à')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 540.47279
          Top = 83.14966
          Width = 26.45671
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÊÄ•')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 566.9295
          Top = 83.14966
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®ªÊòé')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 0.10235
          Top = 98.26778
          Width = 755.906
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
        object Memo143: TfrxMemoView
          Left = 120.94496
          Top = 83.14966
          Width = 86.92919
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 634.96104
          Top = 83.14966
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Ëôü')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 680.3154
          Top = 83.14966
          Width = 52.91342
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'È§òÈ°ç')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Align = baCenter
          Left = -3.77953
          Top = 37.7953
          Width = 763.46506
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÊî∂‰ª∂Âà™Èô§‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
      end
      object Footer11: TfrxFooter
        Height = 22.67718
        Top = 204.09462
        Width = 755.906
        object Memo147: TfrxMemoView
          Width = 755.906
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
      object MasterData6: TfrxMasterData
        Height = 22.67718
        Top = 158.74026
        Width = 755.906
        DataSet = frxDBDSWioBak
        DataSetName = 'frxDBDSWioBak'
        RowCount = 0
        object Memo148: TfrxMemoView
          Left = 211.65368
          Width = 37.7953
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."wisno"]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 249.44898
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."wiitem"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 306.14193
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."winame"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 374.17347
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."wiacc"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 427.08689
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."wiwash"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 461.10266
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWioBak."wiquty"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 495.11843
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWioBak."wisum"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 540.47279
          Width = 30.23624
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWioBak."wiurge"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 574.48856
          Width = 56.69295
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."wimemo"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 56.69295
          Width = 60.47248
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."crname"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."wicode"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 120.94496
          Width = 86.92919
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."crtel"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 634.96104
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioBak."crvip"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 680.3154
          Width = 52.91342
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWioBak."crmoney"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object MasterData3: TfrxMasterData
        Height = 18.89765
        Top = 158.74026
        Width = 778.58318
        DataSet = frxDBDSWioExkind
        DataSetName = 'frxDBDSWioExkind'
        RowCount = 0
        object frxDBDSWioAccwicode: TfrxMemoView
          Left = 3.77953
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wicode'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wicode"]')
          ParentFont = False
        end
        object frxDBDSWioAcccrname: TfrxMemoView
          Left = 60.47248
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DataField = 'crname'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."crname"]')
          ParentFont = False
        end
        object frxDBDSWioAcccrtel: TfrxMemoView
          Left = 143.62214
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DataField = 'crtel'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."crtel"]')
          ParentFont = False
        end
        object frxDBDSWioAccwisno: TfrxMemoView
          Left = 249.44898
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wisno'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wisno"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiitem: TfrxMemoView
          Left = 309.92146
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiitem'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiitem"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiname: TfrxMemoView
          Left = 370.39394
          Width = 60.47248
          Height = 18.89765
          AutoWidth = True
          DataField = 'winame'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."winame"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiacc: TfrxMemoView
          Left = 442.20501
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiacc'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiacc"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiwash: TfrxMemoView
          Left = 502.67749
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiwash'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiwash"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiquty: TfrxMemoView
          Left = 544.25232
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiquty'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiquty"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiexkind: TfrxMemoView
          Left = 585.82715
          Width = 79.37013
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiexkind'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiexkind"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiexmo: TfrxMemoView
          Left = 676.53587
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiexmo'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiexmo"]')
          ParentFont = False
        end
        object frxDBDSWioAccwiurge: TfrxMemoView
          Left = 729.44929
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiurge'
          DataSet = frxDBDSWioExkind
          DataSetName = 'frxDBDSWioExkind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSWioExkind."wiurge"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 115.9765
        Top = 18.89765
        Width = 778.58318
        object Memo12: TfrxMemoView
          Left = 3.77953
          Top = 86.92919
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 64.25201
          Top = 86.92919
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 249.44898
          Top = 86.92919
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥ÁêÜËôü')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 309.92146
          Top = 86.92919
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ëä±Ëâ≤')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 370.39394
          Top = 86.92919
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£ÊúçÂêçÁ®±')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 442.20501
          Top = 86.92919
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈÖç‰ª∂')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 502.67749
          Top = 86.92919
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÊ≥ï')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 3.77953
          Top = 100.85838
          Width = 755.906
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
        object Memo72: TfrxMemoView
          Left = 585.82715
          Top = 86.92919
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Âä†Â∑•ÂêçÁ®±')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 544.25232
          Top = 86.92919
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '‰ª∂')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 676.53587
          Top = 86.92919
          Width = 41.57483
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂñÆÂÉπ')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 729.44929
          Top = 86.92919
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ÊÄ•')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 143.62214
          Top = 86.92919
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈõªË©±ËôüÁ¢º')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Align = baCenter
          Left = 7.55906
          Top = 49.13389
          Width = 763.46506
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜË°£Áâ©Âä†Â∑•ÊòéÁ¥∞Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        Height = 18.89765
        Top = 200.31509
        Width = 778.58318
        object Memo29: TfrxMemoView
          Left = 3.77953
          Width = 755.906
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
    object Page3: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object MasterData4: TfrxMasterData
        Height = 18.89765
        Top = 154.96073
        Width = 778.58318
        DataSet = frxDBDSWo
        DataSetName = 'frxDBDSWo'
        RowCount = 0
        object frxDBDSWocrcode: TfrxMemoView
          Left = 173.85838
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DataField = 'crcode'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."crcode"]')
          ParentFont = False
        end
        object frxDBDSWowicode: TfrxMemoView
          Left = 226.7718
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wicode'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."wicode"]')
          ParentFont = False
        end
        object frxDBDSWowisno: TfrxMemoView
          Left = 287.24428
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wisno'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."wisno"]')
          ParentFont = False
        end
        object frxDBDSWowototal: TfrxMemoView
          Left = 423.30736
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'wototal'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."wototal"]')
          ParentFont = False
        end
        object frxDBDSWowoptotal: TfrxMemoView
          Left = 347.71676
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'woptotal'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."woptotal"]')
          ParentFont = False
        end
        object frxDBDSWowidate: TfrxMemoView
          Left = 3.77953
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DataField = 'widate'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."widate"]')
          ParentFont = False
        end
        object frxDBDSWowitime: TfrxMemoView
          Left = 650.07916
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'witime'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."witime"]')
          ParentFont = False
        end
        object frxDBDSWosfname: TfrxMemoView
          Left = 574.48856
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'sfname'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."sfname"]')
          ParentFont = False
        end
        object frxDBDSWoKind: TfrxMemoView
          Left = 83.14966
          Width = 79.37013
          Height = 18.89765
          AutoWidth = True
          DataField = 'Kind'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSWo."Kind"]')
          ParentFont = False
        end
        object frxDBDSWodiffmoney: TfrxMemoView
          Left = 498.89796
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'diffmoney'
          DataSet = frxDBDSWo
          DataSetName = 'frxDBDSWo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSWo."diffmoney"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 113.3859
        Top = 18.89765
        Width = 778.58318
        object Memo90: TfrxMemoView
          Align = baCenter
          Left = 7.55906
          Top = 41.57483
          Width = 763.46506
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÁï∞ÂãïÊòéÁ¥∞Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 226.7718
          Top = 83.14966
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÂñÆËôü')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 173.85838
          Top = 83.14966
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Ëôü')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 287.24428
          Top = 83.14966
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êï¥ÁêÜËôü')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 347.71676
          Top = 83.14966
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂéüÈáëÈ°ç')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 419.52783
          Top = 83.14966
          Width = 68.0314985
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Êñ∞ÈáëÈ°ç')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 3.77953
          Top = 98.26778
          Width = 755.906
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
          Left = 83.14966
          Top = 83.14966
          Width = 79.37013
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Áï∞ÂãïÊôÇÊ©ü')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 3.77953
          Top = 83.14966
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Áï∞ÂãïÊó•Êúü')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 495.11843
          Top = 83.14966
          Width = 68.0314985
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Áï∞ÂãïÂ∑ÆÈ°ç')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 574.48856
          Top = 83.14966
          Width = 71.8110285
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Âì°Â∑•ÂßìÂêç')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 650.07916
          Top = 83.14966
          Width = 68.0314985
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Áï∞ÂãïÊôÇÈñì')
          ParentFont = False
        end
      end
      object Footer4: TfrxFooter
        Height = 18.89765
        Top = 196.53556
        Width = 778.58318
        object Memo41: TfrxMemoView
          Left = 3.77953
          Width = 755.906
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
    object Page4: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        Height = 18.89765
        Top = 143.62214
        Width = 778.58318
        DataSet = frxDBDSSumName
        DataSetName = 'frxDBDSSumName'
        RowCount = 0
        object frxDBDataset2sumname: TfrxMemoView
          Left = 7.55906
          Width = 102.04731
          Height = 18.89765
          AutoWidth = True
          DataField = 'sumname'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSSumName."sumname"]')
          ParentFont = False
        end
        object frxDBDataset2sumwash: TfrxMemoView
          Left = 151.1812
          Width = 34.01577
          Height = 18.89765
          AutoWidth = True
          DataField = 'sumwash'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDSSumName."sumwash"]')
          ParentFont = False
        end
        object frxDBDataset2sumwamo: TfrxMemoView
          Left = 359.05535
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DataField = 'sumwamo'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumwamo"]')
          ParentFont = False
        end
        object frxDBDataset2sumquty: TfrxMemoView
          Left = 253.22851
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'sumquty'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumquty"]')
          ParentFont = False
        end
        object frxDBDataset2sumsum: TfrxMemoView
          Left = 600.94527
          Width = 75.59055118
          Height = 18.89765
          AutoWidth = True
          DataField = 'sumsum'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumsum"]')
          ParentFont = False
        end
        object frxDBDataset2sumosum: TfrxMemoView
          Left = 468.66172
          Width = 83.14961118
          Height = 18.89765
          DataField = 'sumosum'
          DataSet = frxDBDSSumName
          DataSetName = 'frxDBDSSumName'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDSSumName."sumosum"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 75.59055118
        Top = 185.19697
        Width = 778.58318
        object SysMemo3: TfrxSysMemoView
          Left = 124.72449
          Top = 29
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumquty">,MasterData2)]  ‰ª∂')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 400.63018
          Top = 29
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumosum">,MasterData2)]  ÂÖÉ')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 283.46475
          Top = 29
          Width = 117.16543
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Ë®≠ÂÆöÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 557.00031
          Top = 29
          Width = 117.16543
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©ÂØ¶ÈöõÁ∏ΩÈ°çÔºö')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 7.55906
          Top = 29
          Width = 117.16543
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©‰ª∂Êï∏Á∏ΩË®àÔºö')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 763.46506
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
        object Memo55: TfrxMemoView
          Left = 7.55906
          Top = 56.69295
          Width = 763.46506
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
        object SysMemo5: TfrxSysMemoView
          Left = 674.16574
          Top = 29.11812
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDSSumName."sumsum">,MasterData2)]  ÂÖÉ')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 102.04731
        Top = 18.89765
        Width = 778.58318
        object Memo10: TfrxMemoView
          Left = 9.33859
          Top = 69.25201
          Width = 102.04731
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£ÊúçÂêçÁ®±')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 151.1812
          Top = 68.03154
          Width = 34.01577
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ê¥óÊ≥ï')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 355.27582
          Top = 68.03154
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë®≠ÂÆöÂñÆÂÉπ')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 7.55906
          Top = 83.14966
          Width = 763.46506
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
        object Memo26: TfrxMemoView
          Left = 253.22851
          Top = 68.03154
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '‰ª∂Êï∏')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 472.44125
          Top = 68.03154
          Width = 79.37013
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Ë®≠ÂÆöÈ°çÂ∞èË®à')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 600.94527
          Top = 68.03154
          Width = 75.5906
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂØ¶ÈöõÈáëÈ°ç')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baCenter
          Left = 7.55906
          Top = 30.23624
          Width = 763.46506
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜË°£Áâ©Ê¥óÊ≥ïÁµ±Ë®àË°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      PrintOnPreviousPage = True
      object ReportTitle2: TfrxReportTitle
        Height = 56.69295
        Top = 18.89765
        Width = 778.58318
        object Memo118: TfrxMemoView
          Align = baCenter
          Left = 11.33859
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
            '‚òÜ‚òÜ‚òÜÁèæÈáëÊî∂Ê¨æÊòéÁ¥∞Ë°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        Height = 18.8976378
        Top = 241.88992
        Width = 778.58318
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_Wo
        DataSetName = 'frxDBDS_Wo'
        RowCount = 0
        object frxDBDS_Wocrname: TfrxMemoView
          Left = 60.47248
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'crname'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."crname"]')
          ParentFont = False
        end
        object frxDBDS_Wocrcode: TfrxMemoView
          Left = 3.77953
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'crcode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."crcode"]')
          ParentFont = False
        end
        object frxDBDS_Wowidate: TfrxMemoView
          Left = 128.50402
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DataField = 'widate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."widate"]')
          ParentFont = False
        end
        object frxDBDS_Wowototal: TfrxMemoView
          Left = 283.46475
          Width = 56.69295
          Height = 18.89765
          AutoWidth = True
          DataField = 'woptotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
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
          AutoWidth = True
          DataField = 'wototal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
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
          AutoWidth = True
          DataField = 'worealmo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Wo."worealmo"]')
          ParentFont = False
        end
        object frxDBDS_WoKind: TfrxMemoView
          Left = 699.21305
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."Kind"]')
          ParentFont = False
        end
        object frxDBDS_Wowitime: TfrxMemoView
          Left = 207.87415
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'witime'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."witime"]')
          ParentFont = False
        end
        object frxDBDS_Wowocntmo: TfrxMemoView
          Left = 495.11843
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'wocntmo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
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
          AutoWidth = True
          DataField = 'sfname'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Wo."sfname"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 1.22E-5
        Top = 219.21274
        Width = 778.58318
        Condition = 'frxDBDS_Wo."widate"'
        KeepChild = True
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 19.89765
        Top = 283.46475
        Width = 778.58318
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo138: TfrxMemoView
          Left = 3.77953
          Top = 1
          Width = 767.24459
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
      object Header4: TfrxHeader
        Height = 60.47244094
        Top = 136.06308
        Width = 778.58318
        object Memo121: TfrxMemoView
          Left = 3.77953
          Top = 30.23624
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂÆ¢Ëôü')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 60.47248
          Top = 30.23624
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÂßìÂêç')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 351.49629
          Top = 30.23624
          Width = 56.69291339
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Êñ∞ÈáëÈ°ç')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 729.44929
          Width = 41.57483
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
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
        object Memo125: TfrxMemoView
          Left = 3.77953
          Top = 15.11812
          Width = 767.24459
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
        object Memo126: TfrxMemoView
          Left = 3.77953
          Top = 45.35436
          Width = 767.24459
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
        object Memo127: TfrxMemoView
          Left = 128.50402
          Top = 30.23624
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊó•Êúü')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 283.46475
          Top = 30.23624
          Width = 56.69291339
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂéüÈáëÈ°ç')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 699.21305
          Top = 30.23624
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊôÇÊ©ü')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 419.52783
          Top = 30.23624
          Width = 64.25197339
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÂØ¶Êî∂ÈáëÈ°ç')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 207.87415
          Top = 30.23624
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æÊôÇÈñì')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 495.11843
          Top = 30.23624
          Width = 64.25197339
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ÊäòËÆìÈáëÈ°ç')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 627.40198
          Top = 30.23624
          Width = 64.25197339
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂Ê¨æ‰∫∫Âì°')
          ParentFont = False
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 280
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 10
      BottomMargin = 10
      PrintOnPreviousPage = True
      object ColumnHeader1: TfrxColumnHeader
        Height = 340.15748031
        Top = 18.89765
        Width = 778.58318
        object Memo52: TfrxMemoView
          Left = 11.33859
          Top = 311.90569
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
        object Memo53: TfrxMemoView
          Left = 222.99212354
          Top = 111.26778
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë≤¥Ë≥ìÂç°Ê¨æÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 222.99212354
          Top = 133.94496
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÁèæÈáëÂØ¶Êî∂Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 222.99212354
          Top = 156.62214
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÁèæÈáëÊäòËÆìÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 222.99227
          Top = 79.5906
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'ÈñÄÂ∏ÇÁáüÊ•≠ÁèæÈáëÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 222.99227
          Top = 179.29932
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Êî∂‰ª∂ÊäòÊâ£Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 222.99227
          Top = 201.9765
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Âèñ‰ª∂Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 222.99227
          Top = 247.65368
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Êî∂‰ª∂Ë®≠ÂÆöÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 222.99227
          Top = 270.33086
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Êî∂‰ª∂ÂØ¶ÈöõÁ∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 222.99227
          Top = 293.00804
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Á∏Ω‰ª∂Êï∏')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 381.73253
          Top = 79.5906
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 381.73253
          Top = 111.26778
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 381.73253
          Top = 133.94496
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 381.73253
          Top = 156.62214
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 381.73253
          Top = 179.29932
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 381.73253
          Top = 201.9765
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 381.73253
          Top = 224.9765
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 381.73253
          Top = 247.65368
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 381.73253
          Top = 270.33086
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 480.00031
          Top = 79.5906
          Width = 18.89755236
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
        object Memo74: TfrxMemoView
          Left = 480.00031
          Top = 111.26778
          Width = 18.89755236
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
        object Memo75: TfrxMemoView
          Left = 480.00031
          Top = 133.94496
          Width = 18.89755236
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
        object Memo76: TfrxMemoView
          Left = 480.00031
          Top = 156.62214
          Width = 18.89755236
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
        object Memo77: TfrxMemoView
          Left = 480.00031
          Top = 179.29932
          Width = 18.89755236
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
        object Memo78: TfrxMemoView
          Left = 480.00031
          Top = 201.9765
          Width = 18.89755236
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
        object Memo79: TfrxMemoView
          Left = 480.00031
          Top = 247.65368
          Width = 18.89755236
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
        object Memo80: TfrxMemoView
          Left = 480.00031
          Top = 270.33086
          Width = 18.89755236
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
        object Memo81: TfrxMemoView
          Left = 480.00031
          Top = 293.00804
          Width = 18.89755236
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
        object Memo82: TfrxMemoView
          Left = 222.99227
          Top = 224.65368
          Width = 151.18110236
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Ë°£Áâ©Âä†Â∑•Á∏ΩÈ°ç')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 381.73253
          Top = 292.68522
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑s≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 480.00031
          Top = 224.65368
          Width = 18.89755236
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
        object Memo85: TfrxMemoView
          Left = 222.99227
          Top = 94.70872
          Width = 275.90564118
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
              '- - -')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 11.33859
          Top = 56.69295
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
        object Memo47: TfrxMemoView
          Align = baCenter
          Left = 7.55906
          Top = 26.45671
          Width = 763.46506
          Height = 34.01577
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÁáüÊ•≠Ë°£Áâ©ÈáëÈ°çÁ∏ΩË°®‚òÜ‚òÜ‚òÜ')
          ParentFont = False
        end
      end
    end
  end
  object ZQueryWioExkind: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wio')
    Params = <>
    Left = 568
    Top = 152
    object ZQueryWioExkindwicode: TStringField
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQueryWioExkindwisno: TStringField
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 6
    end
    object ZQueryWioExkindcrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryWioExkindwiitem: TStringField
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQueryWioExkindwiname: TStringField
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQueryWioExkindwiwash: TStringField
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQueryWioExkindwiacc: TStringField
      FieldName = 'wiacc'
      Size = 10
    end
    object ZQueryWioExkindwimemo: TStringField
      FieldName = 'wimemo'
      Size = 10
    end
    object ZQueryWioExkindwiwamo: TFloatField
      FieldName = 'wiwamo'
    end
    object ZQueryWioExkindwiexkind: TStringField
      FieldName = 'wiexkind'
      Size = 10
    end
    object ZQueryWioExkindwiexmo: TFloatField
      FieldName = 'wiexmo'
    end
    object ZQueryWioExkindwiquty: TIntegerField
      FieldName = 'wiquty'
    end
    object ZQueryWioExkindwisum: TFloatField
      FieldName = 'wisum'
    end
    object ZQueryWioExkindwiurge: TStringField
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object ZQueryWioExkindwiday: TStringField
      FieldName = 'widay'
      Size = 2
    end
    object ZQueryWioExkindwimdate: TStringField
      FieldName = 'wimdate'
      Size = 9
    end
    object ZQueryWioExkindwiodate: TStringField
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQueryWioExkindwiotime: TTimeField
      FieldName = 'wiotime'
    end
    object ZQueryWioExkindwiplace: TStringField
      FieldName = 'wiplace'
      Size = 4
    end
    object ZQueryWioExkindwidate: TStringField
      FieldName = 'widate'
      Size = 9
    end
    object ZQueryWioExkindwimark: TStringField
      FieldName = 'wimark'
      Size = 10
    end
    object ZQueryWioExkindindate: TStringField
      FieldName = 'indate'
      Size = 9
    end
    object ZQueryWioExkindmark: TStringField
      FieldName = 'mark'
      Size = 1
    end
    object ZQueryWioExkindwisel: TStringField
      FieldName = 'wisel'
      Size = 1
    end
    object ZQueryWioExkindpps: TIntegerField
      FieldName = 'pps'
    end
    object ZQueryWioExkindcrname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQueryWioExkindcrtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQueryWioExkindcrtelb: TStringField
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
  object frxDBDSWioExkind: TfrxDBDataset
    UserName = 'frxDBDSWioExkind'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wicode=wicode'
      'wisno=wisno'
      'crcode=crcode'
      'wiitem=wiitem'
      'winame=winame'
      'wiwash=wiwash'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiwamo=wiwamo'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiurge=wiurge'
      'widay=widay'
      'wimdate=wimdate'
      'wiodate=wiodate'
      'wiotime=wiotime'
      'wiplace=wiplace'
      'widate=widate'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'wisel=wisel'
      'pps=pps'
      'crname=crname'
      'crtel=crtel'
      'crtelb=crtelb')
    DataSet = ZQueryWioExkind
    Left = 72
    Top = 344
  end
  object frxDBDSWo: TfrxDBDataset
    UserName = 'frxDBDSWo'
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
      'Kind=Kind'
      'diffmoney=diffmoney'
      'crtelb=crtelb')
    DataSet = ZQueryWo
    Left = 72
    Top = 376
  end
  object ZQueryWo: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQueryWoCalcFields
    SQL.Strings = (
      'SELECT * FROM wo')
    Params = <>
    Left = 600
    Top = 152
    object ZQueryWowiosn: TLargeintField
      FieldName = 'wiosn'
    end
    object ZQueryWocrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryWowicode: TStringField
      FieldName = 'wicode'
      Size = 6
    end
    object ZQueryWowisno: TStringField
      DisplayWidth = 4
      FieldName = 'wisno'
      Size = 6
    end
    object ZQueryWowototal: TFloatField
      FieldName = 'wototal'
    end
    object ZQueryWowoptotal: TFloatField
      FieldName = 'woptotal'
    end
    object ZQueryWoworealmo: TFloatField
      FieldName = 'worealmo'
    end
    object ZQueryWofrgetmo: TFloatField
      FieldName = 'frgetmo'
    end
    object ZQueryWowocntmo: TFloatField
      FieldName = 'wocntmo'
    end
    object ZQueryWowopsen: TFloatField
      FieldName = 'wopsen'
    end
    object ZQueryWowidate: TStringField
      FieldName = 'widate'
      Size = 10
    end
    object ZQueryWowitime: TStringField
      FieldName = 'witime'
      Size = 8
    end
    object ZQueryWosfname: TStringField
      FieldName = 'sfname'
      Size = 8
    end
    object ZQueryWofritem: TStringField
      FieldName = 'fritem'
      Size = 1
    end
    object ZQueryWoKind: TStringField
      FieldKind = fkCalculated
      FieldName = 'Kind'
      Size = 8
      Calculated = True
    end
    object ZQueryWodiffmoney: TFloatField
      FieldKind = fkCalculated
      FieldName = 'diffmoney'
      Calculated = True
    end
    object ZQueryWocrtelb: TStringField
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
      'Kind=Kind'
      'crtelb=crtelb'
      'crtel=crtel'
      'paytype=paytype'
      'KindType=KindType')
    DataSet = ZQueryF5
    Left = 328
    Top = 378
  end
  object ZQueryF5: TZQuery
    Connection = ZConnection1
    OnCalcFields = ZQueryF5CalcFields
    SQL.Strings = (
      'SELECT * FROM wo')
    Params = <>
    Left = 360
    Top = 378
    object ZQueryF5wiosn: TLargeintField
      FieldName = 'wiosn'
    end
    object ZQueryF5crcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryF5wicode: TStringField
      FieldName = 'wicode'
      Size = 6
    end
    object ZQueryF5wisno: TStringField
      DisplayWidth = 4
      FieldName = 'wisno'
      Size = 6
    end
    object ZQueryF5wototal: TFloatField
      FieldName = 'wototal'
    end
    object ZQueryF5woptotal: TFloatField
      FieldName = 'woptotal'
    end
    object ZQueryF5worealmo: TFloatField
      FieldName = 'worealmo'
    end
    object ZQueryF5frgetmo: TFloatField
      FieldName = 'frgetmo'
    end
    object ZQueryF5wocntmo: TFloatField
      FieldName = 'wocntmo'
    end
    object ZQueryF5wopsen: TFloatField
      FieldName = 'wopsen'
    end
    object ZQueryF5widate: TStringField
      FieldName = 'widate'
      Size = 10
    end
    object ZQueryF5witime: TStringField
      FieldName = 'witime'
      Size = 8
    end
    object ZQueryF5sfname: TStringField
      FieldName = 'sfname'
      Size = 8
    end
    object ZQueryF5fritem: TStringField
      FieldName = 'fritem'
      Size = 1
    end
    object ZQueryF5crname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQueryF5Kind: TStringField
      FieldKind = fkCalculated
      FieldName = 'Kind'
      Size = 8
      Calculated = True
    end
    object ZQueryF5crtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 6
      Lookup = True
    end
    object ZQueryF5crtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQueryF5paytype: TStringField
      FieldName = 'paytype'
      Size = 1
    end
    object ZQueryF5KindType: TStringField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'KindType'
      Size = 10
      Calculated = True
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 144
    Top = 344
  end
  object ZTableWawash: TZTable
    Connection = ZConnection1
    TableName = 'washshop.wawash'
    Left = 608
    Top = 344
    object ZTableWawashwano6: TStringField
      FieldName = 'wano6'
      Required = True
      Size = 2
    end
    object ZTableWawashwawash: TStringField
      FieldName = 'wawash'
      Size = 4
    end
  end
  object DSWash: TDataSource
    DataSet = ZTableWawash
    Left = 640
    Top = 344
  end
  object ZQueryWio_bak: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from wio_bak')
    Params = <>
    Left = 40
    Top = 312
    object ZQueryWio_baksno: TLargeintField
      FieldName = 'sno'
    end
    object ZQueryWio_bakwicode: TStringField
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQueryWio_bakwisno: TStringField
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 6
    end
    object ZQueryWio_bakcrcode: TStringField
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQueryWio_bakwiitem: TStringField
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQueryWio_bakwiname: TStringField
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQueryWio_bakwiwash: TStringField
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQueryWio_bakwiacc: TStringField
      FieldName = 'wiacc'
      Size = 10
    end
    object ZQueryWio_bakwimemo: TStringField
      FieldName = 'wimemo'
      Size = 10
    end
    object ZQueryWio_bakwiwamo: TFloatField
      FieldName = 'wiwamo'
    end
    object ZQueryWio_bakwiexkind: TStringField
      FieldName = 'wiexkind'
      Size = 10
    end
    object ZQueryWio_bakwiexmo: TFloatField
      FieldName = 'wiexmo'
    end
    object ZQueryWio_bakwiquty: TIntegerField
      FieldName = 'wiquty'
    end
    object ZQueryWio_bakwisum: TFloatField
      FieldName = 'wisum'
    end
    object ZQueryWio_bakwiurge: TStringField
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object ZQueryWio_bakwiday: TStringField
      FieldName = 'widay'
      Size = 2
    end
    object ZQueryWio_bakwimdate: TStringField
      FieldName = 'wimdate'
      Size = 9
    end
    object ZQueryWio_bakwiodate: TStringField
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQueryWio_bakwiotime: TTimeField
      FieldName = 'wiotime'
    end
    object ZQueryWio_bakwiplace: TStringField
      FieldName = 'wiplace'
      Size = 4
    end
    object ZQueryWio_bakwidate: TStringField
      FieldName = 'widate'
      Size = 9
    end
    object ZQueryWio_bakwitime: TTimeField
      FieldName = 'witime'
    end
    object ZQueryWio_bakwimark: TStringField
      FieldName = 'wimark'
      Size = 10
    end
    object ZQueryWio_bakindate: TStringField
      FieldName = 'indate'
      Size = 9
    end
    object ZQueryWio_bakmark: TStringField
      FieldName = 'mark'
      Size = 1
    end
    object ZQueryWio_baktno: TStringField
      FieldName = 'tno'
      Size = 2
    end
    object ZQueryWio_bakpps: TIntegerField
      FieldName = 'pps'
    end
    object ZQueryWio_bakpicture: TStringField
      FieldName = 'picture'
    end
    object ZQueryWio_bakcrvip: TStringField
      FieldKind = fkLookup
      FieldName = 'crvip'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crvip'
      KeyFields = 'crcode'
      Size = 1
      Lookup = True
    end
    object ZQueryWio_bakcrname: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQueryWio_bakcrtel: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQueryWio_bakcrmoney: TIntegerField
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Lookup = True
    end
  end
  object frxDBDSWioBak: TfrxDBDataset
    UserName = 'frxDBDSWioBak'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sno=sno'
      'wicode=wicode'
      'wisno=wisno'
      'crcode=crcode'
      'wiitem=wiitem'
      'winame=winame'
      'wiwash=wiwash'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiwamo=wiwamo'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiurge=wiurge'
      'widay=widay'
      'wimdate=wimdate'
      'wiodate=wiodate'
      'wiotime=wiotime'
      'wiplace=wiplace'
      'widate=widate'
      'witime=witime'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'tno=tno'
      'pps=pps'
      'picture=picture'
      'crvip=crvip'
      'crname=crname'
      'crtel=crtel'
      'crmoney=crmoney')
    DataSet = ZQueryWio_bak
    Left = 72
    Top = 312
  end
  object frxReportF12: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'πw≥]'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 42104.5556274884
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxDBDS_DailyM
        DataSetName = 'frxDBDS_DailyM'
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
      PrintIfEmpty = False
      OnAfterPrint = 'Page1OnAfterPrint'
      object ReportTitle1: TfrxReportTitle
        Height = 79.37013
        Top = 18.89765
        Width = 778.58318
        object Memo1: TfrxMemoView
          Left = 16.33859
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
          Left = 7.55906
          Top = 26.45671
          Width = 763.46506
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'º–∑¢≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '‚òÜ‚òÜ‚òÜÈñãÈóúÊ©üÁ¥ÄÈåÑË°®‚òÜ‚òÜ‚òÜ')
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
          Left = 79.37013
          Top = 58.69295
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
      end
      object Footer1: TfrxFooter
        Height = 22.67718
        Top = 283.46475
        Width = 778.58318
        object Memo8: TfrxMemoView
          Left = 15.11812
          Width = 755.906
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
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 241.88992
        Width = 778.58318
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_DailyM
        DataSetName = 'frxDBDS_DailyM'
        RowCount = 0
        object frxDBDSWiocrname: TfrxMemoView
          Left = 79.37013
          Width = 226.771653543307
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_DailyM."ondt"]')
          ParentFont = False
        end
        object frxDBDSWiowicode: TfrxMemoView
          Left = 15.11812
          Width = 56.69291339
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_DailyM."sn"]')
          ParentFont = False
        end
        object frxDBDSWiocrtelb: TfrxMemoView
          Left = 230.55133
          Width = 226.77165354
          Height = 18.89765
          DataSet = frxDBDSWio
          DataSetName = 'frxDBDSWio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_DailyM."offdt"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.47244094
        Top = 120.94496
        Width = 778.58318
        object Memo7: TfrxMemoView
          Left = 15.11812
          Top = 26.45671
          Width = 56.6929133858268
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Â∫èËôü')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 79.37013
          Top = 26.45671
          Width = 226.771653543307
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈñãÊ©üÊôÇÈñì')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 721.89023
          Width = 49.13389
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'º–∑¢≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 684.09493
          Top = -6.93889390390723E-18
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
          Left = 15.11812
          Top = 11.33859
          Width = 755.906
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
        object Memo9: TfrxMemoView
          Left = 15.11812
          Top = 41.57483
          Width = 755.906
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
        object Memo11: TfrxMemoView
          Left = 230.55133
          Top = 26.45671
          Width = 226.771653543307
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ÈóúÊ©üÊôÇÈñì')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDS_DailyM: TfrxDBDataset
    UserName = 'frxDBDS_DailyM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sn=sn'
      'ondt=ondt'
      'offdt=offdt')
    DataSet = WDM.ZQuery_DailyM
    Left = 712
    Top = 376
  end
end
