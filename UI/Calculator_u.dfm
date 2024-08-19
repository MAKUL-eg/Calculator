object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 569
  ClientWidth = 434
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
    Left = -24
    Top = -24
    Width = 457
    Height = 593
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object insidePanel: TPanel
      Left = 18
      Top = 24
      Width = 441
      Height = 569
      BorderWidth = 1
      Color = clMedGray
      ParentBackground = False
      TabOrder = 0
      object redDisplay: TRichEdit
        Left = 32
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
        TabOrder = 0
      end
      object btnAdd: TButton
        Left = 317
        Top = 382
        Width = 89
        Height = 58
        Caption = '+'
        TabOrder = 1
        OnClick = OperatorBtnClick
      end
      object btnClear: TButton
        Left = 32
        Top = 175
        Width = 89
        Height = 65
        Caption = 'AC'
        TabOrder = 2
        OnClick = btnClearClick
      end
      object btnDelete: TButton
        Left = 317
        Top = 175
        Width = 89
        Height = 65
        Caption = #61653
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnDeleteClick
      end
      object btnDivide: TButton
        Left = 127
        Top = 175
        Width = 89
        Height = 65
        Caption = #247
        TabOrder = 4
        OnClick = OperatorBtnClick
      end
      object btnDot: TButton
        Left = 222
        Top = 446
        Width = 89
        Height = 59
        Caption = '.'
        TabOrder = 5
        OnClick = NumBtnClick
      end
      object btnEight: TButton
        Left = 127
        Top = 246
        Width = 89
        Height = 64
        Caption = '8'
        TabOrder = 6
        OnClick = NumBtnClick
      end
      object btnEquals: TButton
        Left = 317
        Top = 446
        Width = 89
        Height = 59
        Caption = '='
        TabOrder = 7
        OnClick = btnEqualsClick
      end
      object btnFive: TButton
        Left = 127
        Top = 316
        Width = 89
        Height = 60
        Caption = '5'
        TabOrder = 8
        OnClick = NumBtnClick
      end
      object btnFour: TButton
        Left = 32
        Top = 316
        Width = 89
        Height = 60
        Caption = '4'
        TabOrder = 9
        OnClick = NumBtnClick
      end
      object btnMultiply: TButton
        Left = 317
        Top = 246
        Width = 89
        Height = 64
        Caption = 'x'
        TabOrder = 10
        OnClick = OperatorBtnClick
      end
      object btnNine: TButton
        Left = 222
        Top = 246
        Width = 89
        Height = 64
        Caption = '9'
        TabOrder = 11
        OnClick = NumBtnClick
      end
      object btnOne: TButton
        Left = 32
        Top = 382
        Width = 89
        Height = 58
        Caption = '1'
        TabOrder = 12
        OnClick = NumBtnClick
      end
      object btnPercent: TButton
        Left = 222
        Top = 175
        Width = 89
        Height = 65
        Caption = '%'
        TabOrder = 13
        OnClick = btnPercentClick
      end
      object btnSeven: TButton
        Left = 32
        Top = 246
        Width = 89
        Height = 64
        Caption = '7'
        TabOrder = 14
        OnClick = NumBtnClick
      end
      object btnSign: TButton
        Left = 32
        Top = 446
        Width = 89
        Height = 59
        Caption = '+/-'
        TabOrder = 15
        OnClick = btnSignClick
      end
      object btnSix: TButton
        Left = 222
        Top = 316
        Width = 89
        Height = 60
        Caption = '6'
        TabOrder = 16
        OnClick = NumBtnClick
      end
      object btnSubtract: TButton
        Left = 317
        Top = 316
        Width = 89
        Height = 60
        Caption = '-'
        TabOrder = 17
        OnClick = OperatorBtnClick
      end
      object btnThree: TButton
        Left = 222
        Top = 382
        Width = 89
        Height = 58
        Caption = '3'
        TabOrder = 18
        OnClick = NumBtnClick
      end
      object btnTwo: TButton
        Left = 127
        Top = 382
        Width = 89
        Height = 58
        Caption = '2'
        TabOrder = 19
        OnClick = NumBtnClick
      end
      object btnZero: TButton
        Left = 127
        Top = 446
        Width = 89
        Height = 59
        Caption = '0'
        TabOrder = 20
        OnClick = NumBtnClick
      end
    end
  end
end
