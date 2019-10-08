// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl
//  >Import : http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (2019/10/8 16:38:03 - - $Rev: 93209 $)
// ************************************************************************ //

unit WeatherWebService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[GblElm]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  DataSet              = class;                 { "http://WebXml.com.cn/"[GblElm] }
  getSupportDataSetResult = class;              { "http://WebXml.com.cn/"[Cplx] }



  // ************************************************************************ //
  // XML       : DataSet, global, <element>
  // Namespace : http://WebXml.com.cn/
  // ************************************************************************ //
  DataSet = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData  Index (IS_REF) read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // XML       : getSupportDataSetResult, <complexType>
  // Namespace : http://WebXml.com.cn/
  // ************************************************************************ //
  getSupportDataSetResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData  Index (IS_REF) read Fschema write Fschema;
  end;

  ArrayOfString2 = array of string;             { "http://WebXml.com.cn/"[GblCplx] }
  ArrayOfString   =  type ArrayOfString2;      { "http://WebXml.com.cn/"[GblElm] }

  // ************************************************************************ //
  // Namespace : http://WebXml.com.cn/
  // soapAction: http://WebXml.com.cn/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : WeatherWebServiceSoap
  // service   : WeatherWebService
  // port      : WeatherWebServiceSoap
  // URL       : http://www.webxml.com.cn/WebServices/WeatherWebService.asmx
  // ************************************************************************ //
  WeatherWebServiceSoap = interface(IInvokable)
  ['{0AF62441-3FA0-F5D8-B6B8-B486F32F9DDE}']
    function  getSupportCity(const byProvinceName: string): ArrayOfString2; stdcall;
    function  getSupportProvince: ArrayOfString2; stdcall;
    function  getSupportDataSet: getSupportDataSetResult; stdcall;
    function  getWeatherbyCityName(const theCityName: string): ArrayOfString2; stdcall;
    function  getWeatherbyCityNamePro(const theCityName: string; const theUserID: string): ArrayOfString2; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://WebXml.com.cn/
  // style     : ????
  // use       : ????
  // binding   : WeatherWebServiceHttpGet
  // service   : WeatherWebService
  // port      : WeatherWebServiceHttpGet
  // ************************************************************************ //
  WeatherWebServiceHttpGet = interface(IInvokable)
  ['{D1D0A3C7-8D4D-E0B0-262A-230C7DD69256}']
    function  getSupportCity(const byProvinceName: string): ArrayOfString; stdcall;
    function  getSupportProvince: ArrayOfString; stdcall;
    function  getSupportDataSet: DataSet; stdcall;
    function  getWeatherbyCityName(const theCityName: string): ArrayOfString; stdcall;
    function  getWeatherbyCityNamePro(const theCityName: string; const theUserID: string): ArrayOfString; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://WebXml.com.cn/
  // style     : ????
  // use       : ????
  // binding   : WeatherWebServiceHttpPost
  // service   : WeatherWebService
  // port      : WeatherWebServiceHttpPost
  // ************************************************************************ //
  WeatherWebServiceHttpPost = interface(IInvokable)
  ['{AD249662-9849-D023-C69A-356CE2652027}']
    function  getSupportCity(const byProvinceName: string): ArrayOfString; stdcall;
    function  getSupportProvince: ArrayOfString; stdcall;
    function  getSupportDataSet: DataSet; stdcall;
    function  getWeatherbyCityName(const theCityName: string): ArrayOfString; stdcall;
    function  getWeatherbyCityNamePro(const theCityName: string; const theUserID: string): ArrayOfString; stdcall;
  end;

function GetWeatherWebServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WeatherWebServiceSoap;
function GetWeatherWebServiceHttpGet(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WeatherWebServiceHttpGet;
function GetWeatherWebServiceHttpPost(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WeatherWebServiceHttpPost;


implementation
  uses System.SysUtils;

function GetWeatherWebServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WeatherWebServiceSoap;
const
  defWSDL = 'http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl';
  defURL  = 'http://www.webxml.com.cn/WebServices/WeatherWebService.asmx';
  defSvc  = 'WeatherWebService';
  defPrt  = 'WeatherWebServiceSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WeatherWebServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetWeatherWebServiceHttpGet(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WeatherWebServiceHttpGet;
const
  defWSDL = 'http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl';
  defURL  = '';
  defSvc  = 'WeatherWebService';
  defPrt  = 'WeatherWebServiceHttpGet';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WeatherWebServiceHttpGet);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetWeatherWebServiceHttpPost(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WeatherWebServiceHttpPost;
const
  defWSDL = 'http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl';
  defURL  = '';
  defSvc  = 'WeatherWebService';
  defPrt  = 'WeatherWebServiceHttpPost';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WeatherWebServiceHttpPost);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor DataSet.Destroy;
begin
  System.SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

destructor getSupportDataSetResult.Destroy;
begin
  System.SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

initialization
  { WeatherWebServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(WeatherWebServiceSoap), 'http://WebXml.com.cn/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WeatherWebServiceSoap), 'http://WebXml.com.cn/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WeatherWebServiceSoap), ioDocument);
  { WeatherWebServiceSoap.getSupportCity }
  InvRegistry.RegisterMethodInfo(TypeInfo(WeatherWebServiceSoap), 'getSupportCity', '',
                                 '[ReturnName="getSupportCityResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(WeatherWebServiceSoap), 'getSupportCity', 'getSupportCityResult', '',
                                '[ArrayItemName="string"]');
  { WeatherWebServiceSoap.getSupportProvince }
  InvRegistry.RegisterMethodInfo(TypeInfo(WeatherWebServiceSoap), 'getSupportProvince', '',
                                 '[ReturnName="getSupportProvinceResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(WeatherWebServiceSoap), 'getSupportProvince', 'getSupportProvinceResult', '',
                                '[ArrayItemName="string"]');
  { WeatherWebServiceSoap.getSupportDataSet }
  InvRegistry.RegisterMethodInfo(TypeInfo(WeatherWebServiceSoap), 'getSupportDataSet', '',
                                 '[ReturnName="getSupportDataSetResult"]', IS_OPTN);
  { WeatherWebServiceSoap.getWeatherbyCityName }
  InvRegistry.RegisterMethodInfo(TypeInfo(WeatherWebServiceSoap), 'getWeatherbyCityName', '',
                                 '[ReturnName="getWeatherbyCityNameResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(WeatherWebServiceSoap), 'getWeatherbyCityName', 'getWeatherbyCityNameResult', '',
                                '[ArrayItemName="string"]');
  { WeatherWebServiceSoap.getWeatherbyCityNamePro }
  InvRegistry.RegisterMethodInfo(TypeInfo(WeatherWebServiceSoap), 'getWeatherbyCityNamePro', '',
                                 '[ReturnName="getWeatherbyCityNameProResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(WeatherWebServiceSoap), 'getWeatherbyCityNamePro', 'getWeatherbyCityNameProResult', '',
                                '[ArrayItemName="string"]');
  { WeatherWebServiceHttpGet }
  InvRegistry.RegisterInterface(TypeInfo(WeatherWebServiceHttpGet), 'http://WebXml.com.cn/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WeatherWebServiceHttpGet), '');
  { WeatherWebServiceHttpPost }
  InvRegistry.RegisterInterface(TypeInfo(WeatherWebServiceHttpPost), 'http://WebXml.com.cn/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WeatherWebServiceHttpPost), '');
  RemClassRegistry.RegisterXSClass(DataSet, 'http://WebXml.com.cn/', 'DataSet');
  RemClassRegistry.RegisterXSClass(getSupportDataSetResult, 'http://WebXml.com.cn/', 'getSupportDataSetResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString2), 'http://WebXml.com.cn/', 'ArrayOfString2', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://WebXml.com.cn/', 'ArrayOfString');

end.