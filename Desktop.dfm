object DeskTopForm: TDeskTopForm
  Left = 192
  Top = 127
  Width = 869
  Height = 500
  Caption = '選擇桌面圖案'
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 433
    Align = alClient
    Color = 12845056
    TabOrder = 0
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 849
      Height = 429
      Align = alClient
      Center = True
      Stretch = True
      Transparent = True
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 433
    Width = 853
    Height = 29
    Align = alBottom
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdBottom]
    BorderWidth = 0
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonF1
      RzToolbarButtonEsc)
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 94
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
      Width = 90
      Height = 22
      Action = Action_F1
      Caption = 'F1.選擇圖案'
      HotNumGlyphs = 0
    end
  end
  object ActionList1: TActionList
    Left = 480
    Top = 241
    object Action_F1: TAction
      Caption = 'F1.選擇圖案'
      ShortCut = 112
      OnExecute = Action_F1Execute
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'JPG|*.jpg|BMP|*.bmp|All|*.*'
    Left = 512
    Top = 240
  end
end
