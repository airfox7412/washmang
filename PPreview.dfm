object PreviewForm: TPreviewForm
  Left = 192
  Top = 127
  Width = 1062
  Height = 500
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = '�w���C�L'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 29
    Width = 1046
    Height = 432
    Cursor = crDrag
    Align = alClient
    FrameColor = clWhite
    OutlineVisible = False
    OutlineWidth = 121
    ThumbnailVisible = False
    OnPageChanged = frxPreview1PageChanged
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 1046
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = '�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ToolbarControls = (
      RzToolbarButtonHome
      RzToolbarButtonPdUp
      RzEditPage
      RzToolbarButtonPgDn
      RzToolbarButtonEnd
      RzComboBox1
      RzToolbarButtonF8
      RzToolbarButtonF9
      RzToolbarButtonF10
      RzToolbarButtonEsc)
    object RzToolbarButtonPdUp: TRzToolbarButton
      Left = 114
      Top = 3
      Width = 110
      Height = 22
      Action = ActionPgUp
      Caption = 'PgUp.�W�@��'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonHome: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 110
      Height = 22
      Action = ActionHome
      Caption = 'Home.�Ĥ@��'
      Enabled = False
      HotNumGlyphs = 0
    end
    object RzToolbarButtonPgDn: TRzToolbarButton
      Left = 257
      Top = 3
      Width = 110
      Height = 22
      Action = ActionPgDn
      Caption = 'PgDn.�U�@��'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEnd: TRzToolbarButton
      Left = 367
      Top = 3
      Width = 110
      Height = 22
      Action = ActionEnd
      Caption = 'End.�̫�@��'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF9: TRzToolbarButton
      Left = 643
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF9
      Caption = 'F9.�C�L'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonEsc: TRzToolbarButton
      Left = 843
      Top = 3
      Width = 90
      Height = 22
      Action = ActionEsc
      Caption = 'Esc.���}'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF10: TRzToolbarButton
      Left = 733
      Top = 3
      Width = 110
      Height = 22
      Action = ActionF10
      Caption = 'F10.����B�z'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF8: TRzToolbarButton
      Left = 553
      Top = 3
      Width = 90
      Height = 22
      Action = ActionF8
      Caption = 'F8.�ץX'
      Visible = False
      HotNumGlyphs = 0
    end
    object RzEditPage: TRzEdit
      Left = 224
      Top = 2
      Width = 33
      Height = 24
      Text = '1'
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = '�ө���'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object RzComboBox1: TRzComboBox
      Left = 477
      Top = 2
      Width = 76
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = '�ө���'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      Text = '���e'
      OnChange = RzComboBox1Change
      Items.Strings = (
        '100%'
        '���e'
        '�㭶')
      ItemIndex = 1
    end
  end
  object ActionList1: TActionList
    Left = 304
    Top = 56
    object ActionHome: TAction
      Caption = 'Home.�Ĥ@��'
      ShortCut = 36
      OnExecute = ActionHomeExecute
    end
    object ActionPgUp: TAction
      Caption = 'PgUp.�W�@��'
      ShortCut = 33
      OnExecute = ActionPgUpExecute
    end
    object ActionPgDn: TAction
      Caption = 'PgDn.�U�@��'
      ShortCut = 34
      OnExecute = ActionPgDnExecute
    end
    object ActionEnd: TAction
      Caption = 'End.�̫�@��'
      ShortCut = 35
      OnExecute = ActionEndExecute
    end
    object ActionF9: TAction
      Caption = 'F9.�C�L'
      ShortCut = 120
      OnExecute = ActionF9Execute
    end
    object ActionEsc: TAction
      Caption = 'Esc.���}'
      ShortCut = 27
      OnExecute = ActionEscExecute
    end
    object ActionF10: TAction
      Caption = 'F10.����B�z'
      ShortCut = 121
      OnExecute = ActionF10Execute
    end
    object ActionF8: TAction
      Caption = 'F8.�ץX'
      ShortCut = 119
      OnExecute = ActionF8Execute
    end
  end
  object frxXLSExport1: TfrxXLSExport
    ExportNotPrintable = True
    UseFileCache = True
    ShowProgress = True
    ExportPictures = False
    Wysiwyg = False
    AsText = True
    Background = False
    FastExport = False
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 344
    Top = 56
  end
end
