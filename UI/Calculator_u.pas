unit Calculator_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, BasicMathOperation, BasicMathOperationService;

type
  TfrmCalculator = class(TForm)
    Panel1: TPanel;
    btnClear: TButton;
    btnSeven: TButton;
    btnEight: TButton;
    btnNine: TButton;
    btnDivide: TButton;
    btnPercent: TButton;
    btnFour: TButton;
    btnOne: TButton;
    btnFive: TButton;
    btnTwo: TButton;
    btnSix: TButton;
    btnThree: TButton;
    btnMultiply: TButton;
    btnSubtract: TButton;
    btnAdd: TButton;
    btnSign: TButton;
    btnZero: TButton;
    btnDot: TButton;
    btnDelete: TButton;
    redDisplay: TRichEdit;
    btnEquals: TButton;
    procedure NumBtnClick(Sender: TObject);
    procedure OperatorBtnClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnEqualsClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSignClick(Sender: TObject);
    procedure btnPercentClick(Sender: TObject);
  private
    { Private declarations }
    FNum1, FNum2: string;
    FOperator: char;
    FResult: Double;
    procedure DisplayOnOperatorClick;
    function PerformCalcualtion(ANum1: Double; Aoperator: char;
      ANum2: Double): Double;
  public
    { Public declarations }

  end;

var
  frmCalculator: TfrmCalculator;
function RemoveLastChar(str: string): string;
procedure ChangeFontSize(var ARichEdit: TRichEdit);
function ToggleSign(AOperand: string): string;
function GetCharCount(str, substring: string): integer;
function HandleInput(Sender: TObject; var AOperand: string): string;

implementation

function RemoveLastChar(str: string): string;
begin
  Result := Copy(str, 1, str.Length - 1);
end;

procedure ChangeFontSize(var ARichEdit: TRichEdit);
begin
  ARichEdit.SelStart := ARichEdit.Perform(EM_LINEINDEX, 1, 0);
  ARichEdit.SelLength := Length(ARichEdit.Lines[1]);
  ARichEdit.SelAttributes.Size := 18;
end;

function ToggleSign(AOperand: string): string;
begin

  if AOperand[1] = '-' then
  begin
    AOperand := Copy(AOperand, 2, AOperand.Length);
  end
  else
  begin
    AOperand := '-' + AOperand;
  end;

  Result := AOperand;
end;

function GetCharCount(str, substring: string): integer;
var
  vCount: integer;
begin
  vCount := 0;
  for var index := 1 to str.Length do
  begin
    if str[index] = substring then
    begin
      Inc(vCount);
    end;

  end;

  Result := vCount;
end;

function HandleInput(Sender: TObject; var AOperand: string): string;
var
  vButton: TButton;
begin
  vButton := TButton(Sender);

  if (vButton.Caption = '.') and (AOperand = '') then
  // initializing the Fnum1 to 0 if user press "."
  begin
    AOperand := '0.';
  end
  else if vButton.Caption <> '.' then // all characters other than "."
  begin
    AOperand := AOperand + vButton.Caption;
  end
  else if (vButton.Caption = '.') and (GetCharCount(AOperand, '.') = 0) then
  // allowing only single "."
  begin
    AOperand := AOperand + vButton.Caption;
  end;
end;

{$R *.dfm}

procedure TfrmCalculator.btnClearClick(Sender: TObject);
begin
  FNum1 := '';
  FNum2 := '';
  FOperator := #0;
  FResult := 0;
  DisplayOnOperatorClick;
end;

