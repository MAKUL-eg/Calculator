object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 523
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = -24
    Top = -24
    Width = 870
    Height = 860
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnClear: TButton
      Left = 48
      Top = 192
      Width = 89
      Height = 65
      Caption = 'AC'
      TabOrder = 0
      OnClick = btnClearClick
    end
    object btnSeven: TButton
      Left = 48
      Top = 263
      Width = 89
      Height = 64
      Caption = '7'
      TabOrder = 1
      OnClick = NumBtnClick
    end
    object btnEight: TButton
      Left = 143
      Top = 263
      Width = 89
      Height = 64
      Caption = '8'
      TabOrder = 2
      OnClick = NumBtnClick
    end
    object btnNine: TButton
      Left = 238
      Top = 263
      Width = 89
      Height = 64
      Caption = '9'
      TabOrder = 3
      OnClick = NumBtnClick
    end
    object btnDivide: TButton
      Left = 143
      Top = 192
      Width = 89
      Height = 65
      Caption = #247
      TabOrder = 4
      OnClick = OperatorBtnClick
    end
    object btnPercent: TButton
      Left = 238
      Top = 192
      Width = 89
      Height = 65
      Caption = '%'
      TabOrder = 5
      OnClick = btnPercentClick
    end
    object btnFour: TButton
      Left = 48
      Top = 333
      Width = 89
      Height = 60
      Caption = '4'
      TabOrder = 6
      OnClick = NumBtnClick
    end
    object btnOne: TButton
      Left = 48
      Top = 399
      Width = 89
      Height = 58
      Caption = '1'
      TabOrder = 7
      OnClick = NumBtnClick
    end
    object btnFive: TButton
      Left = 143
      Top = 333
      Width = 89
      Height = 60
      Caption = '5'
      TabOrder = 8
      OnClick = NumBtnClick
    end
    object btnTwo: TButton
      Left = 143
      Top = 399
      Width = 89
      Height = 58
      Caption = '2'
      TabOrder = 9
      OnClick = NumBtnClick
    end
    object btnSix: TButton
      Left = 238
      Top = 333
      Width = 89
      Height = 60
      Caption = '6'
      TabOrder = 10
      OnClick = NumBtnClick
    end
    object btnThree: TButton
      Left = 238
      Top = 399
      Width = 89
      Height = 58
      Caption = '3'
      TabOrder = 11
      OnClick = NumBtnClick
    end
    object btnMultiply: TButton
      Left = 333
      Top = 263
      Width = 89
      Height = 64
      Caption = 'x'
      TabOrder = 12
      OnClick = OperatorBtnClick
    end
    object btnSubtract: TButton
      Left = 333
      Top = 333
      Width = 89
      Height = 60
      Caption = '-'
      TabOrder = 13
      OnClick = OperatorBtnClick
    end
    object btnAdd: TButton
      Left = 333
      Top = 399
      Width = 89
      Height = 58
      Caption = '+'
      TabOrder = 14
      OnClick = OperatorBtnClick
    end
    object btnSign: TButton
      Left = 48
      Top = 463
      Width = 89
      Height = 59
      Caption = '+/-'
      TabOrder = 15
      OnClick = btnSignClick
    end
    object btnZero: TButton
      Left = 143
      Top = 463
      Width = 89
      Height = 59
      Caption = '0'
      TabOrder = 16
      OnClick = NumBtnClick
    end
    object btnDot: TButton
      Left = 238
      Top = 463
      Width = 89
      Height = 59
      Caption = '.'
      TabOrder = 17
      OnClick = NumBtnClick
    end
    object btnDelete: TButton
      Left = 333
      Top = 192
      Width = 89
      Height = 65
      Caption = #61653
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = btnDeleteClick
    end
    object redDisplay: TRichEdit
      Left = 47
      Top = 48
      Width = 375
      Height = 121
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object btnEquals: TButton
      Left = 333
      Top = 463
      Width = 89
      Height = 59
      Caption = '='
      TabOrder = 20
      OnClick = btnEqualsClick
    end
  end
end
