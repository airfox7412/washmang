unit CheckLog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TCheckForm = class(TForm)
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckForm: TCheckForm;

implementation

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
      Memo1.Lines.Add(FullName);
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
begin
  filePath:=WDM.WPath+'Log\*.log';
  SearchDir(filePath);
  {fileDate := FileAge(fileName);
  today:=Date-60;
  fdate:=FileDateToDateTime(fileDate);
  // Did we get the file age OK?
  if fileDate > -1 then
    if today>=fdate then
      begin
      ShowMessage(DateToStr(today)+' : '+DateToStr(fdate)+'->¥i§R°£');
      DeleteFile(FullName);
      end;}
  Result:=True;
end;

procedure TCheckForm.FormActivate(Sender: TObject);
begin
  CheckLogfileDate();
end;

end.
