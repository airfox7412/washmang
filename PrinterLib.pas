unit PrinterLib;

interface
function DemoPrinterCreator(model: ansistring): Integer;
function DemoPrinterDestroy(): Integer;
function DemoPortOpen(ioSettings: ansistring): Integer;
function DemoPortClose(): Integer;
function DemoWriteData(Data:PChar; writeNum: Integer):Integer;
function DemoReadData(Data: PChar; readNum:Integer; var preadedNum: Integer): Integer;
function DemoDirectIO(writeData: PChar; writeNum: Integer; readData: PChar;
        readNum: Integer; var preadedNum: Integer):Integer;
function DemoStartFormat(): Integer;
function DemoEndFormat(): Integer;
function DemoSetChangeFontEncoding(encodetype:Integer): Integer;
function DemoText(xPos:Integer; yPos:Integer; fontNum:Integer; orientation:Integer;
        fontWidth:Integer; fontHeight:Integer; text:ansistring):Integer;
function DemoBarCode39(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:Integer;
        codeHeight:Integer;line:Char;lineAboveCode:Char;digit:Char;text:ansistring):Integer;
function DemoPdf417(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:Integer;
        codeHeight:Integer;securityLevel:Integer;column:Integer;rows:Integer;truncate:char;
        text:ansistring):Integer;
function DemoCodeEan8(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:Integer;
        codeHeight:Integer;line:Char;lineAboveCode:Char;text:ansistring):Integer;
function DemoQRCode(xPos:Integer;yPos:Integer;orientation:Integer;model:Integer;dpi:
        Integer;errLevel:Char;input:Char;charMode:Char;text:ansistring):Integer;
function DemoUpcExtensions(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:
        Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;text:ansistring):Integer;
function DemoUpcaBarcode(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:
        Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;digit:Char;text:ansistring):Integer;
function DemoGraphicBox(xPos:Integer;yPos:Integer;width:Integer;height:Integer;
        thickness:Integer;rounding:Integer):Integer;
function DemoGraphicCircle(xPos:Integer;yPos:Integer;diameter:Integer;thickness:Integer):Integer;
function DemoGraphicDiagonalLine(xPos:Integer;yPos:Integer;orientation:Integer;width:Integer;
        height:Integer;thickness:Integer):Integer;
function DemoGraphicEllipse(xPos:Integer;yPos:Integer;width:Integer;height:Integer;
        thickness:Integer):Integer;
function DemoGraphicSymbol(xPos:Integer;yPos:Integer;orientation:Integer;width:Integer;
        height:Integer;Symboltype:ansistring):Integer;
function DemoPrintImage(xPos:Integer;yPos:Integer;imgName:ansistring):Integer;
function DemoSetDiagnosticsMode(isEnable:Integer):Integer;
function DemoSetPrintOrientation(orientation:Integer):Integer;
function DemoSetPrintRate(printSpeed:Integer;slewSpeed:Integer;backfeedSpeed:Integer):Integer;
function DemoSetPrintDarkness(darkness:Integer):Integer;
function DemoPrintConfigurationLabel():Integer;
function DemoSetPrintMode(mode:Char;prePeelSelect:Char):Integer;
function DemoSetPrintQuantity(totalQuantity:Integer;pauseAndCutValue:Integer;replicatesOfEachSerialNumber:Integer;overridePauseCount:Char):Integer;
function DemoRfidWrite(format:Char;ibegin:Integer;size:Integer;memoryBlock:Char;text:ansistring):Integer;
function DemoRfidRead(format:Char;ibegin:Integer;size:Integer;memoryBlock:Char;headText:ansistring;tailText:ansistring):Integer;
function DemoRfidCalibration():Integer;
function DemoRfidReturnHostDatalog():Integer;
function DemoScalableFontText(xPos:Integer; yPos:Integer;fontName:Char;orientation:Integer;fontWidth:Integer; fontHeight:Integer; text:ansistring):Integer;
function DemoRfidCorrectXpdnrPosition(pStartStr:ansistring;pEndStr:ansistring;pStartPosition:ansistring;pEndPosition:ansistring;model:Char):Integer;
function DemoRfidDefineDataStruct(nTotalNum:Integer;pPartitionSize:array of Integer;nPartitionLenth:Integer):Integer;
function DemoRfidRetryCount(nRetryCount:Integer):Integer;
function DemoRfidSetParameters(nTagNum:Integer;nErrorAct:Integer):Integer;
function DemoRfidSetPowerLevel(nReadPower:Integer;nWritePower:Integer;nAntennaType:Integer):Integer;
function DemoRfidSetLockTagAndPassword(password:ansistring;nMemoryBlock:Integer;locktype:Char):Integer;
function DemoRfidReadChipSerialization():Integer;
function DemoRfidReadEmpty():Integer;

