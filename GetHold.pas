unit GetHold;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, ZAbstractRODataset, ZDataset, ZAbstractDataset, Grids,
  Wwdbigrd, Wwdbgrid, ZConnection;

type
  TGetHoldForm = class(TForm)
    ZQuery_wio_temp: TZQuery;
    ZQuery_wio_tempwisno: TStringField;
    ZQuery_wio_tempwiitem: TStringField;
    ZQuery_wio_tempwiname: TStringField;
    ZQuery_wio_tempwiwash: TStringField;
    ZQuery_wio_tempwiwamo: TFloatField;
    ZQuery_wio_tempwiurge: TStringField;
    ZQuery_wio_tempwimdate: TStringField;
    ZQuery_wio_tempwiquty: TIntegerField;
    ZQuery_wio_tempwisum: TFloatField;
    ZQuery_wio_tempwiacc: TStringField;
    ZQuery_wio_tempwimemo: TStringField;
    ZQuery_wio_tempwiplace: TStringField;
    ZQuery_wio_tempwiexkind: TStringField;
    ZQuery_wio_tempwiexmo: TFloatField;
    ZQuery_wio_tempwiotime: TTimeField;
    ZQuery_wio_tempwicode: TStringField;
    ZQuery_wio_tempcrcode: TStringField;
    ZQuery_wio_tempwiday: TStringField;
    ZQuery_wio_tempwiodate: TStringField;
    ZQuery_wio_tempwidate: TStringField;
    ZQuery_wio_tempwimark: TStringField;
    ZQuery_wio_tempindate: TStringField;
    ZQuery_wio_tempmark: TStringField;
    ZQuery_wio_temppps: TIntegerField;
    DS_Qwio: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ZConnection1: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetHoldForm: TGetHoldForm;

implementation

uses WDModule;

{$R *.DFM}

end.
