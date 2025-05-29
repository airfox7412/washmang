object Form1: TForm1
  Left = 192
  Top = 127
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 200
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open DB'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 185
    Height = 329
    ItemHeight = 13
    TabOrder = 2
    OnDblClick = ListBox1DblClick
  end
  object ListBox2: TListBox
    Left = 288
    Top = 8
    Width = 193
    Height = 329
    ItemHeight = 13
    TabOrder = 3
  end
  object Button3: TButton
    Left = 200
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 4
    OnClick = Button3Click
  end
  object ProfileFile1: TProfileFile
    ProfileSource = psIniFile
    Left = 15
    Top = 25
  end
  object MYSQL: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'MYSQL'
    Left = 48
    Top = 24
  end
  object protocol: TProfileString
    ProfileSection = MYSQL
    Ident = 'protocol'
    Left = 48
    Top = 56
  end
  object myuser: TProfileString
    ProfileSection = MYSQL
    Ident = 'myuser'
    Left = 48
    Top = 92
  end
  object mypassword: TProfileString
    ProfileSection = MYSQL
    Ident = 'mypassword'
    Left = 48
    Top = 128
  end
  object myport: TProfileInteger
    ProfileSection = MYSQL
    Ident = 'myport'
    Left = 48
    Top = 168
  end
  object mydbname: TProfileString
    ProfileSection = MYSQL
    Ident = 'mydbname'
    Left = 48
    Top = 208
  end
  object ZConnection1: TZConnection
    Left = 296
    Top = 80
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from compy')
    Params = <>
    Left = 328
    Top = 80
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 328
    Top = 112
  end
end
