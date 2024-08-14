program Calculator_p;

uses
  Vcl.Forms,
  Calculator_u in 'UI\Calculator_u.pas' {Form1},
  BasicMathOperationInterface in 'Interfaces\BasicMathOperationInterface.pas',
  BasicMathOperation in 'CalculationLogics\BasicMathOperation.pas',
  BasicMathOperationService in 'Services\BasicMathOperationService.pas';


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculator, frmCalculator);
  Application.Run;
end.
