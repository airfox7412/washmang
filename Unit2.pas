unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ADODB, Db, Wwdatsrc, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  ZConnection, Profile, RzStatus, RzPanel, Menus, RzShellDialogs;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    Panel1: TPanel;
    ADOTable1: TADOTable;
    wwDataSource1: TwwDataSource;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    ZConnection1: TZConnection;
    wwDataSource2: TwwDataSource;
    ProfileFile1: TProfileFile;
    DBPATH: TProfileSection;
    DBFPATH: TProfileString;
    ODBCNAME: TProfileString;
    MYSQL: TProfileSection;
    protocol: TProfileString;
    myuser: TProfileString;
    mypassword: TProfileString;
    myport: TProfileInteger;
    mydbname: TProfileString;
    ZTable1: TZTable;
    ZTable2: TZTable;
    ADOQuery1: TADOQuery;
    ZQuery1: TZQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    wwDBGrid1: TwwDBGrid;
    Splitter1: TSplitter;
    wwDBGrid2: TwwDBGrid;
    Splitter2: TSplitter;
    Memo1: TMemo;
    RzStatusBar1: TRzStatusBar;
    RzProgressStatus1: TRzProgressStatus;
    RzStatusPane1: TRzStatusPane;
    RzClockStatus1: TRzClockStatus;
    Button4: TButton;
    RzSaveDialog1: TRzSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  astime, aetime: TDateTime;
  pflag, bflag: Boolean;

implementation

{$R *.DFM}

uses Lcutils;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'TransDosDBF2.ini');

  ProfileFile1.Filename:=ExtractFilePath(Application.ExeName)+'TransDosDBF1.ini';
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=protocol.Value;
  ZConnection1.User:=myuser.Value;
  ZConnection1.Password:=mypassword.Value;
  ZConnection1.Port:=myport.Value;
  ZConnection1.Catalog:=mydbname.Value;
  ZConnection1.Database:=mydbname.Value;

  ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Password="";Persist Security Info=True;User ID=admin;Data Source=washdbf;Extended Properties="DSN=washdbf;DBQ='+DBFPATH.Value+';DriverId=533;FIL=dBase 5.0;MaxBufferSize=2048;PageTimeout=5;UID=admin;";Initial Catalog='+DBFPATH.Value;
  Memo1.Lines.Clear;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  ADOTable1.Close;
  ADOTable1.TableName:=ComboBox1.Text;
  ADOTable1.Open;
  ZTable1.Close;
  ZTable1.TableName:=ComboBox1.Text;
  ZTable1.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j,k,rtcnt,rcnt: Integer;
  ystr,mstr,dstr,wicode: String;
  Stime,Etime: TDateTime;
begin
  Stime:=Now;
  ZTable2.Close;
  ZTable2.TableName:=ComboBox1.Text;
  ZTable2.Open;
  wwDBgrid1.DataSource.DataSet.DisableControls;
  wwDBgrid2.DataSource.DataSet.DisableControls;
  ZTable2.First;
  rtcnt:=ZTable2.RecordCount;
  Memo1.Lines.Add(ZTable2.TableName+'轉換開始！ 原總筆數：'+IntToStr(rtcnt));
  k:=0;
  while not ZTable2.Eof do
    begin
    Application.ProcessMessages;
    rcnt:=ZTable2.RecNo;
    Try
      ZTable2.Edit;
      for i:=0 to ZTable2.FieldCount-1 do
        begin
        if ((Pos('date',ZTable2.Fields.Fields[i].FieldName)>0)or(ZTable2.Fields.Fields[i].FieldName='stoverdat')) then
          begin
          if Copy(ZTable2.Fields.Fields[i].AsString,1,3)='000' then
            ZTable2.Fields.Fields[i].AsString:=StringReplace(ZTable2.Fields.Fields[i].AsString,'000','100',[rfReplaceAll, rfIgnoreCase]);;
          end
        end;
      ZTable2.Post;
      k:=k+1;
    except
      ZTable1.Cancel;
      Memo1.Lines.Add('-------------------------------------------------');
      Memo1.Lines.Add(ZTable1.TableName+'-'+IntToStr(rcnt)+'-資料轉換錯誤！！！');
      Memo1.Lines.Add('-------------------------------------------------');
    end;
    RzStatusPane1.Caption:='資料：'+ADOTable1.TableName+'->處理('+IntToStr(rcnt)+'/'+IntToStr(rtcnt)+')';
    RzProgressStatus1.Percent:=Trunc((rcnt/rtcnt)*100);
    ZTable2.Next;
    if pflag then
      begin
      Memo1.Lines.Add('暫停轉換...');
      while pflag do //暫停
        begin
        Application.ProcessMessages;
        if bflag then Exit;
        end;
      Memo1.Lines.Add('繼續轉換...');
      end
    else if bflag then Exit;
    end;
  Etime:=Now;
  Memo1.Lines.Add(ADOTable1.TableName+'轉換完成！ 轉換筆數：'+IntToStr(k));
  Memo1.Lines.Add('開始時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Stime));
  Memo1.Lines.Add('結束時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Etime));
  Memo1.Lines.Add('共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime)));
  Memo1.Lines.Add('-------------------------------------------------');
  {ShowMessage(ADOTable1.TableName+'轉換完成！'+#10+#13+
  '開始時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Stime)+#10+#13+
  '結束時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Etime)+#10+#13+
  '共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime))); }
  wwDBgrid1.DataSource.DataSet.EnableControls;
  wwDBgrid2.DataSource.DataSet.EnableControls;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  if RzSaveDialog1.Execute then
    Memo1.Lines.SaveToFile(RzSaveDialog1.FileName);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  bflag:=True;
  Memo1.Lines.Add('-------------------------------------------------');
  Memo1.Lines.Add('結束轉換...');
  Memo1.Lines.Add('-------------------------------------------------');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  pflag:=not pflag;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: Integer;
begin
  pflag:=False;
  bflag:=False;
  astime:=Now;
  for i:=0 to ComboBox1.Items.Count-1 do
    begin
    ComboBox1.ItemIndex:=i;
    ADOTable1.Close;
    ADOTable1.TableName:=ComboBox1.Items.Strings[i];
    Button1Click(Self);
    if bflag then Break;
    end;
  aetime:=Now;
  Memo1.Lines.Add('-------------------------------------------------');
  Memo1.Lines.Add('全部轉換完成！');
  Memo1.Lines.Add('開始時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',astime));
  Memo1.Lines.Add('結束時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',aetime));
  Memo1.Lines.Add('共費時：'+FormatDateTime('HH:MM:SS',(aetime-astime)));
  Memo1.Lines.Add('-------------------------------------------------');

end;

end.
