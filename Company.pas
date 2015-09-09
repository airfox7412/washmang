unit Company;

interface

uses
  Windows, Messages, SysUtils, FileCtrl, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DosMove, StdCtrls, DBCtrls, Mask, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtDlgs, Profile, ActnList, ZConnection,
  ExtCtrls, wwdbedit, RzPanel, RzTabs, Buttons, RzButton, RzShellDialogs,
  ZSqlMonitor;

type
  TCompanyForm = class(TForm)
    DosMove1: TDosMove;
    DS_Compy: TDataSource;
    ZConnection1: TZConnection;
    ActionList1: TActionList;
    Action_Esc: TAction;
    Action_PgDn: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonExit: TRzToolbarButton;
    RzToolbarButtonF3: TRzToolbarButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    RzToolbar2: TRzToolbar;
    RzToolbarButton1: TRzToolbarButton;
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    Label13: TLabel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    RzPanel3: TRzPanel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    Label16: TLabel;
    Button1: TButton;
    Button2: TButton;
    COLOR: TProfileSection;
    PCOLOR: TProfileInteger;
    PFCOLOR: TProfileInteger;
    GCOLOR: TProfileInteger;
    GFCOLOR: TProfileInteger;
    BCOLOR: TProfileInteger;
    BFCOLOR: TProfileInteger;
    PFONT: TProfileString;
    GFONT: TProfileString;
    BFONT: TProfileString;
    WCOLOR: TProfileInteger;
    WFCOLOR: TProfileInteger;
    WFONT: TProfileString;
    PSIZE: TProfileInteger;
    GSIZE: TProfileInteger;
    WSIZE: TProfileInteger;
    BSIZE: TProfileInteger;
    GTCOLOR: TProfileInteger;
    GTFCOLOR: TProfileInteger;
    GTFONT: TProfileString;
    GTSIZE: TProfileInteger;
    ProfileFile1: TProfileFile;
    Panel5: TPanel;
    Panel6: TPanel;
    PanelDBGTitle: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    RzPanelDBGrid: TRzPanel;
    PanelDBGrid1: TPanel;
    PanelDBGrid3: TPanel;
    PanelDBGrid2: TPanel;
    LabelDBGrid1: TLabel;
    LabelDBGrid2: TLabel;
    Picture: TProfileSection;
    PathName: TProfileString;
    Image1: TImage;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    RzPanel5: TRzPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Label20: TLabel;
    GLCOLOR: TProfileInteger;
    ZQueryCompy: TZQuery;
    Action_CtrlS: TAction;
    ScrollBox1: TScrollBox;
    RzPanel4: TRzPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    wwDBEdit9: TwwDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    CB_noget: TComboBox;
    CB_query: TComboBox;
    CB_Category: TComboBox;
    Edit2: TEdit;
    CB_qtype: TComboBox;
    Label34: TLabel;
    CB_dvp: TComboBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ZSQLMonitor1: TZSQLMonitor;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_EscExecute(Sender: TObject);
    procedure Action_PgDnExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RzPanel1Click(Sender: TObject);
    procedure LabelRzPanelClick(Sender: TObject);
    procedure LabelDBGridClick(Sender: TObject);
    procedure RzToolbar2Click(Sender: TObject);
    procedure RzToolbarButton1Click(Sender: TObject);
    procedure RzPanel3Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure ColorDialog1Close(Sender: TObject);
    procedure ColorDialog1Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure PanelDBGrid2Click(Sender: TObject);
    procedure LabelDBGrid1Click(Sender: TObject);
    procedure PanelDBGTitleClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_CtrlSExecute(Sender: TObject);
    procedure CB_nogetChange(Sender: TObject);
    procedure CB_queryChange(Sender: TObject);
    procedure CB_CategoryChange(Sender: TObject);
    procedure CB_qtypeChange(Sender: TObject);
    procedure CB_dvpChange(Sender: TObject);
    procedure CB_vip0Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function FileLook(Filespec:string):boolean;
    procedure GetIniFile();
  end;

var
  CompanyForm: TCompanyForm;
  imgpath, stylepath, PictureName: String;
  wisnod: Integer;

implementation

uses WDModule;

{$R *.DFM}

procedure TCompanyForm.GetIniFile();
begin
  ComboBox1.Items.Clear;
  FileLook(stylepath+'*.*'); //初始值為*.*
end;

