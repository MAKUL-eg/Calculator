unit Calculator_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, BasicMathOperation, BasicMathOperationService, helper_u;

type
  TfrmCalculator = class(TForm)
    Panel1: TPanel;
    insidePanel: TPanel;
    btnAdd: TButton;
    btnClear: TButton;
    btnDelete: TButton;
    btnDivide: TButton;
    btnDot: TButton;
    btnEight: TButton;
    btnEquals: TButton;
    btnFive: TButton;
    btnFour: TButton;
    btnMultiply: TButton;
    btnNine: TButton;
    btnOne: TButton;
    btnPercent: TButton;
    btnSeven: TButton;
    btnSign: TButton;
    btnSix: TButton;
    btnSubtract: TButton;
    btnThree: TButton;
    btnTwo: TButton;
    btnZero: TButton;
    redDisplay: TRichEdit;
    procedure NumBtnClick(Sender: TObject);
    procedure OperatorBtnClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnEqualsClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSignClick(Sender: TObject);
    procedure btnPercentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FNum1, FNum2: string;
    FOperator: char;
    FResult: Double;
    procedure DisplayOnOperatorClick;
    function PerformCalcualtion(ANum1: Double; Aoperator: char;
      ANum2: Double): Double;

  end;

var
  frmHelper: THelper;
  frmCalculator: TfrmCalculator;

implementation

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
  frmHelper := THelper.Create;
  with frmHelper do
  begin
   if NumberLength(Sender,redDisplay) then
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
  end;

end;

procedure TfrmCalculator.btnSignClick(Sender: TObject);
begin
  frmHelper := THelper.Create;
  with frmHelper do
  begin
   if NumberLength(Sender,redDisplay) then
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
  
end;

procedure TfrmCalculator.DisplayOnOperatorClick;
begin
  frmHelper := THelper.Create;
    redDisplay.Clear;

    if (FOperator = '') and (FNum2 = '') then
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
end;

procedure TfrmCalculator.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
  Self.OnResize := FormResize;
end;

procedure TfrmCalculator.FormResize(Sender: TObject);
var
  i: Integer;
  width: Integer;
begin


  if Self.width <= 453 then
  begin
    Self.width := 453;
  end
  else if Self.Height<=900 then begin
     Self.Height:=900;
  end;

    Panel1.width := Self.width;
    Panel1.Height := Self.Height;
    insidePanel.Left := (Self.width div 2) - (insidePanel.width div 2);
    insidePanel.Top := (Self.Height div 2) - (insidePanel.Height div 2);



end;

procedure TfrmCalculator.NumBtnClick(Sender: TObject);
var
  vButton: TButton;
begin
  frmHelper := THelper.Create;
  with frmHelper do
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
      '�':
        Result := Divide(ANum1, ANum2);
    else
      begin
        raise Exception.Create('Invalid operator');
      end;
    end;
  end;
end;

end.
