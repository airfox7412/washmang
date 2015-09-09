object TransForm: TTransForm
  Left = 191
  Top = 144
  Width = 870
  Height = 500
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = '資料移轉作業'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 408
    Width = 854
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 443
    Width = 854
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
    TabOrder = 0
    object RzProgressStatus1: TRzProgressStatus
      Left = 441
      Top = 0
      Width = 413
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
      Left = 193
      Top = 0
      Width = 248
      Height = 19
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
    end
    object RzClockStatus1: TRzClockStatus
      Left = 0
      Top = 0
      Width = 193
      Height = 19
      Align = alLeft
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 408
    Align = alTop
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 452
      Top = 2
      Width = 3
      Height = 404
      Cursor = crHSplit
    end
    object wwDBGrid1: TwwDBGrid
      Left = 2
      Top = 2
      Width = 360
      Height = 404
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      Color = 12845056
      DataSource = wwDataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
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
    object RzPanel3: TRzPanel
      Left = 362
      Top = 2
      Width = 90
      Height = 404
      Align = alLeft
      Color = 12845056
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Button1: TButton
        Left = 10
        Top = 8
        Width = 75
        Height = 25
        Caption = '->'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object wwDBGrid2: TwwDBGrid
      Left = 455
      Top = 2
      Width = 397
      Height = 404
      IniAttributes.Delimiter = ';;'
      TitleColor = 12845056
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 12845056
      DataSource = wwDataSource2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = '細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 414
    Width = 854
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
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonF9
      RzToolbarButtonExit)
    object RzToolbarButtonExit: TRzToolbarButton
      Left = 204
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.離開'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF1: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 100
      Height = 22
      Caption = 'F1.設定日期'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 104
      Top = 3
      Width = 100
      Height = 22
      Action = Action_F8
      Caption = 'F8.備份資料'
      HotNumGlyphs = 0
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Port = 3306
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    Left = 136
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM wio')
    Params = <>
    Left = 168
    Top = 16
  end
  object wwDataSource1: TwwDataSource
    DataSet = ZQuery1
    Left = 200
    Top = 16
  end
  object wwDataSource2: TwwDataSource
    DataSet = ZQuery2
    Left = 544
    Top = 56
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM stbwio')
    Params = <>
    Left = 512
    Top = 56
  end
  object ZConnection2: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Port = 3306
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    Left = 480
    Top = 56
  end
  object ActionList1: TActionList
    Left = 480
    Top = 24
    object Action_F8: TAction
      Caption = 'F8.備份資料'
      ShortCut = 119
      OnExecute = Action_F8Execute
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object RzSelectFolderDialog1: TRzSelectFolderDialog
    Left = 544
    Top = 88
  end
  object Archiver: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clFastest
    CompressionMode = 1
    CurrentVersion = '2.76 '
    SpanningMode = smNone
    SpanningOptions.AdvancedNaming = True
    SpanningOptions.VolumeSize = vsAutoDetect
    Options.FlushBuffers = True
    Options.OEMFileNames = True
    InMemory = False
    OnFileProgress = ArchiverFileProgress
    Left = 512
    Top = 88
  end
  object ZTableCompy: TZTable
    Connection = ZConnection1
    TableName = 'Compy'
    Left = 168
    Top = 48
  end
end
