object SelAdreForm: TSelAdreForm
  Left = 368
  Top = 343
  BorderStyle = bsDialog
  Caption = '¦a§}¤ù»y'
  ClientHeight = 201
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 201
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object LB_Adrs: TListBox
      Left = 1
      Top = 1
      Width = 552
      Height = 199
      Align = alClient
      Columns = 4
      ItemHeight = 13
      ParentColor = True
      TabOrder = 0
      OnKeyDown = LB_AdrsKeyDown
      OnMouseDown = LB_AdrsMouseDown
    end
  end
  object ZTableWaadr: TZTable
    Connection = ZConnection1
    TableName = 'waadr'
    Left = 152
    Top = 24
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Catalog = 'washshop'
    Left = 120
    Top = 24
  end
  object ActionList1: TActionList
    Left = 184
    Top = 24
    object Action_Esc: TAction
      Caption = 'Action_Esc'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
end
