unit BasicMathOperationInterface;

interface

type
IBasicMathOperations=interface
['{A82726A9-A5BE-4885-A7EB-9FE40577A65A}']
  function Addition(ANum1,ANum2:double):double;
  function Subtract(ANum1,ANum2:double):double;
  function Multiply(ANum1,ANum2:double):double;
  function Divide(ANum1,ANum2:double):double;
  function Percentage(ANum1,ANum2:double):double;
end;

implementation

end.
