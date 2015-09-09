unit Member;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Dialogs, DBCtrls, DB, DBTables, Mask,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Wwdbigrd,
  wwdbedit, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Wwdatsrc, RzButton, RzPanel, Wwdotdot,
  Wwdbcomb, RzLabel, RzBckgnd, ZConnection, ZAbstractTable, wwSpeedButton,
  wwDBNavigator, wwclearpanel, DosMove;

type
  TMemberForm = class(TForm)
    ActionList1: TActionList;
    Action_F3: TAction;
    Action_F1: TAction;
    Action_F2: TAction;
    Action_F4: TAction;
    Action_F5: TAction;
    Action_F6: TAction;
    Action_F7: TAction;
    Action_F8: TAction;
    Action_F9: TAction;
    Action_Exit: TAction;
    DBGrid1: TDBGrid;
    RzToolbar1: TRzToolbar;
    RzToolbarButton1: TRzToolbarButton;
    RzToolbarButton2: TRzToolbarButton;
    RzToolbarButton3: TRzToolbarButton;
    RzToolbarButton9: TRzToolbarButton;
    RzToolbarButton12: TRzToolbarButton;
    DS_tCust: TDataSource;
    ZTableCust: TZTable;
    ZTableCustcrcode: TStringField;
    ZTableCustcrdate: TStringField;
    ZTableCustcrname: TStringField;
    ZTableCustcsex: TStringField;
    ZTableCustcrid: TStringField;
    ZTableCustcrtel: TStringField;
    ZTableCustcrtela: TStringField;
    ZTableCustcrtelb: TStringField;
    ZTableCustcradr: TStringField;
    ZTableCustcrmoney: TFloatField;
    ZTableCustcrpsen: TFloatField;
    ZTableCustcrdate2: TStringField;
    ZTableCustcrcnt: TFloatField;
    ZTableCustcrvip: TStringField;
    ZTableCustcrarea: TStringField;
    ZTableCustcurst: TStringField;
    ZConnection1: TZConnection;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
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
    wwDBEdit13: TwwDBEdit;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    wwDBEdit14: TwwDBEdit;
    RzLabel18: TRzLabel;
    DosMove1: TDosMove;
    RzToolbarButton4: TRzToolbarButton;
    Action_CtrlDel: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_F1Execute(Sender: TObject);
    procedure Action_F2Execute(Sender: TObject);
    procedure Action_CtrlDelExecute(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MemberForm: TMemberForm;

  procedure Show_MemberForm(App:THandle);stdcall;

implementation

uses lcutils;

{$R *.DFM}

procedure Show_MemberForm(App:THandle);stdcall;
begin
  Application.Handle := App;
  try
    MemberForm := TMemberForm.Create(Application);
    MemberForm.ShowModal;
    FreeAndNil(MemberForm);
  except
    on E: Exception do
      MessageDlg ('錯誤: '+E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TMemberForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ret :word;
begin
  if (ZTableCust.State in [dsEdit,dsInsert]) then
    begin
    ret :=MessageDlg('資料已修改,是否存檔?', mtWarning, [mbYes, mbNo, mbCancel], 0);
    case Ret of
       mrYes:
         begin
            ZTableCust.Post;
            Action := caFree;
         end;
       mrNo:
         begin
            ZTableCust.Cancel;
            Action := caFree;
         end;
       MrCancel: Action := caNone;
    end;
    end;
end;

procedure TMemberForm.Action_F1Execute(Sender: TObject);
var
  lno: Integer;
begin
  ZTableCust.Last;
  lno:=StrToInt(ZTableCust.FieldByName('crcode').Value)+1;
  ZTableCust.Append;
  ZTableCust.FieldByName('crcode').Value:=StrZero(lno,5);
  ZTableCust.FieldByName('crdate').Value:=ChinaDate1(date);
  wwDBEdit3.SetFocus;
end;

procedure TMemberForm.Action_F2Execute(Sender: TObject);
var
  ret :word;
begin
  if (ZTableCust.State in [dsEdit,dsInsert]) then
    begin
    ret :=MessageDlg('資料已修改,是否存檔?', mtWarning, [mbYes, mbNo], 0);
    case Ret of
       mrYes: ZTableCust.Post;
       mrNo: ZTableCust.Cancel;
    end;
    end;
end;

procedure TMemberForm.Action_CtrlDelExecute(Sender: TObject);
var
  ret :word;
begin
  ret :=MessageDlg('確定刪除客戶('+ZTableCust.FieldByName('crcode').Value+')資料？', mtWarning, [mbYes, mbNo], 0);
  case Ret of
       mrYes: ZTableCust.Delete;
       mrNo: ZTableCust.Cancel;
  end;
end;

procedure TMemberForm.Action_ExitExecute(Sender: TObject);
begin
  Close;
end;

end.

