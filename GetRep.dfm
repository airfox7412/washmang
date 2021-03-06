object GetRepForm: TGetRepForm
  Left = 325
  Top = 111
  Align = alClient
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = '取件日期'
  ClientHeight = 462
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 33
    Width = 784
    Height = 400
    Selected.Strings = (
      'wicode'#9'6'#9'洗單號'#9#9
      'wisno'#9'5'#9'編號'#9'F'
      'crcode'#9'5'#9'客編'#9#9
      'widate'#9'10'#9'收件日期'#9#9
      'wiitem'#9'6'#9'花色'#9#9
      'winame'#9'8'#9'衣物名稱'#9#9
      'wiwash'#9'4'#9'洗法'#9#9
      'wiwamo'#9'4'#9'單價'#9#9
      'wiquty'#9'3'#9'件'#9#9
      'wisum'#9'4'#9'小計'#9#9
      'wiurge'#9'2'#9'急'#9#9
      'wiodate'#9'10'#9'取件日期'#9#9
      'wiotime'#9'10'#9'取件時間'#9#9
      'wiplace'#9'4'#9'位置'#9'F'#9
      'indate'#9'9'#9'入庫日期'#9'F'#9
      'crtelb'#9'6'#9'crtelb'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 12845056
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 12845056
    DataSource = wwDSWio
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -21
    TitleFont.Name = '細明體'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    GroupFieldName = 'wicode'
  end
  object PanelDateSet: TPanel
    Left = 88
    Top = 168
    Width = 257
    Height = 137
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label8: TLabel
      Left = 15
      Top = 48
      Width = 112
      Height = 27
      Caption = '開始日期'
    end
    object Label9: TLabel
      Left = 15
      Top = 88
      Width = 112
      Height = 27
      Caption = '結束日期'
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 247
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '設定日期'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MaskEditDate1: TMaskEdit
      Left = 128
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
    end
    object MaskEditDate2: TMaskEdit
      Left = 128
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
    Width = 784
    Height = 33
    Align = alTop
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 132
      Height = 21
      Caption = '衣物取件報表'
    end
    object Label2: TLabel
      Left = 170
      Top = 6
      Width = 22
      Height = 21
      Caption = '從'
    end
    object Label3: TLabel
      Left = 301
      Top = 6
      Width = 22
      Height = 21
      Caption = '到'
    end
    object lbDate1: TLabel
      Left = 200
      Top = 7
      Width = 99
      Height = 21
      Alignment = taRightJustify
      Caption = '099/01/01'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '標楷體'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbDate2: TLabel
      Left = 329
      Top = 7
      Width = 99
      Height = 21
      Alignment = taRightJustify
      Caption = '099/01/01'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = '標楷體'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
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
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF7
      RzToolbarButtonF8
      RzToolbarButtonF9
      RzToolbarButtonEsc)
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 95
      Height = 22
      Caption = 'F1.設定日期'
      OnClick = Action_F1Execute
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 384
      Top = 3
      Width = 95
      Height = 22
      Caption = 'Esc.離開'
      OnClick = Action_EscExecute
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 289
      Top = 3
      Width = 95
      Height = 22
      Action = Action_F9
      Caption = 'F9.已取報表'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF8: TRzToolbarButton
      Left = 194
      Top = 3
      Width = 95
      Height = 22
      Action = Action_F8
      Caption = 'F8.未取報表'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF7: TRzToolbarButton
      Left = 99
      Top = 3
      Width = 95
      Height = 22
      Action = Action_F7
      Caption = 'F7.非急件'
      HotNumGlyphs = 0
    end
  end
  object Panel_Print: TPanel
    Left = 309
    Top = 184
    Width = 204
    Height = 137
    BevelWidth = 5
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label19: TLabel
      Left = 5
      Top = 5
      Width = 194
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = '列印條件'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -32
      Font.Name = '細明體'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 56
      Top = 48
      Width = 100
      Height = 17
      Caption = '急件'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 56
      Top = 72
      Width = 100
      Height = 17
      Caption = '收送'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 56
      Top = 96
      Width = 75
      Height = 25
      Caption = '確定'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object ActionList1: TActionList
    Left = 112
    Top = 32
    object Action_F1: TAction
      Caption = 'F1.設定日期'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_F7: TAction
      Caption = 'F7.非急件'
      ShortCut = 118
      OnExecute = Action_F7Execute
    end
    object Action_F8: TAction
      Caption = 'F8.未取報表'
      ShortCut = 119
      OnExecute = Action_F8Execute
    end
    object Action_F9: TAction
      Caption = 'F9.已取報表'
      ShortCut = 120
      OnExecute = Action_F9Execute
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
    object Action_CAF8: TAction
      Caption = 'Action_CAF8'
      ShortCut = 49271
      OnExecute = Action_CAF8Execute
    end
    object Action_CAF9: TAction
      Caption = 'Action_CAF9'
      ShortCut = 49272
      OnExecute = Action_CAF9Execute
    end
  end
  object frxReportF9: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = '預設'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 41599.5470107292
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  isum: Real=0;'
      '  tquty: Integer=0;'
      '  grcnt: Integer=1;      '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  isum:=<frxDBDS_wio."wiwamo">*<frxDBDS_wio."wiquty">;'
      '  grcnt:=grcnt+1;      '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDS_wiowicode.Visible:=False;    '
      '    frxDBDS_wiocrname.Visible:=False;'
      
        '    frxDBDS_wiocrtel.Visible:=False;                            ' +
        '            '
      '    end'
      '  else   '
      '    begin'
      '    frxDBDS_wiowicode.Visible:=True;    '
      '    frxDBDS_wiocrname.Visible:=True;'
      '    frxDBDS_wiocrtel.Visible:=True;        '
      '    tquty:=tquty+1;        '
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
    Left = 16
    Top = 96
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
          Font.Name = '標楷體'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '���撣����蝔�:')
          ParentFont = False
        end
        object frxDBDS_Compycpname: TfrxMemoView
          Left = 111.04731
          Width = 359.05535
          Height = 18.8976378
          DataField = 'cpname'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '標楷體'
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
          Font.Name = '標楷體'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '��餉店:')
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
          Font.Name = '標楷體'
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
          Font.Name = '標楷體'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '���������瘣�銵���桀��隞嗅�梯”���������')
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
            '鋆質”��交��:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 86.92919
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
      object PageHeader1: TfrxPageHeader
        Height = 47.23624
        Top = 120.94496
        Width = 786.14224
        object Memo7: TfrxMemoView
          Left = 15.11812
          Top = 17
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '瘣���株��')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 64.25201
          Top = 17
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '憪����')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 209.1812
          Top = 17
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��渡�����')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 254.53556
          Top = 17
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��梯��')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 303.66945
          Top = 17
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '銵�������蝔�')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 364.14193
          Top = 17
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '瘣�瘜�')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 729.44929
          Width = 41.57483
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '標楷體'
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
          Font.Name = '標楷體'
          Font.Style = []
          Memo.UTF8 = (
            '������:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 15.11812
          Top = 28.33859
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
          Left = 394.37817
          Top = 17
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
            '隞�')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 424.61441
          Top = 17
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '撠�閮�')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 477.52783
          Top = 17
          Width = 64.25201
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��嗡辣��交��')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 541.77984
          Top = 17
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '���隞嗆�交��')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 124.72449
          Top = 17
          Width = 83.14966
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��餉店')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 610.28386
          Top = 17.11812
          Width = 15.11812
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '���')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 687.87446
          Top = 16.89765
          Width = 90.70872
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '���閮�')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 631.18151
          Top = 16.89765
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '雿�蝵�')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 253.22851
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_wio
        DataSetName = 'frxDBDS_wio'
        RowCount = 0
        object frxDBDS_wiocrname: TfrxMemoView
          Left = 64.25201
          Width = 60.47248
          Height = 18.89765
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
        object frxDBDS_wiowicode: TfrxMemoView
          Left = 15.11812
          Width = 49.13389
          Height = 18.8976377952756
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
        object frxDBDS_wiocrtel: TfrxMemoView
          Left = 124.72449
          Width = 83.14966
          Height = 18.89765
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."crtel"]')
          ParentFont = False
        end
        object frxDBDS_wiowisno: TfrxMemoView
          Left = 209.00786425
          Width = 45.35432827
          Height = 18.89765
          DataField = 'wisno'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wisno"]')
          ParentFont = False
        end
        object frxDBDS_wiowiitem: TfrxMemoView
          Left = 254.36219008
          Width = 49.13385827
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiitem"]')
          ParentFont = False
        end
        object frxDBDS_wiowiname: TfrxMemoView
          Left = 303.49604591
          Width = 60.47248
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."winame"]')
          ParentFont = False
        end
        object frxDBDS_wiowiwash: TfrxMemoView
          Left = 363.96848441
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiwash'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiwash"]')
          ParentFont = False
        end
        object frxDBDS_wiowiquty: TfrxMemoView
          Left = 394.20470244
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiquty'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_wio."wiquty"]')
          ParentFont = False
        end
        object frxDBDS_wiowisum: TfrxMemoView
          Left = 424.44092047
          Width = 45.35436
          Height = 18.89765
          DataField = 'wisum'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
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
        object frxDBDS_wiowidate: TfrxMemoView
          Left = 477.35430386
          Width = 64.25196606
          Height = 18.89765
          DataField = 'widate'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."widate"]')
          ParentFont = False
        end
        object frxDBDS_wiowiodate: TfrxMemoView
          Left = 541.60626504
          Width = 68.03149606
          Height = 18.89765
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiodate"]')
          ParentFont = False
        end
        object frxDBDS_wiowiurge: TfrxMemoView
          Left = 609.97681
          Width = 15.11812
          Height = 18.89765
          DataField = 'wiurge'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
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
        object frxDBDS_wiowimemo: TfrxMemoView
          Left = 687.87401575
          Width = 90.70872
          Height = 18.89765
          DataField = 'wimemo'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wimemo"]')
          ParentFont = False
        end
        object frxDBDS_wiowiplace: TfrxMemoView
          Left = 631.18151
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiplace'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiplace"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 1.22E-5
        Top = 230.55133
        Width = 786.14224
        Condition = 'frxDBDS_wio."wicode"'
        KeepChild = True
      end
      object Footer1: TfrxFooter
        Height = 56.69295
        Top = 332.59864
        Width = 786.14224
        object SysMemo3: TfrxSysMemoView
          Left = 15.11812
          Top = 18
          Width = 287.24428
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '瘣�銵���桃蜇閮�嚗�[<tquty>] 撘蛛����� [SUM(<frxDBDS_wio."wiquty"' +
              '>,MasterData1)] 隞�')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 347.71676
          Top = 18
          Width = 306.14193
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '銵���拍蜇���憿�嚗�[SUM(<frxDBDS_wio."wisum">,MasterData1)] ���')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 15.11812
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
        object Memo27: TfrxMemoView
          Left = 15.11812
          Top = 37.7953
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
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 15.11812
        Top = 294.80334
        Width = 786.14224
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo19: TfrxMemoView
          Left = 15.11812
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
      'widate=widate'
      'wiitem=wiitem'
      'winame=winame'
      'wiwash=wiwash'
      'wiwamo=wiwamo'
      'wiquty=wiquty'
      'wisum=wisum'
      'wiurge=wiurge'
      'wiodate=wiodate'
      'wiotime=wiotime'
      'wiplace=wiplace'
      'indate=indate'
      'crname=crname'
      'crtel=crtel'
      'wiacc=wiacc'
      'widay=widay'
      'wiexkind=wiexkind'
      'wiexmo=wiexmo'
      'wimark=wimark'
      'wimdate=wimdate'
      'wimemo=wimemo'
      'wisel=wisel'
      'mark=mark'
      'picture=picture'
      'pps=pps'
      'crtelb=crtelb')
    DataSet = ZQuery_wio
    Left = 48
    Top = 32
  end
  object ZQuery_wio: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM Wio'
      'WHERE wicode='#39'00000'#39)
    Params = <>
    Left = 80
    Top = 64
    object ZQuery_wiowicode: TStringField
      DisplayLabel = '洗單號'
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Size = 6
    end
    object ZQuery_wiowisno: TStringField
      DisplayLabel = '編號'
      DisplayWidth = 5
      FieldName = 'wisno'
      Required = True
      Size = 5
    end
    object ZQuery_wiocrcode: TStringField
      DisplayLabel = '客編'
      DisplayWidth = 5
      FieldName = 'crcode'
      Required = True
      Size = 5
    end
    object ZQuery_wiowidate: TStringField
      DisplayLabel = '收件日期'
      DisplayWidth = 10
      FieldName = 'widate'
      Size = 9
    end
    object ZQuery_wiowiitem: TStringField
      DisplayLabel = '花色'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQuery_wiowiname: TStringField
      DisplayLabel = '衣物名稱'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQuery_wiowiwash: TStringField
      DisplayLabel = '洗法'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQuery_wiowiwamo: TFloatField
      DisplayLabel = '單價'
      DisplayWidth = 4
      FieldName = 'wiwamo'
    end
    object ZQuery_wiowiquty: TIntegerField
      DisplayLabel = '件'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object ZQuery_wiowisum: TFloatField
      DisplayLabel = '小計'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object ZQuery_wiowiurge: TStringField
      DisplayLabel = '急'
      DisplayWidth = 2
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object ZQuery_wiowiodate: TStringField
      DisplayLabel = '取件日期'
      DisplayWidth = 10
      FieldName = 'wiodate'
      Size = 9
    end
    object ZQuery_wiowiotime: TTimeField
      DisplayLabel = '取件時間'
      DisplayWidth = 10
      FieldName = 'wiotime'
    end
    object ZQuery_wiowiplace: TStringField
      DisplayLabel = '位置'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Size = 4
    end
    object ZQuery_wioindate: TStringField
      DisplayLabel = '入庫日期'
      DisplayWidth = 9
      FieldName = 'indate'
      Size = 9
    end
    object ZQuery_wiocrtelb: TStringField
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'crtelb'
      LookupDataSet = WDM.ZQueryCust
      LookupKeyFields = 'crcode'
      LookupResultField = 'crtelb'
      KeyFields = 'crcode'
      Size = 6
      Lookup = True
    end
    object ZQuery_wiocrname: TStringField
      DisplayLabel = '姓名'
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
    object ZQuery_wiocrtel: TStringField
      DisplayLabel = '電話'
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
    object ZQuery_wiowiacc: TStringField
      DisplayLabel = '配件'
      DisplayWidth = 6
      FieldName = 'wiacc'
      Visible = False
      Size = 10
    end
    object ZQuery_wiowiday: TStringField
      DisplayWidth = 2
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object ZQuery_wiowiexkind: TStringField
      DisplayLabel = '加工'
      DisplayWidth = 7
      FieldName = 'wiexkind'
      Visible = False
      Size = 10
    end
    object ZQuery_wiowiexmo: TFloatField
      DisplayLabel = '工費'
      DisplayWidth = 7
      FieldName = 'wiexmo'
      Visible = False
    end
    object ZQuery_wiowimark: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object ZQuery_wiowimdate: TStringField
      DisplayLabel = '應交日期'
      DisplayWidth = 9
      FieldName = 'wimdate'
      Visible = False
      Size = 9
    end
    object ZQuery_wiowimemo: TStringField
      DisplayLabel = '衣服註明'
      DisplayWidth = 7
      FieldName = 'wimemo'
      Visible = False
      Size = 10
    end
    object ZQuery_wiowisel: TStringField
      DisplayWidth = 1
      FieldName = 'wisel'
      Visible = False
      Size = 1
    end
    object ZQuery_wiomark: TStringField
      DisplayWidth = 1
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object ZQuery_wiopicture: TStringField
      DisplayWidth = 20
      FieldName = 'picture'
      Visible = False
    end
    object ZQuery_wiopps: TIntegerField
      DisplayWidth = 10
      FieldName = 'pps'
      Visible = False
    end
  end
  object frxDBDS_cr: TfrxDBDataset
    UserName = 'frxDBDS_cr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'crcode=crcode'
      'crdate=crdate'
      'crname=crname'
      'csex=csex'
      'crid=crid'
      'crtel=crtel'
      'crtela=crtela'
      'crtelb=crtelb'
      'cradr=cradr'
      'crmoney=crmoney'
      'crpsen=crpsen'
      'crdate2=crdate2'
      'crcnt=crcnt'
      'crvip=crvip'
      'crarea=crarea'
      'curst=curst'
      'crs1=crs1'
      'crs2=crs2'
      'crmark=crmark')
    DataSet = WDM.ZQueryCust
    Left = 48
    Top = 96
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
      'cpdayn=cpdayn'
      'cpqday=cpqday'
      'ppaa=ppaa'
      'ppcc=ppcc'
      'getitem=getitem'
      'serialno=serialno')
    DataSet = WDM.ZTableCompy
    Left = 48
    Top = 64
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
    Left = 80
    Top = 32
  end
  object wwDSWio: TwwDataSource
    DataSet = ZQuery_wio
    Left = 112
    Top = 64
  end
  object frxReportF8: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = '預設'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40336.6754507292
    ReportOptions.LastChange = 41599.5465741435
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  isum: Real=0;'
      '  tquty: Integer=0;'
      '  grcnt: Integer=1;      '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  isum:=<frxDBDS_wio."wiwamo">*<frxDBDS_wio."wiquty">;'
      '  grcnt:=grcnt+1;      '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if grcnt>=2 then'
      '    begin                           '
      '    frxDBDS_wiowicode.Visible:=False;    '
      '    frxDBDS_wiocrname.Visible:=False;'
      '    frxDBDS_wiocrtel.Visible:=False;'
      '    frxDBDS_wiocrtelb.Visible:=False;'
      '    end'
      '  else   '
      '    begin'
      '    frxDBDS_wiowicode.Visible:=True;    '
      '    frxDBDS_wiocrname.Visible:=True;'
      '    frxDBDS_wiocrtel.Visible:=True;          '
      '    frxDBDS_wiocrtelb.Visible:=True;'
      '    tquty:=tquty+1;        '
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
    Left = 16
    Top = 64
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
          Font.Name = '標楷體'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '���撣����蝔�:')
          ParentFont = False
        end
        object frxDBDS_Compycpname: TfrxMemoView
          Left = 111.04731
          Width = 359.05535
          Height = 18.8976378
          DataField = 'cpname'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '標楷體'
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
          Font.Name = '標楷體'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '��餉店:')
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
          Font.Name = '標楷體'
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
          Font.Name = '標楷體'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '���������銵���拇�芸����梯”���������')
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
            '鋆質”��交��:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 86.92919
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
      object PageHeader1: TfrxPageHeader
        Height = 47.23624
        Top = 120.94496
        Width = 786.14224
        object Memo7: TfrxMemoView
          Left = 15.11812
          Top = 17
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '瘣���株��')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 120.28355
          Top = 17
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '憪����')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 265.21274
          Top = 17
          Width = 45.35436
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��渡�����')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 310.5671
          Top = 17
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��梯��')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 359.70099
          Top = 17
          Width = 60.47248
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '銵�������蝔�')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 420.17347
          Top = 17
          Width = 30.23624
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '瘣�瘜�')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 729.44929
          Width = 41.57483
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '標楷體'
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
          Font.Name = '標楷體'
          Font.Style = []
          Memo.UTF8 = (
            '������:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 15.11812
          Top = 28.33859
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
          Left = 450.40971
          Top = 17
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
            '隞�')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 480.64595
          Top = 17
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '撠�閮�')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 541.77984
          Top = 17
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��嗡辣��交��')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 69.33859
          Top = 17
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��餉�西��')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 180.75603
          Top = 17
          Width = 83.14966
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '��餉店')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 610.28386
          Top = 17.11812
          Width = 15.11812
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '���')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 687.87446
          Top = 16.89765
          Width = 90.70872
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '���閮�')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 631.18151
          Top = 16.89765
          Width = 49.13389
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '雿�蝵�')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 253.22851
        Width = 786.14224
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDS_wio
        DataSetName = 'frxDBDS_wio'
        RowCount = 0
        object frxDBDS_wiocrname: TfrxMemoView
          Left = 120.94496
          Width = 60.47248
          Height = 18.89765
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
        object frxDBDS_wiowicode: TfrxMemoView
          Left = 15.11812
          Width = 49.13389
          Height = 18.8976378
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
        object frxDBDS_wiocrtel: TfrxMemoView
          Left = 181.41744
          Width = 83.14966
          Height = 18.89765
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."crtel"]')
          ParentFont = False
        end
        object frxDBDS_wiowiitem: TfrxMemoView
          Left = 311.05514008
          Width = 49.13385827
          Height = 18.89765
          DataField = 'wiitem'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiitem"]')
          ParentFont = False
        end
        object frxDBDS_wiowiname: TfrxMemoView
          Left = 360.18899591
          Width = 60.47248
          Height = 18.89765
          DataField = 'winame'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."winame"]')
          ParentFont = False
        end
        object frxDBDS_wiowiwash: TfrxMemoView
          Left = 420.66143441
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiwash'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiwash"]')
          ParentFont = False
        end
        object frxDBDS_wiowiquty: TfrxMemoView
          Left = 450.89765244
          Width = 30.23624
          Height = 18.89765
          DataField = 'wiquty'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_wio."wiquty"]')
          ParentFont = False
        end
        object frxDBDS_wiowisum: TfrxMemoView
          Left = 481.13387047
          Width = 49.13389
          Height = 18.89765
          DataField = 'wisum'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
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
        object frxDBDS_wiowidate: TfrxMemoView
          Left = 541.60631386
          Width = 68.03149606
          Height = 18.89765
          DataField = 'widate'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."widate"]')
          ParentFont = False
        end
        object frxDBDS_wiowiurge: TfrxMemoView
          Left = 609.97681
          Width = 15.11812
          Height = 18.89765
          DataField = 'wiurge'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
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
        object frxDBDS_wiowimemo: TfrxMemoView
          Left = 687.87401575
          Width = 90.70872
          Height = 18.89765
          DataField = 'wimemo'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wimemo"]')
          ParentFont = False
        end
        object frxDBDS_wiowiplace: TfrxMemoView
          Left = 631.18151
          Width = 49.13389
          Height = 18.89765
          DataField = 'wiplace'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."wiplace"]')
          ParentFont = False
        end
        object frxDBDS_wiocrtelb: TfrxMemoView
          Left = 69.16535433
          Width = 49.13389
          Height = 18.89765
          DataField = 'crtelb'
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_wio."crtelb"]')
          ParentFont = False
        end
        object frxDBDS_wiowisno: TfrxMemoView
          Left = 264.5671
          Width = 45.35436
          Height = 18.89765
          DataSet = frxDBDS_wio
          DataSetName = 'frxDBDS_wio'
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
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 1.22E-5
        Top = 230.55133
        Width = 786.14224
        Condition = 'frxDBDS_wio."wicode"'
        KeepChild = True
      end
      object Footer1: TfrxFooter
        Height = 56.69295
        Top = 332.59864
        Width = 786.14224
        object SysMemo3: TfrxSysMemoView
          Left = 15.11812
          Top = 18
          Width = 287.24428
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '瘣�銵���桃蜇閮�嚗�[<tquty>] 撘蛛����� [SUM(<frxDBDS_wio."wiquty"' +
              '>,MasterData1)] 隞�')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 347.71676
          Top = 18
          Width = 306.14193
          Height = 18.89765
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '銵���拍蜇���憿�嚗�[SUM(<frxDBDS_wio."wisum">,MasterData1)] ���')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 15.11812
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
        object Memo27: TfrxMemoView
          Left = 15.11812
          Top = 37.7953
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
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 15.11812
        Top = 294.80334
        Width = 786.14224
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo19: TfrxMemoView
          Left = 15.11812
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
      end
    end
  end
end
