unit Replycr;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  wwdbedit, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Wwdatsrc, RzButton, RzPanel, Wwdotdot,
  Wwdbcomb, RzLabel, RzBckgnd, ZConnection, wwSpeedButton,
  wwDBNavigator, wwclearpanel, DosMove, Wwdbgrid;

type
  TReplycrForm = class(TForm)
    ActionList1: TActionList;
    Action_F1: TAction;
    Action_Exit: TAction;
    RzToolbar1: TRzToolbar;
    RzToolbarButtonF1: TRzToolbarButton;
    RzToolbarButtonF9: TRzToolbarButton;
    DS_tCust: TDataSource;
    ZConnection1: TZConnection;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzBackground1: TRzBackground;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    RzLabel12: TRzLabel;
    wwDBComboBox1: TwwDBComboBox;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    wwDBComboBox2: TwwDBComboBox;
    RzLabel15: TRzLabel;
    wwDBEdit12: TwwDBEdit;
    RzLabel16: TRzLabel;
    RzLabel18: TRzLabel;
    RzToolbarButtonCtrlD: TRzToolbarButton;
    Action_CtrlDel: TAction;
    RzToolbarButtonESC: TRzToolbarButton;
    wwDBGrid1: TwwDBGrid;
    DosMove1: TDosMove;
    ZQuery_cr: TZQuery;
    DBTextcrmoney: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_CtrlDelExecute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1RowChanged(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    fstr: String;
  end;

var
  ReplycrForm: TReplycrForm;
  fkey: String;

implementation

uses WDModule, lcutils;

{$R *.DFM}

procedure TReplycrForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ret :word;
begin
  if (ZQuery_cr.State in [dsEdit,dsInsert]) then
    begin
    ret :=MessageDlg('資料已修改,是否存檔?', mtWarning, [mbYes, mbNo, mbCancel], 0);
    case Ret of
       mrYes:
         begin
            ZQuery_cr.Post;
            Action := caFree;
         end;
       mrNo:
         begin
            ZQuery_cr.Cancel;
            Action := caFree;
         end;
       MrCancel: Action := caNone;
    end;
    end;
end;

procedure TReplycrForm.Action_F1Execute(Sender: TObject);
var
  lno: Integer;
begin
  fkey:='F1';
  ZQuery_cr.Last;
  if ZQuery_cr.FieldByName('crcode').AsString='' then
    lno:=1
  else
    lno:=StrToInt(ZQuery_cr.FieldByName('crcode').AsString)+1;
  ZQuery_cr.Append;
  ZQuery_cr.FieldByName('crcode').Value:=StrZero(lno,5);
  ZQuery_cr.FieldByName('crdate').Value:=ChinaDate1(date);
  ZQuery_cr.FieldByName('csex').Value:='男';
  ZQuery_cr.FieldByName('crvip').Value:='N';
  ZQuery_cr.FieldByName('crs1').Value:='一';
  ZQuery_cr.FieldByName('crs2').Value:=0;
  ZQuery_cr.FieldByName('crpsen').Value:=0;
  ZQuery_cr.FieldByName('crmoney').Value:=0;
  wwDBEdit4.SetFocus;
  wwDBGrid1.Enabled:=False;
end;

procedure TReplycrForm.Action_F2Execute(Sender: TObject);
begin
  fkey:='F2';
  wwDBGrid1.Enabled:=False;
  wwDBEdit3.SetFocus;
end;

procedure TReplycrForm.Action_CtrlDelExecute(Sender: TObject);
var
  msg: String;
begin
  msg:='確定刪除客戶('+ZQuery_cr.FieldByName('crcode').AsString+')資料？';
  if IDYES=MessageBox(handle,PChar(msg),'刪除',MB_ICONQUESTION+MB_YESNO +MB_DEFBUTTON2) then
    begin
    ZQuery_cr.Edit;
    ZQuery_cr.FieldByName('crmark').AsString:='N';
    ZQuery_cr.Post;
    end;
end;

procedure TReplycrForm.Action_ExitExecute(Sender: TObject);
begin
  if fkey='F1' then
    begin
    fkey:='';
    end
  else
    Close;
end;

procedure TReplycrForm.FormActivate(Sender: TObject);
begin
  fkey:='';
  wwDBGrid1.SetFocus;
end;

procedure TReplycrForm.FormCreate(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZConnection1.Protocol:=WDM.protocol.Value;
  ZConnection1.User:=WDM.myuser.Value;
  ZConnection1.Password:=WDM.mypassword.Value;
  ZConnection1.Port:=WDM.myport.Value;
  ZConnection1.Catalog:=WDM.mydbname.Value;
  ZConnection1.Database:=WDM.mydbname.Value;
  ZConnection1.Connected:=True;
end;

procedure TReplycrForm.wwDBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    begin
    Key:=0;
    end;
end;

procedure TReplycrForm.wwDBGrid1RowChanged(Sender: TObject);
begin
  if ZQuery_cr.FieldByName('crmoney').AsFloat>=0 then
    DBTextcrmoney.Font.Color:=ClYellow
  else
    DBTextcrmoney.Font.Color:=ClRed;
end;

end.

