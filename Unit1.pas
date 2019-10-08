unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WeatherWebService, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    EditCity: TEdit;
    btnSearch: TButton;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSearchClick(Sender: TObject);
var

  rtn: WeatherWebServiceSoap;
  cities: ArrayOfString2;
  i: Integer;
begin
self.Memo1.ScrollBars := TScrollStyle.ssVertical;
  self.Memo1.Lines.Clear;
  rtn := WeatherWebService.GetWeatherWebServiceSoap();
  cities := rtn.getWeatherbyCityName(editCity.Text);
  //ShowMessage(IntToStr(Length(cities)));
  for i := 0 to Length(cities) - 1 do
  begin
    self.Memo1.Lines.Add(cities[i]);
  end;
end;

end.
