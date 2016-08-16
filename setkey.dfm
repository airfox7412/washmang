object SetupForm: TSetupForm
  Left = 454
  Top = 252
  Width = 231
  Height = 143
  Caption = '請輸入序號'
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
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 64
    Height = 16
    Caption = 'USB 序號'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 77
    Top = 13
    Width = 116
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Button1: TButton
    Left = 80
    Top = 48
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    DesignConnection = True
    SQLHourGlass = True
    Left = 8
    Top = 8
  end
  object ZTable1: TZTable
    Connection = ZConnection1
    TableName = 'compy'
    Left = 40
    Top = 8
    object ZTable1cpname: TStringField
      FieldName = 'cpname'
      Required = True
      Size = 30
    end
    object ZTable1cpaddr: TStringField
      FieldName = 'cpaddr'
      Size = 40
    end
    object ZTable1cptel: TStringField
      FieldName = 'cptel'
      Size = 10
    end
    object ZTable1cppsen: TLargeintField
      FieldName = 'cppsen'
    end
    object ZTable1cpwino: TLargeintField
      FieldName = 'cpwino'
    end
    object ZTable1cpwisno: TLargeintField
      FieldName = 'cpwisno'
    end
    object ZTable1cpdayn: TLargeintField
      FieldName = 'cpdayn'
    end
    object ZTable1cpqday: TLargeintField
      FieldName = 'cpqday'
    end
    object ZTable1ppaa: TStringField
      FieldName = 'ppaa'
      Size = 2
    end
    object ZTable1ppcc: TStringField
      FieldName = 'ppcc'
      Size = 2
    end
    object ZTable1getitem: TStringField
      FieldName = 'getitem'
      Size = 2
    end
    object ZTable1serialno: TStringField
      FieldName = 'serialno'
      Size = 10
    end
  end
  object ProfileFile1: TProfileFile
    ProfileSource = psIniFile
    Left = 7
    Top = 65
  end
  object MYSQL: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'MYSQL'
    Left = 40
    Top = 64
  end
  object protocol: TProfileString
    ProfileSection = MYSQL
    Ident = 'protocol'
    Left = 72
    Top = 64
  end
  object myuser: TProfileString
    ProfileSection = MYSQL
    Ident = 'myuser'
    Left = 104
    Top = 60
  end
  object mypassword: TProfileString
    ProfileSection = MYSQL
    Ident = 'mypassword'
    Left = 136
    Top = 64
  end
  object myport: TProfileInteger
    ProfileSection = MYSQL
    Ident = 'myport'
    Left = 168
    Top = 64
  end
  object mydbname: TProfileString
    ProfileSection = MYSQL
    Ident = 'mydbname'
    Left = 64
    Top = 400
  end
  object ZTable2: TZTable
    Connection = ZConnection2
    TableName = 'compy'
    Left = 40
    Top = 40
    object StringField1: TStringField
      FieldName = 'cpname'
      Required = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'cpaddr'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'cptel'
      Size = 10
    end
    object LargeintField1: TLargeintField
      FieldName = 'cppsen'
    end
    object LargeintField2: TLargeintField
      FieldName = 'cpwino'
    end
    object LargeintField3: TLargeintField
      FieldName = 'cpwisno'
    end
    object LargeintField4: TLargeintField
      FieldName = 'cpdayn'
    end
    object LargeintField5: TLargeintField
      FieldName = 'cpqday'
    end
    object StringField4: TStringField
      FieldName = 'ppaa'
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'ppcc'
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'getitem'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'serialno'
      Size = 10
    end
  end
  object ZConnection2: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    DesignConnection = True
    SQLHourGlass = True
    Left = 8
    Top = 40
  end
  object AHMAppStarter1: TAHMAppStarter
    Programs = <
      item
        ExeFile = 'NET'
        Parameters = 'STOP MySQL'
        DefaultPath = '%SystemRoot%\system32\'
        Wait = True
      end
      item
        ExeFile = 'NET'
        Parameters = 'START MySQL'
        DefaultPath = '%SystemRoot%\system32\'
        Wait = True
      end>
    Left = 184
    Top = 32
  end
end
