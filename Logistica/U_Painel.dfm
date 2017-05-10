object F_Painel: TF_Painel
  Left = 140
  Top = 178
  BorderIcons = [biSystemMenu]
  Caption = 'Mensagem Painel Eletr'#244'nico'
  ClientHeight = 188
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 149
    Width = 539
    Height = 39
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 419
      Top = 7
      Width = 113
      Height = 24
      Hint = 'Envia a mensagem para o Painel do Log'#237'stica'
      Caption = '&Enviar Mensagem'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 539
    Height = 92
    Align = alTop
    Caption = 'Mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 67
      Top = 41
      Width = 45
      Height = 16
      Caption = 'Frente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 52
      Top = 64
      Width = 61
      Height = 16
      Caption = 'Fazenda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 59
      Top = 17
      Width = 53
      Height = 16
      Caption = 'Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 116
      Top = 37
      Width = 68
      Height = 24
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 116
      Top = 62
      Width = 68
      Height = 24
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 186
      Top = 62
      Width = 319
      Height = 24
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit5: TwwDBEdit
      Left = 116
      Top = 12
      Width = 68
      Height = 24
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 92
    Width = 538
    Height = 51
    Caption = 'Outra Mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Edit1: TEdit
      Left = 8
      Top = 17
      Width = 524
      Height = 24
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Edit1'
    end
  end
end
