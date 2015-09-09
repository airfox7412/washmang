object ShowPicForm: TShowPicForm
  Left = 313
  Top = 215
  BorderStyle = bsDialog
  Caption = '照片查驗-按(ESC-關閉)'
  ClientHeight = 442
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 624
    Height = 442
    Align = alClient
    AutoSize = True
    Stretch = True
    OnClick = Action_ESCExecute
  end
  object ActionList1: TActionList
    Left = 336
    Top = 112
    object Action_ESC: TAction
      Caption = 'Action_ESC'
      ShortCut = 27
      OnExecute = Action_ESCExecute
    end
  end
end
