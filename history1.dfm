object History1Form: THistory1Form
  Left = 192
  Top = 127
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '¶Á™´æ˙•v∏ÍÆ∆'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 63
    Width = 784
    Height = 370
    ControlType.Strings = (
      'sel;CheckBox;Yes;No'
      'selected;CheckBox;Yes;No')
    Selected.Strings = (
      'wiodate'#9'9'#9'®˙•Û§È¥¡'#9#9
      'wicode'#9'6'#9'¨~≥Ê∏π'#9#9
      'wisno'#9'4'#9'Ωs∏π'#9#9
      'wiitem'#9'6'#9'™·¶‚'#9#9
      'winame'#9'8'#9'¶Á™´¶W∫Ÿ'#9#9
      'wiwash'#9'4'#9'¨~™k'#9#9
      'wiwamo'#9'4'#9'≥Êª˘'#9#9
      'wiquty'#9'2'#9'•Û'#9#9
      'wisum'#9'4'#9'§p≠p'#9#9
      'wimemo'#9'8'#9'¶Á™Aµ˘©˙'#9#9
      'wiacc'#9'6'#9'∞t•Û'#9#9
      'wiexkind'#9'6'#9'•[§u'#9#9
      'wiexmo'#9'6'#9'•[§u∂O'#9#9
      'wiotime'#9'10'#9'®˙•ÛÆ…∂°'#9#9
      'picture'#9'6'#9'∑”§˘'#9#9
      'crtel'#9'10'#9'crtel'#9#9
      'crname'#9'8'#9'crname'#9#9
      'witime'#9'10'#9'witime'#9'F'#9)
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'MultiSelectFormwwDBGrid1'
    IniAttributes.Delimiter = ';;'
    TitleColor = clNavy
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Align = alClient
    Color = 12845056
    DataSource = wwDS_wio
    EditCalculated = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    KeyOptions = [dgAllowDelete]
    MultiSelectOptions = [msoAutoUnselect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
    ParentFont = False
    RowHeightPercent = 110
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -24
    TitleFont.Name = '≤”©˙≈È'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = wwDBGrid1DblClick
    OnKeyDown = wwDBGrid1KeyDown
    IndicatorIconColor = clYellow
  end
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
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ToolbarControls = (
      RzToolbarButton1
      RzToolbarButtonF11
      RzToolbarButtonCP
      RzToolbarButtonExit)
    object RzToolbarButtonExit: TRzToolbarButton
      Left = 374
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.¬˜∂}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF11: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 140
      Height = 22
      Action = Action_F11
      Caption = 'F11.§w®˙•Û¡Ÿ≠Ï'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonCP: TRzToolbarButton
      Left = 234
      Top = 3
      Width = 140
      Height = 22
      Action = Action_CtrlP
      Caption = 'Ctrl-P.∑”§˘πwƒ˝'
      HotNumGlyphs = 0
    end
    object RzToolbarButton1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = Action_F9
      Caption = 'F9.¶C¶L'
      HotNumGlyphs = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 63
    Align = alTop
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '≤”©˙≈È'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label15: TLabel
      Left = 352
      Top = 35
      Width = 88
      Height = 21
      AutoSize = False
      Caption = 'øÔ®˙™˜√B'
    end
    object Label1: TLabel
      Left = 527
      Top = 35
      Width = 22
      Height = 21
      Caption = '§∏'
    end
    object SelectMoney: TLabel
      Left = 441
      Top = 33
      Width = 83
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = '∑s≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 88
      Height = 21
      Caption = '´»§·Ωs∏π'
    end
    object Label6: TLabel
      Left = 194
      Top = 5
      Width = 44
      Height = 21
      Caption = '©m¶W'
    end
    object Label9: TLabel
      Left = 392
      Top = 5
      Width = 44
      Height = 21
      Caption = 'πq∏‹'
    end
    object Label12: TLabel
      Left = 227
      Top = 35
      Width = 88
      Height = 21
      Caption = 'øÔ®˙•Ûº∆'
    end
    object DBText1: TDBText
      Left = 100
      Top = 4
      Width = 80
      Height = 21
      DataField = 'crcode'
      DataSource = WDM.DS_cr
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 240
      Top = 4
      Width = 109
      Height = 21
      DataField = 'crname'
      DataSource = WDM.DS_cr
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 440
      Top = 4
      Width = 113
      Height = 21
      DataField = 'crtel'
      DataSource = WDM.DS_cr
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '≤”©˙≈È'
      Font.Style = []
      ParentFont = False
    end
    object SelectPcs: TLabel
      Left = 316
      Top = 33
      Width = 29
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = '∑s≤”©˙≈È'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Image1: TImage
      Left = 713
      Top = 1
      Width = 70
      Height = 55
      Stretch = True
      OnClick = Image1Click
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
    Left = 621
    Top = 208
  end
  object ZQuery_wio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wio'
      'WHERE wiodate<>'#39#39
      'ORDER BY wiodate DESC, wisno DESC')
    Params = <>
    Left = 624
    Top = 240
    object ZQuery_wiowiodate: TStringField
      DisplayLabel = '®˙•Û§È¥¡'
      DisplayWidth = 9
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQuery_wiowicode: TStringField
      DisplayLabel = '¨~≥Ê∏π'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_wiowisno: TStringField
      DisplayLabel = 'Ωs∏π'
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 6
    end
    object ZQuery_wiowiitem: TStringField
      DisplayLabel = '™·¶‚'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQuery_wiowiname: TStringField
      DisplayLabel = '¶Á™´¶W∫Ÿ'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQuery_wiowiwash: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQuery_wiowiwamo: TFloatField
      DisplayLabel = '≥Êª˘'
      DisplayWidth = 4
      FieldName = 'wiwamo'
    end
    object ZQuery_wiowiquty: TIntegerField
      DisplayLabel = '•Û'
      DisplayWidth = 2
      FieldName = 'wiquty'
    end
    object ZQuery_wiowisum: TFloatField
      DisplayLabel = '§p≠p'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object ZQuery_wiowimemo: TStringField
      DisplayLabel = '¶Á™Aµ˘©˙'
      DisplayWidth = 8
      FieldName = 'wimemo'
      Size = 10
    end
    object ZQuery_wiowiacc: TStringField
      DisplayLabel = '∞t•Û'
      DisplayWidth = 6
      FieldName = 'wiacc'
      Size = 10
    end
    object ZQuery_wiowiexkind: TStringField
      DisplayLabel = '•[§u'
      DisplayWidth = 6
      FieldName = 'wiexkind'
      Size = 10
    end
    object ZQuery_wiowiexmo: TFloatField
      DisplayLabel = '•[§u∂O'
      DisplayWidth = 6
      FieldName = 'wiexmo'
    end
    object ZQuery_wiowiotime: TTimeField
      DisplayLabel = '®˙•ÛÆ…∂°'
      DisplayWidth = 10
      FieldName = 'wiotime'
    end
    object ZQuery_wiopicture: TStringField
      DisplayLabel = '∑”§˘'
      DisplayWidth = 6
      FieldName = 'picture'
    end
    object ZQuery_wiocrtel: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object ZQuery_wiocrname: TStringField
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 8
      Lookup = True
    end
    object ZQuery_wiowitime: TTimeField
      DisplayWidth = 10
      FieldName = 'witime'
    end
    object ZQuery_wiowidate: TStringField
      DisplayWidth = 9
      FieldName = 'widate'
      Visible = False
      Size = 9
    end
    object ZQuery_wiowimdate: TStringField
      DisplayLabel = '¿≥•Ê§È¥¡'
      DisplayWidth = 9
      FieldName = 'wimdate'
      Visible = False
      Size = 9
    end
    object ZQuery_wiowiplace: TStringField
      DisplayLabel = '¶Ï∏m'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Visible = False
      Size = 4
    end
    object ZQuery_wiowiurge: TStringField
      DisplayLabel = '´Ê'
      DisplayWidth = 2
      FieldName = 'wiurge'
      Required = True
      Visible = False
      Size = 1
    end
    object ZQuery_wiowiday: TStringField
      DisplayWidth = 2
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object ZQuery_wiowimark: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object ZQuery_wioindate: TStringField
      DisplayWidth = 9
      FieldName = 'indate'
      Visible = False
      Size = 9
    end
    object ZQuery_wiomark: TStringField
      DisplayWidth = 1
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object ZQuery_wiopps: TIntegerField
      DisplayWidth = 10
      FieldName = 'pps'
      Visible = False
    end
    object ZQuery_wiocrcode: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Visible = False
      Size = 5
    end
    object ZQuery_wiocradr: TStringField
      FieldKind = fkLookup
      FieldName = 'cradr'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'cradr'
      KeyFields = 'crcode'
      Visible = False
      Size = 50
      Lookup = True
    end
    object ZQuery_wiocrmoney: TFloatField
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Visible = False
      Lookup = True
    end
    object ZQuery_wiowisel: TStringField
      DisplayWidth = 1
      FieldName = 'wisel'
      Visible = False
      Size = 1
    end
  end
  object wwDS_wio: TwwDataSource
    DataSet = ZQuery_wio
    Left = 656
    Top = 240
  end
  object ActionList1: TActionList
    Left = 656
    Top = 208
    object Action_F11: TAction
      Caption = 'F11.§w®˙•Û¡Ÿ≠Ï'
      ShortCut = 122
      OnExecute = Action_F11Execute
    end
    object Action_CtrlP: TAction
      Caption = 'Ctrl-P.∑”§˘πwƒ˝'
      ShortCut = 16464
      OnExecute = Action_CtrlPExecute
    end
    object Action_Esc: TAction
      Caption = 'Esc.¬˜∂}'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
    object Action_F9: TAction
      Caption = 'F9.¶C¶L'
      ShortCut = 120
      OnExecute = Action_F9Execute
    end
  end
  object frxReport1: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40332.4805082639
    ReportOptions.LastChange = 40659.4638507292
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  PageLine: integer;       //¶b≤{¶b≠∂¶C¶L®Ï≤ƒ¥X¶Ê'
      '  PageMaxRow: integer=10;  //≥]©w®C≠∂¶Cº∆'
      '    '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  PageLine := <Line> mod PageMaxRow;'
      '  if (PageLine = 1) and (<line> > 1) then'
      '    Engine.newpage;'
      '  Child1.visible := False;    '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  i: integer;'
      'begin'
      '  i := iif(PageLine=0, PageMaxRow, PageLine);'
      '  child1.visible := True;'
      '  while i < PageMaxRow do'
      '    begin'
      '    i := i + 1;'
      '    Engine.ShowBand(Child1);  //¶L™≈•’™ÌÆÊ'
      '    end;'
      '  Child1.visible := False;'
      'end;'
      ''
      'procedure Footer1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo5.Memo.Text:=Memo2.Memo.Text;                             ' +
        '                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 528
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
      Font.Height = -13
      Font.Name = '∑s≤”©˙≈È'
      Font.Style = []
      PaperWidth = 180
      PaperHeight = 102
      PaperSize = 256
      LeftMargin = 2
      RightMargin = 2
      TopMargin = 4
      BottomMargin = 4
      ColumnWidth = 152
      ColumnPositions.Strings = (
        '0')
      PrintOnPreviousPage = True
      object PageHeader1: TfrxPageHeader
        Height = 149.29133858
        Top = 18.89765
        Width = 665.19728
        PrintChildIfInvisible = True
        object frxDBDataset2cpname: TfrxMemoView
          Align = baCenter
          Left = 156.850495
          Top = 3.77953
          Width = 351.49629
          Height = 26.45671
          DataField = 'cpname'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = '≤”©˙≈È'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."cpname"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 257.44898
          Top = 34.01577
          Width = 340.1577
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '∑L≥n•ø∂¬≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."cpaddr"]')
          ParentFont = False
        end
        object frxDBDataset2cptel: TfrxMemoView
          Left = 87.5906
          Top = 36.01577
          Width = 139.84261
          Height = 18.89765
          AutoWidth = True
          DataField = 'cptel'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."cptel"]')
          ParentFont = False
        end
        object frxDBDataset1crname: TfrxMemoView
          Left = 87.5906
          Top = 62.91342
          Width = 60.47248
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."crname"]')
          ParentFont = False
        end
        object frxDBDataset1crtel: TfrxMemoView
          Left = 226.43321
          Top = 62.91342
          Width = 79.37013
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."crtel"]')
          ParentFont = False
        end
        object frxDBDataset1cradr: TfrxMemoView
          Left = 394.29159
          Top = 62.91342
          Width = 260.78757
          Height = 18.89765
          AutoWidth = True
          DataField = 'cradr'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."cradr"]')
          ParentFont = False
        end
        object frxDBDataset1widate: TfrxMemoView
          Left = 226.43321
          Top = 85.5906
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DataField = 'widate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."widate"]')
          ParentFont = False
        end
        object frxDBDataset1crmoney: TfrxMemoView
          Left = 537.1342
          Top = 86.92919
          Width = 79.37013
          Height = 18.89765
          AutoWidth = True
          DataField = 'crmoney'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."crmoney"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 496.00031
          Top = 86.92919
          Width = 37.7953
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'È§òÈ°ç')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 393.51206
          Top = 86.92919
          Width = 98.26778
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Âèñ‰ª∂ÂàóÂç∞')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 87.37013
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '5000')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 149.62214
          Top = 62.74015504
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."crcode"]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 15.11812
          Top = 11.33859
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            'Âç∞ÂñÆÊó•Êúü[DATE]')
          ParentFont = False
        end
        object frxDBDataset1wiodate: TfrxMemoView
          Left = 521.57514
          Top = 7.55906
          Width = 94.48825
          Height = 18.89765
          DataField = 'wiodate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiodate"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.87401575
        Top = 230.55133
        Width = 665.19728
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Child = frxReport1.Child1
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1wisno: TfrxMemoView
          Left = 6.44094
          Width = 49.13389
          Height = 18.89765
          AutoWidth = True
          DataField = 'wisno'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wisno"]')
          ParentFont = False
        end
        object frxDBDataset1wiitem: TfrxMemoView
          Left = 55.57483
          Width = 56.69295
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiitem'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiitem"]')
          ParentFont = False
        end
        object frxDBDataset1winame: TfrxMemoView
          Left = 114.04731
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."winame"]')
          ParentFont = False
        end
        object frxDBDataset1wiwash: TfrxMemoView
          Left = 250.7718
          Width = 37.7953
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiwash'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiwash"]')
          ParentFont = False
        end
        object frxDBDataset1wiacc: TfrxMemoView
          Left = 188.07885
          Width = 68.03154
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiacc'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiacc"]')
          ParentFont = False
        end
        object frxDBDataset1wiwamo: TfrxMemoView
          Left = 291.12616
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiwamo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wiwamo"]')
          ParentFont = False
        end
        object frxDBDataset1wiquty: TfrxMemoView
          Left = 426.07112
          Width = 18.89765
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiquty'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiquty"]')
          ParentFont = False
        end
        object frxDBDataset1wisum: TfrxMemoView
          Left = 444.30736
          Width = 34.01577
          Height = 18.89765
          AutoWidth = True
          DataField = 'wisum'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."wisum"]')
          ParentFont = False
        end
        object frxDBDataset1wiexkind: TfrxMemoView
          Left = 325.03958
          Width = 64.25201
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiexkind'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiexkind"]')
          ParentFont = False
        end
        object frxDBDataset1wimemo: TfrxMemoView
          Left = 506.45702
          Width = 71.81107
          Height = 18.89765
          AutoWidth = True
          DataField = 'wimemo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wimemo"]')
          ParentFont = False
        end
        object frxDBDataset1wiurge: TfrxMemoView
          Left = 487.3389
          Width = 18.89765
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiurge'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiurge"]')
          ParentFont = False
        end
        object frxDBDataset1wiwamo1: TfrxMemoView
          Left = 388.73253
          Width = 30.23624
          Height = 18.89765
          AutoWidth = True
          DataField = 'wiexmo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wiexmo"]')
          ParentFont = False
        end
        object frxDBDataset1wicode: TfrxMemoView
          Left = 580.04762
          Width = 60.47248
          Height = 18.89765
          DataField = 'wicode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."wicode"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 15.87401575
        Top = 268.34663
        Width = 665.19728
      end
      object Footer1: TfrxFooter
        Height = 45.35433071
        Top = 306.14193
        Width = 665.19728
        OnAfterPrint = 'Footer1OnAfterPrint'
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo1: TfrxMemoView
          Left = 71.81107
          Top = 18.33859
          Width = 41.57483
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '15‰ª∂')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 173.85838
          Top = 18.33859
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '5000')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 311.58287
          Top = 18.33859
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '5000')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 453.5436
          Top = 18.33859
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = []
          Memo.UTF8 = (
            '5000')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 559.37044
          Top = 18.33859
          Width = 45.35436
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '≤”©˙≈È'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '5000')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'wisno=wisno'
      'wiitem=wiitem'
      'winame=winame'
      'wiwash=wiwash'
      'wiwamo=wiwamo'
      'wiurge=wiurge'
      'wimdate=wimdate'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiacc=wiacc'
      'wimemo=wimemo'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'pps=pps'
      'picture=picture'
      'wiplace=wiplace'
      'wiotime=wiotime'
      'wicode=wicode'
      'crcode=crcode'
      'widay=widay'
      'wiodate=wiodate'
      'widate=widate'
      'wimark=wimark'
      'indate=indate'
      'mark=mark'
      'wisel=wisel'
      'crname=crname'
      'crtel=crtel'
      'cradr=cradr'
      'crmoney=crmoney'
      'crtelb=crtelb')
    DataSet = ZQueryF9
    Left = 564
    Top = 272
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
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
    Left = 564
    Top = 304
  end
  object ZQueryF9: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wio'
      'WHERE wicode='#39'003502'#39' AND crcode='#39'00010'#39)
    Params = <>
    Left = 564
    Top = 240
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
    object StringField4: TStringField
      DisplayLabel = '¨~™k'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object FloatField1: TFloatField
      DisplayLabel = '≥Êª˘'
      DisplayWidth = 4
      FieldName = 'wiwamo'
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
    object IntegerField2: TIntegerField
      DisplayLabel = 'ßÈ¶©'
      DisplayWidth = 4
      FieldName = 'pps'
    end
    object StringField10: TStringField
      DisplayLabel = '∑”§˘'
      DisplayWidth = 11
      FieldName = 'picture'
    end
    object StringField11: TStringField
      DisplayLabel = '¶Ï∏m'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Visible = False
      Size = 4
    end
    object TimeField1: TTimeField
      DisplayWidth = 10
      FieldName = 'wiotime'
      Visible = False
    end
    object StringField12: TStringField
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Visible = False
      Size = 6
    end
    object StringField13: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Visible = False
      Size = 5
    end
    object StringField14: TStringField
      DisplayWidth = 2
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object StringField15: TStringField
      DisplayLabel = '¿≥•Ê§È¥¡'
      DisplayWidth = 10
      FieldName = 'wiodate'
      Visible = False
      Size = 10
    end
    object StringField16: TStringField
      DisplayWidth = 10
      FieldName = 'widate'
      Visible = False
      Size = 10
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
    object ZQueryF9wisel: TStringField
      FieldName = 'wisel'
      Size = 1
    end
    object StringField20: TStringField
      FieldKind = fkLookup
      FieldName = 'crname'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crname'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object StringField21: TStringField
      FieldKind = fkLookup
      FieldName = 'crtel'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtel'
      KeyFields = 'crcode'
      Size = 10
      Lookup = True
    end
    object StringField22: TStringField
      FieldKind = fkLookup
      FieldName = 'cradr'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'cradr'
      KeyFields = 'crcode'
      Size = 50
      Lookup = True
    end
    object ZQueryF9crmoney: TFloatField
      FieldKind = fkLookup
      FieldName = 'crmoney'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crmoney'
      KeyFields = 'crcode'
      Lookup = True
    end
    object ZQueryF9crtelb: TStringField
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQuery_cr
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 5
      Lookup = True
    end
  end
end
