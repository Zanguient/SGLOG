inherited F_DisponibilidadesFrentes: TF_DisponibilidadesFrentes
  Caption = 'F_DisponibilidadesFrentes'
  ClientHeight = 647
  ClientWidth = 1104
  Position = poDesigned
  OnResize = FormResize
  ExplicitWidth = 1120
  ExplicitHeight = 685
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 1104
    Height = 647
    Position = 0
    Percent = 0
    ExplicitWidth = 1104
    ExplicitHeight = 647
    HotSpotClosed = True
    HotSpotClosedToMin = True
    HotSpotClosedToMax = False
    HotSpotPosition = 86
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      Width = 82
      Height = 647
      ExplicitWidth = 82
      ExplicitHeight = 647
      inherited RzBitBtnSair: TRzBitBtn
        Top = 617
        Width = 82
        ExplicitTop = 617
        ExplicitWidth = 82
      end
      object RzBitBtn1: TRzBitBtn
        Left = 0
        Top = 0
        Width = 82
        Align = alTop
        Caption = 'Atualizar'
        TabOrder = 1
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000520B0000520B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8AA
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AA
          A2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          AAA2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          AAD5A2E8E8E8E8E8E8E8E8E8E8E8E8E881E381E8E8E8E8E8E8E8E8E8E8E8AAA2
          A2A2D4A2E8E8E8E8E8E8E8E8E8E881818181AC81E8E8E8E8E8E8E8E8E8E8AAD5
          D4D4D4D4A2E8E8E8E8E8E8E8E8E881E3ACACACAC81E8E8E8E8E8E8E8E8E8E8AA
          D5D4A2AAAAAAE8E8E8E8E8E8E8E8E881E3AC81818181E8E8E8E8E8E8E8E8E8AA
          D5D4D4A2E8E8E8E8E8E8E8E8E8E8E881E3ACAC81E8E8E8E8E8E8E8E8AAA2A2A2
          A2D5D4D4A2E8E8E8E8E8E8E88181818181E3ACAC81E8E8E8E8E8E8E8AAD5D5D4
          D4D4D4D4D4A2E8E8E8E8E8E881E3E3ACACACACACAC81E8E8E8E8E8E8E8AAD5D5
          D4D4A2AAAAAAE8E8E8E8E8E8E881E3E3ACAC81818181E8E8E8E8E8E8E8AAD5D5
          D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8E8AAD5
          D5D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8AAD5
          D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8E8AA
          D5D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8AA
          AAAAAAAAAAAAAAAAE8E8E8E8E8E8E8818181818181818181E8E8}
        NumGlyphs = 2
      end
    end
    inherited pnSeparador: TPanel
      Left = -4
      Height = 647
      ExplicitLeft = -4
      ExplicitHeight = 647
    end
    inherited pnComponentes: TPanel
      Width = 1094
      Height = 647
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1094
      ExplicitHeight = 647
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1094
        Height = 647
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DesignSize = (
          1094
          647)
        object RzPageControlUnidadeMoagem: TRzPageControl
          Left = 0
          Top = 0
          Width = 1094
          Height = 28
          Align = alTop
          ShowCloseButton = True
          ShowCloseButtonOnActiveTab = True
          ShowMenuButton = True
          TabHints = True
          TabOrder = 0
          TabStyle = tsCutCorner
          OnChange = RzPageControlUnidadeMoagemChange
          OnClose = RzPageControlUnidadeMoagemClose
          FixedDimension = 0
        end
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 28
          Width = 201
          Height = 619
          Align = alLeft
          TabOrder = 1
          object RzPanel1: TRzPanel
            Left = 0
            Top = 0
            Width = 197
            Height = 615
            Align = alClient
            TabOrder = 0
            object RzPanel2: TRzPanel
              Left = 2
              Top = 2
              Width = 193
              Height = 60
              Align = alTop
              Alignment = taRightJustify
              BorderOuter = fsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object RzGroupBar1: TRzGroupBar
              Left = 2
              Top = 62
              Width = 193
              Height = 551
              GradientColorStart = clBtnFace
              GradientColorStop = clBtnShadow
              GroupBorderSize = 8
              VisualStyle = vsClassic
              Align = alClient
              Color = clWhite
              ParentColor = False
              TabOrder = 1
              OnCanResize = RzGroupBarCanResize
              object RzGroup1: TRzGroup
                CanClose = False
                CaptionHeight = 16
                Items = <>
                Opened = True
                OpenedHeight = 64
                DividerVisible = False
                BiDiMode = bdRightToLeft
                ParentBiDiMode = False
                ParentColor = False
                object RzPanel3: TRzPanel
                  Left = 1
                  Top = 16
                  Width = 175
                  Height = 47
                  Align = alClient
                  Alignment = taLeftJustify
                  BorderOuter = fsNone
                  Caption = '      Disponibilidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object RzGroup2: TRzGroup
                CaptionHeight = 16
                Items = <>
                Opened = True
                OpenedHeight = 43
                DividerVisible = False
                OnCanClose = RzGroup2CanClose
                OnCanOpen = RzGroup2CanOpen
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                ParentColor = False
                object RzPanel4: TRzPanel
                  Left = 1
                  Top = 16
                  Width = 175
                  Height = 26
                  Align = alClient
                  Alignment = taLeftJustify
                  BorderOuter = fsNone
                  Caption = '      Equipamentos Alocados'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object RzGroup3: TRzGroup
                CaptionHeight = 16
                Items = <>
                Opened = True
                DividerVisible = False
                OnCanClose = RzGroup3CanClose
                OnCanOpen = RzGroup3CanOpen
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                ParentColor = False
                object RzPanel5: TRzPanel
                  Left = 1
                  Top = 16
                  Width = 175
                  Height = 33
                  Align = alClient
                  Alignment = taLeftJustify
                  BorderOuter = fsNone
                  Caption = '      Parados no Campo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object RzGroup4: TRzGroup
                CaptionHeight = 16
                Items = <>
                Opened = True
                DividerVisible = False
                OnCanClose = RzGroup4CanClose
                OnCanOpen = RzGroup4CanOpen
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                ParentColor = False
                object RzPanel6: TRzPanel
                  Left = 1
                  Top = 16
                  Width = 175
                  Height = 33
                  Align = alClient
                  Alignment = taLeftJustify
                  BorderOuter = fsNone
                  Caption = '      Parados na Ofic'#237'na'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object RzGroup5: TRzGroup
                CaptionHeight = 16
                Items = <>
                Opened = True
                DividerVisible = False
                OnCanClose = RzGroup5CanClose
                OnCanOpen = RzGroup5CanOpen
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                ParentColor = False
                object RzPanel7: TRzPanel
                  Left = 1
                  Top = 16
                  Width = 175
                  Height = 33
                  Align = alClient
                  Alignment = taLeftJustify
                  BorderOuter = fsNone
                  Caption = '      Ve'#237'culos Alocados'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object RzGroup6: TRzGroup
                CaptionColor = clHighlightText
                CaptionColorDefault = False
                CaptionHeight = 16
                Items = <>
                Opened = True
                DividerVisible = False
                OnCanClose = RzGroup6CanClose
                OnCanOpen = RzGroup6CanOpen
                ParentColor = False
                object RzPanel8: TRzPanel
                  Left = 1
                  Top = 16
                  Width = 175
                  Height = 33
                  Align = alClient
                  Alignment = taLeftJustify
                  BorderOuter = fsNone
                  Caption = '      Ve'#237'culos Fixos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHotLight
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
        end
        object rzPanelRefresh: TRzPanel
          Left = 898
          Top = 3
          Width = 152
          Height = 15
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BorderOuter = fsFlatRounded
          Caption = 'Atualizar: 60 seg.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object imgAtualizacao: TImage
            Left = 29
            Top = 0
            Width = 16
            Height = 16
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000C649444154384FA593010DC3300C040D211002
              611006211006651002A1100A6110CA28FB8F9CC8E936A75D2BBD1AD5FDF3EBD5
              4A2945AEE8C32C22014AD00A6D2A9EF92CEC970D00BC10A105CACD60807CC659
              B49053F1154A484F720AC0CD2D5D4B5101B86E100FF759A19A62DD035812012F
              0F80F9137AB4659AA66F27C04D6192F677199FD4A466DEF324C590B697082307
              E94007435F1630DDFE0D6E0101099623297E7E4830478564ED8550AAA6D399FF
              251A033BD954B51FCEDC7F6156A0DBC13F667ADE54CA300993A9E00E00000000
              49454E44AE426082}
            Stretch = True
          end
          object cbAtualizacaoAutomatica: TCheckBox
            Left = 2
            Top = 2
            Width = 13
            Height = 11
            Align = alLeft
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
        object ScrollBox2: TScrollBox
          Left = 1030
          Top = 28
          Width = 64
          Height = 619
          Align = alRight
          TabOrder = 3
          object RzPanel9: TRzPanel
            Left = 0
            Top = 0
            Width = 60
            Height = 60
            Align = alTop
            TabOrder = 0
            object RzPanel10: TRzPanel
              Left = 2
              Top = 2
              Width = 56
              Height = 60
              Align = alTop
              BorderOuter = fsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object QR_Pistas: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT f.cod_grupo, f.cod_regional, f.cod_unidade,'
      '       f.cod_safra,'
      '       f.cod_frente,'
      '       f.cod_fazenda, '
      '       f.pista, '
      '       f.desc_frente, '
      '       f.desc_fazenda,'
      '       f.apelido,'
      '       f.transporte_liberado, '
      '       f.distancia_asfalto_ida, '
      '       f.distancia_terra_ida, '
      '       f.distancia_carreador_ida, '
      '       f.distancia_asfalto_volta,'
      '       f.distancia_terra_volta,'
      '       f.distancia_carreador_volta,'
      '       f.maior_distancia,'
      '       MAX(f.maior_distancia) OVER() maior_distancia_regua,'
      '       f.distancia_total_ida,'
      '       f.distancia_total_volta,'
      '       f.maior_tempo_queima, '
      '       f.prev_producao,'
      
        '       --, agricola.fn_ton_diaria_caminhao_frente(cod_safra,cod_' +
        'frente, sysdate) previsao_dia_caminhao_frente'
      
        '       --henrique comentei pois o poli pediu pra tirar conforme ' +
        'e-mail'
      '       0 previsao_dia_caminhao_frente, '
      
        '       '#39'Fr. '#39'||f.desc_frente||'#39' - '#39'||f.cod_fazenda||'#39'-'#39'||f.desc_' +
        'fazenda||'
      
        '       '#39' - Queima: '#39'||DECODE(NVL(f.cana_queimada,'#39'S'#39'), '#39'S'#39', f.ma' +
        'ior_tempo_queima, '#39'N'#227'o Tem'#39')||'
      
        '       '#39' - Dist'#226'ncias -> Ida: '#39'||TRIM(TO_CHAR(f.distancia_total_' +
        'ida,'#39'999D99'#39'))||'#39' km'#39'||'
      
        '                       '#39' Volta: '#39'||TRIM(TO_CHAR(f.distancia_tota' +
        'l_volta,'#39'999D99'#39'))||'#39' km'#39' descricao, '
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOIDAPREVIST' +
        'O'#39','#39'S'#39') tempo_ida_min, '
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOVOLTAPREVI' +
        'STO'#39','#39'S'#39') tempo_volta_min, '
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOCARREGAMEN' +
        'TOPREVISTO'#39','#39'S'#39') tempoCarregamento,'
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOVIAGEMREAL' +
        'IZADO'#39','#39'S'#39') tempoTotalRealizado,'
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOIDAESPACIA' +
        'L'#39','#39'S'#39') tempoIdaEspacial, '
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOCARREGAMEN' +
        'TOESPACIAL'#39','#39'S'#39') tempoCarregamentoEspacial,'
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'TEMPOMEDIOVOLTAESPAC' +
        'IAL'#39','#39'S'#39') tempoVoltaEspacial,'
      
        '       FN_ANALISE_ALOCACAO(f.cod_grupo,f.cod_regional,f.cod_unid' +
        'ade,f.cod_safra,f.cod_frente,f.cod_fazenda,'#39'QTDEVIAGENSESPACIAL'#39 +
        ','#39'S'#39') qtdeViagensEspacial,      '
      
        '       ROUND(fn_media_toneladas_viagem(f.cod_grupo, f.cod_region' +
        'al,f.cod_unidade, f.cod_safra,f.cod_frente,f.cod_fazenda),2) den' +
        'sidade_carga,'
      '       DECODE((SELECT COUNT(1)'
      '                 FROM alocacao_fixa af'
      '                WHERE af.cod_grupo = f.cod_grupo'
      '                  AND af.cod_regional = f.cod_regional'
      '                  AND af.cod_unidade = f.cod_unidade'
      '                  AND af.cod_safra  = f.cod_safra'
      '                  AND af.cod_frente = f.cod_frente'
      
        '                  AND af.cod_fazenda = f.cod_fazenda),0,'#39'N'#39','#39'S'#39')' +
        ' frenteFixa,'
      '       CASE WHEN f.ton_prev_entrega < f.quota_ton_dia'
      '            THEN '#39'S'#39
      '            ELSE '#39'N'#39
      '       END cotaEstaAtrasada,'
      
        '       ROUND(100 - (f.ton_prev_entrega / f.quota_ton_dia * 100),' +
        '2) qtdeCotaAtrasada,'
      '       f.ton_prev_entrega, f.quota_ton_dia,'
      
        '       ROUND(f.quota_ton_dia - f.ton_prev_entrega,2) toneladaAtr' +
        'asada'
      '       --a.*,'
      '       --MAX(a.maior_distancia) OVER() maior_distancia_regua'
      '  FROM (SELECT a.cod_grupo, a.cod_regional, a.cod_unidade,'
      '               a.cod_safra,'
      '               a.cod_frente,'
      '               a.cod_fazenda, '
      '               f.descricao desc_frente,'
      '               f.prev_producao,'
      '               fa.descricao desc_fazenda,'
      '               fa.apelido,'
      
        '               LPAD(a.cod_frente,2,'#39'0'#39')||LPAD(a.cod_fazenda,8,'#39'0' +
        #39') pista, '
      
        '               DECODE(a.transporte_liberado,'#39'S'#39','#39'TRANSP. LIBERAD' +
        'O SIM'#39','#39'TRANSP. LIBERADO N'#195'O'#39') transporte_liberado,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'AI'#39') distancia_asf' +
        'alto_ida,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'AV'#39') distancia_asf' +
        'alto_volta,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'TI'#39') distancia_ter' +
        'ra_ida,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'TV'#39') distancia_ter' +
        'ra_volta,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'CI'#39') distancia_car' +
        'reador_ida,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'CV'#39') distancia_car' +
        'reador_volta,                     '
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'I'#39') distancia_tota' +
        'l_ida,'
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'V'#39') distancia_tota' +
        'l_volta, '
      
        '               fn_talhao_distancia(a.cod_safra,a.cod_fazenda,-1,' +
        '-1,SYSDATE,'
      
        '                                             a.cod_grupo,a.cod_r' +
        'egional,a.cod_unidade,'
      
        '                                             '#39'MD'#39') maior_distanc' +
        'ia,'
      
        '               TRUNC((SYSDATE - a.data_hora_queima) * 24) ||'#39':'#39'|' +
        '|LPAD(TRUNC(((SYSDATE - a.data_hora_queima) * 24 - TRUNC((SYSDAT' +
        'E - a.data_hora_queima) * 24))*60),2,'#39'0'#39')||'#39' Hrs'#39' maior_tempo_qu' +
        'eima,'
      
        '               (SELECT cana_queimada FROM tipo_cana WHERE cod_ti' +
        'pocana = a.cod_tipocana) cana_queimada,'
      '               f.quota_ton_dia,'
      
        '               ROUND(((fn_canaentrada_frente(f.cod_grupo,f.cod_r' +
        'egional,f.cod_unidade,f.cod_safra,f.cod_frente,TRUNC(SYSDATE), T' +
        'RUNC(SYSDATE),'#39'T'#39')) -- QUOTA_DIA_REAL'
      
        '                     /ROUND((((( sysdate - to_date(TO_CHAR(TRUNC' +
        '(SYSDATE),'#39'DD/MM/YYYY'#39')||'#39' '#39'||pl.hora_inicio_dia ,'#39'dd/mm/yyyy hh' +
        '24:mi:SS'#39'))*24*60)+1)/1440)*100,2)) -- PORCENTAGEM_NECESSARIA'
      '                     *100,3) ton_prev_entrega'
      '          FROM fazendas_liberadas a,'
      '               frente f,'
      '               parametros_logistica pl,'
      '               fazenda fa'
      '         WHERE fa.cod_fazenda = a.cod_fazenda'
      '           AND pl.cod_grupo = f.cod_grupo'
      '           AND pl.cod_regional = f.cod_regional'
      '           AND pl.cod_unidade = f.cod_unidade'
      '           AND f.cod_grupo = a.cod_grupo'
      '           AND f.cod_regional = a.cod_regional'
      '           AND f.cod_unidade = a.cod_unidade'
      '           AND f.cod_safra = a.cod_safra'
      '           AND f.cod_frente = a.cod_frente'
      '           AND a.cod_safra = :cod_safra'
      '           AND a.cod_grupo = :cod_grupo'
      '           AND a.cod_regional = :cod_regional'
      '           AND a.cod_unidade = :cod_unidade) f'
      'ORDER BY f.cod_frente DESC, f.cod_fazenda desc')
    BeforeOpen = QR_PistasBeforeOpen
    Left = 480
    Top = 128
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
      end>
    object QR_PistasCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_PistasCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_PistasCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_PistasPISTA: TStringField
      FieldName = 'PISTA'
      Size = 10
    end
    object QR_PistasDESC_FRENTE: TStringField
      FieldName = 'DESC_FRENTE'
      Size = 4000
    end
    object QR_PistasDESC_FAZENDA: TStringField
      FieldName = 'DESC_FAZENDA'
      Size = 4000
    end
    object QR_PistasTRANSPORTE_LIBERADO: TStringField
      FieldName = 'TRANSPORTE_LIBERADO'
    end
    object QR_PistasDISTANCIA_ASFALTO_IDA: TFloatField
      FieldName = 'DISTANCIA_ASFALTO_IDA'
    end
    object QR_PistasDISTANCIA_TERRA_IDA: TFloatField
      FieldName = 'DISTANCIA_TERRA_IDA'
    end
    object QR_PistasDISTANCIA_CARREADOR_IDA: TFloatField
      FieldName = 'DISTANCIA_CARREADOR_IDA'
    end
    object QR_PistasDISTANCIA_ASFALTO_VOLTA: TFloatField
      FieldName = 'DISTANCIA_ASFALTO_VOLTA'
    end
    object QR_PistasDISTANCIA_TERRA_VOLTA: TFloatField
      FieldName = 'DISTANCIA_TERRA_VOLTA'
    end
    object QR_PistasDISTANCIA_CARREADOR_VOLTA: TFloatField
      FieldName = 'DISTANCIA_CARREADOR_VOLTA'
    end
    object QR_PistasMAIOR_DISTANCIA: TFloatField
      FieldName = 'MAIOR_DISTANCIA'
    end
    object QR_PistasMAIOR_DISTANCIA_REGUA: TFloatField
      FieldName = 'MAIOR_DISTANCIA_REGUA'
    end
    object QR_PistasDISTANCIA_TOTAL_IDA: TFloatField
      FieldName = 'DISTANCIA_TOTAL_IDA'
    end
    object QR_PistasDISTANCIA_TOTAL_VOLTA: TFloatField
      FieldName = 'DISTANCIA_TOTAL_VOLTA'
    end
    object QR_PistasMAIOR_TEMPO_QUEIMA: TStringField
      FieldName = 'MAIOR_TEMPO_QUEIMA'
      Size = 47
    end
    object QR_PistasPREV_PRODUCAO: TFloatField
      FieldName = 'PREV_PRODUCAO'
    end
    object QR_PistasPREVISAO_DIA_CAMINHAO_FRENTE: TFloatField
      FieldName = 'PREVISAO_DIA_CAMINHAO_FRENTE'
    end
    object QR_PistasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 4000
    end
    object QR_PistasTEMPO_IDA_MIN: TFloatField
      FieldName = 'TEMPO_IDA_MIN'
    end
    object QR_PistasTEMPO_VOLTA_MIN: TFloatField
      FieldName = 'TEMPO_VOLTA_MIN'
    end
    object QR_PistasTEMPOCARREGAMENTO: TFloatField
      FieldName = 'TEMPOCARREGAMENTO'
    end
    object QR_PistasTEMPOTOTALREALIZADO: TFloatField
      FieldName = 'TEMPOTOTALREALIZADO'
    end
    object QR_PistasTEMPOIDAESPACIAL: TFloatField
      FieldName = 'TEMPOIDAESPACIAL'
    end
    object QR_PistasTEMPOCARREGAMENTOESPACIAL: TFloatField
      FieldName = 'TEMPOCARREGAMENTOESPACIAL'
    end
    object QR_PistasTEMPOVOLTAESPACIAL: TFloatField
      FieldName = 'TEMPOVOLTAESPACIAL'
    end
    object QR_PistasQTDEVIAGENSESPACIAL: TFloatField
      FieldName = 'QTDEVIAGENSESPACIAL'
    end
    object QR_PistasDENSIDADE_CARGA: TFloatField
      FieldName = 'DENSIDADE_CARGA'
    end
    object QR_PistasFRENTEFIXA: TStringField
      FieldName = 'FRENTEFIXA'
      Size = 1
    end
    object QR_PistasCOTAESTAATRASADA: TStringField
      FieldName = 'COTAESTAATRASADA'
      FixedChar = True
      Size = 1
    end
    object QR_PistasQTDECOTAATRASADA: TFloatField
      FieldName = 'QTDECOTAATRASADA'
    end
    object QR_PistasTON_PREV_ENTREGA: TFloatField
      FieldName = 'TON_PREV_ENTREGA'
    end
    object QR_PistasQUOTA_TON_DIA: TFloatField
      FieldName = 'QUOTA_TON_DIA'
    end
    object QR_PistasTONELADAATRASADA: TFloatField
      FieldName = 'TONELADAATRASADA'
    end
    object QR_PistasCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_PistasCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_PistasCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_PistasAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 500
    end
  end
  object QR_Disponibilidade: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT colhedoras_diponivel,'
      '       colhedoras_indiponivel,'
      '       colhedoras_total,'
      
        '       ROUND((NVL(colhedoras_diponivel,0)/DECODE(NVL(colhedoras_' +
        'total,0),0,1,colhedoras_total))*100,2) disponibilidade_colhedora' +
        's,'
      '       reboques_diponivel,'
      '       reboques_indiponivel,'
      '       reboques_total,'
      
        '       ROUND((NVL(reboques_diponivel,0)/DECODE(NVL(reboques_tota' +
        'l,0),0,1,reboques_total))*100,2) disponibilidade_reboque'
      '  FROM ('
      'SELECT fn_quatdade_equipamento_frente(a.cod_grupo,'
      '                                      a.cod_regional,'
      '                                      a.cod_unidade,'
      '                                      a.cod_safra,'
      '                                      a.cod_frente,'
      '                                      a.cod_fazenda,'
      '                                      '#39'C'#39','
      
        '                                      '#39'N'#39') colhedoras_diponivel,' +
        ' '
      '       fn_quatdade_equipamento_frente(a.cod_grupo,'
      '                                      a.cod_regional,'
      '                                      a.cod_unidade,'
      '                                      a.cod_safra,'
      '                                      a.cod_frente,'
      '                                      a.cod_fazenda,'
      '                                      '#39'C'#39','
      
        '                                      '#39'S'#39') colhedoras_indiponive' +
        'l,'
      '       fn_quatdade_equipamento_frente(a.cod_grupo,'
      '                                      a.cod_regional,'
      '                                      a.cod_unidade,'
      '                                      a.cod_safra,'
      '                                      a.cod_frente,'
      '                                      a.cod_fazenda,'
      '                                      '#39'C'#39','
      '                                      '#39'T'#39') colhedoras_total,'
      '       fn_quatdade_equipamento_frente(a.cod_grupo,'
      '                                      a.cod_regional,'
      '                                      a.cod_unidade,'
      '                                      a.cod_safra,'
      '                                      a.cod_frente,'
      '                                      a.cod_fazenda,'
      '                                      '#39'R'#39','
      '                                      '#39'N'#39') reboques_diponivel, '
      '       fn_quatdade_equipamento_frente(a.cod_grupo,'
      '                                      a.cod_regional,'
      '                                      a.cod_unidade,'
      '                                      a.cod_safra,'
      '                                      a.cod_frente,'
      '                                      a.cod_fazenda,'
      '                                      '#39'R'#39','
      '                                      '#39'S'#39') reboques_indiponivel,'
      '       fn_quatdade_equipamento_frente(a.cod_grupo,'
      '                                      a.cod_regional,'
      '                                      a.cod_unidade,'
      '                                      a.cod_safra,'
      '                                      a.cod_frente,'
      '                                      a.cod_fazenda,'
      '                                      '#39'R'#39','
      
        '                                      '#39'T'#39') reboques_total       ' +
        '                                 '
      '  FROM fazendas_liberadas a'
      ' WHERE a.cod_grupo = :cod_grupo'
      '   AND a.cod_regional = :cod_regional'
      '   AND a.cod_unidade = :cod_unidade'
      '   AND a.cod_safra = :cod_safra'
      '   AND a.cod_frente = :cod_frente'
      '   AND a.cod_fazenda = :cod_fazenda)')
    Left = 416
    Top = 128
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    object QR_DisponibilidadeCOLHEDORAS_DIPONIVEL: TFloatField
      FieldName = 'COLHEDORAS_DIPONIVEL'
    end
    object QR_DisponibilidadeCOLHEDORAS_INDIPONIVEL: TFloatField
      FieldName = 'COLHEDORAS_INDIPONIVEL'
    end
    object QR_DisponibilidadeCOLHEDORAS_TOTAL: TFloatField
      FieldName = 'COLHEDORAS_TOTAL'
    end
    object QR_DisponibilidadeDISPONIBILIDADE_COLHEDORAS: TFloatField
      FieldName = 'DISPONIBILIDADE_COLHEDORAS'
    end
    object QR_DisponibilidadeREBOQUES_DIPONIVEL: TFloatField
      FieldName = 'REBOQUES_DIPONIVEL'
    end
    object QR_DisponibilidadeREBOQUES_INDIPONIVEL: TFloatField
      FieldName = 'REBOQUES_INDIPONIVEL'
    end
    object QR_DisponibilidadeREBOQUES_TOTAL: TFloatField
      FieldName = 'REBOQUES_TOTAL'
    end
    object QR_DisponibilidadeDISPONIBILIDADE_REBOQUE: TFloatField
      FieldName = 'DISPONIBILIDADE_REBOQUE'
    end
  end
  object QR_Maquinas: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,'
      '       0 tipo'
      '  FROM frente_carregadeira a,'
      '       equipamento e'
      ' WHERE a.cod_grupo    = :cod_grupo'
      '   AND a.cod_regional = :cod_regional'
      '   AND a.cod_unidade  = :cod_unidade'
      '   AND a.cod_safra    = :cod_safra'
      '   AND a.cod_frente   = :cod_frente'
      '   AND a.cod_fazenda  = :cod_fazenda'
      '   AND a.disponivel   = '#39'N'#39
      '   AND a.cod_grupo = e.cod_grupo'
      '   AND a.cod_equipamento = e.cod_equipamento'
      'UNION'
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,       '
      '       1'
      '  FROM frente_reboque a,'
      '       equipamento e'
      ' WHERE a.cod_grupo       = :cod_grupo'
      '   AND a.cod_regional    = :cod_regional'
      '   AND a.cod_unidade     = :cod_unidade'
      '   AND a.cod_safra       = :cod_safra'
      '   AND a.cod_frente      = :cod_frente'
      '   AND a.cod_fazenda     = :cod_fazenda'
      '   AND a.disponivel      = '#39'N'#39
      '   AND e.cod_grupo       = a.cod_grupo'
      '   AND e.cod_equipamento = a.cod_equipamento'
      ' ORDER BY tipo, cod_equipamento')
    Left = 368
    Top = 64
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    object QR_MaquinasCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_MaquinasCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_MaquinasCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_MaquinasCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_MaquinasCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_MaquinasCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_MaquinasCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_MaquinasTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object QR_MaquinasDESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Size = 4000
    end
  end
  object QR_ParadoC: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,'
      '       0 tipo,'
      '       a.cod_motivo,'
      '       m.descricao motivo,'
      '       a.data_hora,'
      '       a.observacao,'
      '       NVL(a.ordemservico,'#39'N'#227'o Informado'#39') ordemservico,'
      '       TRUNC(((SYSDATE - a.data_hora)*24),0) horas,'
      
        '       ROUND(((((SYSDATE - a.data_hora)*24) - TRUNC(((SYSDATE - ' +
        'a.data_hora)*24),0))*60),0) minutos,'
      '       a.paradaautomatica'
      '  FROM frente_carregadeira a,'
      '       equipamento e,'
      '       motivos m'
      ' WHERE a.cod_grupo       = :cod_grupo'
      '   AND a.cod_regional    = :cod_regional'
      '   AND a.cod_unidade     = :cod_unidade'
      '   AND a.cod_safra       = :cod_safra'
      '   AND a.cod_frente      = :cod_frente'
      '   AND a.cod_fazenda     = :cod_fazenda'
      '   AND a.disponivel      = '#39'S'#39
      '   AND a.campo_oficina   = '#39'C'#39
      '   AND a.cod_grupo       = e.cod_grupo'
      '   AND a.cod_equipamento = e.cod_equipamento'
      '   AND a.cod_motivo      = m.cod_motivo(+)   '
      'UNION'
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,       '
      '       1 tipo,'
      '       a.cod_motivo,'
      '       m.descricao motivo,'
      '       a.data_hora,'
      '       a.observacao,'
      '       NVL(a.ordemservico,'#39'N'#227'o Informado'#39') ordemservico,'
      '       TRUNC(((SYSDATE - a.data_hora)*24),0) horas,'
      
        '       ROUND(((((SYSDATE - a.data_hora)*24) - TRUNC(((SYSDATE - ' +
        'a.data_hora)*24),0))*60),0) minutos,'
      '       a.paradaautomatica'
      '  FROM frente_reboque a,'
      '       equipamento e,'
      '       motivos m'
      ' WHERE a.cod_grupo       = :cod_grupo'
      '   AND a.cod_regional    = :cod_regional'
      '   AND a.cod_unidade     = :cod_unidade'
      '   AND a.cod_safra       = :cod_safra'
      '   AND a.cod_frente      = :cod_frente'
      '   AND a.cod_fazenda     = :cod_fazenda'
      '   AND a.disponivel      = '#39'S'#39
      '   AND a.campo_oficina   = '#39'C'#39
      '   AND e.cod_grupo       = a.cod_grupo'
      '   AND e.cod_equipamento = a.cod_equipamento'
      '   AND a.cod_motivo      = m.cod_motivo(+)'
      'UNION'
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       al.cod_frente,'
      '       al.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,       '
      '       2 tipo,'
      '       a.cod_motivo,'
      '       m.descricao motivo,'
      '       a.inicio_parada,'
      '       a.observacao,'
      '       NVL(a.ordemservico,'#39'N'#227'o Informado'#39') ordemservico,'
      '       TRUNC(((SYSDATE - a.inicio_parada)*24),0) horas,'
      
        '       ROUND(((((SYSDATE - a.inicio_parada)*24) - TRUNC(((SYSDAT' +
        'E - a.inicio_parada)*24),0))*60),0) minutos,'
      '       a.automatico'
      '  FROM parada_equipamento a,'
      '       equipamento e,'
      '       alocacao al,'
      '       motivos m'
      ' WHERE a.cod_grupo          = :cod_grupo'
      '   AND a.cod_regional       = :cod_regional'
      '   AND a.cod_unidade        = :cod_unidade'
      '   AND a.cod_safra          = :cod_safra'
      '   AND al.cod_frente        = :cod_frente'
      '   AND al.cod_fazenda       = :cod_fazenda'
      '   AND al.cod_grupo         = a.cod_grupo'
      '   AND al.cod_regional      = a.cod_regional'
      '   AND al.cod_unidade       = a.cod_unidade'
      '   AND al.cod_equipamento   = a.cod_equipamento'
      '   AND al.viagem_finalizada = '#39'N'#39
      '   AND a.campo_oficina      = '#39'C'#39
      '   AND a.parado             = '#39'S'#39
      '   AND e.cod_grupo          = a.cod_grupo'
      '   AND e.cod_equipamento    = a.cod_equipamento'
      '   AND a.cod_motivo         = m.cod_motivo(+)'
      '   '
      ' ORDER BY tipo, cod_equipamento')
    Left = 272
    Top = 128
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    object QR_ParadoCCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_ParadoCCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_ParadoCCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_ParadoCCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_ParadoCCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_ParadoCCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_ParadoCCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_ParadoCDESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Size = 4000
    end
    object QR_ParadoCTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object QR_ParadoCCOD_MOTIVO: TFloatField
      FieldName = 'COD_MOTIVO'
    end
    object QR_ParadoCDATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
    end
    object QR_ParadoCOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 4000
    end
    object QR_ParadoCORDEMSERVICO: TStringField
      FieldName = 'ORDEMSERVICO'
    end
    object QR_ParadoCMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 4000
    end
    object QR_ParadoCHORAS: TFloatField
      FieldName = 'HORAS'
    end
    object QR_ParadoCMINUTOS: TFloatField
      FieldName = 'MINUTOS'
    end
    object QR_ParadoCPARADAAUTOMATICA: TStringField
      FieldName = 'PARADAAUTOMATICA'
      Size = 1
    end
  end
  object QR_ParadoO: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,'
      '       0 tipo,'
      '       a.cod_motivo,'
      '       m.descricao motivo,'
      '       a.data_hora,'
      '       a.observacao,'
      '       NVL(a.ordemservico,'#39'N'#227'o Informado'#39') ordemservico,'
      '       TRUNC(((SYSDATE - a.data_hora)*24),0) horas,'
      
        '       ROUND(((((SYSDATE - a.data_hora)*24) - TRUNC(((SYSDATE - ' +
        'a.data_hora)*24),0))*60),0) minutos,'
      '       a.paradaautomatica'
      '  FROM frente_carregadeira a,'
      '       equipamento e,'
      '       motivos m'
      ' WHERE a.cod_grupo       = :cod_grupo'
      '   AND a.cod_regional    = :cod_regional'
      '   AND a.cod_unidade     = :cod_unidade'
      '   AND a.cod_safra       = :cod_safra'
      '   AND a.cod_frente      = :cod_frente'
      '   AND a.cod_fazenda     = :cod_fazenda'
      '   AND a.disponivel      = '#39'S'#39
      '   AND a.campo_oficina   = '#39'O'#39
      '   AND a.cod_grupo       = e.cod_grupo'
      '   AND a.cod_equipamento = e.cod_equipamento'
      '   AND a.cod_motivo      = m.cod_motivo(+)   '
      'UNION'
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,       '
      '       1 tipo,'
      '       a.cod_motivo,'
      '       m.descricao motivo,'
      '       a.data_hora,'
      '       a.observacao,'
      '       NVL(a.ordemservico,'#39'N'#227'o Informado'#39') ordemservico,'
      '       TRUNC(((SYSDATE - a.data_hora)*24),0) horas,'
      
        '       ROUND(((((SYSDATE - a.data_hora)*24) - TRUNC(((SYSDATE - ' +
        'a.data_hora)*24),0))*60),0) minutos,'
      '       a.paradaautomatica'
      '  FROM frente_reboque a,'
      '       equipamento e,'
      '       motivos m'
      ' WHERE a.cod_grupo       = :cod_grupo'
      '   AND a.cod_regional    = :cod_regional'
      '   AND a.cod_unidade     = :cod_unidade'
      '   AND a.cod_safra       = :cod_safra'
      '   AND a.cod_frente      = :cod_frente'
      '   AND a.cod_fazenda     = :cod_fazenda'
      '   AND a.disponivel      = '#39'S'#39
      '   AND a.campo_oficina   = '#39'O'#39
      '   AND e.cod_grupo       = a.cod_grupo'
      '   AND e.cod_equipamento = a.cod_equipamento'
      '   AND a.cod_motivo      = m.cod_motivo(+)'
      'UNION'
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       al.cod_frente,'
      '       al.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,       '
      '       2 tipo,'
      '       a.cod_motivo,'
      '       m.descricao motivo,'
      '       a.inicio_parada,'
      '       a.observacao,'
      '       NVL(a.ordemservico,'#39'N'#227'o Informado'#39') ordemservico,'
      '       TRUNC(((SYSDATE - a.inicio_parada)*24),0) horas,'
      
        '       ROUND(((((SYSDATE - a.inicio_parada)*24) - TRUNC(((SYSDAT' +
        'E - a.inicio_parada)*24),0))*60),0) minutos,'
      '       a.automatico'
      '  FROM parada_equipamento a,'
      '       equipamento e,'
      '       alocacao al,'
      '       motivos m'
      ' WHERE a.cod_grupo          = :cod_grupo'
      '   AND a.cod_regional       = :cod_regional'
      '   AND a.cod_unidade        = :cod_unidade'
      '   AND a.cod_safra          = :cod_safra'
      '   AND al.cod_frente        = :cod_frente'
      '   AND al.cod_fazenda       = :cod_fazenda'
      '   AND al.cod_grupo         = a.cod_grupo'
      '   AND al.cod_regional      = a.cod_regional'
      '   AND al.cod_unidade       = a.cod_unidade'
      '   AND al.cod_equipamento   = a.cod_equipamento'
      '   AND al.viagem_finalizada = '#39'N'#39
      '   AND a.campo_oficina      = '#39'O'#39
      '   AND a.parado             = '#39'S'#39
      '   AND e.cod_grupo          = a.cod_grupo'
      '   AND e.cod_equipamento    = a.cod_equipamento'
      '   AND a.cod_motivo         = m.cod_motivo(+)'
      '   '
      ' ORDER BY tipo, cod_equipamento')
    Left = 304
    Top = 296
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    object QR_ParadoOCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_ParadoOCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_ParadoOCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_ParadoOCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_ParadoOCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_ParadoOCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_ParadoOCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_ParadoODESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Size = 4000
    end
    object QR_ParadoOTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object QR_ParadoOCOD_MOTIVO: TFloatField
      FieldName = 'COD_MOTIVO'
    end
    object QR_ParadoODATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
    end
    object QR_ParadoOOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 4000
    end
    object QR_ParadoOORDEMSERVICO: TStringField
      FieldName = 'ORDEMSERVICO'
    end
    object QR_ParadoOMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 4000
    end
    object QR_ParadoOHORAS: TFloatField
      FieldName = 'HORAS'
    end
    object QR_ParadoOMINUTOS: TFloatField
      FieldName = 'MINUTOS'
    end
    object QR_ParadoOPARADAAUTOMATICA: TStringField
      FieldName = 'PARADAAUTOMATICA'
      Size = 1
    end
  end
  object QR_Veiculos: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'WITH c_alocacao AS ('
      'SELECT pr.cod_safra,'
      '       PR.cod_frente,'
      '       PR.cod_fazenda,'
      '       pr.cod_grupo,'
      '       pr.cod_regional,'
      '       pr.cod_unidade,'
      '       PR.cod_equipamento,'
      '       EQ.DESCRICAO DESC_EQUIPAMENTO,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN'
      
        '          DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.situacaoprevi' +
        'sto,pr.situacaoreal) '
      '       ELSE'
      '          pr.situacaoprevisto'
      '       END situacao,'
      '       DECODE(PR.ABASTECEU,'#39'S'#39','#39'Abasteceu'#39','#39#39') ABASTECEU,'
      '       DECODE(PR.BITUCA,'#39'S'#39','#39'Bituca'#39','#39#39') BITUCA,'
      '       PR.data_saida,PR.data_prev_inicio_carreg,'
      '--       DECODE(PR.SITUACAO,'#39'I'#39',PR.PORC_IDA,0) PORC_IDA,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN'
      
        '          CASE WHEN DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.per' +
        'cprevisto, pr.percreal) < 1 THEN'
      '             2'
      '          ELSE '
      
        '             DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.percprevis' +
        'to, pr.percreal)'
      '          END'
      '       ELSE'
      '          CASE WHEN pr.percprevisto < 1 THEN'
      '             2'
      '          ELSE'
      '             pr.percprevisto'
      '          END'
      '       END PORC_IDA,   ---------------------'
      '       PR.data_prev_termino_carreg,'
      '       PR.data_prev_chegada,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN'
      
        '          CASE WHEN DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.per' +
        'cprevisto, pr.perchibrido) < 1 THEN'
      '             2'
      '          ELSE       '
      
        '             DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.percprevis' +
        'to,pr.perchibrido) '
      '          END'
      '       ELSE'
      '          CASE WHEN pr.percprevisto < 1 THEN'
      '             2'
      '          ELSE'
      '             pr.percprevisto'
      '          END'
      '       END PORC_VOLTA,-------------------'
      
        '--       sig.pk_rotas.fn_calcula_status_previsto (pr.sequencia,S' +
        'YSDATE) status_previsto,       '
      
        '       --sig.pk_rotas.fn_calcula_status_previsto (pr.sequencia,T' +
        'O_DATE('#39'29/09/2011 17:38:15'#39','#39'dd/mm/rrrr hh24:mi:ss'#39')) status_pr' +
        'evisto,'
      '       PR.cod_tipocarga,'
      '       TC.DESCRICAO DESC_TIPOCARGA,'
      '       PR.atraso,'
      '       PR.descarregando,'
      '       PR.SEQUENCIA,'
      '       pr.parado,'
      '       CASE '
      
        '         WHEN ((tc.qde_carregamento IN (TO_CHAR(&filtroTipoCarga' +
        ')))  OR (TO_CHAR(&filtroTipoCargaTexto) = '#39'0'#39')) AND'
      '              (('
      
        '              eq.tipo_proprietario IN (TO_CHAR(&filtroTipoPropri' +
        'etario))) OR (TO_CHAR(&filtroTipoProprietario) = '#39'0'#39')) AND'
      '              ((EXISTS (SELECT al.cod_tipoalertaalocacao'
      '                          FROM alocacao_alertas al'
      
        '                         WHERE al.cod_grupo              = pr.co' +
        'd_grupo'
      
        '                           AND al.cod_regional           = pr.co' +
        'd_regional'
      
        '                           AND al.cod_unidade            = pr.co' +
        'd_unidade'
      
        '                           and al.cod_safra              = pr.co' +
        'd_safra'
      
        '                           AND al.cod_frente             = pr.co' +
        'd_frente'
      
        '                           AND al.cod_fazenda            = pr.co' +
        'd_fazenda'
      
        '                           AND al.cod_equipamento        = pr.co' +
        'd_equipamento'
      
        '                           AND al.data_saida             = pr.da' +
        'ta_saida'
      
        '                           AND al.cod_tipoalertaalocacao IN (TO_' +
        'CHAR(&filtroTipoAlertaAlocacao)))) OR ('#39'0'#39' in (TO_CHAR(&filtroTi' +
        'poAlertaAlocacao))))'
      '         THEN '#39'S'#39
      '         ELSE '#39'N'#39
      '       END  selecionado,'
      
        '       DECODE(DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.situacaop' +
        'revisto,pr.situacaoreal),'#39'V'#39',CASE WHEN (pr.data_prev_chegada - S' +
        'YSDATE) < 0 THEN '#39'S'#39' ELSE '#39'N'#39' END,'
      
        '              '#39'I'#39',CASE WHEN (pr.data_prev_inicio_carreg - SYSDAT' +
        'E) < 0 THEN '#39'S'#39' ELSE '#39'N'#39' END,'
      
        '              '#39'C'#39',CASE WHEN (pr.data_prev_termino_carreg - SYSDA' +
        'TE) < 0 THEN '#39'S'#39' ELSE '#39'N'#39' END, '#39'N'#39') atrasado,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN       '
      '          DECODE(pr.situacaoreal, NULL,'#39'N'#39','#39'S'#39')'
      '       ELSE'
      '         '#39'N'#39
      '       END temporeal'
      '       '
      'FROM (     '
      '      SELECT al.cod_grupo,'
      '             al.cod_regional,'
      '             al.cod_unidade,'
      '             AL.cod_frente,'
      '             AL.cod_fazenda,'
      '             AL.cod_equipamento,'
      
        '             CASE WHEN (SYSDATE <= AL.DATA_PREV_INICIO_CARREG) t' +
        'hen '#39'I'#39
      
        '                  WHEN (SYSDATE  > AL.DATA_PREV_INICIO_CARREG  A' +
        'ND SYSDATE <= AL.DATA_PREV_TERMINO_CARREG) then '#39'C'#39
      
        '                  WHEN (SYSDATE  > AL.DATA_PREV_TERMINO_CARREG A' +
        'ND AL.DATA_CHEGADA IS NULL) then '#39'V'#39
      '             END situacao,'
      '             AL.ABASTECEU,'
      '             AL.BITUCA,'
      '             AL.data_saida,'
      '             AL.data_prev_inicio_carreg,'
      
        '             ROUND(((ROUND((sysdate - AL.data_saida)*24*60) / RO' +
        'UND((AL.data_prev_inicio_carreg - AL.data_saida)*24*60)) *100),2' +
        ') PORC_IDA,'
      '             AL.data_prev_termino_carreg,'
      '             AL.data_prev_chegada,'
      
        '             ROUND(((ROUND((sysdate - AL.data_prev_termino_carre' +
        'g)*24*60) / ROUND((AL.data_prev_chegada - AL.data_prev_termino_c' +
        'arreg)*24*60)) *100),2) PORC_VOLTA,'
      '             AL.cod_tipocarga,'
      '             AL.atraso,'
      '             AL.descarregando,'
      '             AL.SEQUENCIA,'
      '             AL.cod_safra,'
      '             al.situacaoprevisto,'
      '             al.percprevisto,'
      '             al.situacaohibrido,'
      '             al.perchibrido,'
      '             al.situacaoreal,'
      '             al.percreal,'
      '             al.parado'
      '       FROM ALOCACAO AL'
      '      WHERE AL.cod_safra       = :COD_SAFRA'
      '        AND AL.cod_entradacana = 0'
      '        AND al.viagem_finalizada = '#39'N'#39' '
      '        AND (al.cod_grupo = :cod_grupo OR :cod_grupo = 0)'
      
        '        AND (al.cod_regional = :cod_regional OR :cod_regional = ' +
        '0)'
      '        AND (al.cod_unidade = :cod_unidade OR :cod_unidade = 0)'
      '        AND al.parado = '#39'N'#39
      '         '
      '      UNION ALL'
      '      '
      '      SELECT al.cod_grupo,'
      '             al.cod_regional,'
      '             al.cod_unidade,'
      '             AL.cod_frente,'
      '             AL.cod_fazenda,'
      '             AL.cod_equipamento,'
      '             '#39'D'#39' situacao,     '
      '             AL.ABASTECEU,'
      '             AL.BITUCA,'
      '             AL.data_saida,'
      '             AL.data_prev_inicio_carreg,'
      '             0 PORC_IDA,'
      '             AL.data_prev_termino_carreg,'
      '             AL.data_prev_chegada,'
      '             0 PORC_VOLTA,'
      '             AL.cod_tipocarga,'
      '             AL.atraso,'
      '             AL.descarregando,'
      '             AL.SEQUENCIA,'
      '             AL.cod_safra,'
      '             al.situacaoprevisto,'
      '             al.percprevisto,'
      '             al.situacaohibrido,'
      '             al.perchibrido,'
      '             al.situacaoreal,'
      '             al.percreal,'
      '             al.parado'
      '      FROM  ALOCACAO AL'
      '      WHERE (al.cod_grupo = :cod_grupo OR :cod_grupo = 0)'
      
        '        AND (al.cod_regional = :cod_regional OR :cod_regional = ' +
        '0)'
      '        AND (al.cod_unidade = :cod_unidade OR :cod_unidade = 0)'
      '        AND AL.cod_safra     = :COD_SAFRA'
      '        AND al.viagem_finalizada = '#39'N'#39
      '        AND AL.descarregando = '#39'S'#39
      '        AND  al.cod_entradacana <> 0'
      '        AND al.parado = '#39'N'#39
      '      '
      '      ) PR,'
      '        EQUIPAMENTO EQ,'
      '        TIPO_CARGA TC,'
      '        PARAMETROS_LOGISTICA PA'
      'WHERE (PR.COD_FRENTE       = :COD_FRENTE OR :cod_frente = 0)'
      'AND   (PR.COD_FAZENDA      = :COD_FAZENDA OR :cod_fazenda = 0)'
      'AND   EQ.COD_GRUPO = :COD_GRUPO'
      'AND   EQ.COD_EQUIPAMENTO  = PR.COD_EQUIPAMENTO'
      'AND   TC.COD_TIPOCARGA    = PR.COD_TIPOCARGA'
      'AND   PA.COD_GRUPO = PR.COD_GRUPO'
      'AND   PA.COD_REGIONAL      = PR.COD_REGIONAL'
      'AND   PA.COD_UNIDADE       = PR.COD_UNIDADE'
      'ORDER BY PR.data_prev_chegada DESC ) '
      ''
      'SELECT al.*'
      '  FROM c_alocacao al'
      '  ORDER BY al.situacao,al.porc_volta')
    Left = 416
    Top = 297
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'realprevisto'
      end
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
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    MacroData = <
      item
        Name = 'filtroTipoCarga'
        Value = '0'
      end
      item
        Name = 'filtroTipoCargaTexto'
        Value = #39'0'#39
      end
      item
        Name = 'filtroTipoProprietario'
        Value = '0'
      end
      item
        Name = 'filtroTipoAlertaAlocacao'
        Value = '0'
      end>
    object QR_VeiculosCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_VeiculosCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_VeiculosCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_VeiculosCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_VeiculosCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_VeiculosCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_VeiculosCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_VeiculosDESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Required = True
      Size = 4000
    end
    object QR_VeiculosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object QR_VeiculosABASTECEU: TStringField
      FieldName = 'ABASTECEU'
      Size = 9
    end
    object QR_VeiculosBITUCA: TStringField
      FieldName = 'BITUCA'
      Size = 6
    end
    object QR_VeiculosDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object QR_VeiculosDATA_PREV_INICIO_CARREG: TDateTimeField
      FieldName = 'DATA_PREV_INICIO_CARREG'
    end
    object QR_VeiculosPORC_IDA: TFloatField
      FieldName = 'PORC_IDA'
    end
    object QR_VeiculosDATA_PREV_TERMINO_CARREG: TDateTimeField
      FieldName = 'DATA_PREV_TERMINO_CARREG'
    end
    object QR_VeiculosDATA_PREV_CHEGADA: TDateTimeField
      FieldName = 'DATA_PREV_CHEGADA'
    end
    object QR_VeiculosPORC_VOLTA: TFloatField
      FieldName = 'PORC_VOLTA'
    end
    object QR_VeiculosCOD_TIPOCARGA: TIntegerField
      FieldName = 'COD_TIPOCARGA'
    end
    object QR_VeiculosDESC_TIPOCARGA: TStringField
      FieldName = 'DESC_TIPOCARGA'
      Size = 4000
    end
    object QR_VeiculosATRASO: TStringField
      FieldName = 'ATRASO'
      FixedChar = True
      Size = 1
    end
    object QR_VeiculosDESCARREGANDO: TStringField
      FieldName = 'DESCARREGANDO'
      FixedChar = True
      Size = 1
    end
    object QR_VeiculosSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
    object QR_VeiculosPARADO: TStringField
      FieldName = 'PARADO'
      Size = 1
    end
    object QR_VeiculosSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object QR_VeiculosATRASADO: TStringField
      FieldName = 'ATRASADO'
      Size = 1
    end
    object QR_VeiculosTEMPOREAL: TStringField
      FieldName = 'TEMPOREAL'
      Size = 1
    end
  end
  object QR_VeiculosAlerta: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      
        'SELECT a.cod_grupo, a.cod_regional, a.cod_unidade, a.cod_safra, ' +
        'a.cod_frente, a.cod_fazenda, '
      
        '       a.cod_equipamento, a.data_saida, a.cod_tipoalertaalocacao' +
        ', A.observacao'
      '  FROM alocacao_alertas a'
      ' WHERE a.cod_grupo        = :cod_grupo'
      '   AND a.cod_regional     = :cod_regional'
      '   AND a.cod_unidade      = :cod_unidade'
      '   AND a.cod_safra        = :cod_safra'
      '   AND a.cod_frente       = :cod_frente'
      '   AND a.cod_fazenda      = :cod_fazenda'
      '   AND a.cod_equipamento  = :cod_equipamento'
      '   AND a.data_saida       = :data_saida'
      'ORDER BY a.sequencia')
    Left = 496
    Top = 336
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end
      item
        DataType = ftUnknown
        Name = 'cod_equipamento'
      end
      item
        DataType = ftUnknown
        Name = 'data_saida'
      end>
    object QR_VeiculosAlertaCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_VeiculosAlertaCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_VeiculosAlertaCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_VeiculosAlertaCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_VeiculosAlertaCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_VeiculosAlertaCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_VeiculosAlertaCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_VeiculosAlertaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object QR_VeiculosAlertaCOD_TIPOALERTAALOCACAO: TFloatField
      FieldName = 'COD_TIPOALERTAALOCACAO'
    end
    object QR_VeiculosAlertaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 4000
    end
  end
  object QR_ALERTA_ALOCACAO: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      
        'SELECT al.cod_safra, TO_CHAR (al.DATA, '#39'DD/MM HH24:MI'#39') DATA, al' +
        '.mensagem,'
      '         al.lida, al.seq_alocacao, al.usuario, al.cod_motivo,'
      '         mo.descricao desc_motivo'
      '    FROM motivos mo, alerta_logistica al'
      '   WHERE al.cod_safra = :cod_safra'
      '     AND al.seq_alocacao = :seq_alocacao'
      '     AND mo.cod_motivo(+) = al.cod_motivo'
      'ORDER BY DATA')
    RefreshOptions = [roAfterUpdate]
    Left = 600
    Top = 306
    ParamData = <
      item
        DataType = ftFloat
        Name = 'COD_SAFRA'
      end
      item
        DataType = ftFloat
        Name = 'SEQ_ALOCACAO'
      end>
    object QR_ALERTA_ALOCACAOCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_ALERTA_ALOCACAODATA: TStringField
      FieldName = 'DATA'
      Size = 11
    end
    object QR_ALERTA_ALOCACAOMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 4000
    end
    object QR_ALERTA_ALOCACAOLIDA: TStringField
      FieldName = 'LIDA'
      Size = 1
    end
    object QR_ALERTA_ALOCACAOSEQ_ALOCACAO: TFloatField
      FieldName = 'SEQ_ALOCACAO'
    end
    object QR_ALERTA_ALOCACAOUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 200
    end
    object QR_ALERTA_ALOCACAOCOD_MOTIVO: TFloatField
      FieldName = 'COD_MOTIVO'
    end
    object QR_ALERTA_ALOCACAODESC_MOTIVO: TStringField
      FieldName = 'DESC_MOTIVO'
      Size = 4000
    end
  end
  object QR_Fixos: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT a.cod_grupo,'
      '       a.cod_regional,'
      '       a.cod_unidade,'
      '       a.cod_safra,'
      '       a.cod_frente,'
      '       a.cod_fazenda,'
      '       a.cod_equipamento,'
      '       e.descricao desc_equipamento,'
      '       (SELECT f.fixa'
      '          FROM frente f '
      '         WHERE f.cod_grupo = a.cod_grupo '
      '           AND f.cod_regional = a.cod_regional '
      '           AND f.cod_unidade = a.cod_unidade'
      '           AND f.cod_safra = a.cod_safra'
      '           AND f.cod_frente = a.cod_frente) fixotravado      '
      '  FROM alocacao_fixa a,'
      '       equipamento e'
      ' WHERE a.cod_grupo = :cod_grupo'
      '   AND a.cod_regional = :cod_regional'
      '   AND a.cod_unidade = :cod_unidade'
      '   AND a.cod_safra = :cod_safra'
      '   AND a.cod_frente = :cod_frente'
      '   AND a.cod_fazenda = :cod_fazenda'
      '   AND a.cod_equipamento = e.cod_equipamento'
      '   AND a.cod_grupo = e.cod_grupo'
      '   AND e.ativo = '#39'S'#39)
    Left = 360
    Top = 344
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    object QR_FixosCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Required = True
    end
    object QR_FixosCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_FixosCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_FixosCOD_SAFRA: TIntegerField
      FieldName = 'COD_SAFRA'
      Required = True
    end
    object QR_FixosCOD_FRENTE: TIntegerField
      FieldName = 'COD_FRENTE'
      Required = True
    end
    object QR_FixosCOD_FAZENDA: TIntegerField
      FieldName = 'COD_FAZENDA'
      Required = True
    end
    object QR_FixosCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Required = True
    end
    object QR_FixosDESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Size = 4000
    end
    object QR_FixosFIXOTRAVADO: TStringField
      FieldName = 'FIXOTRAVADO'
      Size = 1
    end
  end
  object QR_Descarregando: TOraQuery
    Session = DM.Sessao
    SQL.Strings = (
      'WITH c_alocacao AS ('
      'SELECT pr.cod_safra,'
      '       PR.cod_frente,'
      '       PR.cod_fazenda,'
      '       pr.cod_grupo,'
      '       pr.cod_regional,'
      '       pr.cod_unidade,'
      '       PR.cod_equipamento,'
      '       EQ.DESCRICAO DESC_EQUIPAMENTO,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN'
      
        '          DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.situacaoprevi' +
        'sto,pr.situacaoreal) '
      '       ELSE'
      '          pr.situacaoprevisto'
      '       END situacao,'
      '       DECODE(PR.ABASTECEU,'#39'S'#39','#39'Abasteceu'#39','#39#39') ABASTECEU,'
      '       DECODE(PR.BITUCA,'#39'S'#39','#39'Bituca'#39','#39#39') BITUCA,'
      '       PR.data_saida,PR.data_prev_inicio_carreg,'
      '--       DECODE(PR.SITUACAO,'#39'I'#39',PR.PORC_IDA,0) PORC_IDA,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN'
      
        '          CASE WHEN DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.per' +
        'cprevisto, pr.percreal) < 1 THEN'
      '             2'
      '          ELSE '
      
        '             DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.percprevis' +
        'to, pr.percreal)'
      '          END'
      '       ELSE'
      '          CASE WHEN pr.percprevisto < 1 THEN'
      '             2'
      '          ELSE'
      '             pr.percprevisto'
      '          END'
      '       END PORC_IDA,   ---------------------'
      '       PR.data_prev_termino_carreg,'
      '       PR.data_prev_chegada,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN'
      
        '          CASE WHEN DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.per' +
        'cprevisto, pr.perchibrido) < 1 THEN'
      '             2'
      '          ELSE       '
      
        '             DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.percprevis' +
        'to,pr.perchibrido) '
      '          END'
      '       ELSE'
      '          CASE WHEN pr.percprevisto < 1 THEN'
      '             2'
      '          ELSE'
      '             pr.percprevisto'
      '          END'
      '       END PORC_VOLTA,-------------------'
      
        '--       sig.pk_rotas.fn_calcula_status_previsto (pr.sequencia,S' +
        'YSDATE) status_previsto,       '
      
        '       --sig.pk_rotas.fn_calcula_status_previsto (pr.sequencia,T' +
        'O_DATE('#39'29/09/2011 17:38:15'#39','#39'dd/mm/rrrr hh24:mi:ss'#39')) status_pr' +
        'evisto,'
      '       PR.cod_tipocarga,'
      '       TC.DESCRICAO DESC_TIPOCARGA,'
      '       PR.atraso,'
      '       PR.descarregando,'
      '       PR.SEQUENCIA,'
      '       pr.parado,'
      '       CASE '
      
        '         WHEN ((tc.qde_carregamento IN (TO_CHAR(&filtroTipoCarga' +
        ')))  OR (TO_CHAR(&filtroTipoCargaTexto) = '#39'0'#39')) AND'
      '              (('
      
        '              eq.tipo_proprietario IN (TO_CHAR(&filtroTipoPropri' +
        'etario))) OR (TO_CHAR(&filtroTipoProprietario) = '#39'0'#39')) AND'
      '              ((EXISTS (SELECT al.cod_tipoalertaalocacao'
      '                          FROM alocacao_alertas al'
      
        '                         WHERE al.cod_grupo              = pr.co' +
        'd_grupo'
      
        '                           AND al.cod_regional           = pr.co' +
        'd_regional'
      
        '                           AND al.cod_unidade            = pr.co' +
        'd_unidade'
      
        '                           and al.cod_safra              = pr.co' +
        'd_safra'
      
        '                           AND al.cod_frente             = pr.co' +
        'd_frente'
      
        '                           AND al.cod_fazenda            = pr.co' +
        'd_fazenda'
      
        '                           AND al.cod_equipamento        = pr.co' +
        'd_equipamento'
      
        '                           AND al.data_saida             = pr.da' +
        'ta_saida'
      
        '                           AND al.cod_tipoalertaalocacao IN (TO_' +
        'CHAR(&filtroTipoAlertaAlocacao)))) OR ('#39'0'#39' in (TO_CHAR(&filtroTi' +
        'poAlertaAlocacao))))'
      '         THEN '#39'S'#39
      '         ELSE '#39'N'#39
      '       END  selecionado,'
      
        '       DECODE(DECODE(NVL(pr.situacaoreal,NULL),NULL,pr.situacaop' +
        'revisto,pr.situacaoreal),'#39'V'#39',CASE WHEN (pr.data_prev_chegada - S' +
        'YSDATE) < 0 THEN '#39'S'#39' ELSE '#39'N'#39' END,'
      
        '              '#39'I'#39',CASE WHEN (pr.data_prev_inicio_carreg - SYSDAT' +
        'E) < 0 THEN '#39'S'#39' ELSE '#39'N'#39' END,'
      
        '              '#39'C'#39',CASE WHEN (pr.data_prev_termino_carreg - SYSDA' +
        'TE) < 0 THEN '#39'S'#39' ELSE '#39'N'#39' END, '#39'N'#39') atrasado,'
      '       CASE WHEN :realprevisto = '#39'R'#39' THEN       '
      '          DECODE(pr.situacaoreal, NULL,'#39'N'#39','#39'S'#39')'
      '       ELSE'
      '         '#39'N'#39
      '       END temporeal,'
      '       pr.data_chegada,'
      
        '       TRUNC((pr.data_chegada - pr.data_prev_chegada)*24,0) hora' +
        's,'
      
        '       ROUND((((pr.data_chegada - pr.data_prev_chegada)*24) - TR' +
        'UNC((pr.data_chegada - pr.data_prev_chegada)*24,0))*60,0) minuto' +
        's'
      '       '
      'FROM (SELECT al.cod_grupo,'
      '             al.cod_regional,'
      '             al.cod_unidade,'
      '             AL.cod_frente,'
      '             AL.cod_fazenda,'
      '             AL.cod_equipamento,'
      '             '#39'D'#39' situacao,     '
      '             AL.ABASTECEU,'
      '             AL.BITUCA,'
      '             AL.data_saida,'
      '             AL.data_prev_inicio_carreg,'
      '             0 PORC_IDA,'
      '             AL.data_prev_termino_carreg,'
      '             AL.data_prev_chegada,'
      '             0 PORC_VOLTA,'
      '             AL.cod_tipocarga,'
      '             AL.atraso,'
      '             AL.descarregando,'
      '             AL.SEQUENCIA,'
      '             AL.cod_safra,'
      '             al.situacaoprevisto,'
      '             al.percprevisto,'
      '             al.situacaohibrido,'
      '             al.perchibrido,'
      '             al.situacaoreal,'
      '             al.percreal,'
      '             al.parado,'
      '             al.data_chegada'
      '      FROM  ALOCACAO AL'
      '      WHERE (al.cod_grupo = :cod_grupo OR :cod_grupo = 0)'
      
        '        AND (al.cod_regional = :cod_regional OR :cod_regional = ' +
        '0)'
      '        AND (al.cod_unidade = :cod_unidade OR :cod_unidade = 0)'
      '        AND AL.cod_safra     = :COD_SAFRA'
      '        AND al.viagem_finalizada = '#39'N'#39
      '        AND AL.descarregando = '#39'S'#39
      '        AND  al.cod_entradacana <> 0'
      '        AND al.parado = '#39'N'#39
      '      '
      '      ) PR,'
      '        EQUIPAMENTO EQ,'
      '        TIPO_CARGA TC,'
      '        PARAMETROS_LOGISTICA PA'
      'WHERE (PR.COD_FRENTE       = :COD_FRENTE OR :cod_frente = 0)'
      'AND   (PR.COD_FAZENDA      = :COD_FAZENDA OR :cod_fazenda = 0)'
      'AND   EQ.COD_GRUPO = :COD_GRUPO'
      'AND   EQ.COD_EQUIPAMENTO  = PR.COD_EQUIPAMENTO'
      'AND   TC.COD_TIPOCARGA    = PR.COD_TIPOCARGA'
      'AND   PA.COD_GRUPO = PR.COD_GRUPO'
      'AND   PA.COD_REGIONAL      = PR.COD_REGIONAL'
      'AND   PA.COD_UNIDADE       = PR.COD_UNIDADE ) '
      ''
      'SELECT al.*'
      '  FROM c_alocacao al'
      '  ORDER BY al.data_chegada')
    Left = 280
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'realprevisto'
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
        Name = 'cod_safra'
      end
      item
        DataType = ftUnknown
        Name = 'cod_frente'
      end
      item
        DataType = ftUnknown
        Name = 'cod_fazenda'
      end>
    MacroData = <
      item
        Name = 'filtroTipoCarga'
        Value = '0'
      end
      item
        Name = 'filtroTipoCargaTexto'
        Value = #39'0'#39
      end
      item
        Name = 'filtroTipoProprietario'
        Value = '0'
      end
      item
        Name = 'filtroTipoAlertaAlocacao'
        Value = '0'
      end>
    object QR_DescarregandoCOD_SAFRA: TFloatField
      FieldName = 'COD_SAFRA'
    end
    object QR_DescarregandoCOD_FRENTE: TFloatField
      FieldName = 'COD_FRENTE'
    end
    object QR_DescarregandoCOD_FAZENDA: TFloatField
      FieldName = 'COD_FAZENDA'
    end
    object QR_DescarregandoCOD_GRUPO: TFloatField
      FieldName = 'COD_GRUPO'
    end
    object QR_DescarregandoCOD_REGIONAL: TFloatField
      FieldName = 'COD_REGIONAL'
    end
    object QR_DescarregandoCOD_UNIDADE: TFloatField
      FieldName = 'COD_UNIDADE'
    end
    object QR_DescarregandoCOD_EQUIPAMENTO: TFloatField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object QR_DescarregandoDESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Required = True
      Size = 4000
    end
    object QR_DescarregandoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object QR_DescarregandoABASTECEU: TStringField
      FieldName = 'ABASTECEU'
      Size = 9
    end
    object QR_DescarregandoBITUCA: TStringField
      FieldName = 'BITUCA'
      Size = 6
    end
    object QR_DescarregandoDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object QR_DescarregandoDATA_PREV_INICIO_CARREG: TDateTimeField
      FieldName = 'DATA_PREV_INICIO_CARREG'
    end
    object QR_DescarregandoPORC_IDA: TFloatField
      FieldName = 'PORC_IDA'
    end
    object QR_DescarregandoDATA_PREV_TERMINO_CARREG: TDateTimeField
      FieldName = 'DATA_PREV_TERMINO_CARREG'
    end
    object QR_DescarregandoDATA_PREV_CHEGADA: TDateTimeField
      FieldName = 'DATA_PREV_CHEGADA'
    end
    object QR_DescarregandoPORC_VOLTA: TFloatField
      FieldName = 'PORC_VOLTA'
    end
    object QR_DescarregandoCOD_TIPOCARGA: TIntegerField
      FieldName = 'COD_TIPOCARGA'
    end
    object QR_DescarregandoDESC_TIPOCARGA: TStringField
      FieldName = 'DESC_TIPOCARGA'
      Size = 4000
    end
    object QR_DescarregandoATRASO: TStringField
      FieldName = 'ATRASO'
      FixedChar = True
      Size = 1
    end
    object QR_DescarregandoDESCARREGANDO: TStringField
      FieldName = 'DESCARREGANDO'
      FixedChar = True
      Size = 1
    end
    object QR_DescarregandoSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
    object QR_DescarregandoPARADO: TStringField
      FieldName = 'PARADO'
      Size = 1
    end
    object QR_DescarregandoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object QR_DescarregandoATRASADO: TStringField
      FieldName = 'ATRASADO'
      Size = 1
    end
    object QR_DescarregandoTEMPOREAL: TStringField
      FieldName = 'TEMPOREAL'
      Size = 1
    end
    object QR_DescarregandoDATA_CHEGADA: TDateTimeField
      FieldName = 'DATA_CHEGADA'
    end
    object QR_DescarregandoHORAS: TFloatField
      FieldName = 'HORAS'
    end
    object QR_DescarregandoMINUTOS: TFloatField
      FieldName = 'MINUTOS'
    end
  end
  object Timer_Veiculos: TTimer
    OnTimer = Timer_VeiculosTimer
    Left = 533
    Top = 59
  end
end
