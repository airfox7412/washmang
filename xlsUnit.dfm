object MainForm: TMainForm
  Left = 404
  Top = 98
  Caption = 'Read Excel File'
  ClientHeight = 393
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 13
    Width = 505
    Height = 21
    TabOrder = 1
    Text = 'C:\Users\Alex\Downloads\tony1020910.xls'
  end
  object Memo1: TMemo
    Left = 0
    Top = 71
    Width = 555
    Height = 322
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 104
    Top = 40
  end
  object ZConnection1: TZConnection
    Catalog = 'washshop'
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Left = 168
    Top = 40
  end
end
