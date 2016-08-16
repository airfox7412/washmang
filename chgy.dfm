object Form1: TForm1
  Left = 192
  Top = 127
  Width = 766
  Height = 500
  Caption = '年份轉換'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 449
    Top = 36
    Width = 301
    Height = 407
    Align = alClient
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 36
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 38
      Height = 19
      Caption = '年份'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '新細明體'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 24
      Height = 13
      Caption = '轉成'
    end
    object YearEdit: TMaskEdit
      Left = 58
      Top = 4
      Width = 39
      Height = 27
      EditMask = '000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '新細明體'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 1
      Text = '   '
    end
    object Button1: TButton
      Left = 199
      Top = 5
      Width = 98
      Height = 25
      Caption = '開始轉換'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '新細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 319
      Top = 5
      Width = 98
      Height = 25
      Caption = '暫停'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '新細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 423
      Top = 5
      Width = 98
      Height = 25
      Caption = '停止'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '新細明體'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Edit_year: TEdit
      Left = 136
      Top = 8
      Width = 49
      Height = 21
      MaxLength = 3
      TabOrder = 4
      Text = '100'
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 36
    Width = 449
    Height = 407
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alLeft
    DataSource = wwDataSource1
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 443
    Width = 750
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    Connected = True
    Left = 240
    Top = 32
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 272
    Top = 32
  end
  object wwDataSource1: TwwDataSource
    DataSet = ZQuery1
    Left = 304
    Top = 32
  end
end
