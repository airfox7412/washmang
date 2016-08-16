object Form1: TForm1
  Left = 192
  Top = 127
  Width = 870
  Height = 596
  Align = alClient
  Caption = '實踐轉換程式'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 73
    Width = 854
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 76
    Width = 854
    Height = 463
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 417
      Top = 1
      Width = 3
      Height = 461
      Cursor = crHSplit
    end
    object wwDBGrid2: TwwDBGrid
      Left = 420
      Top = 1
      Width = 433
      Height = 461
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = wwDS2
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 416
      Height = 461
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      DataSource = wwDS1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object Panel_menu: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 73
    Align = alTop
    BevelWidth = 3
    Color = clYellow
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 85
      Height = 25
      Caption = '選擇路徑'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 192
      Top = 8
      Width = 85
      Height = 25
      Caption = '客戶資料'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 280
      Top = 8
      Width = 85
      Height = 25
      Caption = '衣物片語'
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button2: TButton
      Left = 8
      Top = 40
      Width = 85
      Height = 25
      Caption = '選擇DB'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 539
    Width = 854
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 193
      Height = 19
      Align = alLeft
    end
    object RzProgressStatus1: TRzProgressStatus
      Left = 193
      Top = 0
      Width = 224
      Height = 19
      Align = alLeft
      ParentShowHint = False
      ShowHint = False
      PartsComplete = 0
      Percent = 0
      ShowPercent = True
      TotalParts = 0
    end
    object RzStatusPane2: TRzStatusPane
      Left = 417
      Top = 0
      Height = 19
      Align = alLeft
    end
    object RzStatusPane3: TRzStatusPane
      Left = 517
      Top = 0
      Height = 19
      Align = alLeft
    end
    object RzStatusPane4: TRzStatusPane
      Left = 617
      Top = 0
      Width = 237
      Height = 19
      Align = alClient
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 'FILE NAME=D:\project\washmang\New\NEWDBF.dsn'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'D:\project\washmang\New\NEWDBF.dsn'
    Left = 144
    Top = 64
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ADATA'
    Left = 176
    Top = 64
  end
  object wwDS1: TwwDataSource
    DataSet = ADOTable1
    Left = 208
    Top = 64
  end
  object dbfpath: TProfileString
    ProfileSection = MYSQL
    Ident = 'dbfpath'
    Left = 136
    Top = 176
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    Left = 432
    Top = 56
  end
  object ProfileFile1: TProfileFile
    ProfileSource = psIniFile
    Left = 71
    Top = 145
  end
  object MYSQL: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'MYSQL'
    Left = 103
    Top = 145
  end
  object myuser: TProfileString
    ProfileSection = MYSQL
    Ident = 'myuser'
    Left = 168
    Top = 145
  end
  object mypassword: TProfileString
    ProfileSection = MYSQL
    Ident = 'mypassword'
    Left = 200
    Top = 145
  end
  object myport: TProfileInteger
    ProfileSection = MYSQL
    Ident = 'myport'
    Left = 232
    Top = 145
  end
  object protocol: TProfileString
    ProfileSection = MYSQL
    Ident = 'protocol'
    Left = 135
    Top = 145
  end
  object mydbname: TProfileString
    ProfileSection = MYSQL
    Ident = 'mydbname'
    Left = 264
    Top = 145
  end
  object wwDS2: TwwDataSource
    DataSet = ZQuery1
    Left = 496
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 464
    Top = 56
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = ZConnection1
    Params = <>
    Left = 464
    Top = 88
  end
  object RzSelectFolderDialog1: TRzSelectFolderDialog
    Left = 248
    Top = 67
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    Left = 176
    Top = 91
  end
  object RzOpenDialog1: TRzOpenDialog
    Filter = 'DBF|*.dbf'
    Left = 280
    Top = 67
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection1
    Left = 176
    Top = 123
  end
end
