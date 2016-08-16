unit chgy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, ExtCtrls, Db, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, ComCtrls;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    Memo1: TMemo;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    YearEdit: TMaskEdit;
    wwDBGrid1: TwwDBGrid;
    wwDataSource1: TwwDataSource;
    Button2: TButton;
    Button3: TButton;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Edit_year: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pflag, bflag: Boolean;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j,k,rtcnt,rcnt: Integer;
  ystr,mstr,dstr,wicode: String;
  Stime,Etime: TDateTime;
begin
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM wio');
  ZQuery1.SQL.Add('WHERE widate BETWEEN '''+YearEdit.Text+'/01/01'' AND '''+YearEdit.Text+'/12/31''');
  ZQuery1.Open;
  k:=0;
  bflag:=False;
  Stime:=Now;
  wwDBgrid1.DataSource.DataSet.DisableControls;
  ZQuery1.First;
  rtcnt:=ZQuery1.RecordCount;
  Memo1.Lines.Add('Wio 轉換開始！ 原總筆數：'+IntToStr(rtcnt));
  k:=0;
  while not ZQuery1.Eof do
    begin
    Application.ProcessMessages;
    rcnt:=ZQuery1.RecNo;
    StatusBar1.Panels[0].Text:='轉換第'+IntToStr(rcnt)+'筆資料中...';
    ZQuery1.Edit;
    ZQuery1.FieldByName('widate').AsString:=StringReplace(ZQuery1.FieldByName('widate').AsString,YearEdit.Text,Edit_year.Text,[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.FieldByName('wiodate').AsString:=StringReplace(ZQuery1.FieldByName('wiodate').AsString,YearEdit.Text,Edit_year.Text,[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.FieldByName('indate').AsString:=StringReplace(ZQuery1.FieldByName('indate').AsString,YearEdit.Text,Edit_year.Text,[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.Post;
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
    k:=k+1;
    ZQuery1.Next;
    end;

  wwDBgrid1.DataSource.DataSet.EnableControls;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM wo');
  ZQuery1.SQL.Add('WHERE widate BETWEEN '''+YearEdit.Text+'/01/01'' AND '''+YearEdit.Text+'/12/31''');
  ZQuery1.Open;
  wwDBgrid1.DataSource.DataSet.DisableControls;
  ZQuery1.First;
  rtcnt:=ZQuery1.RecordCount;
  Memo1.Lines.Add('Wo 轉換開始！ 原總筆數：'+IntToStr(rtcnt));
  k:=0;
  while not ZQuery1.Eof do
    begin
    Application.ProcessMessages;
    rcnt:=ZQuery1.RecNo;
    StatusBar1.Panels[0].Text:='轉換第'+IntToStr(rcnt)+'筆資料中...';
    ZQuery1.Edit;
    ZQuery1.FieldByName('widate').AsString:=StringReplace(ZQuery1.FieldByName('widate').AsString,YearEdit.Text,Edit_year.Text,[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.post;
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
    k:=k+1;
    ZQuery1.Next;
    end;

  wwDBgrid1.DataSource.DataSet.EnableControls;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM vip');
  ZQuery1.SQL.Add('WHERE vpsdate BETWEEN '''+YearEdit.Text+'/01/01'' AND '''+YearEdit.Text+'/12/31''');
  ZQuery1.Open;
  wwDBgrid1.DataSource.DataSet.DisableControls;

  ZQuery1.First;
  rtcnt:=ZQuery1.RecordCount;
  Memo1.Lines.Add('VIP 轉換開始！ 原總筆數：'+IntToStr(rtcnt));
  k:=0;
  while not ZQuery1.Eof do
    begin
    Application.ProcessMessages;
    rcnt:=ZQuery1.RecNo;
    StatusBar1.Panels[0].Text:='轉換第'+IntToStr(rcnt)+'筆資料中...';
    ZQuery1.Edit;
    ZQuery1.FieldByName('vpsdate').AsString:=StringReplace(ZQuery1.FieldByName('vpsdate').AsString,YearEdit.Text,Edit_year.Text,[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.FieldByName('vpedate').AsString:=StringReplace(ZQuery1.FieldByName('vpedate').AsString,YearEdit.Text,'101',[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.post;
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
    k:=k+1;
    ZQuery1.Next;
    end;
  wwDBgrid1.DataSource.DataSet.EnableControls;

  wwDBgrid1.DataSource.DataSet.EnableControls;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM cr');
  ZQuery1.SQL.Add('WHERE crdate BETWEEN '''+YearEdit.Text+'/01/01'' AND '''+YearEdit.Text+'/12/31''');
  ZQuery1.Open;
  wwDBgrid1.DataSource.DataSet.DisableControls;

  ZQuery1.First;
  rtcnt:=ZQuery1.RecordCount;
  Memo1.Lines.Add('CR 轉換開始！ 原總筆數：'+IntToStr(rtcnt));
  k:=0;
  while not ZQuery1.Eof do
    begin
    Application.ProcessMessages;
    rcnt:=ZQuery1.RecNo;
    StatusBar1.Panels[0].Text:='轉換第'+IntToStr(rcnt)+'筆資料中...';
    ZQuery1.Edit;
    ZQuery1.FieldByName('crdate').AsString:=StringReplace(ZQuery1.FieldByName('crdate').AsString,YearEdit.Text,Edit_year.Text,[rfReplaceAll, rfIgnoreCase]);
    ZQuery1.post;
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
    k:=k+1;
    ZQuery1.Next;
    end;
  wwDBgrid1.DataSource.DataSet.EnableControls;

  Etime:=Now;
  Memo1.Lines.Add('轉換完成！ 轉換筆數：'+IntToStr(k));
  Memo1.Lines.Add('開始時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Stime));
  Memo1.Lines.Add('結束時間：'+FormatDateTime('YYYY/MM/DD HH:MM:SS',Etime));
  Memo1.Lines.Add('共費時：'+FormatDateTime('HH:MM:SS',(Etime-Stime)));
  Memo1.Lines.Add('-------------------------------------------------');
  
  StatusBar1.Panels[0].Text:='轉換完成...';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  pflag:=False;
  bflag:=False;
  
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM wio');
  ZQuery1.SQL.Add('WHERE widate BETWEEN ''090/01/01'' AND ''090/12/31''');
  ZQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  pflag:=not pflag;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  bflag:=True;
  wwDBGrid1.DataSource.DataSet.EnableControls;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  YearEdit.SetFocus;
end;

end.
