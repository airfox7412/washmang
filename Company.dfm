object CompanyForm: TCompanyForm
  Left = 201
  Top = 119
  Width = 798
  Height = 558
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = '門市基本資料'
  Color = 12845056
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 490
    Width = 782
    Height = 29
    Align = alBottom
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdBottom]
    BorderWidth = 0
    Color = 12845056
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = '細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ToolbarControls = (
      RzToolbarButtonF3
      RzToolbarButtonExit)
    object RzToolbarButtonExit: TRzToolbarButton
      Left = 94
      Top = 3
      Width = 90
      Height = 22
      Action = Action_Esc
      Caption = 'Esc.離開'
      HotNumGlyphs = 0
    end
    object RzToolbarButtonF3: TRzToolbarButton
      Left = 4
      Top = 3
      Width = 90
      Height = 22
      Action = Action_PgDn
      Caption = 'PgDn.儲存'
      HotNumGlyphs = 0
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 490
    ActivePage = TabSheet2
    Align = alClient
    Color = 12845056
    UseColoredTabs = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = '細明體'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabIndex = 1
    TabOrder = 1
    TextColors.Selected = clWhite
    TextColors.Unselected = clGray
    OnChange = RzPageControl1Change
    FixedDimension = 22
    object TabSheet1: TRzTabSheet
      Color = 12845056
      Caption = '門市資料設定'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 778
        Height = 464
        VertScrollBar.Position = 78
        Align = alClient
        TabOrder = 0
        object RzPanel4: TRzPanel
          Left = 0
          Top = -78
          Width = 757
          Height = 538
          Align = alTop
          Color = 12845056
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = '細明體'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 74
            Top = 14
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '門市名稱'
            Transparent = True
          end
          object Label1: TLabel
            Left = 118
            Top = 54
            Width = 44
            Height = 21
            Alignment = taRightJustify
            Caption = '地址'
            Transparent = True
          end
          object Label2: TLabel
            Left = 570
            Top = 14
            Width = 44
            Height = 21
            Alignment = taRightJustify
            Caption = '電話'
            Transparent = True
          end
          object Label3: TLabel
            Left = 74
            Top = 94
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '洗衣單號'
            Transparent = True
          end
          object Label4: TLabel
            Left = 250
            Top = 95
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '整理編號'
            Transparent = True
          end
          object Label5: TLabel
            Left = 569
            Top = 54
            Width = 110
            Height = 21
            Alignment = taRightJustify
            Caption = '全面折扣數'
            Transparent = True
          end
          object Label8: TLabel
            Left = 30
            Top = 134
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '預定取件天數'
            Transparent = True
          end
          object Label9: TLabel
            Left = 30
            Top = 174
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '急件取件天數'
            Transparent = True
          end
          object Label10: TLabel
            Left = 8
            Top = 214
            Width = 154
            Height = 21
            Alignment = taRightJustify
            Caption = '片語表自動顯示'
            Transparent = True
          end
          object Label11: TLabel
            Left = 30
            Top = 256
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '詢問新增客戶'
            Transparent = True
            Visible = False
          end
          object Label12: TLabel
            Left = 30
            Top = 296
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '未入庫可取件'
            Transparent = True
          end
          object Label6: TLabel
            Left = 733
            Top = 54
            Width = 22
            Height = 21
            Caption = '％'
            Transparent = True
          end
          object Label18: TLabel
            Left = 30
            Top = 336
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '收件展開詢問'
            Transparent = True
          end
          object Label21: TLabel
            Left = 74
            Top = 376
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '組合顏色'
            Transparent = True
          end
          object Label22: TLabel
            Left = 250
            Top = 296
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '取件方式'
            Transparent = True
          end
          object Label23: TLabel
            Left = 250
            Top = 336
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '展開方式'
            Transparent = True
          end
          object Label24: TLabel
            Left = 405
            Top = 296
            Width = 231
            Height = 21
            Caption = '(1.依洗衣單 2.依客戶)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clAqua
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label25: TLabel
            Left = 405
            Top = 336
            Width = 187
            Height = 21
            Caption = '(1.展開 2.不展開)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clAqua
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 422
            Top = 95
            Width = 44
            Height = 21
            Alignment = taRightJustify
            Caption = '位數'
            Transparent = True
          end
          object Label27: TLabel
            Left = 63
            Top = 416
            Width = 99
            Height = 21
            Alignment = taRightJustify
            Caption = 'SP300列印'
            Transparent = True
          end
          object Label28: TLabel
            Left = 250
            Top = 376
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '離開詢問'
            Transparent = True
          end
          object Label29: TLabel
            Left = 246
            Top = 456
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '客戶篩選條件'
            Transparent = True
          end
          object Label30: TLabel
            Left = 30
            Top = 456
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '客戶篩選方式'
            Transparent = True
          end
          object Label31: TLabel
            Left = 250
            Top = 416
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '報表類型'
            Transparent = True
          end
          object Label32: TLabel
            Left = 250
            Top = 256
            Width = 88
            Height = 21
            Alignment = taRightJustify
            Caption = '手機入庫'
            Transparent = True
          end
          object Label33: TLabel
            Left = 30
            Top = 496
            Width = 132
            Height = 21
            Alignment = taRightJustify
            Caption = '電話查詢條件'
            Transparent = True
          end
          object Label34: TLabel
            Left = 261
            Top = 496
            Width = 77
            Height = 21
            Alignment = taRightJustify
            Caption = 'VIP顯示'
            Transparent = True
          end
          object Label35: TLabel
            Left = 478
            Top = 496
            Width = 44
            Height = 21
            Alignment = taRightJustify
            Caption = '標籤'
            Transparent = True
          end
          object Label36: TLabel
            Left = 589
            Top = 496
            Width = 165
            Height = 21
            Caption = '(0.熱感 1.點陣)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clAqua
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object wwDBEdit1: TwwDBEdit
            Left = 166
            Top = 10
            Width = 400
            Height = 29
            Color = clWhite
            DataField = 'cpname'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit3: TwwDBEdit
            Left = 166
            Top = 50
            Width = 400
            Height = 29
            Color = clWhite
            DataField = 'cpaddr'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit2: TwwDBEdit
            Left = 620
            Top = 10
            Width = 131
            Height = 29
            Color = clWhite
            DataField = 'cptel'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit5: TwwDBEdit
            Left = 166
            Top = 91
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'cpwino'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit6: TwwDBEdit
            Left = 342
            Top = 91
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'cpwisno'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit4: TwwDBEdit
            Left = 684
            Top = 50
            Width = 45
            Height = 29
            Color = clWhite
            DataField = 'cppsen'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit7: TwwDBEdit
            Left = 166
            Top = 131
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'cpdayn'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit8: TwwDBEdit
            Left = 166
            Top = 171
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'cpqday'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DBComboBox1: TDBComboBox
            Left = 166
            Top = 212
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'ppaa'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 9
          end
          object DBComboBox2: TDBComboBox
            Left = 166
            Top = 252
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'ppcc'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object DBComboBox3: TDBComboBox
            Left = 166
            Top = 292
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'getitem'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 12
          end
          object DBComboBox4: TDBComboBox
            Left = 166
            Top = 332
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'Expansion'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 14
          end
          object DBComboBox5: TDBComboBox
            Left = 166
            Top = 372
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'asmb'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 16
          end
          object DBComboBox6: TDBComboBox
            Left = 342
            Top = 292
            Width = 50
            Height = 29
            Color = clWhite
            DataField = 'getdisplay'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '1'
              '2')
            ParentFont = False
            TabOrder = 13
          end
          object DBComboBox7: TDBComboBox
            Left = 342
            Top = 332
            Width = 50
            Height = 29
            Color = clWhite
            DataField = 'expmode'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '1'
              '2')
            ParentFont = False
            TabOrder = 15
          end
          object wwDBEdit9: TwwDBEdit
            Left = 470
            Top = 91
            Width = 28
            Height = 29
            Color = clWhite
            DataField = 'cpwisno_d'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DBComboBox8: TDBComboBox
            Left = 166
            Top = 412
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'sp300'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 18
          end
          object DBComboBox9: TDBComboBox
            Left = 342
            Top = 372
            Width = 70
            Height = 29
            Color = clWhite
            DataField = 'exit'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '否'
              '是')
            ParentFont = False
            TabOrder = 17
          end
          object CB_noget: TComboBox
            Left = 382
            Top = 453
            Width = 110
            Height = 29
            DropDownCount = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            ParentFont = False
            TabOrder = 21
            OnChange = CB_nogetChange
            Items.Strings = (
              '全部'
              '只有未取')
          end
          object CB_query: TComboBox
            Left = 166
            Top = 453
            Width = 70
            Height = 29
            DropDownCount = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            ParentFont = False
            TabOrder = 20
            OnChange = CB_queryChange
            Items.Strings = (
              '全部'
              '動態')
          end
          object CB_Category: TComboBox
            Left = 342
            Top = 413
            Width = 50
            Height = 29
            DropDownCount = 5
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            ParentFont = False
            TabOrder = 19
            OnChange = CB_CategoryChange
            Items.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object Edit2: TEdit
            Left = 342
            Top = 252
            Width = 27
            Height = 29
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Text = 'Edit2'
          end
          object CB_qtype: TComboBox
            Left = 166
            Top = 493
            Width = 70
            Height = 29
            DropDownCount = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            ParentFont = False
            TabOrder = 22
            OnChange = CB_qtypeChange
            Items.Strings = (
              '後碼'
              '全碼')
          end
          object CB_dvp: TComboBox
            Left = 342
            Top = 493
            Width = 50
            Height = 29
            DropDownCount = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            ParentFont = False
            TabOrder = 23
            OnChange = CB_dvpChange
            Items.Strings = (
              '否'
              '是')
          end
          object DBComboBox10: TDBComboBox
            Left = 526
            Top = 492
            Width = 50
            Height = 29
            Color = clWhite
            DataField = 'hotordot'
            DataSource = DS_Compy
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = '細明體'
            Font.Style = []
            ItemHeight = 21
            Items.Strings = (
              '0'
              '1')
            ParentFont = False
            TabOrder = 24
          end
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clNavy
      Caption = '顏色調整'
      object RzToolbar2: TRzToolbar
        Left = 0
        Top = 213
        Width = 778
        Height = 29
        AutoStyle = False
        BorderColor = clWhite
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 1
        Color = 12845056
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = '細明體'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = RzToolbar2Click
        ToolbarControls = (
          RzToolbarButton1)
        object RzToolbarButton1: TRzToolbarButton
          Left = 4
          Top = 3
          Width = 90
          Height = 22
          Caption = 'F1.查詢'
          OnClick = RzToolbarButton1Click
          HotNumGlyphs = 0
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 80
        Width = 778
        Height = 35
        Align = alTop
        BorderOuter = fsNone
        Color = 10485760
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = '細明體'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 12
          Height = 35
          Align = alLeft
          ParentColor = True
          TabOrder = 0
        end
        object Panel6: TPanel
          Left = 270
          Top = 0
          Width = 508
          Height = 35
          Align = alClient
          ParentColor = True
          TabOrder = 1
          OnClick = PanelDBGTitleClick
          object Label19: TLabel
            Left = 10
            Top = 5
            Width = 88
            Height = 21
            Caption = '門市地址'
            Transparent = True
            OnClick = LabelDBGridClick
          end
        end
        object PanelDBGTitle: TPanel
          Left = 12
          Top = 0
          Width = 258
          Height = 35
          Align = alLeft
          ParentColor = True
          TabOrder = 2
          OnClick = PanelDBGTitleClick
          object Label17: TLabel
            Left = 10
            Top = 5
            Width = 88
            Height = 21
            Caption = '門市名稱'
            Transparent = True
            OnClick = LabelDBGridClick
          end
        end
      end
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 60
        Align = alTop
        BevelWidth = 3
        Color = 12845056
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = '細明體'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RzPanel1Click
        object Label13: TLabel
          Left = 16
          Top = 18
          Width = 64
          Height = 16
          Caption = '面板文字'
          Transparent = True
          OnClick = LabelRzPanelClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 242
        Width = 778
        Height = 114
        Align = alTop
        ParentColor = True
        TabOrder = 3
        object Image1: TImage
          Left = 221
          Top = 5
          Width = 145
          Height = 106
          Stretch = True
          Transparent = True
        end
        object RzPanel3: TRzPanel
          Left = 3
          Top = 3
          Width = 216
          Height = 108
          BevelWidth = 5
          BorderInner = fsRaised
          Color = 12845056
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RzPanel3Click
          object Label14: TLabel
            Left = 4
            Top = 4
            Width = 208
            Height = 24
            Align = alTop
            Alignment = taCenter
            Caption = '突顯視窗'
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -24
            Font.Name = '細明體'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            OnClick = Label14Click
          end
          object Label15: TLabel
            Left = 22
            Top = 51
            Width = 32
            Height = 16
            Caption = '查詢'
            Transparent = True
            OnClick = Label14Click
          end
          object Edit1: TEdit
            Left = 72
            Top = 48
            Width = 121
            Height = 24
            TabOrder = 0
            Text = '999999'
          end
        end
        object Button3: TButton
          Left = 374
          Top = 5
          Width = 107
          Height = 25
          Caption = '選擇桌面照片'
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 193
        Width = 778
        Height = 20
        Align = alTop
        ParentColor = True
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 0
        Top = 60
        Width = 778
        Height = 20
        Align = alTop
        ParentColor = True
        TabOrder = 5
      end
      object Panel4: TPanel
        Left = 0
        Top = 356
        Width = 778
        Height = 35
        Align = alTop
        ParentColor = True
        TabOrder = 7
        object Label16: TLabel
          Left = 16
          Top = 9
          Width = 96
          Height = 16
          Caption = '顏色樣式選擇'
        end
        object ComboBox1: TComboBox
          Left = 117
          Top = 5
          Width = 145
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '細明體'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          OnChange = ComboBox1Change
        end
        object Button1: TButton
          Left = 270
          Top = 5
          Width = 75
          Height = 25
          Caption = '另存新檔'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 350
          Top = 5
          Width = 75
          Height = 25
          Caption = '刪除'
          TabOrder = 2
        end
      end
      object RzPanelDBGrid: TRzPanel
        Left = 0
        Top = 115
        Width = 778
        Height = 39
        Align = alTop
        BorderOuter = fsNone
        Color = 10485760
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = '細明體'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object PanelDBGrid1: TPanel
          Left = 0
          Top = 0
          Width = 12
          Height = 39
          Align = alLeft
          ParentColor = True
          TabOrder = 0
        end
        object PanelDBGrid3: TPanel
          Left = 270
          Top = 0
          Width = 508
          Height = 39
          Align = alClient
          ParentColor = True
          TabOrder = 1
          OnClick = PanelDBGrid2Click
          object LabelDBGrid2: TLabel
            Left = 10
            Top = 7
            Width = 286
            Height = 21
            Caption = '台北縣新莊市五權二路22號1F'
            Transparent = True
            OnClick = LabelDBGrid1Click
          end
        end
        object PanelDBGrid2: TPanel
          Left = 12
          Top = 0
          Width = 258
          Height = 39
          Align = alLeft
          ParentColor = True
          TabOrder = 2
          OnClick = PanelDBGrid2Click
          object LabelDBGrid1: TLabel
            Left = 10
            Top = 7
            Width = 132
            Height = 21
            Caption = '冀鑫洗衣門市'
            Transparent = True
            OnClick = LabelDBGrid1Click
          end
        end
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 154
        Width = 778
        Height = 39
        Align = alTop
        BorderOuter = fsNone
        Color = 10485760
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = '細明體'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 12
          Height = 39
          Align = alLeft
          ParentColor = True
          TabOrder = 0
        end
        object Panel9: TPanel
          Left = 12
          Top = 0
          Width = 766
          Height = 39
          Align = alClient
          ParentColor = True
          TabOrder = 1
          OnClick = Panel9Click
          object Label20: TLabel
            Left = 10
            Top = 7
            Width = 88
            Height = 21
            Caption = '光棒顏色'
            Transparent = True
            OnClick = Panel9Click
          end
        end
      end
    end
  end
  object DosMove1: TDosMove
    Active = True
    ActiveColor = True
    EditNoBeep = False
    EnterColor = 8454016
    NPClassNames.Strings = (
      'TBitBtn'
      'TButton'
      'TDBGrid'
      'TPageControl'
      'TTabControl')
    Left = 488
    Top = 257
  end
  object DS_Compy: TDataSource
    DataSet = ZQueryCompy
    Left = 584
    Top = 256
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'washshop'
    User = 'root'
    Password = 'root'
    Catalog = 'washshop'
    Connected = True
    DesignConnection = True
    SQLHourGlass = True
    Left = 520
    Top = 256
  end
  object ActionList1: TActionList
    Left = 456
    Top = 256
    object Action_PgDn: TAction
      Caption = 'PgDn.儲存'
      ShortCut = 34
      OnExecute = Action_PgDnExecute
    end
    object Action_Esc: TAction
      Caption = 'Esc.離開'
      ShortCut = 27
      OnExecute = Action_EscExecute
    end
    object Action_CtrlS: TAction
      Caption = 'Action_CtrlS'
      ShortCut = 16467
      OnExecute = Action_CtrlSExecute
    end
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    OnClose = ColorDialog1Close
    OnShow = ColorDialog1Show
    Color = 12845056
    CustomColors.Strings = (
      'ColorA=C40000')
    Options = [cdFullOpen, cdPreventFullOpen, cdSolidColor, cdAnyColor]
    Left = 650
    Top = 256
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 10
    MaxFontSize = 20
    Options = [fdAnsiOnly, fdTrueTypeOnly, fdEffects, fdNoVectorFonts]
    Left = 682
    Top = 256
  end
  object COLOR: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'COLOR'
    Left = 512
    Top = 56
  end
  object PCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'PCOLOR'
    Left = 512
    Top = 88
  end
  object PFCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'PFCOLOR'
    Left = 544
    Top = 88
  end
  object GCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GCOLOR'
    Left = 512
    Top = 152
  end
  object GFCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GFCOLOR'
    Left = 544
    Top = 152
  end
  object BCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'BCOLOR'
    Left = 512
    Top = 184
  end
  object BFCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'BFCOLOR'
    Left = 544
    Top = 184
  end
  object PFONT: TProfileString
    ProfileSection = COLOR
    Ident = 'PFONT'
    Left = 576
    Top = 88
  end
  object GFONT: TProfileString
    ProfileSection = COLOR
    Ident = 'GFONT'
    Left = 576
    Top = 152
  end
  object BFONT: TProfileString
    ProfileSection = COLOR
    Ident = 'BFONT'
    Left = 576
    Top = 184
  end
  object WCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'WCOLOR'
    Left = 512
    Top = 216
  end
  object WFCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'WFCOLOR'
    Left = 544
    Top = 216
  end
  object WFONT: TProfileString
    ProfileSection = COLOR
    Ident = 'WFONT'
    Left = 576
    Top = 216
  end
  object PSIZE: TProfileInteger
    ProfileSection = COLOR
    Ident = 'PSIZE'
    Left = 608
    Top = 88
  end
  object GSIZE: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GSIZE'
    Left = 608
    Top = 152
  end
  object WSIZE: TProfileInteger
    ProfileSection = COLOR
    Ident = 'WSIZE'
    Left = 608
    Top = 216
  end
  object BSIZE: TProfileInteger
    ProfileSection = COLOR
    Ident = 'BSIZE'
    Left = 608
    Top = 184
  end
  object GTCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GTCOLOR'
    Left = 512
    Top = 120
  end
  object GTFCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GTFCOLOR'
    Left = 544
    Top = 120
  end
  object GTFONT: TProfileString
    ProfileSection = COLOR
    Ident = 'GTFONT'
    Left = 576
    Top = 120
  end
  object GTSIZE: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GTSIZE'
    Left = 608
    Top = 120
  end
  object ProfileFile1: TProfileFile
    ProfileSource = psIniFile
    Left = 479
    Top = 57
  end
  object Picture: TProfileSection
    ProfileFile = ProfileFile1
    Section = 'Picture'
    Left = 672
    Top = 112
  end
  object PathName: TProfileString
    ProfileSection = Picture
    Ident = 'PathName'
    Left = 672
    Top = 144
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 649
    Top = 291
  end
  object GLCOLOR: TProfileInteger
    ProfileSection = COLOR
    Ident = 'GLCOLOR'
    Left = 480
    Top = 152
  end
  object ZQueryCompy: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM compy')
    Params = <>
    Left = 553
    Top = 255
  end
  object OpenDialog1: TOpenDialog
    Filter = 'mp3|*.mp3|wav|*.wav'
    Left = 651
    Top = 401
  end
  object SaveDialog1: TSaveDialog
    Left = 683
    Top = 289
  end
  object ZSQLMonitor1: TZSQLMonitor
    MaxTraceCount = 100
    Left = 555
    Top = 308
  end
end