var
  E_SUCCESS: Integer=0;
  E_BAD_HANDLE:Integer=-6;
  printer:Pointer;
  errorNo:Integer=0;

implementation

function PrinterCreator(printer: Pointer; model: ansistring): Integer; stdcall;
  external 'ZPL_SDK.dll';
function PrinterDestroy(printer: Pointer): Integer; stdcall;
  external 'ZPL_SDK.dll';
function PortOpen(printer: Pointer; ioSettings: ansistring): Integer; stdcall;
  external 'ZPL_SDK.dll';
function PortClose(printer: Pointer): Integer; stdcall; external 'ZPL_SDK.dll';
function WriteData(printer:Pointer;writeData:PChar;writeNum: Integer): Integer;
  stdcall;external 'ZPL_SDK.dll';
function ReadData(printer:Pointer;readData:PChar; readNum:Integer;var preadedNum:
  Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function DirectIO(printer:Pointer;writeData:PChar;writeNum:Integer;readData:PChar;
  readNum:Integer;var preadedNum:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_StartFormat(printer: Pointer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_EndFormat(printer: Pointer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_SetChangeFontEncoding(printer: Pointer;encodetype: Integer):Integer;
  stdcall;external 'ZPL_SDK.dll';
function ZPL_Text(printer:Pointer;xPos:Integer; yPos:Integer; fontNum:Integer; orientation:Integer;
  fontWidth:Integer; fontHeight:Integer; text:ansistring):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_BarCode39(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;
  moduleWidth:Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;digit:Char;
  text:ansistring):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_Pdf417(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;
  moduleWidth:Integer;codeHeight:Integer;securityLevel:Integer;column:Integer;
  rows:Integer;truncate:Char;text:ansistring):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_CodeEan8(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;
  moduleWidth:Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;text:ansistring):
  Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_QRCode(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;model:Integer;dpi:
  Integer;errLevel:Char;input:Char;charMode:Char;text:ansistring):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_UpcExtensions(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:
  Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;text:ansistring):Integer;
  stdcall;external 'ZPL_SDK.dll';
function ZPL_UpcaBarcode(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:
  Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;digit:Char;text:ansistring):
  Integer;stdcall;external 'zPL_SDK.dll';
function ZPL_GraphicBox(printer:Pointer;xPos:Integer;yPos:Integer;width:Integer;
  height:Integer;thickness:Integer;rounding:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_GraphicCircle(printer:Pointer;xPos:Integer;yPos:Integer;diameter:Integer;
  thickness:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_GraphicDiagonalLine(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;
  width:Integer;height:Integer;thickness:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_GraphicEllipse(printer:Pointer;xPos:Integer;yPos:Integer;width:Integer;height:Integer;
  thickness:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_GraphicSymbol(printer:Pointer;xPos:Integer;yPos:Integer;orientation:Integer;width:Integer;
  height:Integer;Symboltype:ansistring):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_PrintImage(printer:Pointer;xPos:integer;yPos:Integer;imgName:ansistring):Integer;
  stdcall;external 'ZPL_SDK.dll';
function ZPL_SetDiagnosticsMode(printer:Pointer;isEnable:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_SetPrintOrientation(printer:Pointer;orientation:Integer):Integer;stdcall;
  external'ZPL_SDK.dll';
function ZPL_SetPrintRate(printer:Pointer;printSpeed:Integer;slewSpeed:Integer;backfeedSpeed:Integer):
  Integer;stdcall;external'ZPL_SDK.dll';
function ZPL_SetPrintDarkness(printer:Pointer;darkness:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_PrintConfigurationLabel(printer:Pointer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_SetPrintMode(printer:Pointer;mode:Char;prePeelSelect:Char):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_SetPrintQuantity(printer:Pointer;totalQuantity:Integer;pauseAndCutValue:Integer;replicatesOfEachSerialNumber:Integer;overridePauseCount:Char):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidWrite(printer:Pointer;format:Char;ibegin:Integer;size:Integer;memoryBlock:Char;text:ansistring ):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidRead(printer:Pointer;format:Char;ibegin:Integer;size:Integer;memoryBlock:Char;headText:ansistring;tailText:ansistring ):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidCalibration(printer:Pointer):Integer;stdcall;external 'ZPL_SDK.dll';

function ZPL_RfidReturnHostDatalog(printer:Pointer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_ScalableFontText(printer:Pointer; xPos:Integer; yPos:Integer;fontName:Char;orientation:Integer;fontWidth:Integer; fontHeight:Integer; text:ansistring):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidCorrectXpdnrPosition(printer:Pointer;pStartStr:ansistring;pEndStr:ansistring;pStartPosition:ansistring;pEndPosition:ansistring;model:Char):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidDefineDataStruct(printer:Pointer;nTotalNum:Integer;pPartitionSize:array of Integer;nPartitionLenth:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidRetryCount(printer:Pointer;nRetryCount:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidSetParameters(printer:Pointer;nTagNum:Integer;nErrorAct:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidSetPowerLevel(printer:Pointer;nReadPower:Integer;nWritePower:Integer;nAntennaType:Integer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidSetLockTagAndPassword(printer:Pointer;password:ansistring;nMemoryBlock:Integer;locktype:Char):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidReadChipSerialization(printer:Pointer):Integer;stdcall;external 'ZPL_SDK.dll';
function ZPL_RfidReadEmpty(printer:Pointer):Integer;stdcall;external 'ZPL_SDK.dll';

function DemoPrinterCreator(model: ansistring): Integer;
begin
  Result:= PrinterCreator(@printer, model);
end;

function DemoPrinterDestroy(): Integer;
begin
  Result:= PrinterDestroy(printer);
end;

function DemoPortOpen(ioSettings: ansistring): Integer;
begin
  Result:= PortOpen(printer, ioSettings);
end;

function DemoPortClose(): Integer;
begin
  Result:= PortClose(printer);
end;

function DemoWriteData(Data: PChar; writeNum: Integer):Integer;
begin
  Result:= WriteData(printer,Data,writeNum);
end;

function DemoReadData(Data: PChar; readNum: Integer; var preadedNum: Integer): Integer;
begin
  Result:= ReadData(printer,Data,readNum,preadedNum);
end;

function DemoDirectIO(writeData: PChar; writeNum: Integer; readData: PChar;
readNum: Integer; var preadedNum: Integer):Integer;
begin
  Result:=DirectIO(printer,writeData,writeNum,readData,readNum,preadedNum);
end;

function DemoStartFormat(): Integer;
begin
  Result:= ZPL_StartFormat(printer);
end;

function DemoEndFormat(): Integer;
begin
  Result:= ZPL_EndFormat(printer);
end;

function DemoSetChangeFontEncoding(encodetype:Integer): Integer;
begin
  Result:= ZPL_SetChangeFontEncoding(printer,encodetype);
end;

function DemoText(xPos:Integer; yPos:Integer; fontNum:Integer; orientation:Integer;
fontWidth:Integer; fontHeight:Integer; text:ansistring):Integer;
begin
  Result:=ZPL_Text(printer,xPos,yPos,fontNum,orientation,fontWidth,fontHeight,text);
end;

function DemoBarCode39(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:Integer;
codeHeight:Integer;line:Char;lineAboveCode:Char;digit:Char;text:ansistring):Integer;
begin
  Result:=ZPL_Barcode39(printer,xPos,yPos,orientation,moduleWidth,codeHeight,line,
  lineAboveCode,digit,text);
end;

function DemoPdf417(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:Integer;
codeHeight:Integer;securityLevel:Integer;column:Integer;rows:Integer;truncate:char;
text:ansistring):Integer;
begin
  Result:=ZPL_Pdf417(printer,xPos,yPos,orientation,moduleWidth,codeHeight,securityLevel,
  column,rows,truncate,text);
end;

function DemoCodeEan8(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:Integer;
codeHeight:Integer;line:Char;lineAboveCode:Char;text:ansistring):Integer;
begin
  Result:=ZPL_CodeEan8(printer,xPos,yPos,orientation,moduleWidth,codeHeight,line,lineAboveCode,text);
end;

function DemoQRCode(xPos:Integer;yPos:Integer;orientation:Integer;model:Integer;dpi:
Integer;errLevel:Char;input:Char;charMode:Char;text:ansistring):Integer;
begin
  Result:=ZPL_QRCode(printer,xPos,yPos,orientation,model,dpi,errLevel,input,charMode,text);
end;

function DemoUpcExtensions(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:
Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;text:ansistring):Integer;
begin
  Result:=ZPL_UpcExtensions(printer,xPos,yPos,orientation,moduleWidth,codeHeight,line,lineAboveCode,text);
end;

function DemoUpcaBarcode(xPos:Integer;yPos:Integer;orientation:Integer;moduleWidth:
Integer;codeHeight:Integer;line:Char;lineAboveCode:Char;digit:Char;text:ansistring):
Integer;
begin
  Result:=ZPL_UpcaBarcode(printer,xPos,yPos,orientation,moduleWidth,codeHeight,line,lineAboveCode,digit,text);
end;

function DemoGraphicBox(xPos:Integer;yPos:Integer;width:Integer;height:Integer;
thickness:Integer;rounding:Integer):Integer;
begin
  Result:=ZPL_GraphicBox(printer,xPos,yPos,width,height,thickness,rounding);
end;

function DemoGraphicCircle(xPos:Integer;yPos:Integer;diameter:Integer;thickness:
Integer):Integer;
begin
  Result:=ZPL_GraphicCircle(printer,xPos,yPos,diameter,thickness);
end;

function DemoGraphicDiagonalLine(xPos:Integer;yPos:Integer;orientation:Integer;width:Integer;height:Integer;
thickness:Integer):Integer;
begin
  Result:=ZPL_GraphicDiagonalLine(printer,xPos,yPos,orientation,width,height,thickness);
end;

function DemoGraphicEllipse(xPos:Integer;yPos:Integer;width:Integer;height:Integer;
thickness:Integer):Integer;
begin
  Result:=ZPL_GraphicEllipse(printer,xPos,yPos,width,height,thickness);
end;

function DemoGraphicSymbol(xPos:Integer;yPos:Integer;orientation:Integer;width:Integer;
height:Integer;Symboltype:ansistring):Integer;
begin
  Result:=ZPL_GraphicSymbol(printer,xPos,yPos,orientation,width,height,Symboltype);
end;

function DemoPrintImage(xPos:Integer;yPos:Integer;imgName:ansistring):Integer;
begin
  Result:=ZPL_PrintImage(printer,xPos,yPos,imgName);
end;

function DemoSetDiagnosticsMode(isEnable:Integer):Integer;
begin
  Result:=ZPL_SetDiagnosticsMode(printer,isEnable);
end;

function DemoSetPrintOrientation(orientation:Integer):Integer;
begin
  Result:=ZPL_SetPrintOrientation(printer,orientation);
end;

function DemoSetPrintRate(printSpeed:Integer;slewSpeed:Integer;backfeedSpeed:Integer):
Integer;
begin
  Result:=ZPL_SetPrintRate(printer,printSpeed,slewSpeed,backfeedSpeed);
end;

function DemoSetPrintDarkness(darkness:Integer):Integer;
begin
  Result:=ZPL_SetPrintDarkness(printer,darkness);
end;

function DemoPrintConfigurationLabel():Integer;
begin
  Result:=ZPL_PrintConfigurationLabel(printer);
end;

function DemoSetPrintMode(mode:Char;prePeelSelect:Char):Integer;
begin
  Result:=ZPL_SetPrintMode(printer,mode,prePeelSelect);
end;

function DemoSetPrintQuantity(totalQuantity:Integer;pauseAndCutValue:Integer;replicatesOfEachSerialNumber:Integer;overridePauseCount:Char):Integer;
begin
  Result:=ZPL_SetPrintQuantity(printer,totalQuantity,pauseAndCutValue,replicatesOfEachSerialNumber,overridePauseCount);
end;

function DemoRfidWrite(format:Char;ibegin:Integer;size:Integer;memoryBlock:Char;text:ansistring):Integer;
begin
  Result:=ZPL_RfidWrite(printer,format,ibegin,size,memoryBlock,text);
end;

function DemoRfidRead(format:Char;ibegin:Integer;size:Integer;memoryBlock:Char;headText:ansistring;tailText:ansistring):Integer;
begin
  Result:=ZPL_RfidRead(printer,format,ibegin,size,memoryBlock,headText,tailText);
end;

function DemoRfidCalibration():Integer;
begin
  Result:=ZPL_RfidCalibration(printer);
end;


function DemoRfidReturnHostDatalog():Integer;
begin
  Result:=ZPL_RfidReturnHostDatalog(printer);
end;

function  DemoScalableFontText(xPos:Integer; yPos:Integer;fontName:Char;orientation:Integer;fontWidth:Integer; fontHeight:Integer; text:ansistring):Integer;
begin
  Result:=ZPL_ScalableFontText(printer,xPos,yPos,fontName,orientation,fontWidth,fontHeight,text);
end;

function  DemoRfidCorrectXpdnrPosition(pStartStr:ansistring;pEndStr:ansistring;pStartPosition:ansistring;pEndPosition:ansistring;model:Char):Integer;
begin
  Result:=ZPL_RfidCorrectXpdnrPosition(printer,pStartStr,pEndStr,pStartPosition,pEndPosition,model);
end;
function  DemoRfidDefineDataStruct(nTotalNum:Integer;pPartitionSize:array of Integer;nPartitionLenth:Integer):Integer;
begin
  Result:=ZPL_RfidDefineDataStruct(printer,nTotalNum,pPartitionSize,nPartitionLenth);
end;

function DemoRfidRetryCount(nRetryCount:Integer):Integer;
begin
  Result:=ZPL_RfidRetryCount(printer,nRetryCount);
end;

function DemoRfidSetParameters(nTagNum:Integer;nErrorAct:Integer):Integer;
begin
  Result:=ZPL_RfidSetParameters(printer,nTagNum,nErrorAct);
end;

function DemoRfidSetPowerLevel(nReadPower:Integer;nWritePower:Integer;nAntennaType:Integer):Integer;
 begin
  Result:=ZPL_RfidSetPowerLevel(printer,nReadPower,nWritePower,nAntennaType);
end;

function DemoRfidSetLockTagAndPassword(password:ansistring;nMemoryBlock:Integer;locktype:Char):Integer;
begin
  Result:=ZPL_RfidSetLockTagAndPassword(printer,password,nMemoryBlock,locktype);
end;

function DemoRfidReadChipSerialization():Integer;
begin
  Result:=ZPL_RfidReadChipSerialization(printer);
end;

function DemoRfidReadEmpty():Integer;
begin
  Result:=ZPL_RfidReadEmpty(printer);
end;
end.


