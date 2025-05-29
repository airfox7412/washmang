unit trans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzStatus, ExtCtrls, RzPanel, Db, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc,
  ActnList, Buttons, RzButton, ZipForge, RzShellDialogs, ZAbstractTable;

type
  TTransForm = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    RzStatusBar1: TRzStatusBar;
    RzProgressStatus1: TRzProgressStatus;
    RzStatusPane1: TRzStatusPane;
    RzClockStatus1: TRzClockStatus;
    wwDataSource1: TwwDataSource;
    wwDataSource2: TwwDataSource;
    ZQuery2: TZQuery;
    ZConnection2: TZConnection;
    Splitter1: TSplitter;
    RzPanel2: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    RzPanel3: TRzPanel;
    Button1: TButton;
    Splitter3: TSplitter;
    wwDBGrid2: TwwDBGrid;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonExit: TRzToolbarButton;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    ActionList1: TActionList;
    Action_F8: TAction;
    RzSelectFolderDialog1: TRzSelectFolderDialog;
    Archiver: TZipForge;
    Action_Esc: TAction;
    ZTableCompy: TZTable;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_F8Execute(Sender: TObject);
    procedure ArchiverFileProgress(Sender: TObject; FileName: String;
      Progress: Double; Operation: TZFProcessOperation;
      ProgressPhase: TZFProgressPhase; var Cancel: Boolean);
    procedure Action_EscExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransForm: TTransForm;

implementation

uses WDModule, uProgress;

{$R *.DFM}

procedure TTransForm.Button1Click(Sender: TObject);
var
  Stime,Etime: TDateTime;
  r, rcnt: Integer;
  winame: String;
  winSL: TStringList;
begin
  Stime:=Now;
  rcnt:=9;
  for r:=1 to rcnt do
    begin
    Application.ProcessMessages;
    try
      {ZQuery1.Append;
      ZQuery1.FieldByName('wicode').AsString:='N';
      ZQuery1.FieldByName('mark').AsString:='';
      ZQuery1.FieldByName('wisel').AsString:='';
      ZQuery1.Post;}
    except
      RzStatusPane1.Caption:='資料重複，無法轉換！';
      //AHMLogFile1.Log('衣物資料->'+Trim(AdvStringGrid1.Cells[0,r])+'資料重複，無法轉換！');
    end;
    RzStatusPane1.Caption:='衣物資料->處理('+IntToStr(r)+'/'+IntToStr(rcnt)+')';
    RzProgressStatus1.Percent:=Trunc((r/rcnt)*100);
    end;
  Etime:=Now;
  ShowMessage('轉換完成！'+#10+#13+
  '開始時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Stime)+#10+#13+
  '結束時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Etime)+#10+#13+
  '共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime)));

  //AHMTextFileView1.OpenFilename:='TransDat.log';
  //AHMTextFileView1.execute;
end;

procedure TTransForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.HostName:=WDM.hostname.Value;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;

  ZConnection2.Connected:=False;
  ZConnection2.HostName:=WDM.hostname.Value;
  ZConnection2.Protocol:=WDM.protocol.Value;
  ZConnection2.User:=WDM.myuser.Value;
  ZConnection2.Password:=WDM.mypassword.Value;
  ZConnection2.Port:=WDM.myport.Value;
  ZConnection2.Catalog:=WDM.mydbname.Value;
  ZConnection2.Database:=WDM.mydbname.Value;
  ZQuery1.Open;
  ZQuery2.Open;
end;

procedure TTransForm.FormActivate(Sender: TObject);
begin
  WDM.FormColorSet(TransForm);
end;

procedure TTransForm.Action_F8Execute(Sender: TObject);
var
  dbpath: String;
begin
  //frmProgress := TfrmProgress.Create(Application);
  Archiver.FileName :=WDM.USBPath.Value+FormatDateTime('YYYYMMDD_hhnn',now)+'_washshop.zip';
  Archiver.OpenArchive(fmCreate); // Create a new archive file
  Archiver.BaseDir := 'data'; // Set path to folder with some text files to BaseDir
  Archiver.AddFiles('washshop*'); // Add all files and directories from 'C:\SOURCE_FOLDER' to the archive
  Archiver.BaseDir := 'ZipDest'; // Set path to destination folder
  Archiver.ExtractFiles('*.*'); // Extract all files and directories from the archive to 'C:\DESTINATION_FOLDER'
  Archiver.CloseArchive; // Close the archive
  ShowMessage('資料庫備份完成！');
  //FreeAndNil(frmProgress);
end;

procedure TTransForm.ArchiverFileProgress(Sender: TObject;
  FileName: String; Progress: Double; Operation: TZFProcessOperation;
  ProgressPhase: TZFProgressPhase; var Cancel: Boolean);
begin
  RzProgressStatus1.Percent:= Round(Progress);
  RzStatusPane1.Caption := FileName;
  Application.ProcessMessages;
end;

procedure TTransForm.Action_EscExecute(Sender: TObject);
begin
  Close;
end;

end.