procedure TfrmCalculator.btnDeleteClick(Sender: TObject);
begin

  if (FOperator = #0) and (FNum2 = '') then
  begin
    FNum1 := RemoveLastChar(FNum1);
  end
  else if (FOperator <> #0) and (FNum2 = '') then
  begin
    FOperator := #0;
  end
  else
  begin
    FNum2 := RemoveLastChar(FNum2);
  end;

  DisplayOnOperatorClick;
end;

procedure TfrmCalculator.btnEqualsClick(Sender: TObject);
begin
  redDisplay.Clear;
  if (FNum1 = '') and (FOperator = #0) and (FNum2 = '') then
  begin
    Exit;
  end
  else if (FNum1 <> '') and (FOperator = #0) and (FNum2 = '') then
  begin
    redDisplay.Text := ' ';
    redDisplay.Lines.Add(FNum1);
  end
  else if (FNum1 <> '') and (FOperator <> #0) and (FNum2 = '') then
  begin
    redDisplay.Text := ' ';
    redDisplay.Lines.Add(FNum1);
  end
  else
  begin
    FResult := PerformCalcualtion(StrToFloat(FNum1), FOperator,
      StrToFloat(FNum2));
    redDisplay.Text := FNum1 + FOperator + FNum2 + '=';
    redDisplay.Lines.Add(FloatToStr(FResult));
    FNum1 := FloatToStr(FResult);
  end;
  ChangeFontSize(redDisplay);
end;

procedure TfrmCalculator.btnPercentClick(Sender: TObject);
var
  vMathOperation: TBasicMathOperationService;
begin
  vMathOperation := TBasicMathOperationService.Create
    (TBasicMathOperation.Create);
  FResult := vMathOperation.Percentage(StrToFloat(FNum1), StrToFloat(FNum2),
    FOperator);
  redDisplay.Clear;
  redDisplay.Text := FNum1 + FOperator + FNum2 + '=';
  redDisplay.Lines.Add(FloatToStr(FResult));
  ChangeFontSize(redDisplay);
  FNum1 := FloatToStr(FResult);
end;

procedure TfrmCalculator.btnSignClick(Sender: TObject);
begin

  if (FOperator = #0) and (FNum2 = '') then
  begin
    FNum1 := ToggleSign(FNum1);
  end
  else
  begin
    FNum2 := ToggleSign(FNum2);
  end;

  DisplayOnOperatorClick;
end;

procedure TfrmCalculator.DisplayOnOperatorClick;
begin
  redDisplay.Clear;

  if (FOperator = #0) and (FNum2 = '') then
  begin
    redDisplay.Text := ' ';
    redDisplay.Lines.Add(FNum1);
  end
  else
  begin
    redDisplay.Text := FNum1 + FOperator;
    redDisplay.Lines.Add(FNum2);
  end;

  ChangeFontSize(redDisplay);
end;

procedure TfrmCalculator.NumBtnClick(Sender: TObject);
var
  vButton: TButton;
begin
  vButton := TButton(Sender);

  if (FOperator = #0) and (FNum1.Length <= 9) then // handling num1
  begin
    HandleInput(Sender, FNum1);
  end
  else if (FOperator <> #0) and (FNum2.Length <= 9) then // handling num2
  begin
      HandleInput(Sender, FNum2);
  end;

  DisplayOnOperatorClick;
end;

procedure TfrmCalculator.OperatorBtnClick(Sender: TObject);
var
  vButton: TButton;
begin
  vButton := TButton(Sender);

  if (FNum1 = '') and (FNum2 = '') then
  begin
    FNum1 := '0';
  end
  else if (FResult <> 0) then
  begin
    FNum2 := '';
  end
  else if (FNum1 <> '') and (FNum2 <> '') then
  begin
    FResult := PerformCalcualtion(StrToFloat(FNum1), FOperator,
      StrToFloat(FNum2));
    FNum1 := FloatToStr(FResult);
    FNum2 := '';
  end;

  FOperator := vButton.Caption[1];
  DisplayOnOperatorClick;
end;

function TfrmCalculator.PerformCalcualtion(ANum1: Double; Aoperator: char;
  ANum2: Double): Double;
var
  vMathOperation: TBasicMathOperationService;
begin
  vMathOperation := TBasicMathOperationService.Create
    (TBasicMathOperation.Create);

  with vMathOperation do
  begin
    case Aoperator of
      '+':
        Result := Addition(ANum1, ANum2);
      '-':
        Result := Subtract(ANum1, ANum2);
      'x':
        Result := Multiply(ANum1, ANum2);
      '÷':
        Result := Divide(ANum1, ANum2);
    else
      begin
        raise Exception.Create('Invalid operator');
      end;
    end;
  end;
end;

end.
