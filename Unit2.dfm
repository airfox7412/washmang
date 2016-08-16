object Form1: TForm1
  Left = 192
  Top = 127
  Width = 864
  Height = 496
  Align = alClient
  Caption = '冀鑫年份轉換'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 255
    Width = 848
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 37
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 81
      Height = 20
      Caption = 'TableName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 93
      Top = 4
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      Text = '請選擇...'
      OnChange = ComboBox1Change
    end
    object Button1: TButton
      Left = 242
      Top = 5
      Width = 75
      Height = 25
      Caption = '個別轉換'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 320
      Top = 5
      Width = 105
      Height = 25
      Caption = '全自動轉換'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 472
      Top = 5
      Width = 65
      Height = 25
      Caption = '中斷轉換'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 431
      Top = 5
      Width = 37
      Height = 25
      Caption = '暫停'
      TabOrder = 4
      OnClick = Button6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 848
    Height = 200
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 846
      Height = 179
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = '細明體'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object RzStatusBar1: TRzStatusBar
      Left = 1
      Top = 180
      Width = 846
      Height = 19
      BorderInner = fsNone
      BorderOuter = fsNone
      BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
      BorderWidth = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzProgressStatus1: TRzProgressStatus
        Left = 509
        Top = 0
        Width = 337
        Height = 19
        Align = alClient
        ParentShowHint = False
        BarStyle = bsGradient
        PartsComplete = 0
        Percent = 0
        ShowPercent = True
        TotalParts = 0
      end
      object RzStatusPane1: TRzStatusPane
        Left = 209
        Top = 0
        Width = 300
        Height = 19
        Align = alLeft
      end
      object RzClockStatus1: TRzClockStatus
        Left = 0
        Top = 0
        Width = 209
        Height = 19
        Align = alLeft
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 37
    Width = 848
    Height = 218
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 362
      Top = 1
      Width = 3
      Height = 216
      Cursor = crHSplit
    end
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 361
      Height = 216
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      DataSource = wwDataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid2: TwwDBGrid
      Left = 365
      Top = 1
      Width = 482
      Height = 216
      IniAttributes.Delimiter = ';;'
      TitleColor = clNavy
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 12845056
      DataSource = wwDataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=admin;Data Source=washdbf;Initial Catalog=D:\project\washmang\' +
      'TransDBF'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 144
    Top = 64
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'CR'
    Left = 176
    Top = 64
  end
  object wwDataSource1: TwwDataSource
    DataSet = ADOTable1
    Left = 208
    Top = 64
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Port = 3306
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    SQLHourGlass = True
    Left = 448
    Top = 64
  end
  object wwDataSource2: TwwDataSource
    DataSet = ZTable1
    Left = 512
    Top = 64
  end
  object ProfileFile1: TProfileFile
    Filename = 'TransDosDBF1.ini'
    ProfileSource = psIniFile
    Left = 176
    Top = 96
  end
  object DBPATH: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'DBPATH'
    Left = 208
    Top = 96
  end
  object DBFPATH: TProfileString
    ProfileSection = DBPATH
    Ident = 'DBFPATH'
    Left = 240
    Top = 96
  end
  object ODBCNAME: TProfileString
    ProfileSection = DBPATH
    Ident = 'ODBCNAME'
    Left = 272
    Top = 96
  end
  object MYSQL: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'MYSQL'
    Left = 208
    Top = 136
  end
  object protocol: TProfileString
    ProfileSection = MYSQL
    Ident = 'protocol'
    Left = 240
    Top = 136
  end
  object myuser: TProfileString
    ProfileSection = MYSQL
    Ident = 'myuser'
    Left = 240
    Top = 166
  end
  object mypassword: TProfileString
    ProfileSection = MYSQL
    Ident = 'mypassword'
    Left = 240
    Top = 200
  end
  object myport: TProfileInteger
    ProfileSection = MYSQL
    Ident = 'myport'
    Left = 240
    Top = 232
  end
  object mydbname: TProfileString
    ProfileSection = MYSQL
    Ident = 'mydbname'
    Left = 240
    Top = 264
  end
  object ZTable1: TZTable
    Connection = ZConnection1
    Left = 480
    Top = 64
  end
  object ZTable2: TZTable
    Connection = ZConnection1
    TableName = 'STAWO'
    Left = 480
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 240
    Top = 64
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 480
    Top = 128
  end
  object RzSaveDialog1: TRzSaveDialog
    Filter = 'Log|*.log'
    Left = 464
    Top = 298
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 290
    object N1: TMenuItem
      Caption = '儲存記錄檔'
      OnClick = N1Click
    end
  end
end