Function TCompanyForm.FileLook(Filespec:string):boolean;
var
  validres:integer;
  SearchRec  : TSearchRec;
  DirPath, FullName, Flname : string;
begin
  DirPath:=ExtractFilePath(FileSpec);
  Result:=DirectoryExists(DirPath);
  If not Result then exit;
  Flname:=ExtractFileName(FileSpec);
  validres := FindFirst(FileSpec, faAnyFile, SearchRec);
  while validres=0 do begin
    If (SearchRec.Name[1] <> '.') then
      begin {not a directory}
      FullName:=DirPath+SearchRec.Name;
      {Use variable here}
      If (SearchRec.Attr and faDirectory>0) then
         FileLook(FullName+'\'+Flname)
      else
        if (ExtractFileExt(FullName)='') then
           ComboBox1.Items.Add(ExtractFileName(FullName));
      end;
    validres:=FindNext(SearchRec);
  end;
end;

procedure TCompanyForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ret :word;
begin
  if (ZQueryCompy.State in [dsEdit,dsInsert]) then
    begin
    ret :=MessageDlg('資料已修改,是否存檔?', mtWarning, [mbYes, mbNo, mbCancel], 0);
    case Ret of
       mrYes:
         begin
            ZQueryCompy.Post;
            Action := caFree;
         end;
       mrNo:
         begin
            ZQueryCompy.Cancel;
            Action := caFree;
         end;
       MrCancel: Action := caNone;
    end;
    end;
  if IDYES=MessageBox(handle,PChar('套用樣式並離開！'),'套用變更',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
    begin
    WDM.PCOLOR.Value:=RzPanel1.Color;
    WDM.PFCOLOR.Value:=RzPanel1.Font.Color;
    WDM.PFONT.Value:=RzPanel1.Font.Name;
    WDM.PSIZE.Value:=RzPanel1.Font.Size;

    WDM.GTCOLOR.Value:=RzPanel2.Color;
    WDM.GTFCOLOR.Value:=RzPanel2.Font.Color;
    WDM.GTFONT.Value:=RzPanel2.Font.Name;
    WDM.GTSIZE.Value:=RzPanel2.Font.Size;

    WDM.GLCOLOR.Value:=RzPanel5.Color;
    WDM.GCOLOR.Value:=RzPanelDBGrid.Color;
    WDM.GFCOLOR.Value:=RzPanelDBGrid.Font.Color;
    WDM.GFONT.Value:=RzPanelDBGrid.Font.Name;
    WDM.GSIZE.Value:=RzPanelDBGrid.Font.Size;
  
    WDM.BCOLOR.Value:=RzToolbar2.Color;
    WDM.BFCOLOR.Value:=RzToolbar2.Font.Color;
    WDM.BFONT.Value:=RzToolbar2.Font.Name;
    WDM.BSIZE.Value:=RzToolbar2.Font.Size;

    WDM.WCOLOR.Value:=RzPanel3.Color;
    WDM.WFCOLOR.Value:=RzPanel3.Font.Color;
    WDM.WFONT.Value:=RzPanel3.Font.Name;
    WDM.WSIZE.Value:=RzPanel3.Font.Size;

    //WDM.StyleIndex.Value:=ComboBox1.ItemIndex; //樣式號碼
    
    WDM.PathName.Value:=PictureName;

    WDM.position.Value:=StrToInt(Edit2.Text);
    end;
end;

procedure TCompanyForm.Action_EscExecute(Sender: TObject);
begin
  Close;
end;

procedure TCompanyForm.Action_PgDnExecute(Sender: TObject);
begin
  if (ZQueryCompy.State in [dsEdit]) then
    ZQueryCompy.Post;
end;

procedure TCompanyForm.FormCreate(Sender: TObject);
var
  WPath: string;
begin
  WPath:=ExtractFilePath(Application.ExeName);

  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  ZSQLMonitor1.FileName:=WPath+'Log\'+FormatDateTime('yyyymmdd',now)+'_compy.log';
  ZSQLMonitor1.AutoSave:=True;
  ZSQLMonitor1.Active:=True;

  ZQueryCompy.Open;

  stylepath:=ExtractFilePath(Application.ExeName)+'Style\';
  imgpath:=ExtractFilePath(Application.ExeName)+'Images\';
  PictureName:=WDM.PathName.Value;

  RzPanel1.Color:=WDM.PCOLOR.Value;
  RzPanel1.Font.Color:=WDM.PFCOLOR.Value;
  RzPanel1.Font.Name:=WDM.PFONT.Value;
  RzPanel1.Font.Size:=WDM.PSIZE.Value;

  RzPanel2.Color:=WDM.GTCOLOR.Value;
  RzPanel2.Font.Color:=WDM.GTFCOLOR.Value;
  RzPanel2.Font.Name:=WDM.GTFONT.Value;
  RzPanel2.Font.Size:=WDM.GTSIZE.Value;

  RzPanel5.Color:=WDM.GLCOLOR.Value; //wwDBGrid高亮
  RzPanelDBGrid.Color:=WDM.GCOLOR.Value;
  RzPanelDBGrid.Font.Color:=WDM.GFCOLOR.Value;
  RzPanelDBGrid.Font.Name:=WDM.GFONT.Value;
  RzPanelDBGrid.Font.Size:=WDM.GSIZE.Value;

  RzToolbar2.Color:=WDM.BCOLOR.Value;
  RzToolbar2.Font.Color:=WDM.BFCOLOR.Value;
  RzToolbar2.Font.Name:=WDM.BFONT.Value;
  RzToolbar2.Font.Size:=WDM.BSIZE.Value;

  RzPanel3.Color:=WDM.WCOLOR.Value;
  RzPanel3.Font.Color:=WDM.WFCOLOR.Value;
  RzPanel3.Font.Name:=WDM.WFONT.Value;
  RzPanel3.Font.Size:=WDM.WSIZE.Value;

  wisnod:=ZQueryCompy.FieldByName('cpwisno_d').AsInteger;
  if wisnod=5 then
    begin
    Label4.Caption:='洗    號';
    end;

  CB_noget.ItemIndex:=WDM.NOGET.Value;
  CB_query.ItemIndex:=WDM.QUERY.Value;
  CB_Category.ItemIndex:=WDM.category.Value;
  CB_qtype.ItemIndex:=WDM.qtype.Value;
  CB_dvp.ItemIndex:=WDM.displayvip.Value;
  //CB_vip0.ItemIndex:=WDM.vipset0.Value;
  Edit2.Text:=IntToStr(WDM.position.Value);
end;

procedure TCompanyForm.FormActivate(Sender: TObject);
begin
  //WDM.FormColorSet(CompanyForm);
  RzPanel4.Color:=WDM.PCOLOR.Value;
  RzPanel4.Font.Color:=WDM.PFCOLOR.Value;
  RzPanel4.Font.Name:=WDM.PFONT.Value;
  RzPanel4.Font.Size:=WDM.PSIZE.Value;
  RzToolbar1.Color:=WDM.BCOLOR.Value;
  RzToolbar1.Font.Color:=WDM.BFCOLOR.Value;
  RzToolbar1.Font.Name:=WDM.BFONT.Value;
  RzToolbar1.Font.Size:=WDM.BSIZE.Value;
end;

procedure TCompanyForm.RzPanel1Click(Sender: TObject);
begin
  ColorDialog1.Color:=RzPanel1.Color;
  if ColorDialog1.Execute then
    RzPanel1.Color:=ColorDialog1.Color;
end;

procedure TCompanyForm.LabelRzPanelClick(Sender: TObject);
begin
  FontDialog1.Font.Color:=RzPanel1.Font.Color;
  FontDialog1.Font.Name:=RzPanel1.Font.Name;
  FontDialog1.Font.Size:=RzPanel1.Font.Size;
  if FontDialog1.Execute then
    begin
    RzPanel1.Font.Color:=FontDialog1.Font.Color;
    RzPanel1.Font.Name:=FontDialog1.Font.Name;
    RzPanel1.Font.Size:=FontDialog1.Font.Size;
    end;
end;

procedure TCompanyForm.LabelDBGridClick(Sender: TObject);
begin
  FontDialog1.Font.Color:=RzPanel2.Font.Color;
  FontDialog1.Font.Name:=RzPanel2.Font.Name;
  FontDialog1.Font.Size:=RzPanel2.Font.Size;
  if FontDialog1.Execute then
    begin
    RzPanel2.Font.Color:=FontDialog1.Font.Color;
    RzPanel2.Font.Name:=FontDialog1.Font.Name;
    RzPanel2.Font.Size:=FontDialog1.Font.Size;
    end;
end;

procedure TCompanyForm.RzToolbar2Click(Sender: TObject);
begin
  ColorDialog1.Color:=WDM.BCOLOR.Value;
  if ColorDialog1.Execute then
    RzToolbar2.Color:=ColorDialog1.Color;
end;

procedure TCompanyForm.RzToolbarButton1Click(Sender: TObject);
begin
  FontDialog1.Font.Color:=RzToolbar2.Font.Color;
  FontDialog1.Font.Name:=RzToolbar2.Font.Name;
  FontDialog1.Font.Size:=RzToolbar2.Font.Size;
  if FontDialog1.Execute then
    begin
    RzToolbar2.Font.Color:=FontDialog1.Font.Color;
    RzToolbar2.Font.Name:=FontDialog1.Font.Name;
    RzToolbar2.Font.Size:=FontDialog1.Font.Size;
    end;
end;

procedure TCompanyForm.RzPanel3Click(Sender: TObject);
begin
  ColorDialog1.Color:=RzPanel3.Color;
  if ColorDialog1.Execute then
    RzPanel3.Color:=ColorDialog1.Color;
end;

procedure TCompanyForm.Label14Click(Sender: TObject);
begin
  FontDialog1.Font.Color:=RzPanel3.Font.Color;
  FontDialog1.Font.Name:=RzPanel3.Font.Name;
  FontDialog1.Font.Size:=RzPanel3.Font.Size;
  if FontDialog1.Execute then
    begin
    RzPanel3.Font.Color:=FontDialog1.Font.Color;
    RzPanel3.Font.Name:=FontDialog1.Font.Name;
    RzPanel3.Font.Size:=FontDialog1.Font.Size;
    end;
end;

procedure TCompanyForm.ColorDialog1Close(Sender: TObject);
begin
  ColorDialog1.CustomColors.SaveToFile(ExtractFilePath(Application.ExeName)+'CustomColor.ini');
end;

procedure TCompanyForm.ColorDialog1Show(Sender: TObject);
begin
  ColorDialog1.CustomColors.LoadFromFile(ExtractFilePath(Application.ExeName)+'CustomColor.ini');
end;

procedure TCompanyForm.Button1Click(Sender: TObject);
begin
  SaveDialog1.InitialDir:=stylepath;
  if SaveDialog1.Execute then
    begin
    ProfileFile1.Filename:=SaveDialog1.FileName;

    PCOLOR.Value:=RzPanel1.Color;
    PFCOLOR.Value:=RzPanel1.Font.Color;
    PFONT.Value:=RzPanel1.Font.Name;
    PSIZE.Value:=RzPanel1.Font.Size;

    GTCOLOR.Value:=RzPanel2.Color;
    GTFCOLOR.Value:=RzPanel2.Font.Color;
    GTFONT.Value:=RzPanel2.Font.Name;
    GTSIZE.Value:=RzPanel2.Font.Size;

    GLCOLOR.Value:=RzPanel5.Color;
    GCOLOR.Value:=RzPanelDBGrid.Color;
    GFCOLOR.Value:=RzPanelDBGrid.Font.Color;
    GFONT.Value:=RzPanelDBGrid.Font.Name;
    GSIZE.Value:=RzPanelDBGrid.Font.Size;
  
    BCOLOR.Value:=RzToolbar2.Color;
    BFCOLOR.Value:=RzToolbar2.Font.Color;
    BFONT.Value:=RzToolbar2.Font.Name;
    BSIZE.Value:=RzToolbar2.Font.Size;

    WCOLOR.Value:=RzPanel3.Color;
    WFCOLOR.Value:=RzPanel3.Font.Color;
    WFONT.Value:=RzPanel3.Font.Name;
    WSIZE.Value:=RzPanel3.Font.Size;
    PathName.Value:=PictureName;
    GetIniFile();
    ComboBox1.Text:=ExtractFileName(SaveDialog1.FileName);
    WDM.StyleIndex.Value:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    end;
end;

procedure TCompanyForm.ComboBox1Change(Sender: TObject);
begin
  ProfileFile1.Filename:=stylepath+ComboBox1.Text;
  RzPanel1.Color:=PCOLOR.Value;
  RzPanel1.Font.Color:=PFCOLOR.Value;
  RzPanel1.Font.Name:=PFONT.Value;
  RzPanel1.Font.Size:=PSIZE.Value;

  RzPanel2.Color:=GTCOLOR.Value;
  RzPanel2.Font.Color:=GTFCOLOR.Value;
  RzPanel2.Font.Name:=GTFONT.Value;
  RzPanel2.Font.Size:=GTSIZE.Value;

  RzPanel5.Color:=GLCOLOR.Value;
  RzPanelDBGrid.Color:=GCOLOR.Value;
  RzPanelDBGrid.Font.Color:=GFCOLOR.Value;
  RzPanelDBGrid.Font.Name:=GFONT.Value;
  RzPanelDBGrid.Font.Size:=GSIZE.Value;

  RzToolbar2.Color:=BCOLOR.Value;
  RzToolbar2.Font.Color:=BFCOLOR.Value;
  RzToolbar2.Font.Name:=BFONT.Value;
  RzToolbar2.Font.Size:=BSIZE.Value;

  RzPanel3.Color:=WCOLOR.Value;
  RzPanel3.Font.Color:=WFCOLOR.Value;
  RzPanel3.Font.Name:=WFONT.Value;
  RzPanel3.Font.Size:=WSIZE.Value;

  WDM.StyleIndex.Value:=ComboBox1.ItemIndex;
  
  Image1.Picture.LoadFromFile(PathName.Value);
  PictureName:=PathName.Value;
end;

procedure TCompanyForm.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePageIndex=1 then
    begin
    GetIniFile();
    ComboBox1.Text:=ComboBox1.Items.Strings[WDM.StyleIndex.Value];
    ComboBox1.ItemIndex:=WDM.StyleIndex.Value;
    if FileExists(WDM.PathName.Value) then
      Image1.Picture.LoadFromFile(WDM.PathName.Value);
    end;
end;

procedure TCompanyForm.PanelDBGrid2Click(Sender: TObject);
begin
  ColorDialog1.Color:=RzPanelDBGrid.Color;
  if ColorDialog1.Execute then
    RzPanelDBGrid.Color:=ColorDialog1.Color;
end;

procedure TCompanyForm.LabelDBGrid1Click(Sender: TObject);
begin
  FontDialog1.Font.Color:=RzPanelDBGrid.Font.Color;
  FontDialog1.Font.Name:=RzPanelDBGrid.Font.Name;
  FontDialog1.Font.Size:=RzPanelDBGrid.Font.Size;
  if FontDialog1.Execute then
    begin
    RzPanelDBGrid.Font.Color:=FontDialog1.Font.Color;
    RzPanelDBGrid.Font.Name:=FontDialog1.Font.Name;
    RzPanelDBGrid.Font.Size:=FontDialog1.Font.Size;
    end;
end;

procedure TCompanyForm.PanelDBGTitleClick(Sender: TObject);
begin
  ColorDialog1.Color:=RzPanel2.Color;
  if ColorDialog1.Execute then
    RzPanel2.Color:=ColorDialog1.Color;
end;

procedure TCompanyForm.Button3Click(Sender: TObject);
begin
  OpenPictureDialog1.InitialDir:=imgpath;
  if OpenPictureDialog1.Execute then
    begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    PictureName:=OpenPictureDialog1.FileName;
    end;
end;

procedure TCompanyForm.Panel9Click(Sender: TObject);
begin
  ColorDialog1.Color:=RzPanel5.Color;
  if ColorDialog1.Execute then
    RzPanel5.Color:=ColorDialog1.Color;
end;

procedure TCompanyForm.FormShow(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex:=0;
end;

procedure TCompanyForm.Action_CtrlSExecute(Sender: TObject);
begin
  wwDBEdit5.ReadOnly:=not wwDBEdit5.ReadOnly;
end;

procedure TCompanyForm.CB_nogetChange(Sender: TObject);
begin
  WDM.NOGET.Value:=CB_noget.ItemIndex;
end;

procedure TCompanyForm.CB_queryChange(Sender: TObject);
begin
  WDM.QUERY.Value:=CB_query.ItemIndex;
end;

procedure TCompanyForm.CB_CategoryChange(Sender: TObject);
begin
  WDM.Category.Value:=CB_Category.ItemIndex;
end;

procedure TCompanyForm.CB_qtypeChange(Sender: TObject);
begin
  WDM.qtype.Value:=CB_qtype.ItemIndex;
end;

procedure TCompanyForm.CB_dvpChange(Sender: TObject);
begin
  WDM.displayvip.Value:=CB_dvp.ItemIndex;
end;

procedure TCompanyForm.CB_vip0Change(Sender: TObject);
begin
  //WDM.vipset0.Value:=CB_vip0.ItemIndex;
end;

end.
