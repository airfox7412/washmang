object batchForm: TbatchForm
  Left = 524
  Top = 239
  BorderStyle = bsDialog
  Caption = '�妸�e��'
  ClientHeight = 180
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDateSet: TPanel
    Left = 0
    Top = 0
    Width = 253
    Height = 180
    Align = alClient
    BevelWidth = 5
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = '�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label8: TLabel
      Left = 24
      Top = 48
      Width = 84
      Height = 27
      Caption = '�}�l��'
    end
    object Label9: TLabel
      Left = 24
      Top = 88
      Width = 84
      Height = 27
      Caption = '������'
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 243
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = '�妸�e��]�w'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = '�ө���'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      OnDblClick = Label10DblClick
    end
    object EditWisno_s: TEdit
      Left = 128
      Top = 42
      Width = 92
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '1'
      OnKeyDown = EditWisno_sKeyDown
    end
    object EditWisno_e: TEdit
      Left = 128
      Top = 82
      Width = 92
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = '�ө���'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '50'
      OnKeyDown = EditWisno_eKeyDown
    end
    object Button1: TButton
      Left = 40
      Top = 136
      Width = 75
      Height = 30
      Caption = '�T�w'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 144
      Top = 136
      Width = 75
      Height = 30
      Caption = '���}'
      TabOrder = 3
      OnClick = ActionEscExecute
    end
  end
  object ActionList1: TActionList
    Left = 208
    Top = 48
    object ActionEsc: TAction
      Caption = 'ActionEsc'
      ShortCut = 27
      OnExecute = ActionEscExecute
    end
    object ActionF1: TAction
      Caption = 'F1.�T�{'
      ShortCut = 112
      OnExecute = ActionF1Execute
    end
  end
  object frxReport1: TfrxReport
    Version = '4.3'
    DataSet = frxDBDS_Compy
    DataSetName = 'frxDBDS_Compy'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41254.5792980671
    ReportOptions.LastChange = 41254.6490248727
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDS_Compy
        DataSetName = 'frxDBDS_Compy'
      end
      item
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      ColumnWidth = 26.25
      object ReportTitle1: TfrxReportTitle
        Height = 83.14966
        Top = 18.89765
        Width = 793.7013
        object Memo1: TfrxMemoView
          Left = 16.33859
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
          Left = 111.04731
          Width = 359.05535
          Height = 18.8976378
          DataField = 'cpname'
          DataSet = DailyRepForm.frxDBDS_Compy
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
          Left = 476.22078
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
          Left = 532.91373
          Width = 238.11029236
          Height = 18.89765
          DataSet = DailyRepForm.frxDBDS_Compy
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
          Left = 20.787415
          Top = 26.45671
          Width = 752.12647
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = '�з���'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '☆☆☆批次送件☆☆☆')
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
            '製表日期:')
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
        object Memo8: TfrxMemoView
          Left = 15.11812
          Top = 71.81107
          Width = 755.906
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
        object Memo11: TfrxMemoView
          Left = 521.57514
          Top = 56.69295
          Width = 52.91342
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '總件數:')
          ParentFont = False
        end
        object MemoCount: TfrxMemoView
          Left = 574.48856
          Top = 56.69291339
          Width = 75.5906
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 729.44929
          Top = 56.69295
          Width = 34.01577
          Height = 22.67718
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '衣物')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.67718
        Top = 162.51979
        Width = 793.7013
        Columns = 10
        ColumnWidth = 62.3622047244094
        ColumnGap = 15.1181102362205
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
        RowCount = 0
        object frxUserDataSet1wisno: TfrxMemoView
          Left = 11.33859
          Width = 49.13389
          Height = 18.89765
          DataField = 'wisno'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxUserDataSet1."wisno"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 34.01577
        Top = 207.87415
        Width = 793.7013
        object Memo6: TfrxMemoView
          Left = 15.11812
          Width = 755.906
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
        object Memo7: TfrxMemoView
          Left = 15.11812
          Top = 15.11812
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '業務員代號:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 287.24428
          Top = 15.11812
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '業務員簽章:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 566.9295
          Top = 15.11812
          Width = 79.37013
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '門市部簽章:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDS_Compy: TfrxDBDataset
    UserName = 'frxDBDS_Compy'
    CloseDataSource = False
    DataSet = WDM.ZTableCompy
    Left = 208
    Top = 120
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Fields.Strings = (
      'wisno')
    OnGetValue = frxUserDataSet1GetValue
    Left = 176
    Top = 88
  end
end
