object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 541
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Panel1: TPanel
    Left = -16
    Top = 0
    Width = 1281
    Height = 873
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object insidePanel: TPanel
      Left = 32
      Top = 14
      Width = 409
      Height = 515
      TabOrder = 0
      object btnAdd: TButton
        Left = 303
        Top = 379
        Width = 89
        Height = 58
        Caption = '+'
        TabOrder = 0
        OnClick = OperatorBtnClick
      end
      object btnClear: TButton
        Left = 18
        Top = 171
        Width = 89
        Height = 65
        Caption = 'AC'
        TabOrder = 1
        OnClick = btnClearClick
      end
      object btnDelete: TButton
        Left = 304
        Top = 172
        Width = 89
        Height = 65
        Caption = #61653
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnDeleteClick
      end
      object btnDivide: TButton
        Left = 113
        Top = 171
        Width = 89
        Height = 65
        Caption = #247
        TabOrder = 3
        OnClick = OperatorBtnClick
      end
      object btnDot: TButton
        Left = 208
        Top = 443
        Width = 89
        Height = 59
        Caption = '.'
        TabOrder = 4
        OnClick = NumBtnClick
      end
      object btnEight: TButton
        Left = 113
        Top = 242
        Width = 89
        Height = 64
        Caption = '8'
        TabOrder = 5
        OnClick = NumBtnClick
      end
      object btnEquals: TButton
        Left = 303
        Top = 443
        Width = 89
        Height = 59
        Caption = '='
        TabOrder = 6
        OnClick = btnEqualsClick
      end
      object btnFive: TButton
        Left = 113
        Top = 312
        Width = 89
        Height = 60
        Caption = '5'
        TabOrder = 7
        OnClick = NumBtnClick
      end
      object btnFour: TButton
        Left = 18
        Top = 312
        Width = 89
        Height = 60
        Caption = '4'
        TabOrder = 8
        OnClick = NumBtnClick
      end
      object btnMultiply: TButton
        Left = 303
        Top = 243
        Width = 89
        Height = 64
        Caption = 'x'
        TabOrder = 9
        OnClick = OperatorBtnClick
      end
      object btnNine: TButton
        Left = 208
        Top = 243
        Width = 89
        Height = 64
        Caption = '9'
        TabOrder = 10
        OnClick = NumBtnClick
      end
      object btnOne: TButton
        Left = 18
        Top = 378
        Width = 89
        Height = 58
        Caption = '1'
        TabOrder = 11
        OnClick = NumBtnClick
      end
      object btnPercent: TButton
        Left = 208
        Top = 171
        Width = 89
        Height = 65
        Caption = '%'
        TabOrder = 12
        OnClick = btnPercentClick
      end
      object btnSeven: TButton
        Left = 18
        Top = 242
        Width = 89
        Height = 64
        Caption = '7'
        TabOrder = 13
        OnClick = NumBtnClick
      end
      object btnSign: TButton
        Left = 18
        Top = 442
        Width = 89
        Height = 59
        Caption = '+/-'
        TabOrder = 14
        OnClick = btnSignClick
      end
      object btnSix: TButton
        Left = 208
        Top = 313
        Width = 89
        Height = 60
        Caption = '6'
        TabOrder = 15
        OnClick = NumBtnClick
      end
      object btnSubtract: TButton
        Left = 303
        Top = 313
        Width = 89
        Height = 60
        Caption = '-'
        TabOrder = 16
        OnClick = OperatorBtnClick
      end
      object btnThree: TButton
        Left = 208
        Top = 379
        Width = 89
        Height = 58
        Caption = '3'
        TabOrder = 17
        OnClick = NumBtnClick
      end
      object btnTwo: TButton
        Left = 113
        Top = 379
        Width = 89
        Height = 58
        Caption = '2'
        TabOrder = 18
        OnClick = NumBtnClick
      end
      object btnZero: TButton
        Left = 113
        Top = 443
        Width = 89
        Height = 59
        Caption = '0'
        TabOrder = 19
        OnClick = NumBtnClick
      end
      object redDisplay: TRichEdit
        Left = 18
        Top = 21
        Width = 375
        Height = 121
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 20
      end
    end
  end
end
