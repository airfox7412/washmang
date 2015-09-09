object GetHoldForm: TGetHoldForm
  Left = 340
  Top = 208
  Width = 551
  Height = 399
  Caption = '叫出保留'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 535
    Height = 361
    Selected.Strings = (
      'wisno'#9'4'#9'編號'
      'wiitem'#9'6'#9'花色'
      'winame'#9'8'#9'衣物名稱'
      'wiwash'#9'4'#9'洗法'
      'wiwamo'#9'4'#9'單價'
      'wiurge'#9'2'#9'急'
      'wimdate'#9'9'#9'應交日期'
      'wiquty'#9'3'#9'件'
      'wisum'#9'4'#9'小計'
      'wiacc'#9'6'#9'配件'
      'wimemo'#9'7'#9'衣服註明')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DS_Qwio
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '新細明體'
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
  object ZQuery_wio_temp: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM wio_temp')
    Params = <>
    Left = 244
    Top = 88
    object ZQuery_wio_tempwisno: TStringField
      DisplayLabel = '編號'
      DisplayWidth = 4
      FieldName = 'wisno'
      Required = True
      Size = 4
    end
    object ZQuery_wio_tempwiitem: TStringField
      DisplayLabel = '花色'
      DisplayWidth = 6
      FieldName = 'wiitem'
      Size = 6
    end
    object ZQuery_wio_tempwiname: TStringField
      DisplayLabel = '衣物名稱'
      DisplayWidth = 8
      FieldName = 'winame'
      Required = True
      Size = 10
    end
    object ZQuery_wio_tempwiwash: TStringField
      DisplayLabel = '洗法'
      DisplayWidth = 4
      FieldName = 'wiwash'
      Size = 4
    end
    object ZQuery_wio_tempwiwamo: TFloatField
      DisplayLabel = '單價'
      DisplayWidth = 4
      FieldName = 'wiwamo'
    end
    object ZQuery_wio_tempwiurge: TStringField
      DisplayLabel = '急'
      DisplayWidth = 2
      FieldName = 'wiurge'
      Required = True
      Size = 1
    end
    object ZQuery_wio_tempwimdate: TStringField
      DisplayLabel = '應交日期'
      DisplayWidth = 9
      FieldName = 'wimdate'
      Size = 10
    end
    object ZQuery_wio_tempwiquty: TIntegerField
      DisplayLabel = '件'
      DisplayWidth = 3
      FieldName = 'wiquty'
    end
    object ZQuery_wio_tempwisum: TFloatField
      DisplayLabel = '小計'
      DisplayWidth = 4
      FieldName = 'wisum'
    end
    object ZQuery_wio_tempwiacc: TStringField
      DisplayLabel = '配件'
      DisplayWidth = 6
      FieldName = 'wiacc'
      Size = 10
    end
    object ZQuery_wio_tempwimemo: TStringField
      DisplayLabel = '衣服註明'
      DisplayWidth = 7
      FieldName = 'wimemo'
      Size = 10
    end
    object ZQuery_wio_tempwiplace: TStringField
      DisplayLabel = '位置'
      DisplayWidth = 4
      FieldName = 'wiplace'
      Visible = False
      Size = 4
    end
    object ZQuery_wio_tempwiexkind: TStringField
      DisplayWidth = 10
      FieldName = 'wiexkind'
      Visible = False
      Size = 10
    end
    object ZQuery_wio_tempwiexmo: TFloatField
      DisplayWidth = 10
      FieldName = 'wiexmo'
      Visible = False
    end
    object ZQuery_wio_tempwiotime: TTimeField
      DisplayWidth = 10
      FieldName = 'wiotime'
      Visible = False
    end
    object ZQuery_wio_tempwicode: TStringField
      DisplayWidth = 6
      FieldName = 'wicode'
      Required = True
      Visible = False
      Size = 6
    end
    object ZQuery_wio_tempcrcode: TStringField
      DisplayWidth = 5
      FieldName = 'crcode'
      Visible = False
      Size = 5
    end
    object ZQuery_wio_tempwiday: TStringField
      DisplayWidth = 2
      FieldName = 'widay'
      Visible = False
      Size = 2
    end
    object ZQuery_wio_tempwiodate: TStringField
      DisplayLabel = '應交日期'
      DisplayWidth = 10
      FieldName = 'wiodate'
      Visible = False
      Size = 10
    end
    object ZQuery_wio_tempwidate: TStringField
      DisplayWidth = 10
      FieldName = 'widate'
      Visible = False
      Size = 10
    end
    object ZQuery_wio_tempwimark: TStringField
      DisplayWidth = 10
      FieldName = 'wimark'
      Visible = False
      Size = 10
    end
    object ZQuery_wio_tempindate: TStringField
      DisplayWidth = 10
      FieldName = 'indate'
      Visible = False
      Size = 10
    end
    object ZQuery_wio_tempmark: TStringField
      DisplayWidth = 1
      FieldName = 'mark'
      Visible = False
      Size = 1
    end
    object ZQuery_wio_temppps: TIntegerField
      DisplayWidth = 10
      FieldName = 'pps'
      Visible = False
    end
  end
  object DS_Qwio: TDataSource
    DataSet = ZQuery_wio_temp
    Left = 276
    Top = 88
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washhouse'
    User = 'root'
    Catalog = 'washhouse'
    Connected = True
    DesignConnection = True
    SQLHourGlass = True
    Left = 248
    Top = 56
  end
end
