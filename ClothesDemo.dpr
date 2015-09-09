program ClothesDemo;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  QueryCust in 'QueryCust.pas' {QueryCustForm},
  wio_Place in 'wio_Place.pas' {WioPlaceForm},
  Changelog in 'Changelog.pas' {ChangelogForm},
  wio_GetF2 in 'wio_GetF2.pas' {WioGetF2Form},
  wio_DetailQF in 'wio_DetailQF.pas' {WioDetailQFForm},
  GetCam in 'GetCam.pas' {GetCamForm},
  ShowPic in 'ShowPic.pas' {ShowPicForm},
  history2 in 'history2.pas' {History2Form},
  history1 in 'history1.pas' {History1Form},
  VipRep in 'VipRep.pas' {VipRepForm},
  wio_Get in 'wio_Get.pas' {WioGetForm},
  Company in 'Company.pas' {CompanyForm},
  Aboutb in 'Aboutb.pas' {AboutBox},
  Phrase in 'Phrase.pas' {PhraseForm},
  YearsRep in 'YearsRep.pas' {YearRepForm},
  CustRep in 'CustRep.pas' {CustRepForm},
  wio_Detail in 'wio_Detail.pas' {WioDetailForm},
  wio_Add in 'wio_Add.pas' {WioAddForm},
  Pross_log in 'Pross_log.pas' {Pross_logForm},
  PPreview in 'PPreview.pas' {PreviewForm},
  vip in 'vip.pas' {VIPForm},
  DailyRep in 'DailyRep.pas' {DailyRepForm},
  HistoryRep in 'HistoryRep.pas' {HistoryRepForm},
  WDModule in '..\nokey30Rec\WDModule.pas' {WDM: TDataModule},
  Custom in '..\nokey30Rec\Custom.pas' {CustForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '冀鑫洗衣管理系統';
  Application.CreateForm(TWDM, WDM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TCustForm, CustForm);
  Application.Run;
end.
