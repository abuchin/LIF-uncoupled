unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Spin;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    Series1: TLineSeries;
    Series2: TLineSeries;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
