program Clothes;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  QueryCust in 'QueryCust.pas' {QueryCustForm},
  wio_Place in 'wio_Place.pas' {WioPlaceForm},
  WDModule in 'WDModule.pas' {WDM: TDataModule},
  Changelog in 'Changelog.pas' {ChangelogForm},
  wio_GetF2 in 'wio_GetF2.pas' {WioGetF2Form},
  GetCam in 'GetCam.pas' {GetCamForm},
  ShowPic in 'ShowPic.pas' {ShowPicForm},
  history2 in 'history2.pas' {History2Form},
  history1 in 'history1.pas' {History1Form},
  CustArrears in 'CustArrears.pas' {CustArrearsForm},
  wio_Get in 'wio_Get.pas' {WioGetForm},
  Company in 'Company.pas' {CompanyForm},
  Aboutb in 'Aboutb.pas' {AboutBox},
  Phrase in 'Phrase.pas' {PhraseForm},
  YearsRep in 'YearsRep.pas' {YearRepForm},
  CustRep in 'CustRep.pas' {CustRepForm},
  wio_Detail in 'wio_Detail.pas' {WioDetailForm},
  wio_Add in 'wio_Add.pas' {WioAddForm},
  Booking in 'Booking.pas' {BookingForm},
  Pross_log in 'Pross_log.pas' {Pross_logForm},
  PPreview in 'PPreview.pas' {PreviewForm},
  vip in 'vip.pas' {VIPForm},
  DailyRep in 'DailyRep.pas' {DailyRepForm},
  HistoryRep in 'HistoryRep.pas' {HistoryRepForm},
  GetRep in 'GetRep.pas' {GetRepForm},
  VipRep in 'VipRep.pas' {VipRepForm},
  CustRank in 'CustRank.pas' {CustRankForm},
  history3 in 'history3.pas' {History3Form},
  wio_DetailQF in 'wio_DetailQF.pas' {WioDetailQFForm},
  SelPlace in 'SelPlace.pas' {SelPlaceForm},
  SelName in 'SelName.pas' {SelNameForm},
  SelAdre in 'SelAdre.pas' {SelAdreForm},
  Custom in 'Custom.pas' {CustForm},
  Egroup in 'Egroup.pas' {EgroupForm},
  Login in 'Login.pas' {LoginForm},
  BatchSend in 'BatchSend.pas' {batchForm},
  Employee in 'Employee.pas' {EmpForm},
  CustDel in 'CustDel.pas' {CustDelForm},
  CheckLogFile in 'CheckLogFile.pas' {CheckForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '冀鑫洗衣管理系統';
  Application.CreateForm(TWDM, WDM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TbatchForm, batchForm);
  Application.Run;
end.
