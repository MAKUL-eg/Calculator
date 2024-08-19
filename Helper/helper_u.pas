unit helper_u;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;
type
THelper=class
function RemoveLastChar(str: string): string;
procedure ChangeFontSize(var ARichEdit: TRichEdit);
function ToggleSign(AOperand: string): string;
function GetCharCount(str, substring: string): integer;
function HandleInput(Sender: TObject; var AOperand: string;redDisplay:TRichEdit): string;
function NumberLength(Sender: TObject;var ARichEdit: TRichEdit):Boolean;

end;


implementation
function THelper.RemoveLastChar(str: string): string;
begin
  Result := Copy(str, 1, str.Length - 1);
end;

procedure THelper.ChangeFontSize(var ARichEdit: TRichEdit);
begin
  ARichEdit.SelStart := ARichEdit.Perform(EM_LINEINDEX, 1, 0);
  ARichEdit.SelLength := Length(ARichEdit.Lines[1]);
  ARichEdit.SelAttributes.Size := 18;
end;

function THelper.ToggleSign(AOperand: string): string;
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

function THelper.GetCharCount(str, substring: string): integer;
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

function THelper.HandleInput(Sender: TObject; var AOperand: string;redDisplay:TRichEdit): string;
var
  vButton: TButton;
  frmHelper: THelper;
begin
  vButton := TButton(Sender);
   frmHelper := THelper.Create;
  with frmHelper do
  if NumberLength(Sender,redDisplay) then
  begin

  if (vButton.Caption = '.') and (AOperand = '') then
  // initializing the Fnum1 to 0 if user press .
  begin
    AOperand := '0.';
  end
  else if vButton.Caption <> '.' then // all characters other than .
  begin
    AOperand := AOperand + vButton.Caption;
  end
  else if (vButton.Caption = '.') and (GetCharCount(AOperand, '.') = 0) then
  // allowing only single .
  begin
    AOperand := AOperand + vButton.Caption;
  end;
  end;
end;

function THelper.NumberLength(Sender: TObject;var ARichEdit: TRichEdit):Boolean;
 const
  MAX_LENGTH = 10;
var
  Button: TButton;

begin
  if( Length(ARichEdit.Lines[0]) < MAX_LENGTH) or (Length(ARichEdit.Lines[0]) < MAX_LENGTH) then
  begin
       Result:=True;
  end
  else
  begin
    Result:=False;
  end;
end;
end.
