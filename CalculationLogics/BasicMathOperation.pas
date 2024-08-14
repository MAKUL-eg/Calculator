unit BasicMathOperation;

interface
uses
BasicMathOperationInterface;

type
TBasicMathOperation=class(TInterfacedObject,IBasicMathOperations)
      function Addition(ANum1,ANum2:double):double;
  function Subtract(ANum1,ANum2:double):double;
  function Multiply(ANum1,ANum2:double):double;
  function Divide(ANum1,ANum2:double):double;
  function Percentage(ANum1,ANum2:double;AOperator:char):double;
end;


implementation

function TBasicMathOperation.Addition(ANum1: Double; ANum2: Double): Double;
begin
      Result:=ANum1+ANum2;
end;

function  TBasicMathOperation.Subtract(ANum1: Double; ANum2: Double): Double;
begin
       Result:=ANum1-ANum2;
end;

function TBasicMathOperation.Multiply(ANum1: Double; ANum2: Double): Double;
begin
           Result:=ANum1*ANum2;
end;

function TBasicMathOperation.Divide(ANum1: Double; ANum2: Double): Double;
begin
       Result:=ANum1/ANum2;

end;

function TBasicMathOperation.Percentage(ANum1,ANum2: Double; AOperator: char): Double;
begin
    case AOperator of
        '+': Result := ANum1 + (ANum1 * (ANum2 / 100));
        '-': Result := ANum1 - (ANum1 * (ANum2 / 100));
        '*': Result := ANum1 * (ANum2 / 100);
        '/': Result := ANum1 / (ANum2 / 100);
    end;
end;

end.
