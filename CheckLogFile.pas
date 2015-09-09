unit CheckLogFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, ExtCtrls;

type
  TCheckForm = class(TForm)
    ListBox1: TListBox;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function SearchDir(Filespec:string):Boolean;
    Function EmptyDir(fpath:string):boolean;
    Function CheckLogfileDate(): Boolean;
  end;

var
  CheckForm: TCheckForm;

implementation

uses WDModule;

{$R *.DFM}

Function TCheckForm.SearchDir(Filespec:string):Boolean;
var
  fileDate, validres: integer;
  SearchRec: TSearchRec;
  DirPath, FullName, Flname: string;
begin
  DirPath:=ExtractFilePath(FileSpec);
  Result:= DirectoryExists(DirPath);
  If not Result then exit;
  Flname:=ExtractFileName(FileSpec);
  validres := FindFirst(FileSpec, faAnyFile, SearchRec);
  while validres=0 do begin
    If (SearchRec.Name[1] <> '.') then
      begin {not a directory}
      FullName:=DirPath + LowerCase(SearchRec.Name);
      ListBox1.Items.Add(FullName);
      {Use variable here}
      If (SearchRec.Attr and faDirectory>0) then
         begin
         SearchDir(FullName+'\'+Flname);
         EmptyDir(FullName);
         end;
      end;
    validres:=FindNext(SearchRec);
  end;
end;

Function TCheckForm.EmptyDir(fpath:string):boolean;
begin
  if RemoveDirectory(PChar(fpath)) then
    Result:=True
  else
    Result:=False;
end;

Function TCheckForm.CheckLogfileDate(): Boolean;
var
  filePath: String;
  fileName: string;
  fileDate: Integer;
  today, fdate: TDateTime;
  i: integer;
begin
  filePath:=WDM.WPath+'Log\*.log';
  SearchDir(filePath);
  for i:=0 to ListBox1.Items.Count-1 do
    begin
    Application.ProcessMessages;
    ListBox1.ItemIndex:=i;
    fileName:=ListBox1.Items.Strings[i];
    fileDate := FileAge(fileName);
    today:=Date-60;
    fdate:=FileDateToDateTime(fileDate);
    if fileDate > -1 then
      if today>=fdate then
        begin
        //ShowMessage(DateToStr(today)+' : '+DateToStr(fdate)+'->可刪除');
        DeleteFile(fileName);
        end;
    end;
  Result:=True;
end;

procedure TCheckForm.FormActivate(Sender: TObject);
begin
  if WDM.mlog.Value=1 then
    CheckForm.Visible:=True
  else
    CheckForm.Visible:=False;  
  CheckLogfileDate();
  ListBox1.Items.Add('紀錄檔案檢查完畢！');
  ListBox1.ItemIndex:=ListBox1.ItemIndex+1;
  Timer1.Enabled:=True;
end;

procedure TCheckForm.Timer1Timer(Sender: TObject);
begin
  Close;
end;

end.
