object SelPlaceForm: TSelPlaceForm
  Left = 368
  Top = 343
  BorderStyle = bsDialog
  Caption = '¤J®w¤ù»y'
  ClientHeight = 201
  ClientWidth = 361
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
    Width = 361
    Height = 201
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object LB_Place: TListBox
      Left = 1
      Top = 1
      Width = 359
      Height = 199
      Align = alClient
      Columns = 3
      ItemHeight = 13
      ParentColor = True
      TabOrder = 0
      OnKeyDown = LB_PlaceKeyDown
      OnMouseDown = LB_PlaceMouseDown
    end
  end
  object ZTableFplace: TZTable
    Connection = ZConnection1
    TableName = 'fplace'
    Left = 152
    Top = 24
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
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
