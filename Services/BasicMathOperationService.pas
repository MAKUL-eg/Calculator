unit BasicMathOperationService;

interface

uses
  BasicMathOperationInterface,BasicMathOperation;

type
  TBasicMathOperationService = class
  private
    FBasicOperation: IBasicMathOperations;
  public
   constructor Create(ABasicOperation: IBasicMathOperations);
    function Addition(ANum1, ANum2: double): double;
    function Subtract(ANum1, ANum2: double): double;
    function Multiply(ANum1, ANum2: double): double;
    function Divide(ANum1, ANum2: double): double;
    function Percentage(ANum1, ANum2: double): double;
  end;

implementation

{ TBasicMathOperationService }

constructor TBasicMathOperationService.Create(ABasicOperation: TBasicMathOperation);
begin
FBasicOperation:=ABasicOperation.Create;
end;

function TBasicMathOperationService.Addition(ANum1, ANum2: double): double;
begin
Result:=FBasicOperation.Addition(ANum1,ANum2);
end;


function TBasicMathOperationService.Divide(ANum1, ANum2: double): double;
begin
  Result:=FBasicOperation.Divide(ANum1,ANum2);
end;

function TBasicMathOperationService.Multiply(ANum1, ANum2: double): double;
begin
   Result:=FBasicOperation.Multiply(ANum1,ANum2);
end;

function TBasicMathOperationService.Percentage(ANum1, ANum2: double;AOperator:string): double;
begin
    Result:=FBasicOperation.Percentage(ANum1,ANum2,AOperator);
end;

function TBasicMathOperationService.Subtract(ANum1, ANum2: double): double;
begin
   Result:=FBasicOperation.Subtract(ANum1,ANum2);
end;

end.
