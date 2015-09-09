unit Print01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, visrep, Vrcomps;

type
  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    VisualReport1: TVisualReport;
    PageHead: TRptPanel;
    RptField2: TRptField;
    ENAME: TRptField;
    GFooter: TRptPanel;
    RptGroup1: TRptGroup;
    Detial: TRptPanel;
    SDetial: TRptSubPanel;
    RptField16: TRptField;
    Gspace: TRptPanel;
    Space: TRptSubPanel;
    PageFooter: TRptPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit_Page: TEdit;
    RptField1: TRptField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.
