inherited F_RotasFazenda_Mapas: TF_RotasFazenda_Mapas
  Top = 165
  Caption = 'F_RotasFazenda_Mapas'
  ClientHeight = 508
  ClientWidth = 1000
  Position = poDesigned
  ExplicitWidth = 1016
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 1000
    Height = 508
    Position = 176
    Percent = 18
    ExplicitWidth = 1000
    ExplicitHeight = 508
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      Width = 172
      Height = 508
      ExplicitWidth = 172
      ExplicitHeight = 508
      inherited RzBitBtnSair: TRzBitBtn
        Top = 478
        Width = 172
        ExplicitTop = 478
        ExplicitWidth = 172
      end
      object btnCriarNovasRotas_EntradaCana: TRzBitBtn
        Left = 0
        Top = 53
        Width = 172
        Height = 55
        Hint = 'Inserir Novo Registro'
        Align = alTop
        Caption = '&Criar Nova Rota Baseada Viagem Transporte de Cana'
        HotTrack = True
        HotTrackColorType = htctComplement
        LightTextStyle = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCriarNovasRotas_EntradaCanaClick
        DisabledIndex = 1834
        ImageIndex = 1834
        Images = DM.cxImageList16x16
        NumGlyphs = 2
      end
      object btnGerenciarRotasExistentes: TRzBitBtn
        Left = 0
        Top = 23
        Width = 172
        Height = 30
        Hint = 'Inserir Novo Registro'
        Align = alTop
        Caption = '&Gerenciar Rotas Existentes'
        HotTrack = True
        HotTrackColorType = htctComplement
        LightTextStyle = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnGerenciarRotasExistentesClick
        DisabledIndex = 123
        ImageIndex = 123
        Images = DM.cxImageList16x16
        NumGlyphs = 2
      end
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 172
        Height = 23
        Align = alTop
        BorderOuter = fsFlatRounded
        Caption = 'Ferramentas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHotLight
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        VisualStyle = vsGradient
      end
      object btnCriarNovasRotas_Avulso: TRzBitBtn
        Left = 0
        Top = 138
        Width = 172
        Height = 30
        Hint = 'Inserir Novo Registro'
        Align = alTop
        Caption = '&Criar Nova Rota Avulsa'
        HotTrack = True
        HotTrackColorType = htctComplement
        LightTextStyle = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Visible = False
        OnClick = btnCriarNovasRotas_AvulsoClick
        DisabledIndex = 1834
        ImageIndex = 1834
        Images = DM.cxImageList16x16
        NumGlyphs = 2
      end
      object btnCriarNovasRotas_AvulsoBasic: TRzBitBtn
        Left = 0
        Top = 108
        Width = 172
        Height = 30
        Hint = 'Inserir Novo Registro'
        Align = alTop
        Caption = '&Criar Nova Rota - Basic'
        HotTrack = True
        HotTrackColorType = htctComplement
        LightTextStyle = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnCriarNovasRotas_AvulsoBasicClick
        DisabledIndex = 1834
        ImageIndex = 1834
        Images = DM.cxImageList16x16
        NumGlyphs = 2
      end
      object Memo1: TMemo
        Left = 0
        Top = 288
        Width = 185
        Height = 9
        TabOrder = 6
        Visible = False
      end
    end
    inherited pnSeparador: TPanel
      Left = 172
      Height = 508
      ExplicitLeft = 172
      ExplicitHeight = 508
    end
    inherited pnComponentes: TPanel
      Width = 814
      Height = 508
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 814
      ExplicitHeight = 508
      object RzPgRotas: TRzPageControl
        Left = 0
        Top = 22
        Width = 814
        Height = 486
        ActivePage = tsRotasPrincipal
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        FixedDimension = 19
        object tsRotasPrincipal: TRzTabSheet
          Color = clWhite
          Caption = 'tsRotasPrincipal'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 810
            Height = 463
            Align = alClient
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 810
              Height = 463
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Escolha uma ferramenta no menu lateral.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = -5
              ExplicitTop = -1
            end
          end
        end
        object tsRotasGerenciamentoRotas: TRzTabSheet
          Color = clWhite
          Caption = 'tsRotasGerenciamentoRotas'
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 810
            Height = 23
            Align = alTop
            BorderOuter = fsFlatRounded
            Caption = 'Gerenciar Rotas Existentes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
          end
          object RzSplitter1: TRzSplitter
            Left = 0
            Top = 23
            Width = 810
            Height = 440
            Orientation = orVertical
            Position = 169
            Percent = 39
            HotSpotVisible = True
            HotSpotDirection = hsdBoth
            SplitterWidth = 10
            Align = alClient
            TabOrder = 1
            BarSize = (
              0
              169
              810
              179)
            UpperLeftControls = (
              Panel1
              Panel2)
            LowerRightControls = (
              Panel3)
            object Panel1: TPanel
              Left = 290
              Top = 0
              Width = 520
              Height = 169
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object RzPanel5: TRzPanel
                Left = 0
                Top = 0
                Width = 520
                Height = 23
                Align = alTop
                BorderOuter = fsFlatRounded
                Caption = 'Rotas Criadas'
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsGradient
              end
              object cxGrid2: TcxGrid
                Left = 0
                Top = 23
                Width = 520
                Height = 146
                Align = alClient
                TabOrder = 1
                object cxGrid2DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.First.Visible = False
                  Navigator.Buttons.PriorPage.Visible = False
                  Navigator.Buttons.NextPage.Visible = False
                  Navigator.Buttons.Last.Visible = False
                  Navigator.Buttons.Insert.Visible = False
                  Navigator.Buttons.Edit.Visible = False
                  Navigator.Buttons.Refresh.Visible = False
                  Navigator.Buttons.SaveBookmark.Visible = False
                  Navigator.Buttons.GotoBookmark.Visible = False
                  Navigator.Buttons.Filter.Visible = False
                  Navigator.Visible = True
                  OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
                  DataController.DataSource = DS_GerenciamentoRotas
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderAutoHeight = True
                  Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                  object cxGrid2DBTableView1VISUALIZA: TcxGridDBColumn
                    Caption = 'Visualiza Mapa'
                    DataBinding.FieldName = 'VISUALIZA'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Width = 61
                  end
                  object cxGrid2DBTableView1ATIVO: TcxGridDBColumn
                    Caption = 'Ativo'
                    DataBinding.FieldName = 'ATIVO'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Width = 39
                  end
                  object cxGrid2DBTableView1COD_ROTA: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'COD_ROTA'
                    Width = 54
                  end
                  object cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO'
                    Width = 216
                  end
                  object cxGrid2DBTableView1ZONA: TcxGridDBColumn
                    Caption = 'Zona'
                    DataBinding.FieldName = 'ZONA'
                    Width = 55
                  end
                  object cxGrid2DBTableView1DATAHORA_INICIO: TcxGridDBColumn
                    Caption = 'In'#237'cio'
                    DataBinding.FieldName = 'DATAHORA_INICIO'
                    Width = 113
                  end
                  object cxGrid2DBTableView1DATAHORA_FIM: TcxGridDBColumn
                    Caption = 'T'#233'rmino'
                    DataBinding.FieldName = 'DATAHORA_FIM'
                    Width = 80
                  end
                  object cxGrid2DBTableView1OBSERVACAO: TcxGridDBColumn
                    Caption = 'Observa'#231#227'o'
                    DataBinding.FieldName = 'OBSERVACAO'
                    Width = 200
                  end
                  object cxGrid2DBTableView1COR_TRAJETO_IDA: TcxGridDBColumn
                    Caption = 'Cor Trajeto ida'
                    DataBinding.FieldName = 'COR_TRAJETO_IDA'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.ViewStyle = vsButtonsOnly
                    Properties.OnButtonClick = cxGrid2DBTableView1COR_TRAJETO_IDAPropertiesButtonClick
                    Width = 107
                  end
                  object cxGrid2DBTableView1COR_TRAJETO_VOLTA: TcxGridDBColumn
                    Caption = 'Cor Trajeto Volta'
                    DataBinding.FieldName = 'COR_TRAJETO_VOLTA'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.ViewStyle = vsButtonsOnly
                    Properties.OnButtonClick = cxGrid2DBTableView1COR_TRAJETO_VOLTAPropertiesButtonClick
                    Width = 119
                  end
                end
                object cxGrid2Level1: TcxGridLevel
                  Caption = 'Rotas da frente selecionada'
                  GridView = cxGrid2DBTableView1
                end
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 290
              Height = 169
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object RzPanel4: TRzPanel
                Left = 0
                Top = 0
                Width = 290
                Height = 23
                Align = alTop
                BorderOuter = fsFlatRounded
                Caption = 'Frentes Ativas'
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsGradient
              end
              object RzPanel6: TRzPanel
                Left = 0
                Top = 146
                Width = 290
                Height = 23
                Align = alBottom
                BorderOuter = fsFlatRounded
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                VisualStyle = vsGradient
                object Label1: TLabel
                  Left = 29
                  Top = 4
                  Width = 94
                  Height = 13
                  Caption = 'Fazendas sem Rota'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object RzPanel2: TRzPanel
                  Left = 4
                  Top = 2
                  Width = 19
                  Height = 19
                  BorderOuter = fsFlatRounded
                  Color = clYellow
                  TabOrder = 0
                end
              end
              object cxGrid1: TcxGrid
                Left = 0
                Top = 23
                Width = 290
                Height = 123
                Align = alClient
                TabOrder = 1
                object cxGrid1DBTableView1: TcxGridDBTableView
                  DataController.DataSource = DS_Frente
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Inserting = False
                  OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                  object cxGrid1DBTableView1POSSUIROTA: TcxGridDBColumn
                    DataBinding.FieldName = 'POSSUIROTA'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Visible = False
                    Options.Editing = False
                    Options.Moving = False
                  end
                  object cxGrid1DBTableView1COD_FRENTE: TcxGridDBColumn
                    Caption = 'Frente'
                    DataBinding.FieldName = 'COD_FRENTE'
                    Options.Editing = False
                    Options.Moving = False
                    Width = 42
                  end
                  object cxGrid1DBTableView1COD_FAZENDA: TcxGridDBColumn
                    Caption = 'Fazenda'
                    DataBinding.FieldName = 'COD_FAZENDA'
                    Options.Editing = False
                    Options.Moving = False
                    Width = 64
                  end
                  object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO'
                    Options.Editing = False
                    Options.Moving = False
                    Width = 104
                  end
                  object cxGrid1DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn
                    Caption = 'Liberado'
                    DataBinding.FieldName = 'TRANSPORTE_LIBERADO'
                    Options.Editing = False
                    Options.Moving = False
                    Width = 65
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  Caption = 'Frentes'
                  GridView = cxGrid1DBTableView1
                end
              end
            end
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 810
              Height = 261
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object RzPageControl1: TRzPageControl
                Left = 0
                Top = 0
                Width = 810
                Height = 261
                ActivePage = TabSheet1
                Align = alClient
                TabIndex = 0
                TabOrder = 0
                FixedDimension = 19
                object TabSheet1: TRzTabSheet
                  Caption = 'Informa'#231#245'es e Edi'#231#227'o de Rotas'
                  object RzSplitter6: TRzSplitter
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 238
                    Position = 280
                    Percent = 35
                    UsePercent = True
                    HotSpotVisible = True
                    HotSpotDirection = hsdBoth
                    SplitterWidth = 10
                    Align = alClient
                    TabOrder = 0
                    BarSize = (
                      280
                      0
                      290
                      238)
                    UpperLeftControls = (
                      Panel40)
                    LowerRightControls = (
                      Panel41)
                    object Panel40: TPanel
                      Left = 0
                      Top = 0
                      Width = 280
                      Height = 238
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object RzPanel43: TRzPanel
                        Left = 0
                        Top = 0
                        Width = 280
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlatRounded
                        Caption = 'Visualiza'#231#227'o Trajeto'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clHotLight
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                        VisualStyle = vsGradient
                      end
                      object cmGerenciamentoRotas: TChromium
                        Left = 0
                        Top = 23
                        Width = 280
                        Height = 215
                        Color = clDefault
                        Align = alClient
                        DefaultUrl = 'about:blank'
                        TabOrder = 1
                        OnLoadEnd = cmGerenciamentoRotasLoadEnd
                      end
                    end
                    object Panel41: TPanel
                      Left = 0
                      Top = 0
                      Width = 516
                      Height = 238
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object RzPanel44: TRzPanel
                        Left = 0
                        Top = 23
                        Width = 516
                        Height = 23
                        Align = alTop
                        Alignment = taLeftJustify
                        BorderOuter = fsFlatRounded
                        Caption = 'Pontos de Interesse'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clHotLight
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                        VisualStyle = vsGradient
                      end
                      object cxGrid15: TcxGrid
                        Left = 0
                        Top = 46
                        Width = 516
                        Height = 77
                        Align = alTop
                        TabOrder = 1
                        object cxGridDBTableView10: TcxGridDBTableView
                          DataController.DataSource = DS_GerenciamentoRotasPontos
                          DataController.Summary.DefaultGroupSummaryItems = <>
                          DataController.Summary.FooterSummaryItems = <>
                          DataController.Summary.SummaryGroups = <>
                          OptionsData.Deleting = False
                          OptionsData.Inserting = False
                          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
                          OptionsView.GroupByBox = False
                          OptionsView.Indicator = True
                          Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                          object cxGridDBTableView10LINHA: TcxGridDBColumn
                            Caption = 'C'#243'digo'
                            DataBinding.FieldName = 'LINHA'
                            Width = 47
                          end
                          object cxGridDBTableView10TRAJETO: TcxGridDBColumn
                            Caption = 'Trajeto'
                            DataBinding.FieldName = 'TRAJETO'
                            Width = 46
                          end
                          object cxGridDBTableView10TEXTO_BORDO: TcxGridDBColumn
                            Caption = 'Texto 1'
                            DataBinding.FieldName = 'TEXTO_BORDO'
                            Width = 100
                          end
                          object cxGridDBTableView10TEXTO_BORDO2: TcxGridDBColumn
                            Caption = 'Texto 2'
                            DataBinding.FieldName = 'TEXTO_BORDO2'
                            Width = 113
                          end
                          object cxGridDBTableView10DESCRICAO_DETALHADA: TcxGridDBColumn
                            Caption = 'Detalhes'
                            DataBinding.FieldName = 'DESCRICAO_DETALHADA'
                            Width = 175
                          end
                        end
                        object cxGridLevel10: TcxGridLevel
                          Caption = 'Frentes'
                          GridView = cxGridDBTableView10
                        end
                      end
                      object RzPanel47: TRzPanel
                        Left = 0
                        Top = 0
                        Width = 516
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlatRounded
                        Caption = 'Editar informa'#231#245'es dos pontos de interesse'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clHotLight
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 2
                        VisualStyle = vsGradient
                      end
                      object RzPanel48: TRzPanel
                        Left = 0
                        Top = 123
                        Width = 516
                        Height = 23
                        Align = alTop
                        Alignment = taLeftJustify
                        BorderOuter = fsFlatRounded
                        Caption = 'Pontos de Interesse por Tipo de Carga'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clHotLight
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 3
                        VisualStyle = vsGradient
                      end
                      object cxGrid16: TcxGrid
                        Left = 0
                        Top = 146
                        Width = 516
                        Height = 92
                        Align = alClient
                        TabOrder = 4
                        object cxGridDBTableView11: TcxGridDBTableView
                          Navigator.Buttons.First.Visible = False
                          Navigator.Buttons.PriorPage.Visible = False
                          Navigator.Buttons.NextPage.Visible = False
                          Navigator.Buttons.Last.Visible = False
                          Navigator.Buttons.Insert.Visible = False
                          Navigator.Buttons.Edit.Visible = False
                          Navigator.Buttons.Refresh.Visible = False
                          Navigator.Buttons.SaveBookmark.Visible = False
                          Navigator.Buttons.GotoBookmark.Visible = False
                          Navigator.Buttons.Filter.Visible = False
                          Navigator.Visible = True
                          OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
                          DataController.DataSource = DS_GerenciamentoRotasPontosTipoCarga
                          DataController.Summary.DefaultGroupSummaryItems = <>
                          DataController.Summary.FooterSummaryItems = <>
                          DataController.Summary.SummaryGroups = <>
                          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
                          OptionsView.GroupByBox = False
                          OptionsView.HeaderAutoHeight = True
                          Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                          object cxGridDBTableView11TIPOCARGA: TcxGridDBColumn
                            Caption = 'Tipo Carga'
                            DataBinding.FieldName = 'TIPOCARGA'
                            Options.Editing = False
                            Options.Focusing = False
                            Width = 101
                          end
                          object cxGridDBTableView11TEMPOMINUTOS: TcxGridDBColumn
                            Caption = 'Tempo Limite (minutos)'
                            DataBinding.FieldName = 'TEMPOMINUTOS'
                            Width = 125
                          end
                          object cxGridDBTableView11TEMPO_MAX_ULTIMOPONTO: TcxGridDBColumn
                            Caption = 'Tempo Limite (s)'
                            DataBinding.FieldName = 'TEMPO_MAX_ULTIMOPONTO'
                            Visible = False
                            Width = 119
                          end
                          object cxGridDBTableView11VELOCIDADE_MAXIMO: TcxGridDBColumn
                            Caption = 
                              'Velocidade m'#225'xima que o equipamento poder'#225' atingir no trajeto a ' +
                              'partir deste ponto.'
                            DataBinding.FieldName = 'VELOCIDADE_MAXIMO'
                            Width = 237
                          end
                        end
                        object cxGridLevel11: TcxGridLevel
                          Caption = 'Rotas da frente selecionada'
                          GridView = cxGridDBTableView11
                        end
                      end
                    end
                  end
                end
                object TabSheet2: TRzTabSheet
                  Caption = 'Detalhamento Percurso'
                  object Panel22: TPanel
                    Left = 390
                    Top = 0
                    Width = 416
                    Height = 238
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object RzPanel24: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 416
                      Height = 25
                      Align = alTop
                      Alignment = taLeftJustify
                      BorderOuter = fsFlatRounded
                      Caption = 'Percurso Informado nas Dist'#226'ncias do Talh'#227'o'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                      object wwDBComboBox2: TwwDBComboBox
                        Left = 252
                        Top = 2
                        Width = 121
                        Height = 22
                        ShowButton = True
                        Style = csDropDown
                        MapList = False
                        AllowClearKey = False
                        DataField = 'COD_TALHAO'
                        DataSource = DS_Talhoes
                        DropDownCount = 8
                        ItemHeight = 0
                        Sorted = False
                        TabOrder = 0
                        UnboundDataType = wwDefault
                      end
                    end
                    object cxGrid9: TcxGrid
                      Left = 0
                      Top = 25
                      Width = 416
                      Height = 213
                      Align = alClient
                      TabOrder = 1
                      object cxGridDBTableView4: TcxGridDBTableView
                        DataController.DataSource = DS_PercursoCadastrado
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.Inserting = False
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        OptionsView.Indicator = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGridDBTableView4SEQUENCIA: TcxGridDBColumn
                          Caption = 'Seq.'
                          DataBinding.FieldName = 'SEQUENCIA'
                          Width = 37
                        end
                        object cxGridDBTableView4COD_TIPOPERCURSO: TcxGridDBColumn
                          Caption = 'C'#243'digo'
                          DataBinding.FieldName = 'COD_TIPOPERCURSO'
                          Width = 43
                        end
                        object cxGridDBTableView4DESCRICAO: TcxGridDBColumn
                          Caption = 'Tipo Percurso'
                          DataBinding.FieldName = 'DESCRICAO'
                          Width = 92
                        end
                        object cxGridDBTableView4TRAJETO: TcxGridDBColumn
                          Caption = 'Trajeto'
                          DataBinding.FieldName = 'TRAJETO'
                          PropertiesClassName = 'TcxRadioGroupProperties'
                          Properties.Columns = 2
                          Properties.Items = <
                            item
                              Caption = 'Ida'
                              Value = 'I'
                            end
                            item
                              Caption = 'Volta'
                              Value = 'V'
                            end>
                          Width = 133
                        end
                        object cxGridDBTableView4DISTANCIA: TcxGridDBColumn
                          Caption = 'Dist'#226'ncia (KM)'
                          DataBinding.FieldName = 'DISTANCIA'
                          Width = 58
                        end
                      end
                      object cxGridLevel4: TcxGridLevel
                        Caption = 'Frentes'
                        GridView = cxGridDBTableView4
                      end
                    end
                  end
                  object Panel23: TPanel
                    Left = 0
                    Top = 0
                    Width = 390
                    Height = 238
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                    object cxGrid8: TcxGrid
                      Left = 0
                      Top = 25
                      Width = 390
                      Height = 213
                      Align = alClient
                      TabOrder = 0
                      object cxGridDBTableView3: TcxGridDBTableView
                        DataController.DataSource = DS_PercursoRota
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.Inserting = False
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        OptionsView.Indicator = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGridDBTableView3SEQUENCIA: TcxGridDBColumn
                          Caption = 'Seq.'
                          DataBinding.FieldName = 'SEQUENCIA'
                          Width = 37
                        end
                        object cxGridDBTableView3COD_TIPOPERCURSO: TcxGridDBColumn
                          Caption = 'C'#243'digo'
                          DataBinding.FieldName = 'COD_TIPOPERCURSO'
                          Width = 43
                        end
                        object cxGridDBTableView3TIPOPERCURSO: TcxGridDBColumn
                          Caption = 'Tipo Percurso'
                          DataBinding.FieldName = 'TIPOPERCURSO'
                          Width = 92
                        end
                        object cxGridDBTableView3TIPO: TcxGridDBColumn
                          Caption = 'Trajeto'
                          DataBinding.FieldName = 'TIPO'
                          PropertiesClassName = 'TcxRadioGroupProperties'
                          Properties.Columns = 2
                          Properties.Items = <
                            item
                              Caption = 'Ida'
                              Value = 'I'
                            end
                            item
                              Caption = 'Volta'
                              Value = 'V'
                            end>
                          Width = 133
                        end
                        object cxGridDBTableView3DISTANCIA: TcxGridDBColumn
                          Caption = 'Dist'#226'ncia (KM)'
                          DataBinding.FieldName = 'DISTANCIA'
                          Width = 58
                        end
                      end
                      object cxGridLevel3: TcxGridLevel
                        Caption = 'Frentes'
                        GridView = cxGridDBTableView3
                      end
                    end
                    object RzPanel25: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 390
                      Height = 25
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 'Percurso Atual da Rota'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      VisualStyle = vsGradient
                    end
                  end
                end
              end
            end
          end
        end
        object tsRotasGerarRotasEntradaCana: TRzTabSheet
          Color = clWhite
          Caption = 'tsRotasGerarRotasEntradaCana'
          object RzPanel7: TRzPanel
            Left = 0
            Top = 0
            Width = 810
            Height = 23
            Align = alTop
            BorderOuter = fsFlatRounded
            Caption = '&Criar Nova Rota Baseada Viagem Transporte de Cana'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
          end
          object RzPgNovaRota_EntradaCana: TRzPageControl
            Left = 0
            Top = 23
            Width = 810
            Height = 408
            ActivePage = tsNovaRotaSelecaoPontos
            Align = alClient
            TabIndex = 2
            TabOrder = 1
            FixedDimension = 19
            object tsNovaRotaEscolhaFrente: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaEscolhaFrente'
              object RzPanel8: TRzPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 23
                Align = alTop
                Alignment = taLeftJustify
                BorderOuter = fsFlatRounded
                Caption = 'Escolha a frente e a fazenda da nova rota e clique em pr'#243'ximo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsClassic
              end
              object cxGrid3: TcxGrid
                Left = 0
                Top = 23
                Width = 806
                Height = 362
                Align = alClient
                TabOrder = 1
                object cxGrid3DBTableView1: TcxGridDBTableView
                  DataController.DataSource = DS_Frente
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.GroupByBox = False
                  Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                  object cxGrid3DBTableView1COD_FRENTE: TcxGridDBColumn
                    Caption = 'C'#243'd. Frente'
                    DataBinding.FieldName = 'COD_FRENTE'
                    Width = 85
                  end
                  object cxGrid3DBTableView1COD_FAZENDA: TcxGridDBColumn
                    Caption = 'C'#243'd. Fazenda'
                    DataBinding.FieldName = 'COD_FAZENDA'
                    Width = 99
                  end
                  object cxGrid3DBTableView1DESCRICAO: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO'
                    Width = 440
                  end
                  object cxGrid3DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn
                    Caption = 'Transp. Liberado'
                    DataBinding.FieldName = 'TRANSPORTE_LIBERADO'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = 'Sim'
                    Properties.ValueUnchecked = 'N'#227'o'
                    Width = 102
                  end
                end
                object cxGrid3Level1: TcxGridLevel
                  GridView = cxGrid3DBTableView1
                end
              end
            end
            object tsNovaRotaVisualizaViagem: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaVisualizaViagem'
              object RzPanel9: TRzPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 23
                Align = alTop
                Alignment = taLeftJustify
                BorderOuter = fsFlatRounded
                Caption = 'Selecione um registro e clique em "Visualizar Trajeto"'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsClassic
              end
              object RzSplitter3: TRzSplitter
                Left = 0
                Top = 23
                Width = 806
                Height = 362
                Orientation = orVertical
                Position = 137
                Percent = 38
                HotSpotVisible = True
                SplitterWidth = 10
                Align = alClient
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                BarSize = (
                  0
                  137
                  806
                  147)
                UpperLeftControls = (
                  Panel7)
                LowerRightControls = (
                  Panel17)
                object Panel7: TPanel
                  Left = 0
                  Top = 0
                  Width = 806
                  Height = 137
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Panel8: TPanel
                    Left = 0
                    Top = 0
                    Width = 201
                    Height = 137
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object pnVisualizaRotaPontoaPonto: TPanel
                      Left = 0
                      Top = 0
                      Width = 201
                      Height = 137
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object rzBtnVisualizarTrajeto: TRzBitBtn
                        Left = 0
                        Top = 0
                        Width = 201
                        Height = 33
                        Align = alTop
                        Caption = 'Visualizar Trajeto'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        OnClick = rzBtnVisualizarTrajetoClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object Panel6: TPanel
                        Left = 0
                        Top = 33
                        Width = 201
                        Height = 104
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 1
                        object rzBtnVisualizarPontoaPonto: TRzBitBtn
                          Left = 0
                          Top = 0
                          Width = 97
                          Height = 104
                          Align = alLeft
                          Caption = 'Visulizar Rota Ponto a Ponto'
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          HotTrack = True
                          ParentFont = False
                          TabOrder = 0
                          OnClick = rzBtnVisualizarPontoaPontoClick
                          Glyph.Data = {
                            46050000424D460500000000000036040000280000000D000000110000000100
                            0800000000001001000000000000000000000001000000000000000000008080
                            8000000080000080800000800000808000008000000080008000408080004040
                            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                            80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                            60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                            B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                            1D007666280000450000013E450013286A006A39850085324A00040404000808
                            08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                            5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                            840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                            0000000039009B00000000250000000049003B111100002F000000005D004517
                            1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                            00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                            2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                            A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                            2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                            89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                            AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                            0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                            0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                            42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                            890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                            C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                            FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                            F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                            FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                            CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                            8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                            7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                            BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                            88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                            A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                            0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                            00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                            001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                            11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                            110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                            11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                            110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                            110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                            0F0F0F0F0F0F0F000000}
                          DisabledIndex = 253
                          ImageIndex = 253
                          Images = DM.cxImageList16x16
                        end
                        object rzBtnPararRotaPontoaPonto: TRzBitBtn
                          Left = 97
                          Top = 0
                          Width = 104
                          Height = 104
                          Align = alClient
                          Caption = 'Parar Rota Ponto a Ponto'
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          HotTrack = True
                          ParentFont = False
                          TabOrder = 1
                          OnClick = rzBtnPararRotaPontoaPontoClick
                          Glyph.Data = {
                            66010000424D6601000000000000760000002800000014000000140000000100
                            040000000000F000000000000000000000001000000000000000000000000000
                            8000008000000080800080000000800080008080000080808000C0C0C0000000
                            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                            8888888800008877777777777777777800008000000000000000007800008099
                            999999999999907800008090000000000000907800008090FFFFFFFFFFF09078
                            00008090FFFFF0FFFFF0907800008090FFFFFFFF0FF0907800008090FFFFFFF0
                            FFF0907800008090FFFFFF0FFFF0907800008090F0FFF0FFF0F0907800008090
                            FFFFFF0FFFF0907800008090FFFFFFF0FFF0907800008090FFFFFFFF0FF09078
                            00008090FFFFF0FFF0F0907800008090FFFFFFFFFFF090780000809000000000
                            0000907800008099999999999999907800008000000000000000008800008888
                            88888888888888880000}
                          ImageIndex = 255
                          Images = DM.cxImageList16x16
                        end
                      end
                    end
                  end
                  object cxGrid4: TcxGrid
                    Left = 201
                    Top = 0
                    Width = 605
                    Height = 137
                    Align = alClient
                    TabOrder = 1
                    object cxGrid4DBTableView1: TcxGridDBTableView
                      DataController.DataSource = DS_EntradaCana
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsView.GroupByBox = False
                      Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                      object cxGrid4DBTableView1COD_EQUIPAMENTO: TcxGridDBColumn
                        Caption = 'Equipamento'
                        DataBinding.FieldName = 'COD_EQUIPAMENTO'
                        Width = 89
                      end
                      object cxGrid4DBTableView1COD_ENTRADACANA: TcxGridDBColumn
                        Caption = 'C'#243'digo'
                        DataBinding.FieldName = 'COD_ENTRADACANA'
                        Width = 78
                      end
                      object cxGrid4DBTableView1DATAMOVIMENTO: TcxGridDBColumn
                        Caption = 'Data'
                        DataBinding.FieldName = 'DATAMOVIMENTO'
                        Width = 82
                      end
                      object cxGrid4DBTableView1DATA_SAIDA: TcxGridDBColumn
                        Caption = 'Sa'#237'da'
                        DataBinding.FieldName = 'DATA_SAIDA'
                        Width = 87
                      end
                      object cxGrid4DBTableView1DATA_CHEGADA: TcxGridDBColumn
                        Caption = 'Chegada'
                        DataBinding.FieldName = 'DATA_CHEGADA'
                        Width = 109
                      end
                      object cxGrid4DBTableView1QTDEPONTOSESPACIAL: TcxGridDBColumn
                        Caption = 'Qtde. Pontos Espacial'
                        DataBinding.FieldName = 'QTDEPONTOSESPACIAL'
                        Width = 84
                      end
                    end
                    object cxGrid4Level1: TcxGridLevel
                      GridView = cxGrid4DBTableView1
                    end
                  end
                end
                object Panel17: TPanel
                  Left = 0
                  Top = 0
                  Width = 806
                  Height = 215
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object cmVisualizarViagem: TChromium
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 215
                    Align = alClient
                    DefaultUrl = 'about:blank'
                    TabOrder = 0
                    OnLoadEnd = cmVisualizarViagemLoadEnd
                  end
                end
              end
            end
            object tsNovaRotaSelecaoPontos: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaSelecaoPontos'
              object RzPanel10: TRzPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 23
                Align = alTop
                Alignment = taLeftJustify
                BorderOuter = fsFlatRounded
                Caption = 
                  'Marque os pontos de interesse a insira a mensagem que aparecer'#225' ' +
                  'no bordo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsClassic
              end
              object Panel12: TPanel
                Left = 0
                Top = 23
                Width = 806
                Height = 362
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object RzSplitter4: TRzSplitter
                  Left = 0
                  Top = 0
                  Width = 806
                  Height = 362
                  Orientation = orVertical
                  Position = 126
                  Percent = 35
                  HotSpotVisible = True
                  SplitterWidth = 10
                  Align = alClient
                  TabOrder = 0
                  BarSize = (
                    0
                    126
                    806
                    136)
                  UpperLeftControls = (
                    Panel13)
                  LowerRightControls = (
                    Panel18)
                  object Panel13: TPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 126
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object cxGrid5: TcxGrid
                      Left = 145
                      Top = 0
                      Width = 661
                      Height = 126
                      Align = alClient
                      TabOrder = 0
                      object cxGrid5DBTableView1: TcxGridDBTableView
                        Navigator.Buttons.PriorPage.Visible = False
                        Navigator.Buttons.NextPage.Visible = False
                        Navigator.Buttons.Insert.Visible = False
                        Navigator.Buttons.Delete.Visible = False
                        Navigator.Buttons.Edit.Visible = False
                        Navigator.Buttons.SaveBookmark.Visible = False
                        Navigator.Buttons.GotoBookmark.Visible = False
                        Navigator.Buttons.Filter.Visible = False
                        Navigator.Visible = True
                        DataController.DataSource = DS_PreRotaPontos
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGrid5DBTableView1SEQUENCIA: TcxGridDBColumn
                          Caption = 'Seq.'
                          DataBinding.FieldName = 'SEQUENCIA'
                          Width = 33
                        end
                        object cxGrid5DBTableView1PONTO_INTERESSE: TcxGridDBColumn
                          Caption = 'Ponto Interesse'
                          DataBinding.FieldName = 'PONTO_INTERESSE'
                          PropertiesClassName = 'TcxCheckBoxProperties'
                          Properties.ValueChecked = 'S'
                          Properties.ValueUnchecked = 'N'
                          Width = 62
                        end
                        object cxGrid5DBTableView1TEXTO_BORDO: TcxGridDBColumn
                          Caption = 'Texto 1 (16 Caracteres)'
                          DataBinding.FieldName = 'TEXTO_BORDO'
                          Width = 103
                        end
                        object cxGrid5DBTableView1TEXTO_BORDO2: TcxGridDBColumn
                          Caption = 'Texto 2 (16 Caracteres)'
                          DataBinding.FieldName = 'TEXTO_BORDO2'
                          Width = 109
                        end
                        object cxGrid5DBTableView1DATA: TcxGridDBColumn
                          Caption = 'Data Ocorr'#234'ncia'
                          DataBinding.FieldName = 'DATA'
                          Width = 115
                        end
                        object cxGrid5DBTableView1DISTANCIA_TOTAL_ULT_PTO: TcxGridDBColumn
                          Caption = 'Dist'#226'ncia Trajeto'
                          DataBinding.FieldName = 'DISTANCIA_TOTAL_ULT_PTO'
                          Width = 63
                        end
                        object cxGrid5DBTableView1DISTANCIA_AVISO: TcxGridDBColumn
                          Caption = 'Avisar "X" Metros Antes do Ponto'
                          DataBinding.FieldName = 'DISTANCIA_AVISO'
                          PropertiesClassName = 'TcxLookupComboBoxProperties'
                          Properties.KeyFieldNames = 'CODIGO'
                          Properties.ListColumns = <
                            item
                              FieldName = 'DESCRICAO'
                            end>
                          Properties.ListSource = DS_AvisoDistancia
                          Width = 84
                        end
                        object cxGrid5DBTableView1DESCRICAO_DETALHADA: TcxGridDBColumn
                          Caption = 'Observa'#231#227'o'
                          DataBinding.FieldName = 'DESCRICAO_DETALHADA'
                          Width = 260
                        end
                      end
                      object cxGrid5Level1: TcxGridLevel
                        GridView = cxGrid5DBTableView1
                      end
                    end
                    object Panel15: TPanel
                      Left = 0
                      Top = 0
                      Width = 145
                      Height = 126
                      Align = alLeft
                      BevelOuter = bvNone
                      TabOrder = 1
                      object rzBtnGerarPreRota: TRzBitBtn
                        Left = 0
                        Top = 65
                        Width = 145
                        Height = 30
                        Align = alTop
                        Caption = 'Gerar Trajeto'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        OnClick = rzBtnGerarPreRotaClick
                        Glyph.Data = {
                          4E010000424D4E01000000000000760000002800000012000000120000000100
                          040000000000D800000000000000000000001000000000000000000000000000
                          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                          7777770000007777717777747777770000007777111777444777770000007771
                          7177777474777700000077177777777777477700000071777000000077747700
                          000071770788888807747700000017770F77777807774700000017770F777778
                          07774700000017770F77777807774700000017770F7777780777470000001777
                          0F77777807774700000071770FFFFFF707747700000071777000000077747700
                          0000771777777777774777000000777171777774747777000000777711177744
                          477777000000777771777774777777000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object rzBtnAnalisePreRota: TRzBitBtn
                        Left = 0
                        Top = 95
                        Width = 145
                        Height = 30
                        Align = alTop
                        Caption = 'Analisar Trajeto'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 1
                        OnClick = rzBtnAnalisePreRotaClick
                        Glyph.Data = {
                          DE010000424DDE01000000000000760000002800000024000000120000000100
                          0400000000006801000000000000000000001000000000000000000000000000
                          80000080000000808000800000008000800080800000C0C0C000808080000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                          3333333333333333333333330000333333333333333333333333F33333333333
                          00003333344333333333333333388F3333333333000033334224333333333333
                          338338F3333333330000333422224333333333333833338F3333333300003342
                          222224333333333383333338F3333333000034222A22224333333338F338F333
                          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                          0000333333333A222433333333333338F338F33300003333333333A222433333
                          333333338F338F33000033333333333A222433333333333338F338F300003333
                          33333333A222433333333333338F338F00003333333333333A22433333333333
                          3338F38F000033333333333333A223333333333333338F830000333333333333
                          333A333333333333333338330000333333333333333333333333333333333333
                          0000}
                        DisabledIndex = 1474
                        ImageIndex = 1474
                        Images = DM.cxImageList16x16
                        NumGlyphs = 2
                      end
                      object Panel10: TPanel
                        Left = 0
                        Top = 0
                        Width = 145
                        Height = 65
                        Align = alTop
                        BevelOuter = bvNone
                        TabOrder = 2
                        object RzPanel13: TRzPanel
                          Left = 0
                          Top = 0
                          Width = 145
                          Height = 23
                          Align = alTop
                          BorderOuter = fsFlatRounded
                          Caption = 'Escolha o hor'#225'rio'
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clHotLight
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 0
                          VisualStyle = vsGradient
                        end
                        object wwDBComboBoxHorarioTalhaoDistancia: TwwDBComboBox
                          Left = 14
                          Top = 29
                          Width = 125
                          Height = 21
                          ShowButton = True
                          Style = csDropDown
                          MapList = False
                          AllowClearKey = False
                          DataField = 'HORARIO'
                          DataSource = DS_HorarioTalhaoDistanciaRotaEntradaCana
                          DropDownCount = 8
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ItemHeight = 0
                          ParentFont = False
                          Sorted = False
                          TabOrder = 1
                          UnboundDataType = wwDefault
                        end
                      end
                    end
                  end
                  object Panel18: TPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 226
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object cmSelecaoPontos: TChromium
                      Left = 0
                      Top = 0
                      Width = 806
                      Height = 226
                      Align = alClient
                      DefaultUrl = 'about:blank'
                      TabOrder = 0
                      OnLoadEnd = cmSelecaoPontosLoadEnd
                    end
                  end
                end
              end
            end
            object tsNovaRotaConfirmaRota: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaConfirmaRota'
              object RzPanel11: TRzPanel
                Left = 0
                Top = 137
                Width = 806
                Height = 23
                Align = alTop
                BorderOuter = fsFlatRounded
                Caption = 'Par'#226'metros e Confirma'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsClassic
                object RzBitBtn1: TRzBitBtn
                  Left = 2
                  Top = 2
                  Width = 27
                  Height = 19
                  Align = alLeft
                  TabOrder = 0
                  DisabledIndex = 1984
                  ImageIndex = 1984
                  Images = DM.cxImageList16x16
                end
              end
              object RzPanel12: TRzPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 23
                Align = alTop
                BorderOuter = fsFlatRounded
                Caption = 'Informa'#231#245'es da Rota'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                VisualStyle = vsClassic
                object RzBitBtn2: TRzBitBtn
                  Left = 2
                  Top = 2
                  Width = 27
                  Height = 19
                  Align = alLeft
                  TabOrder = 0
                  OnClick = RzBitBtn2Click
                  ImageIndex = 1076
                  Images = DM.cxImageList16x16
                end
              end
              object RzGroupBox4: TRzGroupBox
                Left = 0
                Top = 23
                Width = 806
                Height = 114
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                object Label5: TLabel
                  Left = 128
                  Top = 33
                  Width = 178
                  Height = 16
                  Caption = 'Qtde. Pontos Monitorados :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 449
                  Top = 30
                  Width = 180
                  Height = 16
                  Caption = 'Qtde. Pontos de Interesse :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 128
                  Top = 10
                  Width = 92
                  Height = 16
                  Caption = 'Equipamento :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText2: TDBText
                  Left = 310
                  Top = 33
                  Width = 115
                  Height = 14
                  DataField = 'QTDEPONTOSMONITORADOS'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText3: TDBText
                  Left = 635
                  Top = 31
                  Width = 134
                  Height = 14
                  DataField = 'QTDEPONTOSINSTRUMENTADOS'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText4: TDBText
                  Left = 226
                  Top = 10
                  Width = 535
                  Height = 14
                  DataField = 'EQUIPAMENTO'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 128
                  Top = 58
                  Width = 107
                  Height = 16
                  Caption = 'Sa'#237'da Ind'#250'stria :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 128
                  Top = 84
                  Width = 128
                  Height = 16
                  Caption = 'Chegada Ind'#250'stria :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 449
                  Top = 58
                  Width = 142
                  Height = 16
                  Caption = 'Chegada na Lavoura :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 449
                  Top = 84
                  Width = 121
                  Height = 16
                  Caption = 'Sa'#237'da da Lavoura :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText5: TDBText
                  Left = 241
                  Top = 58
                  Width = 126
                  Height = 14
                  DataField = 'DATASAIDAINDUSTRIA'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText6: TDBText
                  Left = 262
                  Top = 84
                  Width = 126
                  Height = 14
                  DataField = 'DATACHEGADAINDUSTRIA'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText7: TDBText
                  Left = 597
                  Top = 58
                  Width = 126
                  Height = 14
                  DataField = 'DATACHEGADAFAZENDA'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText8: TDBText
                  Left = 576
                  Top = 84
                  Width = 126
                  Height = 14
                  DataField = 'DATASAIDAFAZENDA'
                  DataSource = DS_ResumoRota
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object cxImage1: TcxImage
                  Left = 31
                  Top = 30
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000080
                    000000800806000000C33E61CB0000000473424954080808087C086488000000
                    017352474200AECE1CE90000000467414D410000B18F0BFC6105000000197445
                    5874536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00
                    003C7749444154785EDD5D07785445D75E4454FC1051E9BD28453A0888802020
                    220802D24B02A487000112420A107A0BA193002984DE7BEF1D420F553A88F426
                    8882089EFFBC939D65F6E6EE66B3D9047FEFF3BCCFDD6C76EFCE9DF3CE697366
                    AE81880CFF5F60281494C79037B086215F506343FEE00E86BC21DDF875B0215F
                    C85043BEE02043FE909E86FC41AE86BCC1EDF8754343BEC0E286CAEE99FEBFDC
                    DF9B68E7BF56F82CDC122CD4DE8C18C67EC62306D981974C96CBFCBD4D7C1EC3
                    C4A8633084BEFD263AFBDFF89BFF2A02F068AEC0A379300BEAB41D824E09391E
                    F16FCC139AA260BF8FFE8D8249AF36BD5102180C860CACA6AB8B91992FF8521A
                    0BDD024182FE66D2ED60F2F581D649AF8EFFB7FCCE1B21802157481116FA24EE
                    F41B6F46E8564DC94926444B90F3DF22A4B46C47BA10C0C5A5D7C75D3D7A976F
                    D03AA0D607C583E258E87FA55EF021642836980CA5C790A1E278327C3E8AFF1E
                    4A86FCFD53620A2C7E3663C1C0B385BFE8E7D9D9DBBFC2BF1CB9534390342180
                    B3579FCA9D3DFDFB397BFA2DEEECE577D9C9A30F556D1840EF160E4A99700A0C
                    204325166E8D1964A83F9B0C4D9690A1F51A32386F2583FB1E3278EED347D79D
                    64E8B8890C2D5793A1E962323498C7D7984E864F992029742473950DA0C66DFD
                    89EFE3DF8C1BDCBE559D3DFD0676F1F4AB9B1242389400EEEEA1EF77F1F69BC0
                    8DF9477658DD667D296BF11408BED04032549D4A861F9792C16D9765215B127E
                    72EFB7DF4086BA716428339AC9C05AC44642E4AFD8979A75F857934025E82277
                    F73ED96D2182C308E0ECE95F83857E5E0AFE8776FE94AB6CA06D1D5C781019AA
                    4792A1F90A1ED9BB75859E81059BBDCF412A33F818D51F7F9A3AC69CA7DE8BAF
                    D088F5BFD2E4EDB768C8DAEBD473E165EA147B9E1A4D3A435F8E3A4125071EA5
                    5CFE87E86D6F0B9AA2CB7632345A4886CA13C95090B54D3264C8903F986A350B
                    A7E8D9CB69D1F235B470D96A81054B5709CC5FB2D284798B57103077D1728139
                    0B97D1EC054B0566CD5F2210376FB10933E72E222076CE428198D90B04A267CD
                    17888A9B273063E65C9A113B87C64E9C46010386938B4F5F7DCDE4ED7FBB4B37
                    BF1F9323814308D0D9CBBF150BFE1584CF6A9F4A7F1D906C678ACE2E1F4E869F
                    5691C1636F12A167EE7E807E987286A6ECB845FB2E3DA10B77FEA44B779FD145
                    232EDD7B4657EE3FA36B0F9ED3AF8FFE12C0DF3FDFFE93127E7D4A07AFFC4E3B
                    CF3FA68D671ED1E223F72968C535418C7C0187F5B58A2B6B9BBA33C9000D940C
                    11F2561A4E9B779CA07BF7EED1DDBB77E9CE9D3B74FBF66DBA75EB16DDBC7953
                    E0C68D1BF4EBAFBFD2F5EBD7E9975F7EA16BD7AED1D5AB57E9CA952B74F9F265
                    BA74E9125DBC7851E0C2850B74FEFC793A77EE1CFDFCF3CF74F6EC593A73E60C
                    9D3E7D9A4E9D3A45274F9E143871E204252424D0F1E3C7E9D8B16374F4E8513A
                    78E810ADDFB8992645465317EFA4A6CAD9B34F1F6B244835015C5D7BE662C1DF
                    87F03BB8F951FE4AFD92ED404389113CDA9727114456DF786A3DFD1CC5EDBF43
                    BFB0606FFDF617DD79F2821EFEF1373D7DFE92FE7CF12A117FBDA23FFE7A494F
                    017EFF77C693678978CCF8EDCFBF051EF1F7F05DE0FAC3E774F8DAEFB4FAC443
                    1ABBF90639C55EA0CAC313E87F3D0E98B7A3EB0E32D48A224301EBCEE4BB45FA
                    D3F8691BDF38018E1C3942870F1F1658B76113F50A1CACD508CF9DBB0594B644
                    825413801D8F15107E4B673FFAA864322ABF08ABFAEFE79B8DF877BAED27E799
                    1768F9B10774FFF74461437010E63316F65F7FBFA2E70CBCB657F80F9EFE4DF7
                    01BEFE3DC60D26D61126C3CA84073471DB4D6A39ED67FAA877BC39119CB7259A
                    A5FCD6FD04975E7379F4DFA1478F1E99F0F0E1439278F0E001A9B87FFFBE4973
                    480D022DA26A123D6D22350A3408B405340334804A0090E0C081781A3F658619
                    099C3D7A1F0D0DD5CF7EA68A005DBCFC3A42F88DDAF8D37B45AD387A057934D5
                    892503D4ACE2A461B4FF7CEB4F319A318A31B22170092978217C39EAF973EAA8
                    D71DF12C6CADD0EFB2268136B9F3F805DD6640BBDC64DC60D371F0EAEFC2D434
                    9D7A96B2F5D21001D14495C9C459438B9AAD46D34974F1F2AFF4ECD933FAF3CF
                    3F93E08F3FFEA0A74F9F9AF0FBEFBFD393274F041E3F7E4CBFFDF69B208F1E71
                    401895345A7303F3A1250188306844B81909DA3A7B8DE4DC4646AD2648150158
                    F87BBE6ED2973216B0227C8471184D8AE06B8C3E497B2F3EA1E72C58081FE717
                    2FFF61988F78ADE04112A9EE217808F9F6E3BFE81756EFF009CEB1FD878F7099
                    5FC337B8FE3051C810B8103A7F5608DD2878F80D300DF83E3EBFFDDC6F3472C3
                    AFF43DFB0A4988D06C995547317FE5E1B47DF7498BC287D041025B852F056F49
                    F8D2DF8066808F01DF409A029C77EEDA4D1EBE4126123879F4BEC30428CCC8AC
                    92C06E02D4AE5DFBED72DF04BCB0EA30D58C6675FF3A5EFFB4FF515AC20ED9CB
                    57FF08A16384FF2D04FF0FFDC5C2C7DF785F2B78D8F3AB2CA013BFFE21EC389C
                    423878DBCF9963F785A4EFC9CFECE2FF1DE2917EEAC61FC299848F01A15FBDFF
                    9C9DC7E7823420D1853BCF68159B867ECBAF52EDB1A728A397124174D84886E2
                    C32D6A82CCC506D0CC05BB4C2490231F4297D01BF9EAE887B99042B745F8D2D1
                    84B309B3A09260EE8225665AE0F372956A32018A304C936176132073D1A04516
                    850FBBF9FD02D3A87FD7673F856FB9214638848FF3DF7C36095F63E7FF6075FF
                    98850EA140685BCEFE469B75B0978980D10B82E0BA38E02760B49FBAF987EE77
                    E475B6F168DF7FF9091DBBFE54688E0B4C8AF32CFC731C6D20920051661FB84B
                    6DA3CE9B6B0324992AB056B3102980046B361E140297235E4B0055ED5B123EFC
                    036D94A1FA066A94A1461A880E5412F4091E6A22419D064D0258F8C51879A416
                    B08B006C0F7D2C0ABF3087512D39B433AAFC9CFE0785BAC7012149240ADFA8F2
                    8DA31E428720F6B360D79F7A6415F01DA4D0C5C5750E387CDB7FFE2DD96BE1B7
                    A03DA061CEDCFC934E33794080938C6DFC7DAF7997A858C891D7660C5AED6BD6
                    6E164890B3DC10DABBFFB8B0EF52E5CB735A095F869AF00954028C191F612240
                    D3969D66B3F02B1A499015244831010CF9036BF38DF30C9A8E53547C58620AD6
                    287C246D109BABC27F651CF950F970F6A0EE11CEA1D3D79D7C28C2B4E40087CE
                    D603E665079B8AE4AE29FF0F6D831C027209C7593B1CFBE52941D3F45D7A95AA
                    8E38619E54FA81D3CC707075FAA2D4D7A328E1C4693312D82A7C6B5181A5918F
                    1C83846A0AE2E62E3411A0B593E73E163ED743184A1A4DC15B292280214F7021
                    BED9BBBAC22F3B960C88A18DC247D205A11C0EA87B8CD657FF281A80FF060160
                    87D79D7A48CB8F3FB009275830293DEE3FFE9356D8787DD98E354CC6DD1713FD
                    064409072EFF4E43D75DA7BAE34ED1073D95DC419BB59C33D0CF22D66D395124
                    75E0E5A744F8F0F4A5B76F8BDA57858F3011BF29B5C0064E12C9EC6CAB4E1EC7
                    58F0DF30AA1BB540669B0960C81BFA3E0BFE98AEF04B8D34CBDBFB2EBA6252CF
                    52E59B099F47E593677F0BA70B233F8147DA2E76EA56B29090B5B384F54C94E4
                    D4BE2572EC49B844F30EDCB47A7DBDDF5DCB44D8CB4480E3B987CF53395C442A
                    DA2C8184790B0B6162971E3122D327433D6B365F9B0BB055F810BA9A6554CD40
                    FCC1832602B4ECE89EC0826F6824C1677CCE663B01F285CCD7157E915032386D
                    11231FF9FA889DB74C3230095FB1FD50F957D92C481B8B110D750B1240E56E65
                    9BBBE0D03D9AAF037CC7DEE3F73F9ED1E098F5BAD7D5FB2DF5BD8587EF8994F2
                    8EF3BF895011CE619DF053F41E3BB7A6F0B6DE2C8B3EC1A0D18B44FA37B5C2B7
                    945AD64B31AB7E40D76E89F3053F75703BC5426F6E24C0E77CCE651301B8D032
                    4057F8F0F65BF194AB51ED87AEFEC54CF8B0F700880033F03B9B8433B778C41B
                    EDABB4B1477FF95D64E610E2017B2F3DA62547EFD3ECF8BB66F8F5D1737BE52F
                    BE37306209852F3F9CE4BADADFB1F437DAB48989004CDA7E93BE189140C8649A
                    48508D673175FC81770AF7A79839EBC5DC00923D6AA8A7379FA037F22D095FCE
                    2DA8F30BD0006A346022407BD7332CF436460254E073A16409C0553BF5F8A65E
                    E912A021CFB31B85DF2CE22CFDC3365E3A7C52F052F8F79FBE1023FC283B5510
                    B614B8B4B1F1579ED001064233008E17D46F2CCF0BC4EC4B04B281A93922176F
                    21DFB0B9347DE775D335E5B56D3DCFE4F62085BC869D554C30951E74ECB56388
                    99CC32EC0BE990A048B561141F7F504C1AC9F85E4FF848F0A8491E083EA5C247
                    AA584D0C4902B468E7729685DE815197518D51D42A01B87AF62DB66DA77485FF
                    D53493F04B851E7BEDF0B17DD70A1F2317231BC21602672F5B08DC286CD85708
                    1CB616E11880C40D923D5BCE3EA2B9AC09A6EFBE2D9CC6D41C51CB7750B79171
                    3476D529713D7B3183BFBB88CDC2B263F7A9CBAC0B8404972961D4851DE14F39
                    1AD22141EF909962264F2FC65705AFCE2626277CCC2ACA994575565125809C32
                    6602FCCC42EFC4F8CEE8082643807C414EFA1E7F98A9220729D3F39C3C11DE3E
                    0B5F8DF511E723AE4F1478A2278DD12D05BE87F30300842D05BEC398E143FC0D
                    7F0061D99CF87B3475E76D91C24DCDD13F6219790E8FA3D0B9FBC5F5520BB46B
                    DEC17BD4503BCDDC9E33863AF5051F951A40EBD66F124EA1761A596F2AD95EE1
                    634A1944937EC06B02743DC782EFC2689C2C010CA543DF61E15F494200387D28
                    A460D5FF16A749A1A6A5F0550220AD8B440A923A42E04661CB118ED10D204687
                    632504CEC21659BF33BF093B8B044DF49E3B3C63774B0031B9BDC7B3E72FC86D
                    689C80FFB44DA66BCA6BDB7B8EDE7B87A6EFB94D55466AA6962D38856DDD26D1
                    BE7DFB44BD80B4F5AACA9771BE9EF0F59C3D90495B4F608900CDDBBB9C67C1BB
                    DA4680FC21DD7547FFB7734CAA7F18C7C552F848B8487B8FD708EF1247B8F9E8
                    86C0216C00C25605BEF1F423DA60CC00AE4A782866E8C2B7DC3461E1E1FB263F
                    23A544D873FC02B90C99291010BDD3ECBAEA6FD8F33A72D76D51919427E09018
                    14C22F72637FA0D89024A6E0DD2221347BEE3231422DD9FBD40A1F79003D0D60
                    33010CB9FCFEC7C2BF938400A8BA754B9CDC2937E478A2C0319183499D5789F9
                    7DA87DC4F73B8D365C8E70A873A9D2371B3D692170061241C802429BC0B95ACA
                    B6751C0B7EF4A61B4970C40E2DF0F0F153F21A39973A0F8A15089E7758F7DA7A
                    BF67EB7B93B82CADC18433E649A21F16E9FA02DF341F4D5BB76E15B1BBB67A28
                    25C287B3A75612A9D5446A14E0EA1320C240DB09902F384477F4377A3DC18319
                    33083F712A17B37A7C662260BA35A94A4F0C9D206C8C70085C0A1B025FCDA31D
                    492064EB106A85B1E08773AD9F1E466FBC41F79FD8EE0B2032193D6B23751A18
                    6BC2C065E72C5EDFD2EFDAF2FEA035D72907CF7DBCAE41E452B7D2283E354F9B
                    BF552098264C99CBC51B07CC4AC730A9A32D21B3A4F6A5E0651999B694CC6E02
                    F04A9D4F78D1C6E32404C034A8B1760FF3F952F8CF5EBC3409FFE11F2F846A57
                    4778E2A48E51E0C611BEFAC403114A89F42C5702C19B5ECA825FC459C0312CFC
                    C1AC4EAD019F89FFF9D764ADC0DD874F6848CC3A6A3F20C604CF09EB92BD7E72
                    BF6FE9FF4815A39600F58CA6DC402B2E63D78908CAD71D461B366C10758052F0
                    29153E842EA1AD23548B444C1AA09D0D3E80719956D24637E574A731E68790C5
                    240E1768C8193DBC865387510E81ABA31CDA0290F978217006463BD2AF08A916
                    30466FFA95067032C916042FBB4863176CA79FAFDEA63FD9C1930746FCCD7BBF
                    D1BA7DA7C879701CB5098936A1C3E03914BCFC924DD7B7A50D7A9F095E798DCB
                    CB0EBEF605D0679527E992206C421CEDDDBBD734EAD5E2D1E446BE35E1A380D4
                    06027C95240F60F4FC9F24616C295E75E39958B9DB70E21993F0FFE4D12FCBB7
                    E0ED4BB56E69844B8123B52AD3BD08A310E7635423B19212F48C3B4A6D06C451
                    ABA068EA1EB68882225651A7D0C4BFB5683B6016F59A9D90A2EBA7A42DEA671B
                    4F3E6B5E5FD871B36E6D6193F6A369DDBA75A20238A5C2C788B756416C4680EE
                    461FC05C03E810206F48035DDBDF62A529D78F040E46FB139EBB97059BD71E24
                    56D1483BAE37C22174E4D785C00FDEE5D89ED3BC9C539F75E08E48ABF65D76D5
                    2EF45E788E3A8D5A492D02A32C02FFC7E7ECFD8D947ECF9FA78E3FE1350C662B
                    9774D2C479CA0FA0850B170A2DA09DD1D3A676B565E32080A5F2F1241AC09C00
                    6EC630508F00411393DA7ECE6A19557F2B2EE284F051B8216AF9D8E9FB93CF70
                    F0A41D172AFDC83D5247B956E028FB9629DE69BB6F91FFD22BD47B49EAE0157B
                    94BA4CDA4E1D46AFA6D68317528751ABF8EF6DE4157324D5D7B6A76D35C69C34
                    27006A0A757C8161A3A60A5F00EB036C51FBAAE0F5D60EC835047A1AA0453BD7
                    0B2C7C2B0440E28757BF980135F24602C0B94BACB77FC1A557A8E27D49E7B97C
                    0ACE1B627473B57ECF38C2EF729DFF5D9AB9EFAEC8BF23B113C5401A761AC7CF
                    509D3D165EF9CFA103AF5C32D300C80B14E2BA014DFFFED06E182D5EBC584CDE
                    68178DE82578E4A8B7267C4B1AC02A010C0542CB64E0C5105A8805964C808FD9
                    B179C0133A003400848F0A5D38768976FC9E50EBB358AD0B8133622170CE9441
                    E0C89F4F6320693295A78C91E441F2C47BFEE5FF2CB2F5D29881AA5392F46F81
                    CA5C483A73A6C80B68F3FAD6560C69570DC991AFA701DC7AF4137900AB0478AB
                    E0804006A9C85094975F1B57E1B68D3A974800AEB343A50F4C00E6F0851D378E
                    F05816768C227039CA2390776781630D1F1226588C81D5391E732F91FB9CA4E8
                    B3E4AAB14C3CB162D85140F4A2F77B69F55E85A109E65AE0C72566FD2BFB7AD8
                    C849B47AF56A1112EA4DECA8F63FB9916F9500ED5D2E5A3401190B0DDCFB16AF
                    8B5391E1CB08D30D40B0A8C503094000ACDEC1C8C7FB18E533381F2E05AE8E72
                    29F0092C7464F7501D0CE1F7619BDF75D6455DA0A2282D0E24A82CFD665ABCDF
                    84179A9899015E189381574769FBB959C761347FFE7C11BA6909A097E993A31F
                    B57F12366980A4042826A6830D9F0ECF91B148E82B06A9C8608CFD3379EF170B
                    2E90E57B0813C0E55C07391A80D013D5FA2D510904B53E9901AF5E087CEB6B81
                    87B1D091561DB9F1571AB4E61772E2E56096D07DC1E5B4903F6D3C7E835A84ED
                    A096E3765BFD7D6B6D4BE9FFDED7AC3D7C8BCD80B69F8B560F156660DBB66D56
                    178D6AC33E1041852483769188C904582240C662839CDF2E3A885464E4BF0D2E
                    5C03CFF6BF56D849217C2CA74261071C41246F60CB13D5FA4DA1D627B0C0C719
                    4738D2B988ED47B1C047F06A1BA45231793494EDBEFB9C8BD43EFABC45A00C3B
                    2D8E957B4ED3D7DD23A96E9F58ABBF6FAD6D29FD5F715EA2AE6A810CBCC985B6
                    AF33150BA57113A6D29A356B841990AB86E5CA616DBA571B09C02CA8A6010EA5
                    1A05B87537FA00960890A9E8E0D99978BB151519BFE035F346EF7F30E7B8B184
                    0ACBB0B0C0126480D0C7B3C001A9D621F0D12C702CAF82D021F0819CD9034279
                    D4E38C18B9F58C7356E1C604498B63C5EE5354D327826AF78A4DB60DC9B5D1D6
                    FF571D79C2DC0C70C188B6AFF177AF7E61B464C912318BA79A01BD48409B0554
                    0981EF0358382AEB0124017EB248804F87C467FA7408A9784B99F6C594EE554E
                    F6DC6102DC633F00953CB0E31038048DF4276CBA0FAB6ED7D917C5260D6D58C8
                    CD237FB60B2DA7FF4C019C1802DCC7AF2397D14B4DD87ECC7EEDB06CD729FAD2
                    7B2AD5E8196357BBECB99F24F9001E546F971866D6D7E8F7565D86D1BC79F344
                    52C81201A009F42009013F00EA1F481101DE293EF4018354BCD584173D7063B1
                    AC0B8B3BB0960E2B69410264F40278ED5CE7B80BF423D702C2D9492B54F78DA3
                    2A9E534D58CA42B4F7C07771AD2F7B44A7597BB5FD5077DC69730DC07D9AA942
                    B8595FA3DF6B361D4CB1B1B116FD0039F5ABCE02AA648009503792302380310C
                    D4D50086B2233E7A9719A9C55BC6E55DD851030E204C00CAB9F11AEBE931EB95
                    1EF8AAEF12AAE63BDB84657BCFD92B7F5AB2F31455729F4255BA45A54BDBD13F
                    A811D06E6695E9CBA949FABBC4D78368FAF4E9222B08B5AFEE1E22AB7ED4B396
                    10DA88409D0E964EA02E0132151F51E5DD9223488B0CD84C89D95A9E0B3FB00E
                    EF2CCAB939EE47E2E7DB09A7DF18B084CBDE63F18E9354C16D3255F28E4AD7F6
                    67524BC761026AC726E9EF9C9586D0E4C993CDF2016A6248750CB55BCBA84EA0
                    8C0A7409D0C1F592260F50CC90B9D488E6EFF1CA1E2D0C9D13EBFEEAF15228B9
                    7A0725DDA1ABAFD337E1A7DF18502A66EFB168FB492AEB3299CA7B46A56BFBB3
                    F434DF74E2ED867393F477B672C368DCB871B47CF97211DB6332480B49089518
                    D2015453C42084CD0478AFCCA84E994B8F222D640610BB7860E41FBDF6549474
                    6377AE5A61A7DE18A081EC3D1630013EEF3289CAB8CF48D7F67FAC9919CCC84B
                    C9B4FD9DA5EC481A3D7A342D5AB44838709817D0832405480033A04604324FA0
                    AD0974EF11685C19A4A301DE2F33CAF37DDE334F45E6F2BCB8C118027A72BA16
                    C297A5DD8D269FA1EA5C11F4A6800A227B8FF9DB4E5289CE93A894DBF4746D7F
                    AEBE87CCFC80B7B84A48DBE7F87BE8B0112223788877FEB24400396124C343AD
                    532809A116855A25C0FFCA84F579BFEC1852F15E55AE6031122070F935217C59
                    DE8DFDF7AAF032E93705948ED97BCCDB7A823E759A48C55DA6A76BFB73F25E85
                    66C9A04E9BCDFA5BF67DF0806134776E62ADA0DC564EAD1390AF31FAB58EA1D6
                    2954B381D63540B9B103FF572E8C54BC57E3F5AA1F2476207CD4F3A3CCABE2B0
                    84370AD41BD87BCC650214ED38818A759996AEF790DDCF7C563003AFABD0F639
                    FEF60F1C4A73E6CC11EB06502124013248C84211759F41993154D708D84C802C
                    15C38664A930965464AE1D256ADA0064F920FC1DC655B1880ADE241671DD81BD
                    C79C2D27A870870954B47364BADC03968C611A3D23EF542AFB13E7B73B6D32EB
                    6FD9F781214368F6ECD9B467CF1EB3425159340A0DA03A867A4EA1248319017A
                    5AF1013EA810EEFF41C57052F1BFAF22B9B479BF403FCEC661B916A652C76DBD
                    C15BB51E7FA340E189BD070850B0FD042AEC1C9966F7F0F9A0E35420F030EF1F
                    106FEA43D997F2FC4EBB7566FD2DFB7EC0C0D704908B42E559DD6954F50F2C11
                    02BB8ACA54B0BB24407BB7CB49C2C00F2A8D7763908A2C55268965CF4017CEF6
                    614107CABE50BD83B580F9FA1DA6123CC98145A1E90D541DD97BCCDE7C82F2B7
                    1B4F053B4538BCDD18ED39FD0E893D0364DF593ABFD76AA5597FCBBE1F3468B0
                    4903608998842C18956640EB17E811C266027C58797CABAC95279016EF7AEE11
                    69E0C6ECF58B451D6CFFBD79960EEF01EF75DFCFEA2D9EF233DB3F1B70948AA7
                    13E6730D82BDC7ACCD0994B7CD38CAD731C221ED85D071FF1814B25FB467F493
                    F6BDF79B2F4DD2DFD9BE184743870E154EE0FEFDFB4D7B0ECBB502AA4F608D10
                    920C480BDBA4013EFC62F2B71F5699485ABCEFB25D2C70A8C6B359A8F5C70A1E
                    179EE8C17B5A60BB14ECE45D30E888582A9D9640118ABD070890870990B74384
                    DD6D2C1C7C8410D6A1DC0B73FD7AFDA1BE87BED17E26CB0F0B93F477AEEAE134
                    6C58E284507C7CBC5837A8EE0DA02E1ED12385EA284243A804901B46FEA46702
                    B2559952211B877D5A6471DA20F6C1C1F668A8F747D9B71FCFF8E13D6BC0064A
                    2889CECD9D5490474751FEBE23810A637B8FB84D0994ABF538CADD7EAACD6D2A
                    C20287C9CBC19E3C36B34EEEFED5FF67E1BE407F68BF93F5FBB949FABBD83723
                    69E4C891B460C1023197AF9A00F95AEB17685714A95183BA539889001D5C93FA
                    00792B4F7B3F5BB549FF64AB3699547CD06E0D65E11BFE8885B98A47FF324EC0
                    A08813EFA50459593D2213969309918F0951883B343540E1A9BDC74C26408E56
                    E3282713C0521B0AB016CBC302477BD1EE0FB8FD29B95FF5B3B8F70F390AD07E
                    3FEBB733CDFA1AFD5EA9D1500A0B4BAC09401A576E3BAF3D6B89A192425D5B88
                    390169022C10A086D8298C3BD3F051F5295718A4E2C396CB083700A0D217AB7A
                    50F523DFB3F7FC21FB0DE858C4C650A5B97849755EEE70D8D20241C903FBF7D8
                    7B8000D95B85538E7653041973F36FA30D680B888EB6D97B5F7ADFC37D66D3B9
                    66B66FA2CDFA1AFD5EB7D520D35C0072F972E9B8F66C8D102A195244808FAB4F
                    5DF7F1575349C5473F2E148D0750CF87C51EB1FB6EB3F012DF4B0B7CC4D7C6F5
                    2110EC309AABAF44A2A020B0385E4964EF11BDE13865691646595AB2C94BA37B
                    50AF8B3627E92F5F769E6B449AF535FABDB953084D9C3851CC0622BED7EE1588
                    CD2424AC91426A0890C8A4015EE7015413F05A037C5C73EAD88F6B4470C35EE3
                    23565360308050307159D75D3152E5FB6FE28CB506F61E51820063E9839693D3
                    FC1E3E611243A3E16CD64F2E5BCCFA59F6B947F7208A888810F50050E572B750
                    75D750490A751349759711759B197D02B85D51F2000A016A44B6F9A466242581
                    CF6E7103E5861E17EBF9600A2A0E3F2EDE7B53480D01A0013E00015A4D4EF3F6
                    63B710F819DA7EFAF8A7A549FAB9409D700A0909A1989818DABE7DBB18E97223
                    29F56C8D145AEDA0EE16EA61D2002602FCC044784D80EC35A23FF8A4D6B4E7D9
                    BF9E4E2A727458C31B1E1C12404D3F3ABF01AF0E86CD96EFA7F719DBB4D97B80
                    00599B8FA50F990069DD6E848B088BB5BF93BDFE4CB33E467F576B1A4A43860C
                    113900CC0340E8EAF302D48746582284D6649811C0F8DC00DE28526A007302C0
                    11CC5E2B727D8EDA33C80C8DE6263A6A0CD4FF45F13A00ACE6415827DF4FEF33
                    1696DA7BC46C3C4ED95A8CA56CAD27A769FB31FA510E0E73A9F64F4ED6A849FA
                    98FBBCA5933F8D193386962E5D2A1E0C253793D43E6E466E30A97D9884DEA367
                    302D9C340AB042801CDF4475CD51278A5464E749A1DCBDF68ACD8FB02B2656FE
                    0C5F7F9D4AF1E688F9FA1D12EFA737B09CDCDE0304F8E8A7B1F4719BC969DAEE
                    223C40D04779357D94B3236B544D1FE7F926827C7BF5160E20D60520A163E9F9
                    437ACF21B244063D02B4EC688500F9EAC57D92B34ED4CB9C1CA2A8C8DD65BD50
                    F9001679608D1F8A418A72C64FBE9F9E67F821F61EB11B13E8E39FC2E993B653
                    D2B4ED107E499E27D1F64BCE260BCCFA16FD5CF6FB61141C1C4C3366CC100B44
                    319AB1B1B4162A296C79BE102A86B51AC02A016006727E337D77AE7A31A42277
                    B34542950178BA17168460A168599E1696EFA7E7198B51ED3D40804F5A865376
                    26405AB5F9539E13A930ECB8981F517F239F5F3CE5D4F42DFAF9FBB6FDC41C80
                    4C01635B793D5823845633402BA804F034FA00C913A0EE34DFDCF56349452EFE
                    BB40DF78E1D054E17901AC04EAC54FECAC349C9FCCC92CC7FBE989D46602B323
                    13D86E6A9AB4195E3F0A66D03745438E9AFD467EB7CD66FD8A3ECE533F86BC7D
                    7A8B04D08A152B44FC2F9F29A477D6124392426B32E02BD84580FC75E3F2E5FE
                    36F69FDC9C035091DF6523C1AB05BACDBFC44BBFAE8B47B3A22CAC189B02F9BF
                    F438A79600399900B938159C166D45AD04968255E20752AAD72FC4F9803C3FCC
                    33EB53F46FC946E114141424D4FF962D5B84E7AF7DBC9CFABC21F58963F29173
                    F241145A32A0444C9A80D71AC0FDAA310F90340A800900F2D48F3E9CA7411C99
                    81A381C2818708CE0D7202C399002D78710848809BC5FBE905474D0639BABD50
                    FDE80FE073F601D4EB1774DF6CDE9FC6FEFDB6ED001A3122B110143380103E9E
                    34A64225847CAD7D02991E19EC2640EE7A51BDF2369C455A14ECB24E8C76A01D
                    AFECEDB7EC1A61DD1B509A992FFF97D6E7D44C07C7F174706E9E0ECEC3D3C18E
                    6EE717AC0DD117D59800EAB58B061FA67C4DE625E9CFC2DF4F67EFDF4F2C0681
                    F78FCA1EBD874ECAF72C9142EF7174D00AEA5343BC7A058BB2707E6248F21AA0
                    74AB45EFE4FD6EE6B5BCDFCF2133B0162816184F9F717CFB393F0C2A88178462
                    B1E4D7FCE48C1ABC7CBC78E851F1BFB4C6BC545404897A80B65C10C215418E6C
                    6759D68AE807001A52BD7661F74DE6FD68ECD77AAD83891FE72AD603EEDCB953
                    3C44C21A01B4FF9384B0A415F408D0AA930D048019C8557762E77C2C702D0A3A
                    ADE104C73181C653CE5277DEDCA90E2F7E04E020CAFFA5E5197312F61EB3B824
                    2C6FDBF182008E6A6329AE01ACCD82471FD4E00533EA753FE3D19F9F433F6D3F
                    16FB613A75F3E94163C78EA565CB12378E8640534200F5B32A19A446481501D8
                    51C898EFBBD8A3F91BCF2315F9F8EFE27DF75349B6718875BB2FBA4C3F4C3D43
                    F579AD200012E07F6909EC286AEF318B8B42F3B51F4F059C221CD24668C23ABC
                    744EDE7F058E00D47B2FE2BAC1ACFF645F7EDBCA5FC4FE515151B479F36691FB
                    B757F8968880EA60E9044A1360B3068016C8516370C3024DE69316853BAC1426
                    00A81D7E92DCE65CE0F981D3D4605222BEE07DF3E5FFD3E29C1A02CC66021460
                    0214748E48751B4B1B852FEF1B4450EFB764C8212AD0744192FE2BD13492BA75
                    F311A95FB90C0C42C483A7AD2125048146483501580BBC9DF7FB196BC54D6850
                    D26F0F95E14410D094F707001AB14900BEE722D2CAEC10C9FF3BFA9CEAB2705E
                    175098D705A4B65D10B87ACF88864CD76472146173A9D7778DDAF6A1FEFDFB8B
                    D06FD3A64D62DE3F39E1EBFD3F394220A7A0D5002D3B7A5C4B360C94E120CE9F
                    54EC5EB940D3F97F15E4E2101585784AB34CFF43C2E1015A4442F867D81C9C15
                    68CCAF317720FFEFC83336A5B4F798C32B830AF3CAA0224C80D4B409CE9EBC57
                    9CABB3F7AF5EAFB8D716B3FE927D57BA7904F5ECD953D87EB91D8C2DA3DF1ECD
                    E01002305BDECAD7307246214E076B51A4DD4A2AC74C2FCF760FB62F51F067E9
                    478E0C00FC0D4D80FFA714E850247CF4209F4F640F09CEFE728FA2371CA3984D
                    27925C1BBF694B3B217C798F387FC30F9154BF57CA6F2F15D4E92FF45FF34E7D
                    68D0A041A69D4090F8B167F4DBA2111056A65A03400B7C58A24DE182CD173C2A
                    DC623169F169E7B59CFA3CCE45220962C4C3196AC69D82241180D75F71C7E2FF
                    2901AE93DE077ED35A1B2BF3FDE1E150F2DE7086B953BF532EE420156EB92449
                    3FA1DFAAB51C4E7E7E7E62D66FE5CA956257AFE7CF9FDB0C5B89224D831E01B8
                    1E20F93C806A02E4EB5CB506B42ED462C9DF8559F56B51C26B2B8FF404012441
                    EAB063D88A37885281CE959FB1E50CA732BD0FFCA6A5B67D39FA84D80B49BD27
                    E44010F5C8EF541A72948AB65F95A47FD05FE55A4690B7B78F28FBC6A4CFEEDD
                    BBC5844F4A08A07E36393280045A027474F3FDAB51B3B6F129F2012401F84B99
                    F3D61B1352842B85F550A6F76EF6FE4F08A053EAB25A6CC3D942154D227EA6AA
                    A34E9A3E273FAF77FE8E475A7A1F5F768F124BC7CBF5DB64D646A87C085EBD97
                    563C1BFA1527BF4C6D67F27FD675BD6EDF946C399B3A75F1A48103078AB00F8E
                    1F56EFD82B7CEDF72C9101BF214D806BF78017EDBAFAFCF6ED0F2D77D9450010
                    818F1C05BE9F3CBB68EBE5A4878A410758C0274C8053D88E771351D19A3B0E1D
                    AA7E4EEF754356ADE97D54EF11459F394FA4F2819B4CED0311B5F7D096895D9B
                    2300B5DD9FFB6CD3ED934F5B2FA61FDB79514040004D993245A87ED4FC63843A
                    8A00B88E1E092401D6AEDB481D5C7B3C452AF8CB5AF596A68600190CEFBD57B8
                    50D3985DC5DAACA02460A7B012DBC02FB958440236B363EC05EAC4750412F8FB
                    0776169135533FABBEAEC71A048F6F0796EF3B4FCB769F497354F69A26760FA9
                    18B499F0FBADA3CE9BB51BED6FC3EFD51AFBBADD30799FB309D4ED0FEEA3066D
                    FCA977EFDE141E1E2E1E0C817A3F4CDCFCF5D75F29862D8451890002AC5CB596
                    9C3C7B3F87F09D3DFBFCF3498E5C43EC2680510BBCF3BF1CA5CB156E31FF42B1
                    B62B490FE5FDF708C74F029D09A13B734DA10AECB98B3DF56A3211D4CF6B5F97
                    F68CA192BCAF4F7AA09CEB646A327A4792B6A2DD6D587B41F8B27DD58673C6D3
                    75A36E1FA05F6AB61D4E3E3E3E347CF8709A356B96A8F645B58F3DC2D77EC71A
                    192409B6EDD84DCE1EBD5FC855412DDABBFCC2C2EFC3706134323E3934716550
                    4AC05FCC9AF5B346F53F6DBDE8D9A7ED56911ECAB24AFC6A0CCF8EB19D049034
                    C10314BAF0E2522DD0B94824A173E5E7D57319AF182AC504484B40F0D842B65E
                    AF69D46AFCAE246DFC89772EAD69BC17B4ADEA902354C279ADEEBDA33F2AB78B
                    244F2F2F51E98B526FA47BB16ECF11C257AF618908ABD66DE6D9BF3EFF74F71F
                    4063274E133381ACFED7B2EC7A333A331A30AA30927F7AB81E39F88BD96BFCD8
                    637DF1F6CBE9B30EAB75F1B9FB46FA6AC471215800132650A1AEFC7C003D60BB
                    F616D3CED1B75C762EBF8373F56107E8CB217B1D8E1AC3F65183B003D462E221
                    EA34EDA8095D669E356B1F627DB53D55071EA4CF9CD65ABCEF0AEDA3A9AB5B37
                    11EF63E3C7F5EBD78BEA1C08CB1A015EBC78411229218A4A82FBF71FD0980989
                    021F30348CB66EDB41980768DFD5E7F13BEFBC3790E5E6CB904F0FAFC8AFF3A6
                    68F4AB6468DEC6657ABD56BE54A2FD62FA8CAB5DF550820B4AAB0F3D229C2689
                    661C3FBBCEBD481EBCD78025E0FF70BE9AB066A8CB21A4FAFDD4BC6E80389E47
                    33B48EB5DFC7FF3AF167E004AABF5739702FDF2713DEC2FD7ED97E22B9B97B8A
                    69DEC8C848B1CC0B5BB5402DAB4255850D01DEBA7D876EDEB28E1B37F9E1D916
                    702CE1144546CF21F79E4184074547C7CD15114064F42C41864A556BAE6461FB
                    33BC182D19DF304A323EB69B009D3DFDC7B776F2A4EF7E72A31A1ECBA978A7B5
                    FA705A475582F60B3380AC19508F850A27CB138F8BE10DA6ADC18BFF0FB381CF
                    3767F2209C440E1EC20439E435D56B238AF881C983CF23646BCF6482D649EEB7
                    F07F17FE1C7E43BD6EAD919CF2F6D96EF91E3BADA13A1D869187878749F8AB56
                    AD1242C07CBD14BE2AF873172ED1ACF94BA947DF5021244760F0C8F1B469F356
                    F1BB7BD9E1F46042B4EAE4719B051D6A54FFF2C9E1B5F8EF628C77524500349A
                    7F80E6CC5B444D7B2FA6124EEB2DA2349745550F3D2484260121B6E79DC5BB2D
                    BC4C3E76024273E7110BE0B5BDD7F1E45AC79F38DE57DB577B2C97BCF5D9CDF6
                    DEF27D95E2499F86ED037886AF1B0D1E3C58A87D8C7CACF147B207C25705FFCB
                    F51B1432244C081C028A8C99431B36EFA0751BB7D1EAF55B68D5DA4DB47CF57A
                    5ABA722D2D5EBE9A162E5949F3162DA3B90B96D22CEEE799731624C1C2252B68
                    E7AEDDA6B81F04983C2D46FC46F1D2E5E61A477F0F3EB763D465546614148E7D
                    4A1C40F5B3D00092B5DBB7EF10850D5D43E65049EEAC929D37584459EF6D5493
                    CD427DCEBC497CCF39032756B93DB8BEA027571CA727BC58F03037DFF254B66C
                    4FBDF1A7A85AF07E2AD575A3D57B29E3BC8C9AB6F7A11E3D7A086F1F899EB56B
                    D78A020F39F255E11F3A9A409E6C9331EAB7EDDCCB0B407E138520F82CC882F2
                    6E440AA80FC02A5F388E08E730B58BA55ED8F5032B876056E43301D40743C8C4
                    CFEE3D7B091B44FFD8BA339E11344019FD2806ADCDF88CF1A1C30870EAD469B1
                    CF3D66B8FA0C89A2325DD770D8C69D6705157AECA03A238F09552E01D58DAC5B
                    5756F93DF8B941BD784792B4003445470E439BB283A7FE3ED2C135061DA2D2EE
                    5B926FBFF33C6AE3E421F2FB98DB8F8B8BA38D1B378A1C3F123DDA91BF7CF506
                    312207B19ABE7DE7AEF00BFEFEFB6F7AF9F2A5005E832CF89E4CEEE03AC81B80
                    189836C6FA7F1002059F58FFAF7D348C24C0B8C9D345DC9FBF4091692C683F86
                    0FA38D71F4C3F92BC8C8E030029C3E7D4678BA2001B63819163E83AA79ACE411
                    B4295954E23472ED1120C269FA8E09A0A2391CB65917845AEFC3DBD5D98BDEFC
                    941229F4263C75ADFD9D7AE127A8FA80782AD76D7BB2ED2DC5A4AEE134895CDD
                    BDC58ADE09132688AA5E847AC8BF4B6F5F1DF9DB77ED13C29F1E3B8F50B20521
                    E319C7AF5EBDB22A7C7C56153EF6FE41A917486649F82B38F9D3C5DB9F1A346D
                    7594851C621CFDCE7C46ECFF35E3534616539ADF1126001A006BD1C0CA5DBB76
                    89458E5323A3A853C04C2AEFBA8E3E77D99C2CCAF0A8ABE2BF97BEE618BB01FB
                    09DFA3B844011CB316BC71359CC1F69C58728AE3278EF1A36560FB137D882BEC
                    D95F16EFC1836FCB6A1D361DA35C7B2DFC5D9FEDFB57FD0F52059F1DC9B64DB6
                    BFAA732CB5E8E843BEBEBE22C687A70FD387C91DECDCA1E7EC5DBD765DA8E391
                    E3224CA3DE56E163C1079684C31CD822FC5DBBF79077EF106AE3EC75EFDDCC99
                    47B1A091F881E7DF8A01CFBF1C239F2A7387F800274F9E12364A6E4C846DCEE0
                    05432D868D9B4C2D7BC75239B70D54DA6D8BCDA8E4BB8B6A72CCFD2D0BAA316A
                    0D5209CC4DD40F4B60A1C75385EE3B6C6E07DA5CA9EB426ADCA10F79717207A3
                    1EA95D3CE50B31FEC18307C52855850FF58EF7AE5CB94A7EC143A9BBFF40BA7B
                    EFBE50F138921BF9F009F4848F3E860FA067F7B1C174F0E0D1D4C9BDD78BBC05
                    8A4C674107327A319C18DF3112F7033018DE7338014E9C3829D492BA35191A84
                    992F988469D3A6D1E011E1D4A4E74C2AE3B6896DECD614A1ACF776AAD873177D
                    C1A568D5FAEDA71A2CC45A6CABEB0C3F4AF5471FA7EFC69DA086E34FB2808FD3
                    37C38FD0D71C6D540FE6C9A9BEFBA852AF5D549E557B4A7F139F2FEFBA8A1A74
                    1A40AE6E6ED4B76F5F319D0B2F1F8F7A456A170251C33CD86CD8696843F4C734
                    631C7EF4F849611A70C8D16FC9E64BE1C3198456C16A61E9045A123E6CFF9469
                    B1C2CC54AE566B150B19491F64FDDC193F19477F693EE7D66A7C876880848413
                    42FDABBB534A8704FBDE62160CF9702C82081E1C460D7D6651198FAD8C6DFF4A
                    94E32C665DA751E4E2E6299C3CECDF87D93CCCE5630B178C406D5E1F4BB3E09C
                    C98D19B0D2D7376010858E1827848F51AF55FD5A870F1101AEA3277C0C2EF539
                    40B27F715EBE728DB0FB0D7F6C9BC042C6840F543F1C3F847DF5185F328A3232
                    A509018E1F4F10EA5F8F00B2A11831F00D901B47554CDF8161D4A4C74CAAE2B5
                    86CA7A6E7FE328E7C1790A97586AD43994DCBC7A8A118FD00EA4C50EDE58BD83
                    D93CD8636D660FA316A31E42DAB16387D07C0B172D112372D3B65D820096EC3E
                    AE05CDA1153E4240D4F5C9EB5A123EE27FA47B392977F7DD77338F662123E3E7
                    CBE8C468C880E3579CF1B16E5ADF114EE0B163C7C5CD5BF24C2509602FB10812
                    2A5412016BE37AF61B41CDBB4FA5AF3C175339AFED54CE7B67BAA002176FD670
                    89A646BC43970B7BF5BD7AF512367ED4A85162C3268C782475E0E421FC829064
                    EE5DDA7CFC0D4141E583E4103EBE133A6C3475EDD6977D8147C2F62767F79107
                    408D20367A52858F81A53EFE451DF930B341834609BB9F276FC14816729051F5
                    23E3D7945187F13923AF25393BC4041C3D7A4C8C7EF529156A43B5AF4104844D
                    F0A0611AE04DA352169EB57F6028B5EB398EEA7ACFA10ADE5B3834DBE55054F0
                    DA44B5F88111CD5CFA93BB6737315F0FA18388D04C2026EAF511D3C39945D885
                    585C9D7451F3FA1018D43E4260087FDDBA75E29E42068D243CB0518DF72DD97D
                    55F8D8210CE124C26A6BC2479F864D885473FDD2EE7BB0C065BE1F317F6146C6
                    3425C0912347C5E8B7C4544B640083A1323162503001CF1A236FFCF8F14220FD
                    07849287FF286AEB3B911AFB4CA73ADE73A99AD74AAAD88D1DB46E3BA93CEFB9
                    9314BBA8A237D7297AAFA7AA9ECBA8B67B2C35741F4F2D3D8752579F400EE17A
                    516060A048DB62A4C3B643E8705611B96014A3BD1885100C04A89D769504409C
                    8E912F1D5E9006E602D14FBFFE430501A0DEA101AC091FEB0291FDD30ADFDA80
                    9A323DD1E9ABFBDD8FFB2DD8FDEAFC3EBCFECCD6B4BC4334C0E1C347C4E84F29
                    01E04CC1B6C9EF2187005B8B8C223A323A3ADA44083C5009CE18A659B1B002EB
                    EAFB0604522FBF40EAD12798BA71FCEBDB2790FAF8F993BFBF3FF5EBD74F7C66
                    C0800142D8F0E011BE4D9A34492CCAC028C5EF60C4627126848E581BE19BB656
                    DF120130FA4100387C32E201899112EE1D30C044007CDF52964F15BE9AE5B326
                    FCD859F385F01BFED8FA380B78A815BBFF517226FE5F430068109811F812B879
                    3C3707FE0272EB3015D01020053A18C4403806D381110CC05903F07AEAD4A922
                    F484A0B1FA164FE1805AC723D9703D080CD1097E0F611B3C6F75A58DB6C6CE12
                    01109E81BC103E7202681B007326090007513A8DB6A678AD097F3E4F0CC1E36F
                    D2B2D3B90C19320C67E1073010EFDB6CF71D9E073874E8B0E8084B9EAA2513A0
                    6A009500B07D082BE5B3F064FC0B2F1C2603C480BA454886110CA14273E00C40
                    18F83F1EC78ED10D61E3B7703D8C72A85B245AE4860CDA6556B610000E21463F
                    FC0410002485F0414C682B49009811E93C4A8F5F9BE2C5C84F2EC58B3E5CC6E1
                    1E1CCB16ED5CAE65CAF42E327DFD8C4E5F573EB76020DB97ACDD7738010E1E3C
                    2484AF97A1B2E60C5A23003A1702431804870831363A49FB9C1CED2353D099B0
                    A518D950D172D74DA876081DA31D42811052430078EC68234806026093471000
                    8EA44A004934ADF05392E2451FAE5DBF519814CCEFBFFF7E9630C5E377353A7D
                    98E6459917E27DAB76DFE104888F3F28849FD60480CA05012074081AA319CE9A
                    1438627464CF2074CC9EA193E5AE9B8E22807400715DD5FEC3F10301B0E5BB4A
                    0010055104B48C3D295E087FF3966DE4E91B4C6DBB747BF8E1871F8D6701071B
                    473E327DAD19107E35A3D3679AE849CEFE3B6C36F0C08178B362046BA35EFD5F
                    4A35C0BF810072B60F231B04408E001A007E060880084612C095472C88088DA3
                    0A3F25295ED4F5F9F80DA00E2EDD9FE6CC95670A0BB9BF51F89E7CC6142F327D
                    F0F831CB97D516A13B5C03A40501A40FA067021CA101302A5363024004B91B27
                    0880E416088028432500CC90343D294DF16ED8B859CCEE7570EDF947BE424567
                    B08065ACEFCDAFDB32EA3330C983028F643DFE34CB04BE490260B2C41E13905A
                    02C014C004C92800696E100051884A00F8227283678C7C5B53BC2BD7ACE322CF
                    40E2255D8F8D593E081F39FE6E0C54F67ECB406D1FD2BCD9533AF21D5A0F2009
                    808488ADEA1F9FB3250A484E03E81100A34EEB0320DE569D40471000BF81B055
                    8D021082AA0480C0E59EFE5AE15BCA9B2C5ABA82AB7B03A84D67AFFB9F64CF39
                    89052CCBBA30C103E1637A57E6F873D92BFC34F1015242029500887D651E4086
                    81B0B15A02C00F504D406A088048406F73265BC2406800990944582AC3407302
                    040867155A00C2B725C58BC24FC4F9BCA5DBCD2C59B385B3A065550FD43E848F
                    091ED4F5A1AC3B0F439476D90BBBBFA81685EEE122C4948C7CF9594711009D8B
                    4E9651800CFFD428001A0091800C03A1016428684F1E4046030851913E469209
                    2600C9A9D71A2040442DF291AFC9E5F7A745CF1619BE666DBB5CCE9C39F31816
                    AE9CDC41550FA676B1A207C22FC5C8C778CB5EC13BD404603EDA11044032082A
                    55D500C805A879001909C830101A4086825A024045CB3050120066005EB94A80
                    D46801FC3652D8D8EB578F00C85FA0CDB290D352966FFC941942F88D7FEA7836
                    63C64C2359B8A8E84151072677E0F0C1E643ED977094F0536702BCFC46CBB2F0
                    6931B34D044889090069E45C003A466603B50480199089203514C4C85209002D
                    00474B6A00E90720165709002DE028028060C8065A2200DA2EEB25F584BF6FFF
                    011A3A7A82103E0A3939BD3B8C052C337C6EFC1AA11EBCFD9A46872FD56ADF21
                    61A0B3B7BF9324006E403B4F6DAB46703401A005B4048090B404905A2035A1A0
                    F403B0CFAF9600BEFE21C28B47386BA9841B615ECF805051C25DAB5EA31D2C60
                    4CECF46520B78F55BC28E64492E72B0642BD5CA9B5F90EAB0872EE16505A1200
                    890ACCF1DB2A746D3208DEB0AA016006D069DA743052C1DA6490560358CB06EA
                    4502F63A8232218433B49E0C03319D8D6966575EA3173C788CC54219ACF081A7
                    DFC1A5C7EF9F952A3787051BCA400DBF2F03133BA8E583F06592C7EE502F4DA6
                    835BB56A959109F08724C174C50C40C0B69A02E9086A090033606D3EC0964800
                    E197AD8E606AFC00B41D53CBF00110050C1C3454A8F498590B04B1D514F97E56
                    F9C3C326999C3D4D6A17CBB750C5DBDC28FCAA7C4686CFAE248F2D0EA2DD5100
                    2EDEC5DB6F9F240056A5CA85897284DB4282E47201B686829622014B8EA02326
                    85A416808D9799C009132692478F0091C1439D842AFC8D9BB6906FBF4142E57F
                    5DAFF14EA3BDC7742E9C3D78FA08F31A3330AB87F57B28E848717AD716C1A73A
                    0AC0053A7BFB775657B5FA870CA3788D29488E04DA5030B591802547D0D2A490
                    74062D6DD66C4B4E00DA485634611A187DB262F53AB30219A87C57CB2A1FF61E
                    CE1E3C7D8479651998D54BD1C44E4A04EF1002E022CE5E7D56AB24C012E5E4F2
                    029214F2AC2581A5A490DEF4B09A18D286866A6E401B1DA8E1A1D641549FCFA3
                    7D4C8BDEA35CD00654188D1C132E843F3122DA541F89AC5E9FA0449380F85E47
                    E563D99654F9F0F411E661EDDEBBF60834A5DF499509306A81DC7C730F5412A0
                    4C19376E8F53F8FFF13B58F7101018424EEEBD5EF61D304284B6CB56ACA1BEFD
                    870BC163870EE3260D70F450B6ADA7F231970F7B9F9B91EA048FAD4448350184
                    16F0F46BCD37FA4ABBC9019C1D54B1ECD9BBEF3F4D860993A65247B79E7FC3BE
                    2F64E207868E1482E7CD199FD5A8F3DDD64C9932C9F00E8287A3072F5F55F958
                    B30795FFA1AD8273D4E71C42804412F8D770F6EC7DD1D24E17D8B008F9828911
                    514245029322CD313932862426F16B09F57DF19A974149A03A5662EA74F6C215
                    58FA5FC40CAE3E56111547114644F25942BE8773641497AF2BC0B22F8033782F
                    3BB9FB3EC37D830038733FBCACDFA8457C962C5991CE95499D9EFC1AB6BE3DA3
                    0903215EBAAB7C87E501F418E8EE1EFA7EBB2EDDA2B913FEB14484FFD2FBD87E
                    B55DD7EE8FE53D3979F47ED5B84587D3B972E71DCFC295A95C5F7E8D8C1E3CFC
                    1F8D82AFC36778F9E9AEF2D3940022B7CCEBCF6AD56FDCB445BBAEE1AD9D3C76
                    7127DDFD2F095DDE4B0777DFE76D3B777B0035DFBC6D970BD56A7EB3EC830F3E
                    1CCCF78F397BA87A8C78E4F13B3250B0090F1FE11D627BCCE11761A46988678B
                    9970980930CB2FB32DE39B430C8B6549B5F2152CF253C5AA357CCA54F822E8F3
                    729506962A5B7150C932E58795285D6E64F15265C33E2B5566DCFF37142E5A62
                    74D6ACD930CA216800B61D53B6107A6706543D56E860EE1E8247460FB378B0F5
                    9F30D2CDD14B934C6072EC32DE24480035F785B113D0111809D8ADA21903B96E
                    4C73A2B3FEBF03F781FB414887640E6C3CEE1776BE0C037D815CFEDBC9F55D7A
                    FE3F4D348029C9C09B11F00D23A6C5CD637D3AD41F3A041DF35F06A66D417A68
                    40DC7B5E46BAC4F529254F9A12C0E81364E09BCFCE286CEC0C740866B6D039E5
                    FF4340280792C3BEE31E61E373326CAED14FA9F01CF1F9342780C637C8C41D92
                    85011B8879EDFF1A72F03D6563BCCF4855A99623846BCB35FE0F13DE50CD69B5
                    06880000000049454E44AE426082}
                  TabOrder = 0
                  Height = 44
                  Width = 56
                end
              end
              object RzGroupBox5: TRzGroupBox
                Left = 0
                Top = 160
                Width = 806
                Height = 137
                Align = alTop
                TabOrder = 3
                object RzPanel14: TRzPanel
                  Left = 16
                  Top = 13
                  Width = 204
                  Height = 23
                  BorderOuter = fsFlatRounded
                  Caption = 'Altera'#231#227'o das Cores dos Trajetos'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  VisualStyle = vsGradient
                end
                object rzPnCorTrajetoIda: TRzPanel
                  Left = 16
                  Top = 49
                  Width = 204
                  Height = 23
                  Alignment = taLeftJustify
                  BorderOuter = fsFlatRounded
                  Caption = 'Trajeto Ida'
                  Color = 12123880
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  VisualStyle = vsClassic
                  object imgCorTrajetoIda: TImage
                    Left = 183
                    Top = 4
                    Width = 16
                    Height = 16
                    Hint = 'Clique aqui para alterar a cor'
                    ParentShowHint = False
                    Picture.Data = {
                      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                      0000001008060000001FF3FF610000000467414D410000B18E7CFB5193000000
                      206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
                      E5000019CC733C857700000A396943435050686F746F73686F70204943432070
                      726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
                      D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
                      B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
                      FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
                      608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
                      33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
                      1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
                      53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
                      540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
                      E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
                      262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
                      32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
                      F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
                      8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
                      618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
                      9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
                      89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
                      E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
                      010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
                      04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
                      E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
                      2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
                      3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
                      43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
                      10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
                      8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
                      51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
                      A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
                      8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
                      E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
                      F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
                      924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
                      07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
                      C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
                      5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
                      A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
                      13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
                      342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
                      94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
                      5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
                      A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
                      39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
                      BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
                      A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
                      1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
                      4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
                      1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
                      96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
                      E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
                      4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
                      76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
                      A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
                      6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
                      7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
                      5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
                      253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
                      D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
                      1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
                      30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
                      D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
                      694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
                      F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
                      74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
                      1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
                      771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
                      B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
                      4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
                      6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
                      767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
                      79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
                      91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
                      FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
                      0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
                      CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
                      4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
                      C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
                      E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
                      7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
                      9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
                      F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
                      5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
                      A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B0C00000B0C013F
                      4022C80000031249444154384F95937D4C0D6A1CC79F53477662D241A48389A8
                      33932E4328443A8B4E498E97710B770DF336910D91C42C61F212458C84A3D1C6
                      94EE71A5DC5DB7D534D2383966845E9CDDAE22472F1F8FF347F3321BBFEDD99E
                      EDF77C3FFB7E7FCFF308F145291442848F74173AAD9B08D3F6ED9F344BBBE9D0
                      8A809B177746587376E81B36468EBDEEEBAE327CA9F96AFF19A0F3EEEBB86EAA
                      D7B6C2BDBAFFF30A97D0FA2A858FFF9DE66EC5338ACBDF72F94C26F3C60FCC91
                      42A7EF404E0E0EEA3D0B461494E4EBB9F4701D595587C92F5B41C39334D28C8D
                      2466C3855B3558ABD3F1F754277C0570543838ED89F6B94D69149B6E0430C514
                      4E64D13C4EDD5946FB8B03C4ECAAE3B79510935C0BFC4D5ABCDEA21242DB0959
                      3D4573ACED6A20544672B3683A2253203204B977E6C2CBC36CDC6FC6B0B58EFA
                      97B976C09FD9EB6D037B28A3EC809183BA075BB327D19E190707E6507A319013
                      F981E4986690576C80DA545AEB0F52633E4787ED920494506CDCD0E6A9EEB2D0
                      0E3862F0B84ED450D0E969F39F46F3C96078B41C1E4BE0D30478BE0B2480A613
                      F0CE2801455C3D1AD3D4CF59840A7537278FE727BD5A3A16B9D121048D61FD69
                      FD2702EE2D96716468733C3C4B82D7FBC09A01CD39125040CA72FF074A218688
                      89C35D6652301C9235BC9DD187A6837E50162ED702B81F2B9DAC972EB6C939A4
                      40433ABC3F8FEDD571C2FC5CD3ECF6F5E3DD62B9E1437BB627B62BA3E0DF2028
                      8F845299BD622954AD01CB1678B11BEA0EC187F3DCCD8CC0B5AB986007CC0EF0
                      88C524857983A1D097EAACB1B6BF8EEAEAEC0EEE45CB086BA583CD720EC9D078
                      8C567322D101EADCCEEB9B34A24F28C572685734349CF56198BB6A55EFEE4A1F
                      EBB59076EEFF4EAD2986771532464D121FCA5793BA646895A310033A012AA5E8
                      69CE33D453329A5BDBFB593E3722C6B884521442569CB6B297B322D45BD36DF6
                      FCC9EEA913BC549B950AA1F9EE092F9AA689A73A8E4653488B317E48FA1BE3B8
                      D7CD054178B82A837EF871BE6928E607BA2558AE2D6EC122ED56FE41C65AEF32
                      7946BAFD857255096DB06F8F0D3A3F9744E72E62D8CF483F018E5AD186AEA709
                      900000000049454E44AE426082}
                    ShowHint = True
                    OnClick = imgCorTrajetoIdaClick
                  end
                end
                object rzPnCorTrajetoVolta: TRzPanel
                  Left = 14
                  Top = 78
                  Width = 206
                  Height = 23
                  Alignment = taLeftJustify
                  BorderOuter = fsFlatRounded
                  Caption = 'Trajeto Volta'
                  Color = 1827962
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  VisualStyle = vsClassic
                  object imgCorTrajetoVolta: TImage
                    Left = 185
                    Top = 4
                    Width = 16
                    Height = 16
                    Hint = 'Clique aqui para alterar a cor'
                    ParentShowHint = False
                    Picture.Data = {
                      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                      0000001008060000001FF3FF610000000467414D410000B18E7CFB5193000000
                      206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
                      E5000019CC733C857700000A396943435050686F746F73686F70204943432070
                      726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
                      D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
                      B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
                      FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
                      608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
                      33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
                      1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
                      53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
                      540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
                      E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
                      262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
                      32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
                      F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
                      8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
                      618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
                      9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
                      89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
                      E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
                      010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
                      04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
                      E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
                      2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
                      3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
                      43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
                      10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
                      8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
                      51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
                      A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
                      8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
                      E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
                      F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
                      924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
                      07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
                      C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
                      5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
                      A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
                      13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
                      342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
                      94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
                      5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
                      A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
                      39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
                      BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
                      A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
                      1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
                      4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
                      1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
                      96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
                      E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
                      4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
                      76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
                      A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
                      6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
                      7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
                      5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
                      253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
                      D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
                      1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
                      30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
                      D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
                      694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
                      F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
                      74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
                      1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
                      771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
                      B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
                      4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
                      6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
                      767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
                      79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
                      91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
                      FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
                      0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
                      CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
                      4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
                      C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
                      E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
                      7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
                      9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
                      F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
                      5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
                      A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B0C00000B0C013F
                      4022C80000031249444154384F95937D4C0D6A1CC79F53477662D241A48389A8
                      33932E4328443A8B4E498E97710B770DF336910D91C42C61F212458C84A3D1C6
                      94EE71A5DC5DB7D534D2383966845E9CDDAE22472F1F8FF347F3321BBFEDD99E
                      EDF77C3FFB7E7FCFF308F145291442848F74173AAD9B08D3F6ED9F344BBBE9D0
                      8A809B177746587376E81B36468EBDEEEBAE327CA9F96AFF19A0F3EEEBB86EAA
                      D7B6C2BDBAFFF30A97D0FA2A858FFF9DE66EC5338ACBDF72F94C26F3C60FCC91
                      42A7EF404E0E0EEA3D0B461494E4EBB9F4701D595587C92F5B41C39334D28C8D
                      2466C3855B3558ABD3F1F754277C0570543838ED89F6B94D69149B6E0430C514
                      4E64D13C4EDD5946FB8B03C4ECAAE3B79510935C0BFC4D5ABCDEA21242DB0959
                      3D4573ACED6A20544672B3683A2253203204B977E6C2CBC36CDC6FC6B0B58EFA
                      97B976C09FD9EB6D037B28A3EC809183BA075BB327D19E190707E6507A319013
                      F981E4986690576C80DA545AEB0F52633E4787ED920494506CDCD0E6A9EEB2D0
                      0E3862F0B84ED450D0E969F39F46F3C96078B41C1E4BE0D30478BE0B2480A613
                      F0CE2801455C3D1AD3D4CF59840A7537278FE727BD5A3A16B9D121048D61FD69
                      FD2702EE2D96716468733C3C4B82D7FBC09A01CD39125040CA72FF074A218688
                      89C35D6652301C9235BC9DD187A6837E50162ED702B81F2B9DAC972EB6C939A4
                      40433ABC3F8FEDD571C2FC5CD3ECF6F5E3DD62B9E1437BB627B62BA3E0DF2028
                      8F845299BD622954AD01CB1678B11BEA0EC187F3DCCD8CC0B5AB986007CC0EF0
                      88C524857983A1D097EAACB1B6BF8EEAEAEC0EEE45CB086BA583CD720EC9D078
                      8C567322D101EADCCEEB9B34A24F28C572685734349CF56198BB6A55EFEE4A1F
                      EBB59076EEFF4EAD2986771532464D121FCA5793BA646895A310033A012AA5E8
                      69CE33D453329A5BDBFB593E3722C6B884521442569CB6B297B322D45BD36DF6
                      FCC9EEA913BC549B950AA1F9EE092F9AA689A73A8E4653488B317E48FA1BE3B8
                      D7CD054178B82A837EF871BE6928E607BA2558AE2D6EC122ED56FE41C65AEF32
                      7946BAFD857255096DB06F8F0D3A3F9744E72E62D8CF483F018E5AD186AEA709
                      900000000049454E44AE426082}
                    ShowHint = True
                    OnClick = imgCorTrajetoVoltaClick
                  end
                end
                object RzPanel15: TRzPanel
                  Left = 226
                  Top = 13
                  Width = 399
                  Height = 23
                  BorderOuter = fsFlatRounded
                  Caption = 'Informe a descri'#231#227'o da rota'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  VisualStyle = vsGradient
                end
                object RzGroupBox6: TRzGroupBox
                  Left = 226
                  Top = 42
                  Width = 399
                  Height = 71
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  object memoDescricaoRota: TMemo
                    Left = 1
                    Top = 14
                    Width = 397
                    Height = 56
                    Align = alClient
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    TabOrder = 0
                  end
                end
                object rzBtnConfirmaRota: TRzBitBtn
                  Left = 631
                  Top = 50
                  Width = 133
                  Height = 64
                  Caption = 'Guardar Rota'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HotTrack = True
                  ParentFont = False
                  TabOrder = 5
                  OnClick = rzBtnConfirmaRotaClick
                  Glyph.Data = {
                    DE010000424DDE01000000000000760000002800000024000000120000000100
                    0400000000006801000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333333333333333330000333333333333333333333333F33333333333
                    00003333344333333333333333388F3333333333000033334224333333333333
                    338338F3333333330000333422224333333333333833338F3333333300003342
                    222224333333333383333338F3333333000034222A22224333333338F338F333
                    8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                    33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                    0000333333333A222433333333333338F338F33300003333333333A222433333
                    333333338F338F33000033333333333A222433333333333338F338F300003333
                    33333333A222433333333333338F338F00003333333333333A22433333333333
                    3338F38F000033333333333333A223333333333333338F830000333333333333
                    333A333333333333333338330000333333333333333333333333333333333333
                    0000}
                  ImageIndex = 714
                  Images = DM.cxImageList16x16
                  NumGlyphs = 2
                end
                object RzPanel16: TRzPanel
                  Left = 632
                  Top = 13
                  Width = 133
                  Height = 23
                  BorderOuter = fsFlatRounded
                  Caption = 'Confirma'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  VisualStyle = vsGradient
                end
              end
            end
          end
          object pnNavegacaoNovaRotaEntradaCana: TPanel
            Left = 0
            Top = 431
            Width = 810
            Height = 32
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Passo: 1 de 5'
            TabOrder = 2
            object btnProximoGeraRotaEntradaCana: TRzBitBtn
              Left = 778
              Top = 0
              Width = 32
              Height = 32
              Align = alRight
              TabOrder = 0
              OnClick = btnProximoGeraRotaEntradaCanaClick
              DisabledIndex = 2281
              ImageIndex = 749
              Images = DM.cxImageList16x16
            end
            object btnAnteriorGeraRotaEntradaCana: TRzBitBtn
              Left = 0
              Top = 0
              Width = 32
              Height = 32
              Align = alLeft
              Enabled = False
              TabOrder = 1
              OnClick = btnAnteriorGeraRotaEntradaCanaClick
              DisabledIndex = 2280
              ImageIndex = 747
              Images = DM.cxImageList16x16
            end
          end
        end
        object tsRotasGerarRotasAvulsas: TRzTabSheet
          Color = clWhite
          Caption = 'tsRotasGerarRotasAvulsas'
          object RzPanel17: TRzPanel
            Left = 0
            Top = 0
            Width = 810
            Height = 23
            Align = alTop
            BorderOuter = fsFlatRounded
            Caption = 'Criar Novas Rotas Avulsa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
          end
          object RzPgNovaRota_Avulso: TRzPageControl
            Left = 0
            Top = 23
            Width = 810
            Height = 408
            ActivePage = tsNovaRotaAvulsaSelecaoInfo
            Align = alClient
            TabIndex = 0
            TabOrder = 1
            FixedDimension = 19
            object tsNovaRotaAvulsaSelecaoInfo: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaAvulsaSelecaoInfo'
              object RzSizePanel1: TRzSizePanel
                Left = 0
                Top = 23
                Width = 806
                Height = 139
                Align = alTop
                HotSpotVisible = True
                Locked = True
                SizeBarWidth = 10
                TabOrder = 0
                object Panel11: TPanel
                  Left = 0
                  Top = 0
                  Width = 806
                  Height = 128
                  Align = alClient
                  TabOrder = 0
                  object Panel9: TPanel
                    Left = 1
                    Top = 1
                    Width = 336
                    Height = 126
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Label2: TLabel
                      Left = 152
                      Top = 71
                      Width = 66
                      Height = 13
                      Caption = 'Equipamento:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object btnPesquisa_Equipamentos: TSpeedButton
                      Left = 296
                      Top = 68
                      Width = 24
                      Height = 21
                      Hint = 'Pesquisar equipamentos  ativos do tipo caminh'#227'o (F9)'
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000FF00FF00CCCC
                        CC00C0C0C000E5E5E500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CCCCCC006699
                        99006666990099999900E5E5E500FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0066CC
                        FF003399CC006666990099999900E5E5E500FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CCCC
                        FF0066CCFF003399CC006666990099999900E5E5E500FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00CCCCFF0066CCFF003399CC006666990099999900E5E5E500FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00CCCCFF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC99
                        9900CC999900CC999900CCCC9900E5E5E500FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EA
                        BF00FFFFCC00F2EABF00F2EABF00CC999900ECC6D900FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00E5E5E500CC999900FFCC9900FFFFCC00FFFF
                        CC00FFFFCC00FFFFFF00FFFFFF00FFFFFF00CC999900E5E5E500FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FFCCCC00CCCC9900FFFFCC00F2EABF00FFFF
                        CC00FFFFCC00FFFFFF00FFFFFF00FFFFFF00F2EABF00CCCC9900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00CCCC9900FFCC9900F2EABF00F2EABF00FFFF
                        CC00FFFFCC00FFFFCC00FFFFFF00FFFFFF00F2EABF00CC999900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00CC999900F2EABF00F2EABF00F2EABF00F2EA
                        BF00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00CC999900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00CCCC9900F2EABF00FFFFCC00F2EABF00F2EA
                        BF00F2EABF00FFFFCC00FFFFCC00FFFFCC00F2EABF00CC999900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FFCCCC00CCCC9900FFFFFF00FFFFFF00F2EA
                        BF00F2EABF00F2EABF00F2EABF00FFFFCC00CCCC9900CCCC9900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00E5E5E500CC999900ECC6D900FFFFFF00FFFF
                        CC00F2EABF00F2EABF00F2EABF00FFCC9900CC999900E5E5E500FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FFCCCC00CC999900FFCCCC00F2EA
                        BF00F2EABF00F2EABF00CCCC9900CC999900FFCCCC00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E5E5E500CCCC9900CC99
                        9900CC999900CC999900CC999900E5E5E500FF00FF00FF00FF00}
                      OnClick = btnPesquisa_EquipamentosClick
                    end
                    object Label3: TLabel
                      Left = 27
                      Top = 49
                      Width = 45
                      Height = 13
                      Caption = 'Fazenda:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object btnPesquisa_Fazendas: TSpeedButton
                      Left = 296
                      Top = 46
                      Width = 24
                      Height = 21
                      Hint = 'Pesquisar fazendas com mapa (F9)'
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000FF00FF00CCCC
                        CC00C0C0C000E5E5E500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CCCCCC006699
                        99006666990099999900E5E5E500FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0066CC
                        FF003399CC006666990099999900E5E5E500FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CCCC
                        FF0066CCFF003399CC006666990099999900E5E5E500FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00CCCCFF0066CCFF003399CC006666990099999900E5E5E500FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00CCCCFF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC99
                        9900CC999900CC999900CCCC9900E5E5E500FF00FF00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EA
                        BF00FFFFCC00F2EABF00F2EABF00CC999900ECC6D900FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00E5E5E500CC999900FFCC9900FFFFCC00FFFF
                        CC00FFFFCC00FFFFFF00FFFFFF00FFFFFF00CC999900E5E5E500FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FFCCCC00CCCC9900FFFFCC00F2EABF00FFFF
                        CC00FFFFCC00FFFFFF00FFFFFF00FFFFFF00F2EABF00CCCC9900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00CCCC9900FFCC9900F2EABF00F2EABF00FFFF
                        CC00FFFFCC00FFFFCC00FFFFFF00FFFFFF00F2EABF00CC999900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00CC999900F2EABF00F2EABF00F2EABF00F2EA
                        BF00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00CC999900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00CCCC9900F2EABF00FFFFCC00F2EABF00F2EA
                        BF00F2EABF00FFFFCC00FFFFCC00FFFFCC00F2EABF00CC999900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FFCCCC00CCCC9900FFFFFF00FFFFFF00F2EA
                        BF00F2EABF00F2EABF00F2EABF00FFFFCC00CCCC9900CCCC9900FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00E5E5E500CC999900ECC6D900FFFFFF00FFFF
                        CC00F2EABF00F2EABF00F2EABF00FFCC9900CC999900E5E5E500FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FFCCCC00CC999900FFCCCC00F2EA
                        BF00F2EABF00F2EABF00CCCC9900CC999900FFCCCC00FF00FF00FF00FF00FF00
                        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E5E5E500CCCC9900CC99
                        9900CC999900CC999900CC999900E5E5E500FF00FF00FF00FF00}
                      OnClick = btnPesquisa_FazendasClick
                    end
                    object Label4: TLabel
                      Left = 12
                      Top = 4
                      Width = 60
                      Height = 13
                      Alignment = taCenter
                      Caption = 'Data Inicial :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label6: TLabel
                      Left = 17
                      Top = 26
                      Width = 55
                      Height = 13
                      Alignment = taCenter
                      Caption = 'Data Final :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label13: TLabel
                      Left = 44
                      Top = 71
                      Width = 28
                      Height = 13
                      Caption = 'Zona:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object edtCodEquipamento: TwwDBEdit
                      Left = 224
                      Top = 68
                      Width = 70
                      Height = 21
                      Hint = 'Aperte (F9) para pesquisar equipamentos ativos do tipo caminh'#227'o'
                      TabOrder = 5
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                      OnExit = edtCodEquipamentoExit
                      OnKeyDown = edtCodEquipamentoKeyDown
                    end
                    object edtCodFazenda: TwwDBEdit
                      Left = 78
                      Top = 46
                      Width = 48
                      Height = 21
                      Hint = 'Aperte (F9) para pesquisar as fazendas que possuem mapa'
                      TabOrder = 2
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                      OnExit = edtCodFazendaExit
                      OnKeyDown = edtCodFazendaKeyDown
                    end
                    object edtNomeFazenda: TwwDBEdit
                      Left = 126
                      Top = 46
                      Width = 168
                      Height = 21
                      Enabled = False
                      TabOrder = 3
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                    end
                    object wwDBDateTimePicker1: TwwDBDateTimePicker
                      Left = 78
                      Top = 1
                      Width = 216
                      Height = 21
                      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                      CalendarAttributes.Font.Color = clWindowText
                      CalendarAttributes.Font.Height = -11
                      CalendarAttributes.Font.Name = 'Tahoma'
                      CalendarAttributes.Font.Style = []
                      Epoch = 1950
                      ShowButton = True
                      TabOrder = 0
                    end
                    object wwDBDateTimePicker2: TwwDBDateTimePicker
                      Left = 78
                      Top = 23
                      Width = 216
                      Height = 21
                      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                      CalendarAttributes.Font.Color = clWindowText
                      CalendarAttributes.Font.Height = -11
                      CalendarAttributes.Font.Name = 'Tahoma'
                      CalendarAttributes.Font.Style = []
                      Epoch = 1950
                      ShowButton = True
                      TabOrder = 1
                    end
                    object Panel14: TPanel
                      Left = 0
                      Top = 90
                      Width = 336
                      Height = 36
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 6
                      object RzBitBtnVisualizarTrajetoAvulso: TRzBitBtn
                        Left = 0
                        Top = 0
                        Width = 113
                        Height = 36
                        Hint = 
                          'Clique aqui para visualizar o trajeto de acordo com os dados inf' +
                          'ormados ao lado.'
                        Align = alLeft
                        Caption = 'Visualizar Trajeto'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        OnClick = RzBitBtnVisualizarTrajetoAvulsoClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtnVisualizarPontoaPontoAvulso: TRzBitBtn
                        Left = 113
                        Top = 0
                        Width = 112
                        Height = 36
                        Align = alLeft
                        Caption = 'Visulizar Rota Ponto a Ponto'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 1
                        OnClick = RzBitBtnVisualizarPontoaPontoAvulsoClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 253
                        ImageIndex = 253
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtnPararPontoaPontoAvulso: TRzBitBtn
                        Left = 225
                        Top = 0
                        Width = 111
                        Height = 36
                        Align = alClient
                        Caption = 'Parar Rota Ponto a Ponto'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 2
                        OnClick = RzBitBtnPararPontoaPontoAvulsoClick
                        Glyph.Data = {
                          66010000424D6601000000000000760000002800000014000000140000000100
                          040000000000F000000000000000000000001000000000000000000000000000
                          8000008000000080800080000000800080008080000080808000C0C0C0000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                          8888888800008877777777777777777800008000000000000000007800008099
                          999999999999907800008090000000000000907800008090FFFFFFFFFFF09078
                          00008090FFFFF0FFFFF0907800008090FFFFFFFF0FF0907800008090FFFFFFF0
                          FFF0907800008090FFFFFF0FFFF0907800008090F0FFF0FFF0F0907800008090
                          FFFFFF0FFFF0907800008090FFFFFFF0FFF0907800008090FFFFFFFF0FF09078
                          00008090FFFFF0FFF0F0907800008090FFFFFFFFFFF090780000809000000000
                          0000907800008099999999999999907800008000000000000000008800008888
                          88888888888888880000}
                        ImageIndex = 255
                        Images = DM.cxImageList16x16
                      end
                    end
                    object edtZona: TwwDBEdit
                      Left = 78
                      Top = 68
                      Width = 48
                      Height = 21
                      Hint = 'Deixe este campo vazio para buscar todas as zonas da fazenda.'
                      TabOrder = 4
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                      OnExit = edtZonaExit
                    end
                  end
                  object cxGrid6: TcxGrid
                    Left = 337
                    Top = 1
                    Width = 468
                    Height = 126
                    Align = alClient
                    TabOrder = 1
                    object cxGridDBTableView1: TcxGridDBTableView
                      DataController.DataSource = DS_VisualizarTrajetoRotaAvulsa
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsView.GroupByBox = False
                      Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                      object cxGridDBTableView1SEQUENCIA: TcxGridDBColumn
                        Caption = 'Seq'#252#234'ncia'
                        DataBinding.FieldName = 'SEQUENCIA'
                        Width = 133
                      end
                      object cxGridDBTableView1DATA: TcxGridDBColumn
                        Caption = 'Data'
                        DataBinding.FieldName = 'DATA'
                        Width = 195
                      end
                    end
                    object cxGridLevel1: TcxGridLevel
                      GridView = cxGridDBTableView1
                    end
                  end
                end
              end
              object RzPanel18: TRzPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 23
                Align = alTop
                Alignment = taLeftJustify
                BorderOuter = fsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                VisualStyle = vsClassic
                object RzPanel19: TRzPanel
                  Left = 337
                  Top = 0
                  Width = 469
                  Height = 23
                  Align = alClient
                  Alignment = taLeftJustify
                  AutoSize = True
                  BorderOuter = fsFlatRounded
                  Caption = 
                    'Navegue nos registros para visualizar a posi'#231#227'o do equipamento n' +
                    'o mapa.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  VisualStyle = vsClassic
                end
                object RzPanel20: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 337
                  Height = 23
                  Align = alLeft
                  Alignment = taLeftJustify
                  BorderOuter = fsFlatRounded
                  Caption = 'Insira as informa'#231#245'es abaixo para gerar o trajeto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  VisualStyle = vsClassic
                end
              end
              object wbVisualizarTrajetoRotaAvulsa: TWebBrowser
                Left = 0
                Top = 162
                Width = 806
                Height = 223
                Align = alClient
                TabOrder = 2
                OnDocumentComplete = wbVisualizarTrajetoRotaAvulsaDocumentComplete
                ExplicitLeft = 533
                ExplicitTop = 203
                ExplicitWidth = 457
                ControlData = {
                  4C0000004D5300000C1700000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E12620A000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
            end
            object tsNovaRotaAvulsaGeraInfoTemp: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaAvulsaGeraInfoTemp'
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 385
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object RzSplitter5: TRzSplitter
                  Left = 0
                  Top = 23
                  Width = 806
                  Height = 362
                  Orientation = orVertical
                  Position = 143
                  Percent = 40
                  UsePercent = True
                  HotSpotVisible = True
                  SplitterWidth = 10
                  Align = alClient
                  TabOrder = 0
                  BarSize = (
                    0
                    143
                    806
                    153)
                  UpperLeftControls = (
                    Panel25
                    Panel26)
                  LowerRightControls = ()
                  object Panel25: TPanel
                    Left = 150
                    Top = 0
                    Width = 656
                    Height = 143
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object cxGrid10: TcxGrid
                      Left = 0
                      Top = 23
                      Width = 656
                      Height = 120
                      Align = alClient
                      TabOrder = 0
                      object cxGridDBTableView5: TcxGridDBTableView
                        Navigator.Buttons.PriorPage.Visible = False
                        Navigator.Buttons.NextPage.Visible = False
                        Navigator.Buttons.Insert.Visible = False
                        Navigator.Buttons.Delete.Visible = False
                        Navigator.Buttons.Edit.Visible = False
                        Navigator.Buttons.SaveBookmark.Visible = False
                        Navigator.Buttons.GotoBookmark.Visible = False
                        Navigator.Buttons.Filter.Visible = False
                        Navigator.Visible = True
                        DataController.DataSource = DS_PreRotaTMP_Basic
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGridDBTableView5SEQUENCIA: TcxGridDBColumn
                          DataBinding.FieldName = 'SEQUENCIA'
                        end
                        object cxGridDBTableView5PONTOS_INTERESSE: TcxGridDBColumn
                          DataBinding.FieldName = 'PONTOS_INTERESSE'
                          Width = 46
                        end
                        object cxGridDBTableView5PONTO_INTERESSE: TcxGridDBColumn
                          DataBinding.FieldName = 'PONTO_INTERESSE'
                          Width = 171
                        end
                      end
                      object cxGridLevel5: TcxGridLevel
                        GridView = cxGridDBTableView5
                      end
                    end
                    object RzPanel27: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 656
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 
                        'Selecione o ponto desejado e clique sobre o bot'#227'o do ponto de in' +
                        'teresse.'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      VisualStyle = vsGradient
                    end
                  end
                  object Panel26: TPanel
                    Left = 0
                    Top = 0
                    Width = 150
                    Height = 143
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                    object RzPanel26: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 150
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 'Pontos de Interesse'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                    end
                    object Panel27: TPanel
                      Left = 0
                      Top = 23
                      Width = 150
                      Height = 120
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 1
                      object btnRotaAvulsaSaidaUsina: TRzBitBtn
                        Left = 0
                        Top = 81
                        Width = 150
                        Height = 27
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Entrada Usina'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtn3: TRzBitBtn
                        Left = 0
                        Top = 54
                        Width = 150
                        Height = 27
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Sa'#237'da da Fazenda'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 1
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtn5: TRzBitBtn
                        Left = 0
                        Top = 27
                        Width = 150
                        Height = 27
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Entrada na Fazenda'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 2
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtn6: TRzBitBtn
                        Left = 0
                        Top = 0
                        Width = 150
                        Height = 27
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Sa'#237'da da Usina'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 3
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        DisabledIndex = 1250
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                    end
                  end
                end
                object RzPanel23: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 806
                  Height = 23
                  Align = alTop
                  Alignment = taLeftJustify
                  BorderOuter = fsFlatRounded
                  Caption = 
                    ' Selecione os 4 pontos de interesse obrigat'#243'rios para gera'#231#227'o da' +
                    ' rota.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  VisualStyle = vsClassic
                end
              end
            end
            object tsNovaRotaAvulsaSelecaoPontos: TRzTabSheet
              Color = clWhite
              Caption = 'tsNovaRotaAvulsaSelecaoPontos'
              object Panel16: TPanel
                Left = 0
                Top = 0
                Width = 806
                Height = 385
                Align = alClient
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHotLight
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object RzPanel21: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 806
                  Height = 23
                  Align = alTop
                  Alignment = taLeftJustify
                  BorderOuter = fsFlatRounded
                  Caption = 
                    'Marque os pontos de interesse a insira a mensagem que aparecer'#225' ' +
                    'no bordo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  VisualStyle = vsClassic
                end
                object RzSplitter2: TRzSplitter
                  Left = 0
                  Top = 23
                  Width = 806
                  Height = 362
                  Orientation = orVertical
                  Position = 143
                  Percent = 40
                  UsePercent = True
                  HotSpotVisible = True
                  SplitterWidth = 10
                  Align = alClient
                  TabOrder = 1
                  BarSize = (
                    0
                    143
                    806
                    153)
                  UpperLeftControls = (
                    Panel20
                    cxGrid7)
                  LowerRightControls = (
                    Panel19)
                  object Panel20: TPanel
                    Left = 0
                    Top = 0
                    Width = 145
                    Height = 143
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object rzBtnGerarPreRotaAvulsa: TRzBitBtn
                      Left = 0
                      Top = 65
                      Width = 145
                      Height = 30
                      Align = alTop
                      Caption = 'Gerar Trajeto'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      HotTrack = True
                      ParentFont = False
                      TabOrder = 0
                      OnClick = rzBtnGerarPreRotaAvulsaClick
                      Glyph.Data = {
                        4E010000424D4E01000000000000760000002800000012000000120000000100
                        040000000000D800000000000000000000001000000000000000000000000000
                        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                        7777770000007777717777747777770000007777111777444777770000007771
                        7177777474777700000077177777777777477700000071777000000077747700
                        000071770788888807747700000017770F77777807774700000017770F777778
                        07774700000017770F77777807774700000017770F7777780777470000001777
                        0F77777807774700000071770FFFFFF707747700000071777000000077747700
                        0000771777777777774777000000777171777774747777000000777711177744
                        477777000000777771777774777777000000}
                      DisabledIndex = 1250
                      ImageIndex = 1250
                      Images = DM.cxImageList16x16
                    end
                    object RzBitBtn4: TRzBitBtn
                      Left = 0
                      Top = 95
                      Width = 145
                      Height = 30
                      Align = alTop
                      Caption = 'Analisar Trajeto'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      HotTrack = True
                      ParentFont = False
                      TabOrder = 1
                      OnClick = rzBtnAnalisePreRotaClick
                      Glyph.Data = {
                        DE010000424DDE01000000000000760000002800000024000000120000000100
                        0400000000006801000000000000000000001000000000000000000000000000
                        80000080000000808000800000008000800080800000C0C0C000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                        3333333333333333333333330000333333333333333333333333F33333333333
                        00003333344333333333333333388F3333333333000033334224333333333333
                        338338F3333333330000333422224333333333333833338F3333333300003342
                        222224333333333383333338F3333333000034222A22224333333338F338F333
                        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                        0000333333333A222433333333333338F338F33300003333333333A222433333
                        333333338F338F33000033333333333A222433333333333338F338F300003333
                        33333333A222433333333333338F338F00003333333333333A22433333333333
                        3338F38F000033333333333333A223333333333333338F830000333333333333
                        333A333333333333333338330000333333333333333333333333333333333333
                        0000}
                      DisabledIndex = 1474
                      ImageIndex = 1474
                      Images = DM.cxImageList16x16
                      NumGlyphs = 2
                    end
                    object Panel21: TPanel
                      Left = 0
                      Top = 0
                      Width = 145
                      Height = 65
                      Align = alTop
                      BevelOuter = bvNone
                      TabOrder = 2
                      object RzPanel22: TRzPanel
                        Left = 0
                        Top = 0
                        Width = 145
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlatRounded
                        Caption = 'Escolha o hor'#225'rio'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clHotLight
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                        VisualStyle = vsGradient
                      end
                      object wwDBComboBoxHorarioTalhaoDistanciaAvulsa: TwwDBComboBox
                        Left = 14
                        Top = 32
                        Width = 125
                        Height = 21
                        ShowButton = True
                        Style = csDropDown
                        MapList = False
                        AllowClearKey = False
                        DataField = 'HORARIO'
                        DataSource = DS_HorarioTalhaoDistanciaRotaAvulsa
                        DropDownCount = 8
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        ItemHeight = 0
                        ParentFont = False
                        Sorted = False
                        TabOrder = 1
                        UnboundDataType = wwDefault
                      end
                    end
                  end
                  object cxGrid7: TcxGrid
                    Left = 145
                    Top = 0
                    Width = 661
                    Height = 143
                    Align = alClient
                    TabOrder = 1
                    object cxGridDBTableView2: TcxGridDBTableView
                      Navigator.Buttons.PriorPage.Visible = False
                      Navigator.Buttons.NextPage.Visible = False
                      Navigator.Buttons.Insert.Visible = False
                      Navigator.Buttons.Delete.Visible = False
                      Navigator.Buttons.Edit.Visible = False
                      Navigator.Buttons.SaveBookmark.Visible = False
                      Navigator.Buttons.GotoBookmark.Visible = False
                      Navigator.Buttons.Filter.Visible = False
                      Navigator.Visible = True
                      DataController.DataSource = DS_PreRotaPontos
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsView.GroupByBox = False
                      OptionsView.HeaderAutoHeight = True
                      Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                      object cxGridDBColumn1: TcxGridDBColumn
                        Caption = 'Seq.'
                        DataBinding.FieldName = 'SEQUENCIA'
                        Width = 33
                      end
                      object cxGridDBColumn2: TcxGridDBColumn
                        Caption = 'Ponto Interesse'
                        DataBinding.FieldName = 'PONTO_INTERESSE'
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Properties.ValueChecked = 'S'
                        Properties.ValueUnchecked = 'N'
                        Width = 62
                      end
                      object cxGridDBColumn3: TcxGridDBColumn
                        Caption = 'Texto 1 (16 Caracteres)'
                        DataBinding.FieldName = 'TEXTO_BORDO'
                        Width = 103
                      end
                      object cxGridDBColumn4: TcxGridDBColumn
                        Caption = 'Texto 2 (16 Caracteres)'
                        DataBinding.FieldName = 'TEXTO_BORDO2'
                        Width = 109
                      end
                      object cxGridDBColumn5: TcxGridDBColumn
                        Caption = 'Data Ocorr'#234'ncia'
                        DataBinding.FieldName = 'DATA'
                        Width = 115
                      end
                      object cxGridDBColumn6: TcxGridDBColumn
                        Caption = 'Dist'#226'ncia Trajeto'
                        DataBinding.FieldName = 'DISTANCIA_TOTAL_ULT_PTO'
                        Width = 63
                      end
                      object cxGridDBColumn8: TcxGridDBColumn
                        Caption = 'Avisar "X" Metros Antes do Ponto'
                        DataBinding.FieldName = 'DISTANCIA_AVISO'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.KeyFieldNames = 'CODIGO'
                        Properties.ListColumns = <
                          item
                            FieldName = 'DESCRICAO'
                          end>
                        Properties.ListSource = DS_AvisoDistancia
                        Width = 84
                      end
                      object cxGridDBColumn9: TcxGridDBColumn
                        Caption = 'Observa'#231#227'o'
                        DataBinding.FieldName = 'DESCRICAO_DETALHADA'
                        Width = 260
                      end
                    end
                    object cxGridLevel2: TcxGridLevel
                      GridView = cxGridDBTableView2
                    end
                  end
                  object Panel19: TPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 209
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object wbSelecaoPontosRotaAvulsa: TWebBrowser
                      Left = 0
                      Top = 0
                      Width = 806
                      Height = 209
                      Align = alClient
                      TabOrder = 0
                      OnDocumentComplete = wbVisualizarTrajetoRotaAvulsaDocumentComplete
                      ExplicitLeft = -6
                      ExplicitTop = -4
                      ExplicitWidth = 773
                      ExplicitHeight = 212
                      ControlData = {
                        4C0000004D5300009A1500000000000000000000000000000000000000000000
                        000000004C000000000000000000000001000000E0D057007335CF11AE690800
                        2B2E12620A000000000000004C0000000114020000000000C000000000000046
                        8000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000100000000000000000000000000000000000000}
                    end
                  end
                end
              end
            end
          end
          object pnNavegacaoNovaRotaAvulsa: TPanel
            Left = 0
            Top = 431
            Width = 810
            Height = 32
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Passo: 1 de 5'
            TabOrder = 2
            object btnProximoGeraRotaAvulsa: TRzBitBtn
              Left = 778
              Top = 0
              Width = 32
              Height = 32
              Align = alRight
              TabOrder = 0
              OnClick = btnProximoGeraRotaAvulsaClick
              DisabledIndex = 2281
              ImageIndex = 749
              Images = DM.cxImageList16x16
            end
            object btnAnteriorGeraRotaAvulsa: TRzBitBtn
              Left = 0
              Top = 0
              Width = 32
              Height = 32
              Align = alLeft
              Enabled = False
              TabOrder = 1
              OnClick = btnAnteriorGeraRotaAvulsaClick
              DisabledIndex = 2280
              ImageIndex = 747
              Images = DM.cxImageList16x16
            end
          end
        end
        object tsRotasGerarRotasAvulsasBasic: TRzTabSheet
          Color = clWhite
          Caption = 'tsRotasGerarRotasAvulsasBasic'
          object RzPanel28: TRzPanel
            Left = 0
            Top = 0
            Width = 810
            Height = 23
            Align = alTop
            BorderOuter = fsFlatRounded
            Caption = 'Criar Novas Rotas Avulsa Basic'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
          end
          object RzSizePanel2: TRzSizePanel
            Left = 0
            Top = 23
            Width = 810
            Height = 201
            Align = alTop
            HotSpotVisible = True
            SizeBarWidth = 10
            TabOrder = 1
            object Panel28: TPanel
              Left = 0
              Top = 0
              Width = 810
              Height = 190
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object RzPgNovaRota_Avulso_Basic: TRzPageControl
                Left = 0
                Top = 0
                Width = 810
                Height = 190
                ActivePage = tsNovaRotaAvulsaBasicSelecaoInfo
                Align = alClient
                TabIndex = 0
                TabOrder = 0
                FixedDimension = 19
                object tsNovaRotaAvulsaBasicSelecaoInfo: TRzTabSheet
                  Color = clWhite
                  Caption = 'tsNovaRotaAvulsaBasicSelecaoInfo'
                  object RzPanel29: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 23
                    Align = alTop
                    Alignment = taLeftJustify
                    BorderOuter = fsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clHotLight
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    VisualStyle = vsClassic
                    object RzPanel30: TRzPanel
                      Left = 337
                      Top = 0
                      Width = 469
                      Height = 23
                      Align = alClient
                      Alignment = taLeftJustify
                      AutoSize = True
                      BorderOuter = fsFlatRounded
                      Caption = 
                        'Navegue nos registros para visualizar a posi'#231#227'o do equipamento n' +
                        'o mapa.'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsClassic
                    end
                    object RzPanel31: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 337
                      Height = 23
                      Align = alLeft
                      Alignment = taLeftJustify
                      BorderOuter = fsFlatRounded
                      Caption = 'Insira as informa'#231#245'es abaixo para gerar o trajeto'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      VisualStyle = vsClassic
                    end
                  end
                  object Panel29: TPanel
                    Left = 0
                    Top = 23
                    Width = 336
                    Height = 144
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                    object Label14: TLabel
                      Left = 152
                      Top = 61
                      Width = 66
                      Height = 13
                      Caption = 'Equipamento:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label15: TLabel
                      Left = 27
                      Top = 60
                      Width = 45
                      Height = 13
                      Caption = 'Fazenda:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label16: TLabel
                      Left = 12
                      Top = 15
                      Width = 60
                      Height = 13
                      Alignment = taCenter
                      Caption = 'Data Inicial :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label17: TLabel
                      Left = 17
                      Top = 37
                      Width = 55
                      Height = 13
                      Alignment = taCenter
                      Caption = 'Data Final :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object edtCodEquipamentoRotaAvulsaBasic: TwwDBEdit
                      Left = 224
                      Top = 56
                      Width = 70
                      Height = 21
                      Hint = 'Aperte (F9) para pesquisar equipamentos ativos do tipo caminh'#227'o'
                      TabOrder = 3
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                    end
                    object edtCodFazendaRotaAvulsaBasic: TwwDBEdit
                      Left = 78
                      Top = 56
                      Width = 68
                      Height = 21
                      Hint = 'Aperte (F9) para pesquisar as fazendas que possuem mapa'
                      TabOrder = 2
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                    end
                    object wwDBDateTimePicker3: TwwDBDateTimePicker
                      Left = 78
                      Top = 12
                      Width = 216
                      Height = 21
                      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                      CalendarAttributes.Font.Color = clWindowText
                      CalendarAttributes.Font.Height = -11
                      CalendarAttributes.Font.Name = 'Tahoma'
                      CalendarAttributes.Font.Style = []
                      Epoch = 1950
                      ShowButton = True
                      TabOrder = 0
                    end
                    object wwDBDateTimePicker4: TwwDBDateTimePicker
                      Left = 78
                      Top = 34
                      Width = 216
                      Height = 21
                      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                      CalendarAttributes.Font.Color = clWindowText
                      CalendarAttributes.Font.Height = -11
                      CalendarAttributes.Font.Name = 'Tahoma'
                      CalendarAttributes.Font.Style = []
                      Epoch = 1950
                      ShowButton = True
                      TabOrder = 1
                    end
                    object Panel30: TPanel
                      Left = 0
                      Top = 96
                      Width = 336
                      Height = 48
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 4
                      object RzBitBtnVisualizarTrajetoAvulsoBasic: TRzBitBtn
                        Left = 0
                        Top = 0
                        Width = 113
                        Height = 48
                        Hint = 
                          'Clique aqui para visualizar o trajeto de acordo com os dados inf' +
                          'ormados ao lado.'
                        Align = alLeft
                        Caption = 'Visualizar Trajeto'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        OnClick = RzBitBtnVisualizarTrajetoAvulsoBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 1250
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtnVisualizarPontoaPontoAvulsoBasic: TRzBitBtn
                        Left = 113
                        Top = 0
                        Width = 112
                        Height = 48
                        Align = alLeft
                        Caption = 'Visulizar Rota Ponto a Ponto'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 1
                        OnClick = RzBitBtnVisualizarPontoaPontoAvulsoBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 253
                        Images = DM.cxImageList16x16
                      end
                      object RzBitBtnPararPontoaPontoAvulsoBasic: TRzBitBtn
                        Left = 225
                        Top = 0
                        Width = 111
                        Height = 48
                        Align = alClient
                        Caption = 'Parar Rota Ponto a Ponto'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 2
                        OnClick = RzBitBtnPararPontoaPontoAvulsoBasicClick
                        Glyph.Data = {
                          66010000424D6601000000000000760000002800000014000000140000000100
                          040000000000F000000000000000000000001000000000000000000000000000
                          8000008000000080800080000000800080008080000080808000C0C0C0000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                          8888888800008877777777777777777800008000000000000000007800008099
                          999999999999907800008090000000000000907800008090FFFFFFFFFFF09078
                          00008090FFFFF0FFFFF0907800008090FFFFFFFF0FF0907800008090FFFFFFF0
                          FFF0907800008090FFFFFF0FFFF0907800008090F0FFF0FFF0F0907800008090
                          FFFFFF0FFFF0907800008090FFFFFFF0FFF0907800008090FFFFFFFF0FF09078
                          00008090FFFFF0FFF0F0907800008090FFFFFFFFFFF090780000809000000000
                          0000907800008099999999999999907800008000000000000000008800008888
                          88888888888888880000}
                        ImageIndex = 255
                        Images = DM.cxImageList16x16
                      end
                    end
                  end
                  object cxGrid11: TcxGrid
                    Left = 336
                    Top = 23
                    Width = 470
                    Height = 144
                    Align = alClient
                    TabOrder = 2
                    object cxGridDBTableView6: TcxGridDBTableView
                      DataController.DataSource = DS_VisualizarTrajetoRotaAvulsa
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnFiltering = False
                      OptionsCustomize.ColumnGrouping = False
                      OptionsCustomize.ColumnHidingOnGrouping = False
                      OptionsCustomize.ColumnHorzSizing = False
                      OptionsCustomize.ColumnMoving = False
                      OptionsCustomize.ColumnSorting = False
                      OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
                      OptionsView.GroupByBox = False
                      Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                      object cxGridDBColumn7: TcxGridDBColumn
                        Caption = 'Seq'#252#234'ncia'
                        DataBinding.FieldName = 'SEQUENCIA'
                        Width = 133
                      end
                      object cxGridDBColumn15: TcxGridDBColumn
                        Caption = 'Data'
                        DataBinding.FieldName = 'DATA'
                        Width = 195
                      end
                    end
                    object cxGridLevel6: TcxGridLevel
                      GridView = cxGridDBTableView6
                    end
                  end
                end
                object tsNovaRotaAvulsaGeraInfoTempBasic: TRzTabSheet
                  Caption = 'tsNovaRotaAvulsaGeraInfoTempBasic'
                  object RzPanel32: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 23
                    Align = alTop
                    Alignment = taLeftJustify
                    BorderOuter = fsFlatRounded
                    Caption = 
                      ' Selecione os 4 pontos de interesse obrigat'#243'rios para gera'#231#227'o da' +
                      ' rota.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clHotLight
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    VisualStyle = vsClassic
                  end
                  object Panel31: TPanel
                    Left = 0
                    Top = 23
                    Width = 150
                    Height = 144
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                    object RzPanel33: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 150
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 'Pontos de Interesse'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                    end
                    object Panel32: TPanel
                      Left = 0
                      Top = 23
                      Width = 150
                      Height = 121
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 1
                      object btnEntradaUsinaCriarRotaAvulsaBasic: TRzBitBtn
                        Left = 0
                        Top = 72
                        Width = 150
                        Height = 24
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Entrada Usina'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        OnClick = btnEntradaUsinaCriarRotaAvulsaBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 25
                        Images = DM.cxImageList16x16
                      end
                      object btnSaidaFazendaCriarRotaAvulsaBasic: TRzBitBtn
                        Left = 0
                        Top = 48
                        Width = 150
                        Height = 24
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Sa'#237'da da Fazenda'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 1
                        OnClick = btnSaidaFazendaCriarRotaAvulsaBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 25
                        Images = DM.cxImageList16x16
                      end
                      object btnEntradaFazendaCriarRotaAvulsaBasic: TRzBitBtn
                        Left = 0
                        Top = 24
                        Width = 150
                        Height = 24
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Entrada na Fazenda'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 2
                        OnClick = btnEntradaFazendaCriarRotaAvulsaBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 25
                        Images = DM.cxImageList16x16
                      end
                      object btnSaidaUsinaCriarRotaAvulsaBasic: TRzBitBtn
                        Left = 0
                        Top = 0
                        Width = 150
                        Height = 24
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Sa'#237'da da Usina'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 3
                        OnClick = btnSaidaUsinaCriarRotaAvulsaBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 25
                        Images = DM.cxImageList16x16
                      end
                      object btnReiniciarMarcacaoCriarRotaAvulsaBasic: TRzBitBtn
                        Left = 0
                        Top = 96
                        Width = 150
                        Height = 24
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Reiniciar Marca'#231#227'o'
                        Enabled = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 4
                        OnClick = btnReiniciarMarcacaoCriarRotaAvulsaBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 1474
                        Images = DM.cxImageList16x16
                      end
                    end
                  end
                  object Panel33: TPanel
                    Left = 150
                    Top = 23
                    Width = 656
                    Height = 144
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 2
                    object cxGrid12: TcxGrid
                      Left = 0
                      Top = 23
                      Width = 656
                      Height = 121
                      Align = alClient
                      TabOrder = 0
                      object cxGridDBTableView7: TcxGridDBTableView
                        Navigator.Buttons.PriorPage.Visible = False
                        Navigator.Buttons.NextPage.Visible = False
                        Navigator.Buttons.Insert.Visible = False
                        Navigator.Buttons.Delete.Visible = False
                        Navigator.Buttons.Edit.Visible = False
                        Navigator.Buttons.SaveBookmark.Visible = False
                        Navigator.Buttons.GotoBookmark.Visible = False
                        Navigator.Buttons.Filter.Visible = False
                        DataController.DataSource = DS_PreRotaTMP_Basic
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsCustomize.ColumnGrouping = False
                        OptionsCustomize.ColumnHidingOnGrouping = False
                        OptionsCustomize.ColumnHorzSizing = False
                        OptionsCustomize.ColumnMoving = False
                        OptionsCustomize.ColumnSorting = False
                        OptionsData.CancelOnExit = False
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGridDBTableView7SEQUENCIA: TcxGridDBColumn
                          Caption = 'Sequencia'
                          DataBinding.FieldName = 'SEQUENCIA'
                          Width = 70
                        end
                        object cxGridDBTableView7PONTO_INTERESSE: TcxGridDBColumn
                          Caption = 'Ponto Interesse'
                          DataBinding.FieldName = 'PONTO_INTERESSE'
                          PropertiesClassName = 'TcxCheckBoxProperties'
                          Properties.ValueChecked = 'S'
                          Properties.ValueUnchecked = 'N'
                          Width = 95
                        end
                        object cxGridDBTableView7DESCRICAO_DETALHADA: TcxGridDBColumn
                          Caption = 'Descri'#231#227'o'
                          DataBinding.FieldName = 'DESCRICAO_DETALHADA'
                          Width = 347
                        end
                      end
                      object cxGridLevel7: TcxGridLevel
                        GridView = cxGridDBTableView7
                      end
                    end
                    object RzPanel34: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 656
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 
                        'Selecione o ponto desejado e clique sobre o bot'#227'o do ponto de in' +
                        'teresse.'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      VisualStyle = vsGradient
                    end
                  end
                end
                object tsNovaRotaAvulsaTipoPercursoTempBasic: TRzTabSheet
                  Caption = 'tsNovaRotaAvulsaTipoPercursoTempBasic'
                  object RzPanel35: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 23
                    Align = alTop
                    Alignment = taLeftJustify
                    BorderOuter = fsFlatRounded
                    Caption = 'Classifique o tipo de percurso para cada trecho do trajeto. '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clHotLight
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    VisualStyle = vsClassic
                  end
                  object Panel34: TPanel
                    Left = 0
                    Top = 23
                    Width = 150
                    Height = 144
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                    object RzPanel36: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 150
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 'Tipos de Percurso'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                    end
                    object Panel35: TPanel
                      Left = 0
                      Top = 23
                      Width = 150
                      Height = 121
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 1
                      object btnAsfaltoCriarRotaAvulsaBasi: TRzBitBtn
                        Left = 0
                        Top = 33
                        Width = 150
                        Height = 23
                        Alignment = taLeftJustify
                        Align = alTop
                        Caption = 'Aplicar Tipo de Percurso'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 0
                        OnClick = btnAsfaltoCriarRotaAvulsaBasicClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 25
                        Images = DM.cxImageList16x16
                      end
                      object Panel37: TPanel
                        Left = 0
                        Top = 0
                        Width = 150
                        Height = 33
                        Align = alTop
                        BevelOuter = bvNone
                        TabOrder = 1
                        object cbTipoPercursoCriarRotaAvulsaBasic: TComboBox
                          Left = 2
                          Top = 6
                          Width = 145
                          Height = 21
                          TabOrder = 0
                        end
                      end
                      object btnLimparSelecaoCriarRotaAvulsaBasi: TRzBitBtn
                        Left = 0
                        Top = 98
                        Width = 150
                        Height = 23
                        Alignment = taLeftJustify
                        Align = alBottom
                        Caption = 'Limpar Sele'#231#227'o'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 2
                        OnClick = btnLimparSelecaoCriarRotaAvulsaBasiClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 245
                        Images = DM.cxImageList16x16
                      end
                      object btnSelecionarTodosPontosCriarRotaAvulsaBasi: TRzBitBtn
                        Left = 0
                        Top = 75
                        Width = 150
                        Height = 23
                        Alignment = taLeftJustify
                        Align = alBottom
                        Caption = 'Selecionar Todos'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        HotTrack = True
                        ParentFont = False
                        TabOrder = 3
                        OnClick = btnSelecionarTodosPontosCriarRotaAvulsaBasiClick
                        Glyph.Data = {
                          46050000424D460500000000000036040000280000000D000000110000000100
                          0800000000001001000000000000000000000001000000000000000000008080
                          8000000080000080800000800000808000008000000080008000408080004040
                          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                          1D007666280000450000013E450013286A006A39850085324A00040404000808
                          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                          0000000039009B00000000250000000049003B111100002F000000005D004517
                          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                          0F0F0F0F0F0F0F000000}
                        ImageIndex = 436
                        Images = DM.cxImageList16x16
                      end
                    end
                  end
                  object Panel36: TPanel
                    Left = 150
                    Top = 23
                    Width = 656
                    Height = 144
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 2
                    object cxGrid13: TcxGrid
                      Left = 0
                      Top = 23
                      Width = 656
                      Height = 121
                      Align = alClient
                      TabOrder = 0
                      object cxGridDBTableView8: TcxGridDBTableView
                        Navigator.Buttons.PriorPage.Visible = False
                        Navigator.Buttons.NextPage.Visible = False
                        Navigator.Buttons.Insert.Visible = False
                        Navigator.Buttons.Delete.Visible = False
                        Navigator.Buttons.Edit.Visible = False
                        Navigator.Buttons.SaveBookmark.Visible = False
                        Navigator.Buttons.GotoBookmark.Visible = False
                        Navigator.Buttons.Filter.Visible = False
                        DataController.DataSource = DS_PreRotaTMP_Basic
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsCustomize.ColumnFiltering = False
                        OptionsCustomize.ColumnGrouping = False
                        OptionsCustomize.ColumnHidingOnGrouping = False
                        OptionsCustomize.ColumnHorzSizing = False
                        OptionsCustomize.ColumnMoving = False
                        OptionsCustomize.ColumnSorting = False
                        OptionsData.CancelOnExit = False
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsSelection.MultiSelect = True
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        OptionsView.Indicator = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGridDBTableView8SEQUENCIA: TcxGridDBColumn
                          Caption = 'Sequencia'
                          DataBinding.FieldName = 'SEQUENCIA'
                          Width = 101
                        end
                        object cxGridDBTableView8DESCRICAO_DETALHADA: TcxGridDBColumn
                          Caption = 'Descri'#231#227'o'
                          DataBinding.FieldName = 'DESCRICAO_DETALHADA'
                          Width = 295
                        end
                        object cxGridDBTableView8DESCRICAOTIPOPERCURSO: TcxGridDBColumn
                          Caption = 'Tipo Percurso'
                          DataBinding.FieldName = 'DESCRICAOTIPOPERCURSO'
                          Width = 200
                        end
                      end
                      object cxGridLevel8: TcxGridLevel
                        GridView = cxGridDBTableView8
                      end
                    end
                    object RzPanel37: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 656
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 
                        'Selecione v'#225'rios pontos mantendo a tecla shift pressionada e esc' +
                        'olha o tipo de percurso do trecho selecionado.'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      VisualStyle = vsGradient
                    end
                  end
                end
                object tsNovaRotaAvulsaPontosInteresseTempBasic: TRzTabSheet
                  Caption = 'tsNovaRotaAvulsaPontosInteresseTempBasic'
                  object RzPanel38: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 23
                    Align = alTop
                    Alignment = taLeftJustify
                    BorderOuter = fsFlatRounded
                    Caption = 'Marque os pontos de interesse.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clHotLight
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    VisualStyle = vsClassic
                  end
                  object Panel38: TPanel
                    Left = 0
                    Top = 23
                    Width = 305
                    Height = 144
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                    object Label18: TLabel
                      Left = 8
                      Top = 30
                      Width = 75
                      Height = 13
                      Caption = 'Texto 1 Bordo :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label19: TLabel
                      Left = 8
                      Top = 51
                      Width = 75
                      Height = 13
                      Caption = 'Texto 2 Bordo :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label20: TLabel
                      Left = 30
                      Top = 73
                      Width = 53
                      Height = 13
                      Caption = 'Descri'#231#227'o :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label21: TLabel
                      Left = 4
                      Top = 95
                      Width = 79
                      Height = 13
                      Caption = 'Dist'#226'ncia Aviso :'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label22: TLabel
                      Left = 151
                      Top = 95
                      Width = 33
                      Height = 13
                      Caption = 'metros'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object RzPanel39: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 305
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 'Informa'#231#245'es'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                    end
                    object edtTexto1BordoCriarRotaAvulsaBasic: TwwDBEdit
                      Left = 89
                      Top = 26
                      Width = 209
                      Height = 21
                      Hint = 'Limite de 16 caracteres.'
                      MaxLength = 16
                      TabOrder = 1
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                    end
                    object edtTexto2BordoCriarRotaAvulsaBasic: TwwDBEdit
                      Left = 89
                      Top = 48
                      Width = 209
                      Height = 21
                      Hint = 'Limite de 16 caracteres.'
                      MaxLength = 16
                      TabOrder = 2
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                    end
                    object edtDescricaoPontoInteresseCriarRotaAvulsaBasic: TwwDBEdit
                      Left = 89
                      Top = 70
                      Width = 209
                      Height = 21
                      Hint = 'Limite de 16 caracteres.'
                      TabOrder = 3
                      UnboundDataType = wwDefault
                      WantReturns = False
                      WordWrap = False
                    end
                    object btnGravarInformacoesCriarRotaAvulsaBasic: TRzBitBtn
                      Left = 151
                      Top = 114
                      Width = 148
                      Height = 31
                      Alignment = taLeftJustify
                      Caption = 'Marcar Ponto Interesse'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      HotTrack = True
                      ParentFont = False
                      TabOrder = 5
                      OnClick = btnGravarInformacoesCriarRotaAvulsaBasicClick
                      Glyph.Data = {
                        46050000424D460500000000000036040000280000000D000000110000000100
                        0800000000001001000000000000000000000001000000000000000000008080
                        8000000080000080800000800000808000008000000080008000408080004040
                        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                        1D007666280000450000013E450013286A006A39850085324A00040404000808
                        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                        0000000039009B00000000250000000049003B111100002F000000005D004517
                        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                        0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                        00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                        001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                        11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                        110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                        11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                        110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                        110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                        0F0F0F0F0F0F0F000000}
                      ImageIndex = 80
                      Images = DM.cxImageList16x16
                    end
                    object btnLimparInformacoesCriarRotaAvulsaBasic: TRzBitBtn
                      Left = 0
                      Top = 114
                      Width = 145
                      Height = 31
                      Alignment = taLeftJustify
                      Caption = 'Retirar Ponto Interesse'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      HotTrack = True
                      ParentFont = False
                      TabOrder = 6
                      OnClick = btnLimparInformacoesCriarRotaAvulsaBasicClick
                      Glyph.Data = {
                        46050000424D460500000000000036040000280000000D000000110000000100
                        0800000000001001000000000000000000000001000000000000000000008080
                        8000000080000080800000800000808000008000000080008000408080004040
                        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                        1D007666280000450000013E450013286A006A39850085324A00040404000808
                        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                        0000000039009B00000000250000000049003B111100002F000000005D004517
                        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                        0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                        00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                        001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                        11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                        110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                        11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                        110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                        110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                        0F0F0F0F0F0F0F000000}
                      ImageIndex = 81
                      Images = DM.cxImageList16x16
                    end
                    object cbDistanciaAvisoCriarRotaAvulsaBasic: TComboBox
                      Left = 89
                      Top = 92
                      Width = 57
                      Height = 21
                      ItemIndex = 2
                      TabOrder = 4
                      Text = '200'
                      OnDropDown = cbDistanciaAvisoCriarRotaAvulsaBasicDropDown
                      Items.Strings = (
                        '50'
                        '100'
                        '200')
                    end
                  end
                  object Panel39: TPanel
                    Left = 305
                    Top = 23
                    Width = 501
                    Height = 144
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 2
                    object RzPanel40: TRzPanel
                      Left = 0
                      Top = 0
                      Width = 501
                      Height = 23
                      Align = alTop
                      BorderOuter = fsFlatRounded
                      Caption = 
                        'Selecione o ponto p/ marc'#225'-lo como Ponto de Interesse e insira a' +
                        's informa'#231#245'es ao lado.'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                    end
                    object cxGrid14: TcxGrid
                      Left = 0
                      Top = 23
                      Width = 501
                      Height = 121
                      Align = alClient
                      TabOrder = 1
                      object cxGridDBTableView9: TcxGridDBTableView
                        Navigator.Buttons.PriorPage.Visible = False
                        Navigator.Buttons.NextPage.Visible = False
                        Navigator.Buttons.Insert.Visible = False
                        Navigator.Buttons.Delete.Visible = False
                        Navigator.Buttons.Edit.Visible = False
                        Navigator.Buttons.SaveBookmark.Visible = False
                        Navigator.Buttons.GotoBookmark.Visible = False
                        Navigator.Buttons.Filter.Visible = False
                        DataController.DataSource = DS_PreRotaTMP_Basic
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        Images = DM.cxImageList16x16
                        OptionsCustomize.ColumnFiltering = False
                        OptionsCustomize.ColumnGrouping = False
                        OptionsCustomize.ColumnHidingOnGrouping = False
                        OptionsCustomize.ColumnMoving = False
                        OptionsCustomize.ColumnSorting = False
                        OptionsData.CancelOnExit = False
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsSelection.MultiSelect = True
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderAutoHeight = True
                        OptionsView.Indicator = True
                        Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
                        object cxGridDBTableView9SEQUENCIA: TcxGridDBColumn
                          Caption = 'Sequencia'
                          DataBinding.FieldName = 'SEQUENCIA'
                        end
                        object cxGridDBTableView9TEXTO_BORDO: TcxGridDBColumn
                          Caption = 'Texto 1 Bordo'
                          DataBinding.FieldName = 'TEXTO_BORDO'
                          Width = 83
                        end
                        object cxGridDBTableView9TEXTO_BORDO2: TcxGridDBColumn
                          Caption = 'Texto 2 Bordo'
                          DataBinding.FieldName = 'TEXTO_BORDO2'
                          Width = 86
                        end
                        object cxGridDBTableView9DISTANCIA_AVISO_DETALHADO: TcxGridDBColumn
                          Caption = 'Aviso em Metros'
                          DataBinding.FieldName = 'DISTANCIA_AVISO_DETALHADO'
                          Width = 86
                        end
                        object cxGridDBTableView9DESCRICAO_DETALHADA: TcxGridDBColumn
                          Caption = 'Detalhes'
                          DataBinding.FieldName = 'DESCRICAO_DETALHADA'
                          Width = 140
                        end
                      end
                      object cxGridLevel9: TcxGridLevel
                        GridView = cxGridDBTableView9
                      end
                    end
                  end
                end
                object tsNovaRotaResumoConfirmacaoInformacoesBasic: TRzTabSheet
                  Caption = 'tsNovaRotaResumoConfirmacaoInformacoesBasic'
                  object RzPanel41: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 806
                    Height = 23
                    Align = alTop
                    Alignment = taLeftJustify
                    BorderOuter = fsFlatRounded
                    Caption = 'Confirma'#231#227'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clHotLight
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    VisualStyle = vsClassic
                  end
                  object RzGroupBox1: TRzGroupBox
                    Left = 0
                    Top = 23
                    Width = 806
                    Height = 137
                    Align = alTop
                    TabOrder = 1
                    object RzPanel42: TRzPanel
                      Left = 16
                      Top = 13
                      Width = 204
                      Height = 23
                      BorderOuter = fsFlatRounded
                      Caption = 'Altera'#231#227'o das Cores dos Trajetos'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      VisualStyle = vsGradient
                    end
                    object pnCorTrajetoIdaCriarNovaRotaAvulsaBasic: TRzPanel
                      Left = 16
                      Top = 49
                      Width = 204
                      Height = 23
                      Alignment = taLeftJustify
                      BorderOuter = fsFlatRounded
                      Caption = 'Trajeto Ida'
                      Color = 12123880
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      VisualStyle = vsClassic
                      object imgTrajetoIdaCriarNovaRotaAvulsaBasic: TImage
                        Left = 183
                        Top = 4
                        Width = 16
                        Height = 16
                        Hint = 'Clique aqui para alterar a cor'
                        ParentShowHint = False
                        Picture.Data = {
                          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                          0000001008060000001FF3FF610000000467414D410000B18E7CFB5193000000
                          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
                          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
                          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
                          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
                          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
                          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
                          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
                          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
                          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
                          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
                          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
                          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
                          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
                          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
                          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
                          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
                          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
                          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
                          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
                          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
                          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
                          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
                          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
                          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
                          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
                          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
                          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
                          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
                          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
                          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
                          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
                          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
                          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
                          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
                          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
                          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
                          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
                          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
                          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
                          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
                          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
                          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
                          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
                          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
                          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
                          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
                          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
                          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
                          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
                          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
                          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
                          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
                          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
                          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
                          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
                          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
                          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
                          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
                          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
                          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
                          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
                          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
                          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
                          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
                          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
                          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
                          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
                          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
                          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
                          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
                          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
                          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
                          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
                          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
                          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
                          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
                          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
                          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
                          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
                          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
                          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
                          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
                          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
                          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B0C00000B0C013F
                          4022C80000031249444154384F95937D4C0D6A1CC79F53477662D241A48389A8
                          33932E4328443A8B4E498E97710B770DF336910D91C42C61F212458C84A3D1C6
                          94EE71A5DC5DB7D534D2383966845E9CDDAE22472F1F8FF347F3321BBFEDD99E
                          EDF77C3FFB7E7FCFF308F145291442848F74173AAD9B08D3F6ED9F344BBBE9D0
                          8A809B177746587376E81B36468EBDEEEBAE327CA9F96AFF19A0F3EEEBB86EAA
                          D7B6C2BDBAFFF30A97D0FA2A858FFF9DE66EC5338ACBDF72F94C26F3C60FCC91
                          42A7EF404E0E0EEA3D0B461494E4EBB9F4701D595587C92F5B41C39334D28C8D
                          2466C3855B3558ABD3F1F754277C0570543838ED89F6B94D69149B6E0430C514
                          4E64D13C4EDD5946FB8B03C4ECAAE3B79510935C0BFC4D5ABCDEA21242DB0959
                          3D4573ACED6A20544672B3683A2253203204B977E6C2CBC36CDC6FC6B0B58EFA
                          97B976C09FD9EB6D037B28A3EC809183BA075BB327D19E190707E6507A319013
                          F981E4986690576C80DA545AEB0F52633E4787ED920494506CDCD0E6A9EEB2D0
                          0E3862F0B84ED450D0E969F39F46F3C96078B41C1E4BE0D30478BE0B2480A613
                          F0CE2801455C3D1AD3D4CF59840A7537278FE727BD5A3A16B9D121048D61FD69
                          FD2702EE2D96716468733C3C4B82D7FBC09A01CD39125040CA72FF074A218688
                          89C35D6652301C9235BC9DD187A6837E50162ED702B81F2B9DAC972EB6C939A4
                          40433ABC3F8FEDD571C2FC5CD3ECF6F5E3DD62B9E1437BB627B62BA3E0DF2028
                          8F845299BD622954AD01CB1678B11BEA0EC187F3DCCD8CC0B5AB986007CC0EF0
                          88C524857983A1D097EAACB1B6BF8EEAEAEC0EEE45CB086BA583CD720EC9D078
                          8C567322D101EADCCEEB9B34A24F28C572685734349CF56198BB6A55EFEE4A1F
                          EBB59076EEFF4EAD2986771532464D121FCA5793BA646895A310033A012AA5E8
                          69CE33D453329A5BDBFB593E3722C6B884521442569CB6B297B322D45BD36DF6
                          FCC9EEA913BC549B950AA1F9EE092F9AA689A73A8E4653488B317E48FA1BE3B8
                          D7CD054178B82A837EF871BE6928E607BA2558AE2D6EC122ED56FE41C65AEF32
                          7946BAFD857255096DB06F8F0D3A3F9744E72E62D8CF483F018E5AD186AEA709
                          900000000049454E44AE426082}
                        ShowHint = True
                        OnClick = imgTrajetoIdaCriarNovaRotaAvulsaBasicClick
                      end
                    end
                    object pnCorTrajetoVoltaCriarNovaRotaAvulsaBasic: TRzPanel
                      Left = 14
                      Top = 78
                      Width = 206
                      Height = 23
                      Alignment = taLeftJustify
                      BorderOuter = fsFlatRounded
                      Caption = 'Trajeto Volta'
                      Color = 1827962
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                      VisualStyle = vsClassic
                      object imgTrajetoVoltaCriarNovaRotaAvulsaBasic: TImage
                        Left = 185
                        Top = 4
                        Width = 16
                        Height = 16
                        Hint = 'Clique aqui para alterar a cor'
                        ParentShowHint = False
                        Picture.Data = {
                          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                          0000001008060000001FF3FF610000000467414D410000B18E7CFB5193000000
                          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
                          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
                          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
                          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
                          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
                          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
                          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
                          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
                          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
                          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
                          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
                          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
                          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
                          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
                          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
                          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
                          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
                          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
                          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
                          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
                          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
                          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
                          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
                          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
                          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
                          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
                          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
                          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
                          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
                          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
                          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
                          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
                          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
                          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
                          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
                          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
                          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
                          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
                          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
                          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
                          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
                          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
                          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
                          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
                          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
                          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
                          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
                          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
                          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
                          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
                          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
                          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
                          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
                          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
                          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
                          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
                          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
                          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
                          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
                          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
                          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
                          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
                          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
                          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
                          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
                          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
                          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
                          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
                          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
                          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
                          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
                          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
                          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
                          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
                          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
                          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
                          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
                          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
                          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
                          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
                          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
                          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
                          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
                          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B0C00000B0C013F
                          4022C80000031249444154384F95937D4C0D6A1CC79F53477662D241A48389A8
                          33932E4328443A8B4E498E97710B770DF336910D91C42C61F212458C84A3D1C6
                          94EE71A5DC5DB7D534D2383966845E9CDDAE22472F1F8FF347F3321BBFEDD99E
                          EDF77C3FFB7E7FCFF308F145291442848F74173AAD9B08D3F6ED9F344BBBE9D0
                          8A809B177746587376E81B36468EBDEEEBAE327CA9F96AFF19A0F3EEEBB86EAA
                          D7B6C2BDBAFFF30A97D0FA2A858FFF9DE66EC5338ACBDF72F94C26F3C60FCC91
                          42A7EF404E0E0EEA3D0B461494E4EBB9F4701D595587C92F5B41C39334D28C8D
                          2466C3855B3558ABD3F1F754277C0570543838ED89F6B94D69149B6E0430C514
                          4E64D13C4EDD5946FB8B03C4ECAAE3B79510935C0BFC4D5ABCDEA21242DB0959
                          3D4573ACED6A20544672B3683A2253203204B977E6C2CBC36CDC6FC6B0B58EFA
                          97B976C09FD9EB6D037B28A3EC809183BA075BB327D19E190707E6507A319013
                          F981E4986690576C80DA545AEB0F52633E4787ED920494506CDCD0E6A9EEB2D0
                          0E3862F0B84ED450D0E969F39F46F3C96078B41C1E4BE0D30478BE0B2480A613
                          F0CE2801455C3D1AD3D4CF59840A7537278FE727BD5A3A16B9D121048D61FD69
                          FD2702EE2D96716468733C3C4B82D7FBC09A01CD39125040CA72FF074A218688
                          89C35D6652301C9235BC9DD187A6837E50162ED702B81F2B9DAC972EB6C939A4
                          40433ABC3F8FEDD571C2FC5CD3ECF6F5E3DD62B9E1437BB627B62BA3E0DF2028
                          8F845299BD622954AD01CB1678B11BEA0EC187F3DCCD8CC0B5AB986007CC0EF0
                          88C524857983A1D097EAACB1B6BF8EEAEAEC0EEE45CB086BA583CD720EC9D078
                          8C567322D101EADCCEEB9B34A24F28C572685734349CF56198BB6A55EFEE4A1F
                          EBB59076EEFF4EAD2986771532464D121FCA5793BA646895A310033A012AA5E8
                          69CE33D453329A5BDBFB593E3722C6B884521442569CB6B297B322D45BD36DF6
                          FCC9EEA913BC549B950AA1F9EE092F9AA689A73A8E4653488B317E48FA1BE3B8
                          D7CD054178B82A837EF871BE6928E607BA2558AE2D6EC122ED56FE41C65AEF32
                          7946BAFD857255096DB06F8F0D3A3F9744E72E62D8CF483F018E5AD186AEA709
                          900000000049454E44AE426082}
                        ShowHint = True
                        OnClick = imgTrajetoVoltaCriarNovaRotaAvulsaBasicClick
                      end
                    end
                    object RzPanel45: TRzPanel
                      Left = 226
                      Top = 13
                      Width = 399
                      Height = 23
                      BorderOuter = fsFlatRounded
                      Caption = 'Informe a descri'#231#227'o da rota'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                      VisualStyle = vsGradient
                    end
                    object RzGroupBox2: TRzGroupBox
                      Left = 226
                      Top = 42
                      Width = 399
                      Height = 71
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                      object memoDescricaoRotaCriarNovaRotaAvulsaBasic: TMemo
                        Left = 1
                        Top = 14
                        Width = 397
                        Height = 56
                        Align = alClient
                        BevelInner = bvNone
                        BevelOuter = bvNone
                        BorderStyle = bsNone
                        TabOrder = 0
                      end
                    end
                    object btnConfirmaRotaCriarNovaRotaAvulsaBasic: TRzBitBtn
                      Left = 631
                      Top = 42
                      Width = 133
                      Height = 64
                      Caption = 'Guardar Rota'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      HotTrack = True
                      ParentFont = False
                      TabOrder = 5
                      OnClick = btnConfirmaRotaCriarNovaRotaAvulsaBasicClick
                      Glyph.Data = {
                        DE010000424DDE01000000000000760000002800000024000000120000000100
                        0400000000006801000000000000000000001000000000000000000000000000
                        80000080000000808000800000008000800080800000C0C0C000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                        3333333333333333333333330000333333333333333333333333F33333333333
                        00003333344333333333333333388F3333333333000033334224333333333333
                        338338F3333333330000333422224333333333333833338F3333333300003342
                        222224333333333383333338F3333333000034222A22224333333338F338F333
                        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                        0000333333333A222433333333333338F338F33300003333333333A222433333
                        333333338F338F33000033333333333A222433333333333338F338F300003333
                        33333333A222433333333333338F338F00003333333333333A22433333333333
                        3338F38F000033333333333333A223333333333333338F830000333333333333
                        333A333333333333333338330000333333333333333333333333333333333333
                        0000}
                      ImageIndex = 714
                      Images = DM.cxImageList16x16
                      NumGlyphs = 2
                    end
                    object RzPanel46: TRzPanel
                      Left = 632
                      Top = 13
                      Width = 133
                      Height = 23
                      BorderOuter = fsFlatRounded
                      Caption = 'Confirma'#231#227'o'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clHotLight
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 6
                      VisualStyle = vsGradient
                    end
                  end
                end
              end
            end
          end
          object pnNavegacaoNovaRotaAvulsaBasic: TPanel
            Left = 0
            Top = 431
            Width = 810
            Height = 32
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Passo: 1 de 5'
            TabOrder = 2
            object btnProximoGeraRotaAvulsaBasic: TRzBitBtn
              Left = 778
              Top = 0
              Width = 32
              Height = 32
              Align = alRight
              TabOrder = 0
              OnClick = btnProximoGeraRotaAvulsaClick
              DisabledIndex = 2281
              ImageIndex = 749
              Images = DM.cxImageList16x16
            end
            object btnAnteriorGeraRotaAvulsaBasic: TRzBitBtn
              Left = 0
              Top = 0
              Width = 32
              Height = 32
              Align = alLeft
              Enabled = False
              TabOrder = 1
              OnClick = btnAnteriorGeraRotaAvulsaClick
              DisabledIndex = 2280
              ImageIndex = 747
              Images = DM.cxImageList16x16
            end
          end
          object cmVisualizarTrajetoRotaAvulsaBasic: TChromium
            Left = 0
            Top = 224
            Width = 810
            Height = 207
            Color = clBtnFace
            Align = alClient
            DefaultUrl = 'about:blank'
            TabOrder = 3
            OnLoadEnd = cmVisualizarTrajetoRotaAvulsaBasicLoadEnd
          end
        end
      end
      object rzPageControlUnidadesMoagem: TRzPageControl
        Left = 0
        Top = 0
        Width = 814
        Height = 22
        Align = alTop
        TabOrder = 1
        OnChange = rzPageControlUnidadesMoagemChange
        FixedDimension = 0
      end
    end
  end
  object QR_Frente: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT f.cod_grupo,'
      '       f.cod_regional,'
      '       f.cod_unidade,'
      '       f.cod_safra,'
      '       f.cod_frente,'
      '       f.cod_fazenda,'
      '       f.desc_frente||'#39' - '#39'||f.desc_fazenda descricao,'
      '       f.transporte_liberado,'
      '       DECODE( (SELECT COUNT(1)'
      '                  FROM rotas_fazendas rf,'
      '                       pre_rota pr,'
      '                       pre_rota_pontos prp'
      '                 WHERE prp.cod_pre_rota = pr.cod_pre_rota'
      '                   AND pr.cod_rota = rf.cod_rota'
      '                   AND rf.cod_grupo = f.cod_grupo'
      '                   AND rf.cod_regional = f.cod_regional'
      '                   AND rf.cod_unidade = f.cod_unidade'
      '                   AND rf.cod_fazenda = f.cod_fazenda'
      
        '                   AND INTERSECAO(SYSDATE,SYSDATE,rf.datahora_in' +
        'icio,rf.datahora_fim) = '#39'TRUE'#39'),'
      '                0,'#39'N'#39','#39'S'#39') possuiRota'
      'FROM (SELECT fl.cod_grupo,'
      '             fl.cod_regional,'
      '             fl.cod_unidade,'
      '             fl.cod_safra, '
      '             fl.cod_frente, '
      '             fl.cod_fazenda, '
      '             fe.descricao desc_frente, '
      '             SUBSTR(fa.descricao,1,35) desc_fazenda,'
      
        '             DECODE(fl.transporte_liberado,'#39'N'#39','#39'N'#227'o'#39','#39'S'#39','#39'Sim'#39','#39 +
        'INDEFINIDO'#39') transporte_liberado'
      '      FROM fazenda fa, '
      '           frente fe, '
      '           fazendas_liberadas fl'
      '      WHERE fa.cod_fazenda = fl.cod_fazenda'
      '        AND fe.cod_grupo = fl.cod_grupo'
      '        AND fe.cod_regional = fl.cod_regional'
      '        AND fe.cod_unidade = fl.cod_unidade'
      '        AND fe.cod_safra = fl.cod_safra'
      '        AND fe.cod_frente = fl.cod_frente'
      '        AND fl.cod_grupo = :cod_grupo'
      '        AND fl.cod_regional = :cod_regional'
      '        AND fl.cod_unidade = :cod_unidade'
      '        AND fl.cod_safra   = :cod_safra'
      ''
      '      UNION ALL'
      ''
      '      SELECT fl.cod_grupo,'
      '             fl.cod_regional,'
      '             fl.cod_unidade,'
      '             fl.cod_safra, '
      '             fl.cod_frente, '
      '             fl.cod_fazenda, '
      '             fe.descricao desc_frente, '
      '             SUBSTR(fa.descricao,1,35) desc_fazenda,'
      
        '             DECODE(fl.transporte_liberado,'#39'N'#39','#39'N'#227'o'#39','#39'S'#39','#39'Sim'#39','#39 +
        'INDEFINIDO'#39') transporte_liberado'
      '      FROM fazenda fa, '
      '           frente fe, '
      '           fazendas_liberadas_transf fl'
      '      WHERE fa.cod_fazenda = fl.cod_fazenda'
      '        AND fe.cod_grupo = fl.cod_grupo'
      '        AND fe.cod_regional = fl.cod_regional'
      '        AND fe.cod_unidade = fl.cod_unidade'
      '        AND fe.cod_safra = fl.cod_safra'
      '        AND fe.cod_frente = fl.cod_frente'
      '        AND fl.cod_grupo = :cod_grupo'
      '        AND fl.cod_regional = :cod_regional'
      '        AND fl.cod_unidade = :cod_unidade'
      '        AND fl.cod_safra   = :cod_safra'
      '        '
      '        ORDER BY cod_frente, cod_fazenda'
      '      ) f')
    AfterOpen = QR_FrenteAfterScroll
    AfterScroll = QR_FrenteAfterScroll
    Left = 48
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_safra'
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'cod_grupo'
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'cod_regional'
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'cod_unidade'
        Value = Null
      end>
    object QR_FrenteCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_FrenteCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_FrenteCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_FrenteCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_FrenteCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_FrenteCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_FrenteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 4000
    end
    object QR_FrenteTRANSPORTE_LIBERADO: TStringField
      FieldName = 'TRANSPORTE_LIBERADO'
      Size = 10
    end
    object QR_FrentePOSSUIROTA: TStringField
      FieldName = 'POSSUIROTA'
      Size = 1
    end
  end
  object DS_Frente: TOraDataSource
    DataSet = QR_Frente
    Left = 16
    Top = 224
  end
  object QR_GerenciamentoRotas: TOraQuery
    SQLDelete.Strings = (
      'DELETE FROM rotas_fazendas'
      'WHERE'
      '  COD_ROTA = :COD_ROTA')
    SQLUpdate.Strings = (
      'UPDATE rotas_fazendas'
      'SET'
      '  COD_ROTA = :COD_ROTA,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_GRUPO = :COD_GRUPO,'
      '  COD_REGIONAL = :COD_REGIONAL,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  COD_FAZENDA = :COD_FAZENDA,'
      '  ZONA = :ZONA,'
      '  DATAHORA_INICIO = :DATAHORA_INICIO,'
      '  DATAHORA_FIM = :DATAHORA_FIM,'
      '  COR_TRAJETO_IDA = :COR_TRAJETO_IDA,'
      '  COR_TRAJETO_VOLTA = :COR_TRAJETO_VOLTA,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  ATIVO = :ATIVO'
      'WHERE'
      '  COD_ROTA = :OLD_COD_ROTA')
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_rota, a.descricao, a.cod_fazenda,'
      '       a.zona, a.datahora_inicio, a.datahora_fim,'
      '       a.observacao,'
      '       a.ativo,'
      '       '#39'S'#39' visualiza,'
      '       a.cor_trajeto_ida,'
      '       a.cor_trajeto_volta,'
      '       a.cod_grupo, '
      '       a.cod_regional,'
      '       a.cod_unidade'
      '  FROM rotas_fazendas a'
      ' WHERE a.cod_grupo = :cod_grupo'
      '   AND a.cod_regional = :cod_regional'
      '   AND a.cod_unidade = :cod_unidade'
      '   AND a.cod_fazenda = :cod_fazenda'
      'ORDER BY a.datahora_inicio DESC')
    AfterOpen = QR_GerenciamentoRotasAfterScroll
    AfterScroll = QR_GerenciamentoRotasAfterScroll
    Left = 217
    Top = 178
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
      end
      item
        DataType = ftUnknown
        Name = 'cod_regional'
      end
      item
        DataType = ftUnknown
        Name = 'cod_unidade'
      end
      item
        DataType = ftInteger
        Name = 'cod_fazenda'
      end>
    object QR_GerenciamentoRotasCOD_ROTA: TFloatField
      FieldName = 'COD_ROTA'
      Required = True
    end
    object QR_GerenciamentoRotasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object QR_GerenciamentoRotasCOD_FAZENDA: TIntegerField
      FieldName = 'COD_FAZENDA'
      Required = True
    end
    object QR_GerenciamentoRotasZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QR_GerenciamentoRotasDATAHORA_INICIO: TDateTimeField
      FieldName = 'DATAHORA_INICIO'
    end
    object QR_GerenciamentoRotasDATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object QR_GerenciamentoRotasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 4000
    end
    object QR_GerenciamentoRotasATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 1
    end
    object QR_GerenciamentoRotasVISUALIZA: TStringField
      FieldName = 'VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object QR_GerenciamentoRotasCOR_TRAJETO_IDA: TStringField
      FieldName = 'COR_TRAJETO_IDA'
      Size = 9
    end
    object QR_GerenciamentoRotasCOR_TRAJETO_VOLTA: TStringField
      FieldName = 'COR_TRAJETO_VOLTA'
      Size = 9
    end
    object QR_GerenciamentoRotasCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Required = True
    end
    object QR_GerenciamentoRotasCOD_REGIONAL: TIntegerField
      FieldName = 'COD_REGIONAL'
      Required = True
    end
    object QR_GerenciamentoRotasCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Required = True
    end
  end
  object DS_GerenciamentoRotas: TOraDataSource
    DataSet = QR_GerenciamentoRotas
    Left = 184
    Top = 178
  end
  object DS_EntradaCana: TOraDataSource
    DataSet = QR_EntradaCana
    Left = 16
    Top = 272
  end
  object QR_EntradaCana: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT e.cod_grupo,'
      '       e.cod_regional,'
      '       e.cod_unidade,'
      '       e.cod_equipamento,'
      '       e.cod_entradacana, '
      '       e.data_movimento, '
      '       al.data_saida, '
      '       e.datahora data_chegada,'
      '       (SELECT COUNT(1)'
      '          FROM monitoramento m'
      '         WHERE m.cod_grupo = e.cod_grupo'
      '           AND m.cod_equipamento = e.cod_equipamento'
      
        '           AND m.data BETWEEN al.data_saida AND e.datahora) qtde' +
        'PontosEspacial'
      '  FROM entrada_cana e,'
      '       alocacao al'
      ' WHERE al.cod_entradacana = e.cod_entradacana'
      '   AND al.cod_grupo       = e.cod_grupo'
      '   AND al.cod_regional    = e.cod_regional'
      '   AND al.cod_unidade     = e.cod_unidade'
      '   AND EXISTS (SELECT 1'
      '                 FROM entrada_cana_itens i'
      '                WHERE i.cod_fazenda = :cod_fazenda'
      '                  AND i.cod_entradacana = e.cod_entradacana'
      '                  AND i.cod_fazenda     = al.cod_fazenda'
      '                  AND i.cod_grupo       = e.cod_grupo'
      '                  AND i.cod_regional    = e.cod_regional'
      '                  AND i.cod_unidade     = e.cod_unidade) '
      '   AND e.data_movimento >= SYSDATE-88'
      '   AND e.cod_grupo = :cod_grupo'
      '   AND e.cod_regional = :cod_regional'
      '   AND e.cod_unidade = :cod_unidade'
      'ORDER BY cod_entradacana DESC')
    AfterOpen = QR_EntradaCanaAfterScroll
    AfterScroll = QR_EntradaCanaAfterScroll
    Left = 50
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
      end
      item
        DataType = ftUnknown
        Name = 'cod_regional'
      end
      item
        DataType = ftUnknown
        Name = 'cod_unidade'
      end>
    object QR_EntradaCanaCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
      Required = True
    end
    object QR_EntradaCanaCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
      Required = True
    end
    object QR_EntradaCanaCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
      Required = True
    end
    object QR_EntradaCanaCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_EntradaCanaCOD_ENTRADACANA: TFloatField
      FieldName = 'COD_ENTRADACANA'
      Required = True
    end
    object QR_EntradaCanaDATA_MOVIMENTO: TDateTimeField
      FieldName = 'DATA_MOVIMENTO'
    end
    object QR_EntradaCanaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object QR_EntradaCanaDATA_CHEGADA: TDateTimeField
      FieldName = 'DATA_CHEGADA'
    end
    object QR_EntradaCanaQTDEPONTOSESPACIAL: TFloatField
      FieldName = 'QTDEPONTOSESPACIAL'
    end
  end
  object QR_PreRotaPontos: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE pre_rota_pontos'
      'SET'
      '  COD_PRE_ROTA = :COD_PRE_ROTA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TEXTO_BORDO = :TEXTO_BORDO,'
      '  TEXTO_BORDO2 = :TEXTO_BORDO2,'
      '  DESCRICAO_DETALHADA = :DESCRICAO_DETALHADA,'
      '  PONTO_INTERESSE = :PONTO_INTERESSE,'
      '  DISTANCIA_AVISO = :DISTANCIA_AVISO'
      'WHERE'
      '  COD_PRE_ROTA = :OLD_COD_PRE_ROTA and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Session = DM.Sessao
    SQL.Strings = (
      
        'SELECT a.cod_pre_rota, a.sequencia, a.ponto_interesse, a.texto_b' +
        'ordo, a.texto_bordo2, a.descricao_detalhada, a.distancia_aviso,'
      '       a.distancia_total_ult_pto,'
      
        '       TO_DATE(TO_CHAR(m.data,'#39'DD/MM/RRRR HH24:MI:SS'#39'),'#39'DD/MM/RR' +
        'RR HH24:MI:SS'#39') data'
      '  FROM pre_rota_pontos a,'
      '       monitoramento m'
      ' WHERE m.sequencia    = a.seq_monitoramento'
      '   AND a.cod_pre_rota = :cod_pre_rota'
      'ORDER BY sequencia')
    AfterOpen = QR_PreRotaPontosAfterScroll
    AfterScroll = QR_PreRotaPontosAfterScroll
    Left = 128
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_pre_rota'
      end>
    object QR_PreRotaPontosCOD_PRE_ROTA: TFloatField
      FieldName = 'COD_PRE_ROTA'
      Required = True
    end
    object QR_PreRotaPontosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object QR_PreRotaPontosPONTO_INTERESSE: TStringField
      FieldName = 'PONTO_INTERESSE'
      Required = True
      Size = 1
    end
    object QR_PreRotaPontosTEXTO_BORDO: TStringField
      FieldName = 'TEXTO_BORDO'
      Size = 50
    end
    object QR_PreRotaPontosTEXTO_BORDO2: TStringField
      FieldName = 'TEXTO_BORDO2'
      Size = 50
    end
    object QR_PreRotaPontosDESCRICAO_DETALHADA: TStringField
      FieldName = 'DESCRICAO_DETALHADA'
      Size = 100
    end
    object QR_PreRotaPontosDISTANCIA_AVISO: TFloatField
      FieldName = 'DISTANCIA_AVISO'
    end
    object QR_PreRotaPontosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object QR_PreRotaPontosDISTANCIA_TOTAL_ULT_PTO: TFloatField
      FieldName = 'DISTANCIA_TOTAL_ULT_PTO'
      DisplayFormat = '###,###,###0.00'
    end
  end
  object DS_PreRotaPontos: TOraDataSource
    DataSet = QR_PreRotaPontos
    Left = 96
    Top = 176
  end
  object DS_ResumoRota: TOraDataSource
    DataSet = QR_ResumoRota
    Left = 96
    Top = 224
  end
  object QR_ResumoRota: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT pr.cod_entradacana,'
      '       e.cod_equipamento||'#39'-'#39'||eq.descricao equipamento,'
      '       al.data_saida dataSaidaIndustria,'
      
        '       (SELECT TO_DATE(TO_CHAR(m.data,'#39'DD/MM/RRRR HH24:MI:SS'#39'),'#39 +
        'DD/MM/RRRR HH24:MI:SS'#39')'
      '          FROM pre_rota_pontos prp,'
      '               monitoramento m'
      '         WHERE m.sequencia = prp.seq_monitoramento'
      '           AND prp.pontos_interesse = '#39'EF'#39
      
        '           AND prp.cod_pre_rota = pr.cod_pre_rota) dataChegadaFa' +
        'zenda,'
      
        '       (SELECT TO_DATE(TO_CHAR(m.data,'#39'DD/MM/RRRR HH24:MI:SS'#39'),'#39 +
        'DD/MM/RRRR HH24:MI:SS'#39')'
      '          FROM pre_rota_pontos prp,'
      '               monitoramento m'
      '         WHERE m.sequencia = prp.seq_monitoramento'
      '           AND prp.pontos_interesse = '#39'SF'#39
      
        '           AND prp.cod_pre_rota = pr.cod_pre_rota) dataSaidaFaze' +
        'nda,           '
      '       al.data_chegada dataChegadaIndustria,'
      '       (SELECT COUNT(1)'
      '          FROM pre_rota_pontos prp'
      
        '         WHERE prp.cod_pre_rota = pr.cod_pre_rota) qtdePontosMon' +
        'itorados,'
      '       (SELECT COUNT(1)'
      '          FROM pre_rota_pontos prp'
      '         WHERE prp.ponto_interesse = '#39'S'#39
      
        '           AND prp.cod_pre_rota    = pr.cod_pre_rota) qtdePontos' +
        'Instrumentados'
      '  FROM pre_rota pr,'
      '       entrada_cana e,'
      '       alocacao al,'
      '       equipamento eq'
      ' WHERE eq.cod_grupo = e.cod_grupo'
      '   AND eq.cod_equipamento = e.cod_equipamento'
      '   AND al.cod_entradacana(+) = e.cod_entradacana'
      '   AND al.cod_grupo(+) = e.cod_grupo'
      '   AND al.cod_regional(+) = e.cod_regional'
      '   AND al.cod_unidade(+) = e.cod_unidade'
      '   AND e.cod_entradacana = pr.cod_entradacana'
      '   AND e.cod_grupo = pr.cod_grupo'
      '   AND e.cod_regional = pr.cod_regional'
      '   AND e.cod_unidade = pr.cod_unidade'
      '   AND pr.cod_pre_rota = :cod_pre_rota')
    Left = 128
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_pre_rota'
        Value = Null
      end>
    object QR_ResumoRotaCOD_ENTRADACANA: TFloatField
      FieldName = 'COD_ENTRADACANA'
    end
    object QR_ResumoRotaEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 4000
    end
    object QR_ResumoRotaDATASAIDAINDUSTRIA: TDateTimeField
      FieldName = 'DATASAIDAINDUSTRIA'
    end
    object QR_ResumoRotaDATACHEGADAFAZENDA: TDateTimeField
      FieldName = 'DATACHEGADAFAZENDA'
    end
    object QR_ResumoRotaDATASAIDAFAZENDA: TDateTimeField
      FieldName = 'DATASAIDAFAZENDA'
    end
    object QR_ResumoRotaDATACHEGADAINDUSTRIA: TDateTimeField
      FieldName = 'DATACHEGADAINDUSTRIA'
    end
    object QR_ResumoRotaQTDEPONTOSMONITORADOS: TFloatField
      FieldName = 'QTDEPONTOSMONITORADOS'
    end
    object QR_ResumoRotaQTDEPONTOSINSTRUMENTADOS: TFloatField
      FieldName = 'QTDEPONTOSINSTRUMENTADOS'
    end
  end
  object ColorDialog1: TColorDialog
    Left = 112
    Top = 48
  end
  object QR_InformacoesIniciais: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      
        'SELECT PKG_LOGISTICA_MAPS.FN_JSON_LOGISTICAGMAPS(:COD_GRUPO,:COD' +
        '_REGIONAL,:COD_UNIDADE, :TIPO_VISUALIZACAO) informacoesIniciaisJ' +
        'SON FROM DUAL')
    Left = 16
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_GRUPO'
      end
      item
        DataType = ftUnknown
        Name = 'COD_REGIONAL'
      end
      item
        DataType = ftUnknown
        Name = 'COD_UNIDADE'
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_VISUALIZACAO'
      end>
    object QR_InformacoesIniciaisINFORMACOESINICIAISJSON: TMemoField
      FieldName = 'INFORMACOESINICIAISJSON'
      BlobType = ftOraClob
    end
  end
  object tmVisualizaRotaPontoaPontoEntradaCana: TTimer
    Enabled = False
    OnTimer = tmVisualizaRotaPontoaPontoEntradaCanaTimer
    Left = 16
    Top = 48
  end
  object DS_HorarioTalhaoDistanciaRotaEntradaCana: TOraDataSource
    DataSet = QR_HorarioTalhaoDistanciaRotaEntradaCana
    Left = 472
    Top = 368
  end
  object QR_HorarioTalhaoDistanciaRotaEntradaCana: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT DISTINCT td.hora_inicial,'
      '       td.hora_inicial||'#39' a '#39'|| td.hora_final horario'
      '  FROM talhao_distancia td'
      
        ' WHERE INTERSECAO(SYSDATE, SYSDATE, td.datahora_ini, td.datahora' +
        '_fim) = '#39'TRUE'#39
      '   AND (td.cod_fazenda, td.zona, td.cod_talhao, '
      
        '        td.cod_grupo, td.cod_regional, td.cod_unidade) IN ( SELE' +
        'CT eci.cod_fazenda, eci.zona, eci.cod_talhao,'
      
        '                                                                ' +
        '   eci.cod_grupo, eci.cod_regional, eci.cod_unidade'
      
        '                                                              FR' +
        'OM entrada_cana_itens eci'
      
        '                                                             WHE' +
        'RE eci.cod_grupo = :cod_grupo'
      
        '                                                               A' +
        'ND eci.cod_regional = :cod_regional'
      
        '                                                               A' +
        'ND eci.cod_unidade = :cod_unidade '
      
        '                                                               A' +
        'ND eci.cod_entradacana = :cod_entradacana'
      
        '                                                               A' +
        'ND ROWNUM = 1)')
    Left = 504
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'cod_regional'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'cod_unidade'
        Value = Null
      end
      item
        Name = 'cod_entradacana'
        Value = Null
        ExtDataType = 107
      end>
    object QR_HorarioTalhaoDistanciaRotaEntradaCanaHORA_INICIAL: TStringField
      FieldName = 'HORA_INICIAL'
      Required = True
      Size = 8
    end
    object QR_HorarioTalhaoDistanciaRotaEntradaCanaHORARIO: TStringField
      FieldName = 'HORARIO'
      Size = 19
    end
  end
  object SP_GeraRotas: TOraStoredProc
    StoredProcName = 'PKG_LOGISTICA_MAPS.FN_JSON_ROTAFAZENDA'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  :RESULT := PKG_LOGISTICA_MAPS.FN_JSON_ROTAFAZENDA(:P_FAZENDAS,' +
        ' :P_MOSTRAEQUIPAMENTOS, :P_INFO_AUTOMATICO, :P_FILTRO_CAMADAS, :' +
        'P_PARAMETROS, :P_MOSTRAPONTOSINTERESSE, :P_APLICATIVOMOVEL);'
      'end;')
    Left = 16
    Top = 344
    ParamData = <
      item
        DataType = ftOraClob
        Name = 'RESULT'
        ParamType = ptOutput
        Value = ''
        IsResult = True
      end
      item
        DataType = ftString
        Name = 'P_FAZENDAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_MOSTRAEQUIPAMENTOS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_INFO_AUTOMATICO'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'P_FILTRO_CAMADAS'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'P_PARAMETROS'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'P_MOSTRAPONTOSINTERESSE'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'P_APLICATIVOMOVEL'
        ParamType = ptInput
        HasDefault = True
      end>
    CommandStoredProcName = 'PKG_LOGISTICA_MAPS.FN_JSON_ROTAFAZENDA'
  end
  object SP_BuscaHTMLRota: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.FN_HTML_ROTAS'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      '  :RESULT := PKG_ROTAS.FN_HTML_ROTAS;'
      'end;')
    Left = 64
    Top = 344
    ParamData = <
      item
        DataType = ftOraClob
        Name = 'RESULT'
        ParamType = ptOutput
        Value = ''
        IsResult = True
      end>
    CommandStoredProcName = 'PKG_ROTAS.FN_HTML_ROTAS'
  end
  object SP_VisualizaRota: TOraStoredProc
    StoredProcName = 'PKG_LOGISTICA_MAPS.FN_JSON_TRAJETO'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  :RESULT := PKG_LOGISTICA_MAPS.FN_JSON_TRAJETO(:P_GRUPO, :P_REG' +
        'IONAL, :P_UNIDADE, :P_ENTRADACANA, :P_SOMENTE_VISUALIZACAO);'
      'end;')
    Left = 16
    Top = 392
    ParamData = <
      item
        DataType = ftOraClob
        Name = 'RESULT'
        ParamType = ptOutput
        Value = ''
        IsResult = True
      end
      item
        DataType = ftFloat
        Name = 'P_GRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_REGIONAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_UNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_ENTRADACANA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_SOMENTE_VISUALIZACAO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PKG_LOGISTICA_MAPS.FN_JSON_TRAJETO'
  end
  object SP_Gera_PreRota: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.PR_GERA_PRE_ROTA'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  :RESULT := PKG_ROTAS.PR_GERA_PRE_ROTA(:P_ENTRADACANA, :P_BUFFE' +
        'R_GEOMETRIA_METROS, :P_HORARIO_INICIAL);'
      'end;')
    Left = 64
    Top = 392
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptOutput
        IsResult = True
      end
      item
        DataType = ftFloat
        Name = 'P_ENTRADACANA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_BUFFER_GEOMETRIA_METROS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_HORARIO_INICIAL'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PKG_ROTAS.PR_GERA_PRE_ROTA'
  end
  object SP_AnalisePreRota: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.PR_ANALISE_PREROTA'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      '  PKG_ROTAS.PR_ANALISE_PREROTA(:P_PREROTA);'
      'end;')
    Left = 16
    Top = 440
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_PREROTA'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PKG_ROTAS.PR_ANALISE_PREROTA'
  end
  object SP_ConfirmaRota: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.PR_GERAROTA'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  PKG_ROTAS.PR_GERAROTA(:P_PREROTA, :P_DESCRICAO, :P_COR_TRAJETO' +
        '_IDA, :P_COR_TRAJETO_VOLTA);'
      'end;')
    Left = 64
    Top = 440
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_PREROTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_DESCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_COR_TRAJETO_IDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_COR_TRAJETO_VOLTA'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PKG_ROTAS.PR_GERAROTA'
  end
  object QR_AvisoDistancia: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT 0 codigo, '#39'50 Metros'#39' descricao FROM DUAL'
      'UNION ALL'
      'SELECT 1 codigo, '#39'100 Metros'#39' descricao FROM DUAL'
      'UNION ALL'
      'SELECT 2 codigo, '#39'200 Metros'#39' descricao FROM DUAL'
      'ORDER BY codigo')
    Left = 48
    Top = 179
    object QR_AvisoDistanciaCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object QR_AvisoDistanciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 10
    end
  end
  object DS_AvisoDistancia: TOraDataSource
    DataSet = QR_AvisoDistancia
    Left = 16
    Top = 179
  end
  object QR_VisualizarTrajetoRotaAvulsa: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT ROWNUM sequencia, data,'
      '       count(1) over() qtdeTotalRegistros'
      '  FROM (SELECT a.cod_equipamento, a.data'
      '          FROM monitoramento a'
      '         WHERE a.cod_grupo = :cod_grupo'
      '           AND a.cod_equipamento = :cod_equipamento'
      '           AND a.data BETWEEN :data_ini AND :data_fim'
      '        ORDER BY a.data)')
    AfterOpen = QR_VisualizarTrajetoRotaAvulsaAfterScroll
    AfterScroll = QR_VisualizarTrajetoRotaAvulsaAfterScroll
    Left = 127
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
      end
      item
        DataType = ftUnknown
        Name = 'cod_equipamento'
      end
      item
        DataType = ftUnknown
        Name = 'data_ini'
      end
      item
        DataType = ftUnknown
        Name = 'data_fim'
      end>
    object QR_VisualizarTrajetoRotaAvulsaSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
    object QR_VisualizarTrajetoRotaAvulsaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object QR_VisualizarTrajetoRotaAvulsaQTDETOTALREGISTROS: TFloatField
      FieldName = 'QTDETOTALREGISTROS'
    end
  end
  object DS_VisualizarTrajetoRotaAvulsa: TOraDataSource
    DataSet = QR_VisualizarTrajetoRotaAvulsa
    Left = 96
    Top = 272
  end
  object SP_VisualizaTrajetoRotaAvulsa: TOraStoredProc
    StoredProcName = 'PKG_LOGISTICA_MAPS.FN_JSON_VISUALIZATRAJETO'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  :RESULT := PKG_LOGISTICA_MAPS.FN_JSON_VISUALIZATRAJETO(:P_GRUP' +
        'O, :P_EQUIPAMENTO, :P_FAZENDA, :P_ZONA, :P_DATAINI, :P_DATAFIM, ' +
        ':P_TIPO_VISUALIZACAO);'
      'end;')
    Left = 136
    Top = 344
    ParamData = <
      item
        DataType = ftOraClob
        Name = 'RESULT'
        ParamType = ptOutput
        Value = ''
        IsResult = True
      end
      item
        DataType = ftFloat
        Name = 'P_GRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_EQUIPAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_FAZENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_ZONA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATAFIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_TIPO_VISUALIZACAO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PKG_LOGISTICA_MAPS.FN_JSON_VISUALIZATRAJETO'
  end
  object tmVisualizaRotaPontoaPontoAvulso: TTimer
    Enabled = False
    OnTimer = tmVisualizaRotaPontoaPontoAvulsoTimer
    Left = 48
    Top = 48
  end
  object QR_HorarioTalhaoDistanciaRotaAvulsa: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT DISTINCT td.hora_inicial,'
      '       td.hora_inicial||'#39' a '#39'|| td.hora_final horario'
      '  FROM talhao_distancia td'
      ' WHERE td.cod_grupo = :cod_grupo'
      '   AND td.cod_regional = :cod_regional'
      '   AND td.cod_unidade = :cod_unidade'
      
        '   AND INTERSECAO(SYSDATE, SYSDATE, td.datahora_ini, td.datahora' +
        '_fim) = '#39'TRUE'#39
      '   AND td.cod_fazenda = :cod_fazenda'
      '   AND (td.zona = :zona OR :zona = 0)'
      'ORDER BY horario')
    Left = 368
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
      end
      item
        DataType = ftUnknown
        Name = 'cod_regional'
      end
      item
        DataType = ftUnknown
        Name = 'cod_unidade'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end
      item
        DataType = ftUnknown
        Name = 'zona'
      end>
    object QR_HorarioTalhaoDistanciaRotaAvulsaHORA_INICIAL: TStringField
      FieldName = 'HORA_INICIAL'
      Required = True
      Size = 8
    end
    object QR_HorarioTalhaoDistanciaRotaAvulsaHORARIO: TStringField
      FieldName = 'HORARIO'
      Size = 19
    end
  end
  object DS_HorarioTalhaoDistanciaRotaAvulsa: TOraDataSource
    DataSet = QR_HorarioTalhaoDistanciaRotaAvulsa
    Left = 336
    Top = 312
  end
  object QR_PercursoRota: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT ROWNUM sequencia,'
      '       a.*'
      '  FROM (SELECT prp.agrupamentotipopercurso,'
      '               prp.cod_tipopercurso,'
      
        '               DECODE(tp.descricao,'#39#39','#39'Total Ida'#39',tp.descricao) ' +
        'tipoPercurso,'
      '               '#39'I'#39' tipo,'
      
        '               --DECODE(prp.agrupamentotipopercurso,'#39#39','#39'Total Id' +
        'a'#39','#39'Ida'#39') tipo,'
      '               SUM(prp.distancia_maxima_ult_ponto) distancia'
      '          FROM pre_rota pr,'
      '               pre_rota_pontos prp,'
      '               tipos_percurso tp '
      '         WHERE tp.cod_tipopercurso = prp.cod_tipopercurso '
      '           AND prp.tipo = '#39'I'#39
      '           AND prp.cod_tipopercurso IS NOT NULL'
      '           AND prp.cod_pre_rota = pr.cod_pre_rota'
      '           AND pr.cod_rota = :cod_rota '
      '        GROUP BY ROLLUP(prp.agrupamentotipopercurso,'
      '                        prp.cod_tipopercurso,'
      '                        tp.descricao)'
      '        HAVING ((GROUPING (prp.agrupamentotipopercurso)+'
      '                GROUPING (prp.cod_tipopercurso)+'
      '                GROUPING (tp.descricao)) IN (0,3))'
      '        UNION ALL'
      '        SELECT prp.agrupamentotipopercurso,'
      '               prp.cod_tipopercurso,'
      
        '               DECODE(tp.descricao,'#39#39','#39'Total Volta'#39',tp.descricao' +
        ') tipoPercurso,'
      '               '#39'V'#39' tipo,'
      
        '               --DECODE(prp.agrupamentotipopercurso,'#39#39','#39'Total Vo' +
        'lta'#39','#39'Volta'#39') tipo,'
      '               SUM(prp.distancia_maxima_ult_ponto) distancia'
      '          FROM pre_rota pr,'
      '               pre_rota_pontos prp,'
      '               tipos_percurso tp '
      '         WHERE tp.cod_tipopercurso = prp.cod_tipopercurso '
      '           AND prp.tipo = '#39'V'#39
      '           AND prp.cod_tipopercurso IS NOT NULL'
      '           AND prp.cod_pre_rota = pr.cod_pre_rota'
      '           AND pr.cod_rota = :cod_rota '
      '        GROUP BY ROLLUP(prp.agrupamentotipopercurso,'
      '                        prp.cod_tipopercurso,'
      '                        tp.descricao)'
      '        HAVING ((GROUPING (prp.agrupamentotipopercurso)+'
      '                GROUPING (prp.cod_tipopercurso)+'
      '                GROUPING (tp.descricao)) IN (0,3)) ) a')
    Left = 368
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_rota'
      end>
    object QR_PercursoRotaAGRUPAMENTOTIPOPERCURSO: TFloatField
      FieldName = 'AGRUPAMENTOTIPOPERCURSO'
    end
    object QR_PercursoRotaCOD_TIPOPERCURSO: TFloatField
      FieldName = 'COD_TIPOPERCURSO'
    end
    object QR_PercursoRotaTIPOPERCURSO: TStringField
      FieldName = 'TIPOPERCURSO'
      Size = 4000
    end
    object QR_PercursoRotaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QR_PercursoRotaDISTANCIA: TFloatField
      FieldName = 'DISTANCIA'
      DisplayFormat = '###,###,###0.00'
    end
    object QR_PercursoRotaSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
  end
  object DS_PercursoRota: TOraDataSource
    DataSet = QR_PercursoRota
    Left = 336
    Top = 360
  end
  object QR_Talhoes: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT t.cod_safra, t.cod_grupo,'
      '       t.cod_regional, t.cod_unidade,'
      '       t.cod_fazenda, t.zona,'
      '       t.cod_talhao, t.datahora_ini, t.hora_inicial'
      '  FROM talhao_distancia t'
      ' WHERE EXISTS (SELECT 1'
      '                 FROM talhao_distancia_percurso tdp'
      '                WHERE tdp.cod_fazenda = t.cod_fazenda'
      '                  AND tdp.zona = t.zona'
      '                  AND tdp.cod_talhao = t.cod_talhao'
      '                  AND tdp.cod_grupo = t.cod_grupo'
      '                  AND tdp.cod_regional = t.cod_regional'
      '                  AND tdp.cod_unidade = t.cod_unidade'
      '                  AND tdp.cod_safra = t.cod_safra )'
      '   AND t.cod_safra = :cod_safra'
      '   AND t.cod_grupo = :cod_grupo'
      '   AND t.cod_regional = :cod_regional'
      '   AND t.cod_unidade = :cod_unidade'
      '   AND t.cod_fazenda = :cod_fazenda'
      '   AND t.zona = :zona'
      
        '   AND INTERSECAO(SYSDATE,SYSDATE,t.datahora_ini,t.datahora_fim)' +
        ' = '#39'TRUE'#39
      'ORDER BY t.cod_talhao')
    AfterOpen = QR_TalhoesAfterScroll
    AfterScroll = QR_TalhoesAfterScroll
    Left = 368
    Top = 407
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
      end
      item
        DataType = ftUnknown
        Name = 'cod_regional'
      end
      item
        DataType = ftUnknown
        Name = 'cod_unidade'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end
      item
        DataType = ftUnknown
        Name = 'zona'
      end>
    object QR_TalhoesCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
      Required = True
    end
    object QR_TalhoesCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
      Required = True
    end
    object QR_TalhoesCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
      Required = True
    end
    object QR_TalhoesCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
      Required = True
    end
    object QR_TalhoesCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
      Required = True
    end
    object QR_TalhoesZONA: TFloatField
      FieldName = 'ZONA'
      Required = True
    end
    object QR_TalhoesCOD_TALHAO: TFloatField
      FieldName = 'COD_TALHAO'
      Required = True
    end
    object QR_TalhoesDATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
      Required = True
    end
    object QR_TalhoesHORA_INICIAL: TStringField
      FieldName = 'HORA_INICIAL'
      Required = True
      Size = 8
    end
  end
  object DS_Talhoes: TOraDataSource
    DataSet = QR_Talhoes
    Left = 336
    Top = 408
  end
  object QR_PercursoCadastrado: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      
        'SELECT rownum sequencia, cod_tipopercurso, descricao, trajeto, d' +
        'istancia'
      '  FROM (SELECT a.sequencia, a.cod_tipopercurso, '
      
        '               DECODE(tp.descricao,'#39#39','#39'TOTAL IDA'#39',tp.descricao) ' +
        'descricao,'
      '               '#39'I'#39' trajeto,'
      '               sum(a.distancia) distancia'
      '          FROM talhao_distancia_percurso a,'
      '               tipos_percurso tp'
      '         WHERE tp.cod_tipopercurso = a.cod_tipopercurso'
      '           AND a.cod_safra = :cod_safra'
      '           AND a.cod_grupo = :cod_grupo'
      '           AND a.cod_regional = :cod_regional'
      '           AND a.cod_unidade = :cod_unidade'
      '           AND a.cod_fazenda = :cod_fazenda'
      '           AND a.zona = :zona'
      '           AND a.cod_talhao = :cod_talhao'
      '           AND a.indo_voltando = '#39'I'#39
      '           AND a.datahora_ini = :datahora_ini'
      '           AND a.hora_inicial = :hora_inicial'
      
        '        GROUP BY ROLLUP(a.sequencia, a.cod_tipopercurso, tp.desc' +
        'ricao)'
      '        HAVING (GROUPING(a.sequencia) +'
      '                GROUPING(a.cod_tipopercurso) +'
      '                GROUPING(tp.descricao) IN (0,3))'
      '        UNION ALL'
      '        SELECT a.sequencia, a.cod_tipopercurso, '
      
        '               DECODE(tp.descricao,'#39#39','#39'TOTAL VOLTA'#39',tp.descricao' +
        ') descricao,'
      '               '#39'V'#39' trajeto,'
      '               sum(a.distancia) distancia'
      '          FROM talhao_distancia_percurso a,'
      '               tipos_percurso tp'
      '         WHERE tp.cod_tipopercurso = a.cod_tipopercurso'
      '           AND a.cod_safra = :cod_safra'
      '           AND a.cod_grupo = :cod_grupo'
      '           AND a.cod_regional = :cod_regional'
      '           AND a.cod_unidade = :cod_unidade'
      '           AND a.cod_fazenda = :cod_fazenda'
      '           AND a.zona = :zona'
      '           AND a.cod_talhao = :cod_talhao'
      '           AND a.indo_voltando = '#39'V'#39
      '           AND a.datahora_ini = :datahora_ini'
      '           AND a.hora_inicial = :hora_inicial'
      
        '        GROUP BY ROLLUP(a.sequencia, a.cod_tipopercurso, tp.desc' +
        'ricao)'
      '        HAVING (GROUPING(a.sequencia) +'
      '                GROUPING(a.cod_tipopercurso) +'
      '                GROUPING(tp.descricao) IN (0,3)) )')
    Left = 368
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_grupo'
      end
      item
        DataType = ftUnknown
        Name = 'cod_regional'
      end
      item
        DataType = ftUnknown
        Name = 'cod_unidade'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end
      item
        DataType = ftUnknown
        Name = 'zona'
      end
      item
        DataType = ftUnknown
        Name = 'cod_talhao'
      end
      item
        DataType = ftUnknown
        Name = 'datahora_ini'
      end
      item
        DataType = ftUnknown
        Name = 'hora_inicial'
      end>
    object QR_PercursoCadastradoSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
    object QR_PercursoCadastradoCOD_TIPOPERCURSO: TFloatField
      FieldName = 'COD_TIPOPERCURSO'
    end
    object QR_PercursoCadastradoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 4000
    end
    object QR_PercursoCadastradoTRAJETO: TStringField
      FieldName = 'TRAJETO'
      FixedChar = True
      Size = 1
    end
    object QR_PercursoCadastradoDISTANCIA: TFloatField
      FieldName = 'DISTANCIA'
      DisplayFormat = '###,###,###0.00'
    end
  end
  object DS_PercursoCadastrado: TOraDataSource
    DataSet = QR_PercursoCadastrado
    Left = 336
    Top = 456
  end
  object SP_GeraPreRotaTMP_Avulsa: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.PR_GERA_PRE_ROTA_TMP'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  PKG_ROTAS.PR_GERA_PRE_ROTA_TMP(:P_GRUPO, :P_REGIONAL, :P_UNIDA' +
        'DE, :P_EQUIPAMENTO, :P_DATAINI, :P_DATAFIM);'
      'end;')
    Left = 136
    Top = 384
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_GRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_REGIONAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_UNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_EQUIPAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATAFIM'
        ParamType = ptInput
      end>
  end
  object QR_PreRotaTMP_Basic: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE PRE_ROTA_TMP'
      'SET'
      
        '  SEQUENCIA = :SEQUENCIA, TEXTO_BORDO = :TEXTO_BORDO, TEXTO_BORD' +
        'O2 = :TEXTO_BORDO2, DESCRICAO_DETALHADA = :DESCRICAO_DETALHADA, ' +
        'LATITUDE_MAPS = :LATITUDE_MAPS, LONGITUDE_MAPS = :LONGITUDE_MAPS' +
        ', DISTANCIA_MAXIMA_ULT_PONTO = :DISTANCIA_MAXIMA_ULT_PONTO, DIST' +
        'ANCIA_AVISO = :DISTANCIA_AVISO, TIPO = :TIPO, DISTANCIA_TOTAL_UL' +
        'T_PTO = :DISTANCIA_TOTAL_ULT_PTO, DISTANCIA_TOTAL_PTO_ATUAL = :D' +
        'ISTANCIA_TOTAL_PTO_ATUAL, SEQ_MONITORAMENTO = :SEQ_MONITORAMENTO' +
        ', PONTOS_INTERESSE = :PONTOS_INTERESSE, PONTO_INTERESSE = :PONTO' +
        '_INTERESSE, COD_TIPOPERCURSO = :COD_TIPOPERCURSO, AGRUPAMENTOTIP' +
        'OPERCURSO = :AGRUPAMENTOTIPOPERCURSO'
      'WHERE'
      '  SEQUENCIA = :Old_SEQUENCIA')
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.sequencia, a.texto_bordo, a.texto_bordo2,'
      '       a.descricao_detalhada, a.latitude_maps, a.longitude_maps,'
      '       a.distancia_maxima_ult_ponto, a.distancia_aviso, a.tipo,'
      '       a.distancia_total_ult_pto, a.distancia_total_pto_atual,'
      
        '       a.seq_monitoramento, a.pontos_interesse, a.ponto_interess' +
        'e,'
      '       a.cod_tipopercurso, a.agrupamentotipopercurso,'
      '       tp.descricao descricaoTipoPercurso,'
      
        '       SUM(DECODE(nvl(a.cod_tipopercurso,-1),-1,1,0)) OVER() qtd' +
        'eRegistrosSemPercurso,'
      '       (SELECT d.distancia'
      '          FROM distancia_aviso_bordo d'
      
        '         WHERE d.cod_distancia_aviso_bordo = a.distancia_aviso) ' +
        'distancia_aviso_detalhado'
      '  FROM pre_rota_tmp a,'
      '       tipos_percurso tp'
      ' WHERE tp.cod_tipopercurso(+) = a.cod_tipopercurso'
      'ORDER BY sequencia')
    AfterScroll = QR_PreRotaTMP_BasicAfterScroll
    Left = 512
    Top = 312
    object QR_PreRotaTMP_BasicSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object QR_PreRotaTMP_BasicTEXTO_BORDO: TStringField
      FieldName = 'TEXTO_BORDO'
      Size = 50
    end
    object QR_PreRotaTMP_BasicTEXTO_BORDO2: TStringField
      FieldName = 'TEXTO_BORDO2'
      Size = 50
    end
    object QR_PreRotaTMP_BasicDESCRICAO_DETALHADA: TStringField
      FieldName = 'DESCRICAO_DETALHADA'
      Size = 100
    end
    object QR_PreRotaTMP_BasicLATITUDE_MAPS: TFloatField
      FieldName = 'LATITUDE_MAPS'
      Required = True
    end
    object QR_PreRotaTMP_BasicLONGITUDE_MAPS: TFloatField
      FieldName = 'LONGITUDE_MAPS'
      Required = True
    end
    object QR_PreRotaTMP_BasicDISTANCIA_MAXIMA_ULT_PONTO: TFloatField
      FieldName = 'DISTANCIA_MAXIMA_ULT_PONTO'
    end
    object QR_PreRotaTMP_BasicDISTANCIA_AVISO: TFloatField
      FieldName = 'DISTANCIA_AVISO'
    end
    object QR_PreRotaTMP_BasicDISTANCIA_TOTAL_ULT_PTO: TFloatField
      FieldName = 'DISTANCIA_TOTAL_ULT_PTO'
    end
    object QR_PreRotaTMP_BasicDISTANCIA_TOTAL_PTO_ATUAL: TFloatField
      FieldName = 'DISTANCIA_TOTAL_PTO_ATUAL'
    end
    object QR_PreRotaTMP_BasicSEQ_MONITORAMENTO: TFloatField
      FieldName = 'SEQ_MONITORAMENTO'
      Required = True
    end
    object QR_PreRotaTMP_BasicPONTOS_INTERESSE: TStringField
      FieldName = 'PONTOS_INTERESSE'
      Required = True
      Size = 2
    end
    object QR_PreRotaTMP_BasicPONTO_INTERESSE: TStringField
      FieldName = 'PONTO_INTERESSE'
      Required = True
      Size = 1
    end
    object QR_PreRotaTMP_BasicCOD_TIPOPERCURSO: TFloatField
      FieldName = 'COD_TIPOPERCURSO'
    end
    object QR_PreRotaTMP_BasicAGRUPAMENTOTIPOPERCURSO: TFloatField
      FieldName = 'AGRUPAMENTOTIPOPERCURSO'
    end
    object QR_PreRotaTMP_BasicDESCRICAOTIPOPERCURSO: TStringField
      FieldName = 'DESCRICAOTIPOPERCURSO'
      Size = 4000
    end
    object QR_PreRotaTMP_BasicQTDEREGISTROSSEMPERCURSO: TFloatField
      FieldName = 'QTDEREGISTROSSEMPERCURSO'
    end
    object QR_PreRotaTMP_BasicTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO: TFloatField
      FieldName = 'DISTANCIA_AVISO_DETALHADO'
    end
  end
  object DS_PreRotaTMP_Basic: TOraDataSource
    DataSet = QR_PreRotaTMP_Basic
    Left = 480
    Top = 312
  end
  object tmVisualizaRotaPontoaPontoAvulsoBasic: TTimer
    Enabled = False
    OnTimer = tmVisualizaRotaPontoaPontoAvulsoBasicTimer
    Left = 80
    Top = 48
  end
  object SP_ReiniciaPreRotaTMP_Avulsa: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.PR_REINICIA_INFO_PREROTATMP'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      '  PKG_ROTAS.PR_REINICIA_INFO_PREROTATMP;'
      'end;')
    Left = 136
    Top = 432
    CommandStoredProcName = 'PKG_ROTAS.PR_REINICIA_INFO_PREROTATMP'
  end
  object QR_TipoPercurso: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_tipopercurso, '
      '       SUBSTR(a.descricao,1,50) descricao,'
      '       a.velocidade_maxima_padrao'
      '  FROM tipos_percurso a'
      'UNION ALL'
      'SELECT NULL, '#39'NENHUM'#39', NULL'
      '  FROM dual'
      'ORDER BY cod_tipopercurso')
    Left = 368
    Top = 280
    object QR_TipoPercursoCOD_TIPOPERCURSO: TFloatField
      DisplayWidth = 10
      FieldName = 'COD_TIPOPERCURSO'
    end
    object QR_TipoPercursoDESCRICAO: TStringField
      DisplayWidth = 4000
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object QR_TipoPercursoVELOCIDADE_MAXIMA_PADRAO: TFloatField
      FieldName = 'VELOCIDADE_MAXIMA_PADRAO'
    end
  end
  object DS_TipoPercurso: TOraDataSource
    DataSet = QR_TipoPercurso
    Left = 336
    Top = 280
  end
  object SP_ConfirmaRotaAvulsaBasic: TOraStoredProc
    StoredProcName = 'PKG_ROTAS.PR_GERA_ROTA_BASIC'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  PKG_ROTAS.PR_GERA_ROTA_BASIC(:P_GRUPO, :P_REGIONAL, :P_UNIDADE' +
        ', :P_FAZENDA, :P_DATAINICIO, :P_DATAFIM, :P_EQUIPAMENTO, :P_COR_' +
        'TRAJETO_IDA, :P_COR_TRAJETO_VOLTA, :P_DESCRICAO);'
      'end;')
    Left = 200
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_GRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_REGIONAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_UNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_FAZENDA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATAINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATAFIM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_EQUIPAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_COR_TRAJETO_IDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_COR_TRAJETO_VOLTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_DESCRICAO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PKG_ROTAS.PR_GERA_ROTA_BASIC'
  end
  object QR_DistanciaAviso: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.*'
      '  FROM distancia_aviso_bordo a'
      'ORDER BY a.distancia')
    Active = True
    Left = 200
    Top = 304
    object QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO: TFloatField
      FieldName = 'COD_DISTANCIA_AVISO_BORDO'
      Required = True
    end
    object QR_DistanciaAvisoDISTANCIA: TFloatField
      FieldName = 'DISTANCIA'
    end
    object QR_DistanciaAvisoPADRAO: TStringField
      FieldName = 'PADRAO'
      Required = True
      Size = 1
    end
  end
  object QR_GerenciamentoRotasPontos: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT b.*, ROWNUM linha '
      
        '  FROM (SELECT a.cod_rota, a.sequencia, a.texto_bordo, a.texto_b' +
        'ordo2, '
      '               a.descricao_detalhada, a.latitude, a.longitude, '
      
        '               a.tipo, DECODE(a.tipo,'#39'I'#39','#39'Ida'#39','#39'V'#39','#39'Volta'#39','#39'Sem ' +
        'Defini'#231#227'o'#39') trajeto'
      '          FROM rotas_fazendas_pontos a'
      '         WHERE a.cod_rota = :cod_rota'
      '        ORDER BY a.sequencia ) b')
    AfterOpen = QR_GerenciamentoRotasPontosAfterScroll
    AfterScroll = QR_GerenciamentoRotasPontosAfterScroll
    Left = 216
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_rota'
      end>
    object QR_GerenciamentoRotasPontosCOD_ROTA: TFloatField
      FieldName = 'COD_ROTA'
    end
    object QR_GerenciamentoRotasPontosSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
    object QR_GerenciamentoRotasPontosTEXTO_BORDO: TStringField
      FieldName = 'TEXTO_BORDO'
      Size = 50
    end
    object QR_GerenciamentoRotasPontosTEXTO_BORDO2: TStringField
      FieldName = 'TEXTO_BORDO2'
      Size = 50
    end
    object QR_GerenciamentoRotasPontosDESCRICAO_DETALHADA: TStringField
      FieldName = 'DESCRICAO_DETALHADA'
      Size = 500
    end
    object QR_GerenciamentoRotasPontosLATITUDE: TFloatField
      FieldName = 'LATITUDE'
    end
    object QR_GerenciamentoRotasPontosLONGITUDE: TFloatField
      FieldName = 'LONGITUDE'
    end
    object QR_GerenciamentoRotasPontosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QR_GerenciamentoRotasPontosLINHA: TFloatField
      FieldName = 'LINHA'
    end
    object QR_GerenciamentoRotasPontosTRAJETO: TStringField
      FieldName = 'TRAJETO'
      Size = 13
    end
  end
  object DS_GerenciamentoRotasPontos: TOraDataSource
    DataSet = QR_GerenciamentoRotasPontos
    Left = 184
    Top = 212
  end
  object QR_GerenciamentoRotasPontosTipoCarga: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_rota, a.sequencia, a.tipo, a.cod_tipocarga, '
      
        '       a.tempo_max_ultimoponto, a.tempo_max_ultimoponto / 60 / 6' +
        '0 tempoMinutos, a.velocidade_maximo,'
      '       tc.descricao tipoCarga'
      '  FROM rotas_fazendas_pto_tipocarga a,'
      '       tipo_carga tc'
      ' WHERE tc.cod_tipocarga = a.cod_tipocarga'
      '   AND a.cod_rota = :cod_rota'
      '   AND a.sequencia = :sequencia'
      'ORDER BY a.cod_tipocarga')
    Left = 216
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_rota'
      end
      item
        DataType = ftUnknown
        Name = 'sequencia'
      end>
    object QR_GerenciamentoRotasPontosTipoCargaCOD_ROTA: TFloatField
      FieldName = 'COD_ROTA'
      Required = True
    end
    object QR_GerenciamentoRotasPontosTipoCargaSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object QR_GerenciamentoRotasPontosTipoCargaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object QR_GerenciamentoRotasPontosTipoCargaCOD_TIPOCARGA: TFloatField
      FieldName = 'COD_TIPOCARGA'
      Required = True
    end
    object QR_GerenciamentoRotasPontosTipoCargaTEMPO_MAX_ULTIMOPONTO: TFloatField
      FieldName = 'TEMPO_MAX_ULTIMOPONTO'
    end
    object QR_GerenciamentoRotasPontosTipoCargaVELOCIDADE_MAXIMO: TFloatField
      FieldName = 'VELOCIDADE_MAXIMO'
    end
    object QR_GerenciamentoRotasPontosTipoCargaTIPOCARGA: TStringField
      FieldName = 'TIPOCARGA'
      Size = 4000
    end
    object QR_GerenciamentoRotasPontosTipoCargaTEMPOMINUTOS: TFloatField
      FieldName = 'TEMPOMINUTOS'
    end
  end
  object DS_GerenciamentoRotasPontosTipoCarga: TOraDataSource
    DataSet = QR_GerenciamentoRotasPontosTipoCarga
    Left = 184
    Top = 248
  end
end
