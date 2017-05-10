object F_FormLegendaLogisticaGMAPS: TF_FormLegendaLogisticaGMAPS
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Legenda'
  ClientHeight = 453
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBar1: TRzGroupBar
    Left = 0
    Top = 23
    Width = 261
    Height = 430
    BorderInner = fsFlatRounded
    BorderOuter = fsFlatRounded
    GradientColorStart = clBtnFace
    GradientColorStop = clBtnShadow
    Style = gbsOutlook
    GroupBorderSize = 0
    Align = alClient
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 144
    ExplicitHeight = 309
    object RzGroup1: TRzGroup
      Items = <>
      Opened = True
      OpenedHeight = 402
      DividerVisible = False
      Caption = 'Equipamentos'
      ParentColor = False
      object sbEquipamentos: TScrollBox
        Left = 0
        Top = 20
        Width = 253
        Height = 382
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        ExplicitTop = 28
        ExplicitHeight = 261
        object pnEquipamento: TPanel
          Left = 0
          Top = 0
          Width = 253
          Height = 25
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object lbEquipamento: TLabel
            Left = 25
            Top = 1
            Width = 227
            Height = 23
            Align = alClient
            Caption = '  Equipamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 67
            ExplicitHeight = 13
          end
          object pnImgEquipamento: TPanel
            Left = 1
            Top = 1
            Width = 24
            Height = 23
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object cxImgEquipamento: TcxImage
              Left = 0
              Top = 0
              Align = alClient
              Properties.Stretch = True
              Style.TransparentBorder = False
              TabOrder = 0
              Height = 23
              Width = 24
            end
          end
        end
      end
    end
    object RzGroup2: TRzGroup
      Items = <>
      Opened = False
      OpenedHeight = 402
      DividerVisible = False
      Caption = 'Opera'#231#227'o Agr'#237'cola'
      ParentColor = False
      object sbOperacao: TScrollBox
        Left = 0
        Top = 20
        Width = 253
        Height = 0
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object pnOperacaoAgricola: TPanel
          Left = 0
          Top = 0
          Width = 253
          Height = 25
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object lbOperacaoAgricola: TLabel
            Left = 25
            Top = 1
            Width = 227
            Height = 23
            Align = alClient
            Caption = '  Equipamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 67
            ExplicitHeight = 13
          end
          object pnImgOperacaoAgricola: TPanel
            Left = 1
            Top = 1
            Width = 24
            Height = 23
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object cxImgOperacaoAgricola: TcxImage
              Left = 0
              Top = 0
              Align = alClient
              Properties.Stretch = True
              Style.TransparentBorder = False
              TabOrder = 0
              Height = 23
              Width = 24
            end
          end
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 261
    Height = 23
    Align = alTop
    BorderOuter = fsFlatRounded
    Caption = 'Legenda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    ExplicitLeft = -8
    ExplicitTop = -2
    object rzBitbtnStatusAtualizacao: TRzBitBtn
      Left = 229
      Top = 2
      Width = 30
      Height = 19
      Hint = 'Fechar legenda'
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = rzBitbtnStatusAtualizacaoClick
      ImageIndex = 535
      Images = DM.cxImageList16x16
      ExplicitLeft = 227
      ExplicitTop = 3
    end
  end
  object QR_LegendaEquipamentos: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_legenda, a.descricao, a.icone_png'
      '  FROM legenda_espacial a'
      'ORDER BY a.cod_legenda')
    Left = 96
    Top = 104
    object QR_LegendaEquipamentosCOD_LEGENDA: TFloatField
      FieldName = 'COD_LEGENDA'
      Required = True
    end
    object QR_LegendaEquipamentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 4000
    end
    object QR_LegendaEquipamentosICONE_PNG: TBlobField
      FieldName = 'ICONE_PNG'
      BlobType = ftOraBlob
    end
  end
  object QR_LegendaOperacaoAgricola: TOraQuery
    SQL.Strings = (
      'SELECT a.cod_operacao, a.descricao, a.produtivo_improdutivo,'
      '       a.icone_equip_maps'
      '  FROM operacao a'
      ' WHERE a.icone_equip_maps IS NOT NULL'
      'ORDER BY descricao')
    Left = 96
    Top = 160
    object QR_LegendaOperacaoAgricolaCOD_OPERACAO: TFloatField
      FieldName = 'COD_OPERACAO'
      Required = True
    end
    object QR_LegendaOperacaoAgricolaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object QR_LegendaOperacaoAgricolaPRODUTIVO_IMPRODUTIVO: TStringField
      FieldName = 'PRODUTIVO_IMPRODUTIVO'
      Size = 1
    end
    object QR_LegendaOperacaoAgricolaICONE_EQUIP_MAPS: TBlobField
      FieldName = 'ICONE_EQUIP_MAPS'
      BlobType = ftOraBlob
    end
  end
end
