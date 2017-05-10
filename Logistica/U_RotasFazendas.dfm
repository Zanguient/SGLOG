inherited F_RotasFazendas: TF_RotasFazendas
  Caption = 'Rotas'
  ClientHeight = 597
  ClientWidth = 982
  Position = poDefault
  ExplicitWidth = 998
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 982
    Height = 597
    Percent = 8
    ExplicitWidth = 982
    ExplicitHeight = 597
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      Height = 597
      ExplicitHeight = 597
      inherited RzBitBtnSair: TRzBitBtn
        Top = 567
        ExplicitTop = 567
      end
      inherited RzBitBtnPesquisar: TRzBitBtn
        Top = 120
        ExplicitTop = 120
      end
      inherited DBNavigator: TDBNavigator
        Top = 163
        ExplicitTop = 163
      end
      inherited pnSeparador2: TPanel
        Top = 268
        ExplicitTop = 268
      end
      inherited pnSeparador1: TPanel
        Top = 150
        ExplicitTop = 150
      end
    end
    inherited pnSeparador: TPanel
      Height = 597
      ExplicitHeight = 597
    end
    inherited pnComponentes: TPanel
      Width = 900
      Height = 597
      ExplicitWidth = 900
      ExplicitHeight = 597
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 900
        Height = 131
        Align = alTop
        AlignmentVertical = avTop
        BorderOuter = fsFlatRounded
        Caption = 'Rotas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8673805
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 52
          Top = 33
          Width = 71
          Height = 13
          Caption = 'C'#243'digo Rota'
        end
        object Label4: TLabel
          Left = 32
          Top = 57
          Width = 91
          Height = 13
          Caption = 'Unidade Origem'
        end
        object Label5: TLabel
          Left = 27
          Top = 81
          Width = 96
          Height = 13
          Caption = 'Fazenda Destino'
        end
        object Label7: TLabel
          Left = 93
          Top = 105
          Width = 30
          Height = 13
          Caption = 'Zona'
        end
        object Label9: TLabel
          Left = 493
          Top = 57
          Width = 91
          Height = 14
          Caption = '(Usina  de origem)'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8673805
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 220
          Top = 105
          Width = 281
          Height = 14
          Caption = '(Opcional, se necess'#225'rio detalhamento no n'#237'vel de zona)'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8673805
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RzEdit3: TRzDBEdit
          Left = 128
          Top = 30
          Width = 60
          Height = 21
          DataSource = DS_Main
          DataField = 'COD_ROTA'
          DisabledColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 0
          OnEnter = RzEdit3Enter
          OnExit = RzEdit3Exit
          OnKeyDown = RzEdit3KeyDown
        end
        object RzEdit4: TRzDBEdit
          Left = 190
          Top = 30
          Width = 272
          Height = 21
          DataSource = DS_Main
          DataField = 'DESCRICAO'
          DisabledColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 1
          OnEnter = RzEdit4Enter
        end
        object bPesquisaRotas: TRzBitBtn
          Left = 464
          Top = 30
          Width = 23
          Height = 21
          Hint = 'Pesquisa rotas cadastradas'
          FrameColor = 7617536
          Color = 15791348
          HotTrack = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TabStop = False
          OnClick = bPesquisaRotasClick
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            1800000000006802000000000000000000000000000000000000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6000000000000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D60000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D6000000000000CED3D6CED3D60000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000}
          Margin = 0
        end
        object RzEdit1: TRzDBEdit
          Left = 128
          Top = 54
          Width = 60
          Height = 21
          DataSource = DS_Main
          DataField = 'COD_EMPRESA'
          DisabledColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 2
          OnEnter = RzEdit1Enter
          OnExit = RzEdit1Exit
          OnKeyDown = RzEdit1KeyDown
        end
        object RzEdit2: TRzDBEdit
          Left = 190
          Top = 54
          Width = 272
          Height = 21
          TabStop = False
          DataSource = DS_Main
          DataField = 'APELIDO'
          DisabledColor = clWhite
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 6
        end
        object bPesquisaUnidade: TRzBitBtn
          Left = 464
          Top = 54
          Width = 23
          Height = 21
          Hint = 'Pesquisa unidade de Origem'
          FrameColor = 7617536
          Color = 15791348
          HotTrack = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          TabStop = False
          OnClick = bPesquisaUnidadeClick
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            1800000000006802000000000000000000000000000000000000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6000000000000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D60000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D6000000000000CED3D6CED3D60000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000}
          Margin = 0
        end
        object RzEdit5: TRzDBEdit
          Left = 128
          Top = 78
          Width = 60
          Height = 21
          DataSource = DS_Main
          DataField = 'COD_FAZENDA'
          DisabledColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 3
          OnEnter = RzEdit5Enter
          OnExit = RzEdit5Exit
          OnKeyDown = RzEdit5KeyDown
        end
        object RzEdit6: TRzDBEdit
          Left = 190
          Top = 78
          Width = 272
          Height = 21
          TabStop = False
          DataSource = DS_Main
          DataField = 'DESC_FAZENDA'
          DisabledColor = clWhite
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 8
        end
        object bPesquisaFazenda: TRzBitBtn
          Left = 464
          Top = 78
          Width = 23
          Height = 21
          Hint = 'Pesquisa fazendas de destino'
          FrameColor = 7617536
          Color = 15791348
          HotTrack = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          TabStop = False
          OnClick = bPesquisaFazendaClick
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            1800000000006802000000000000000000000000000000000000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6000000000000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D60000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D6000000000000CED3D6CED3D60000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000}
          Margin = 0
        end
        object RzEdit7: TRzDBEdit
          Left = 128
          Top = 102
          Width = 60
          Height = 21
          DataSource = DS_Main
          DataField = 'ZONA'
          DisabledColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameVisible = True
          ParentFont = False
          TabOrder = 4
          OnEnter = RzEdit7Enter
          OnExit = RzEdit7Exit
          OnKeyDown = RzEdit7KeyDown
        end
        object bPesquisaZonas: TRzBitBtn
          Left = 191
          Top = 102
          Width = 23
          Height = 21
          Hint = 'Pesquisa Zonas'
          FrameColor = 7617536
          Color = 15791348
          HotTrack = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          TabStop = False
          OnClick = bPesquisaZonasClick
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            1800000000006802000000000000000000000000000000000000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6000000000000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D60000CED3D6CED3D6000000000000CED3D6CED3D6
            000000000000CED3D6CED3D6000000000000CED3D6CED3D60000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000}
          Margin = 0
        end
        object RzBitBtn2: TRzBitBtn
          Left = 874
          Top = 82
          Width = 125
          Height = 38
          Hint = 
            'Importar os pontos da rota do GPS Garmin, atrav'#233's de arquivo tex' +
            'to gerado pelo Track Maker'
          FrameColor = 8673805
          Caption = 'Importar pontos rota '
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8673805
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HighlightColor = 8673805
          HotTrack = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = RzBitBtn2Click
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888800008888888888888888888800008888FFFFFFFFFFFFF88800008887
            404040404040F88800008887040408840404F88800008887404089984040F888
            00008887040899998404F88800008887408999999840F8880000888777778998
            7777888800008888888889988888888800008888FFFF8998FFFFF88800008887
            BFBF8998BFBFF88800008887FBFB8998FBFBF88800008887BFBF8888BFBFF888
            00008887FBFBFBFBFBFBF88800008887BFBFBFBFBFBFF88800008887FBFBFBFB
            FBFBF88800008887777777777777888800008888888888888888888800008888
            88888888888888880000}
        end
      end
      object RzPanel1: TRzPanel
        Left = 0
        Top = 131
        Width = 900
        Height = 466
        Align = alClient
        AlignmentVertical = avTop
        BorderOuter = fsFlatRounded
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8673805
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label17: TLabel
          Left = 267
          Top = 1
          Width = 188
          Height = 13
          Caption = 'Pontos Not'#225'veis/Direcionamento'
        end
        object wwdbgrid1: TwwDBGrid
          Left = 2
          Top = 2
          Width = 547
          Height = 462
          Hint = 'Frentes de Corte do Log'#237'stica'
          ControlType.Strings = (
            'TIPO;CustomEdit;wwDBComboBox1;F')
          Selected.Strings = (
            'SEQUENCIA'#9'8'#9'Sequ'#234'ncia'
            'TIPO'#9'8'#9'Ida/Volta'
            'TEXTO_BORDO'#9'32'#9'Texto Indicativo~do Bordo (16 Caracteres) Linha 1'
            
              'TEXTO_BORDO2'#9'32'#9'Texto Indicativo~do Bordo (16 Caracteres) Linha ' +
              '2'
            'DESCRICAO_DETALHADA'#9'44'#9'Descri'#231#227'o detalhada (N'#227'o usada no bordo)'
            'CHECKPOINT'#9'12'#9'CheckPoint ?')
          IniAttributes.FileName = 'DELPHI32.ini.ini'
          IniAttributes.Delimiter = ';;'
          TitleColor = 8673805
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = DS_RotasPontos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          OnColEnter = wwDBGrid9ColEnter
          OnEnter = wwDBGrid9Enter
        end
        object RzPageControl1: TRzPageControl
          Left = 549
          Top = 2
          Width = 349
          Height = 462
          ActivePage = TabSheet1
          Align = alRight
          TabIndex = 0
          TabOrder = 1
          FixedDimension = 19
          object TabSheet1: TRzTabSheet
            Color = clWhite
            Caption = 'Detalhamento pontos'
            DesignSize = (
              345
              439)
            object RzGroupBox1: TRzGroupBox
              Left = -3
              Top = -24
              Width = 348
              Height = 425
              Anchors = [akTop, akRight, akBottom]
              Caption = 'Detalhamento do ponto'
              Color = clWhite
              TabOrder = 0
              object Label1: TLabel
                Left = 24
                Top = 51
                Width = 47
                Height = 13
                Caption = 'Latitude'
              end
              object Label2: TLabel
                Left = 14
                Top = 75
                Width = 57
                Height = 13
                Caption = 'Longitude'
              end
              object Label6: TLabel
                Left = 7
                Top = 258
                Width = 64
                Height = 26
                Caption = 'Velocidade'#13'M'#225'xima'
              end
              object Label8: TLabel
                Left = 13
                Top = 125
                Width = 58
                Height = 26
                Caption = 'Dist'#226'ncia '#13'M'#225'xima'
              end
              object Label11: TLabel
                Left = 28
                Top = 189
                Width = 43
                Height = 26
                Caption = 'Tempo'#13'M'#225'ximo'
              end
              object Label12: TLabel
                Left = 136
                Top = 117
                Width = 200
                Height = 42
                Caption = 
                  '(Dist'#226'ncia M'#193'XIMA percorrida em '#13'KM at'#233' o proximo ponto.'#13'Utiliza' +
                  'do para verificar erro de percurso)'
                Font.Charset = ANSI_CHARSET
                Font.Color = 8673805
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsItalic]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 140
                Top = 181
                Width = 176
                Height = 42
                Caption = 
                  '(Tempo M'#193'XIMO em MINUTOS at'#233' '#13'o pr'#243'ximo ponto.'#13'Utilizado para ve' +
                  'rificar  ATRASOS)'
                Font.Charset = ANSI_CHARSET
                Font.Color = 8673805
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsItalic]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 141
                Top = 250
                Width = 171
                Height = 42
                Caption = 
                  '(Velocidade M'#193'XIMA permitida at'#233#13'o pr'#243'ximo ponto.'#13'Utilizado para' +
                  ' emitir alerta sonoro)'
                Font.Charset = ANSI_CHARSET
                Font.Color = 8673805
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsItalic]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 115
                Top = 318
                Width = 207
                Height = 28
                Caption = '(Indica ponto de envio de posicionamento '#13'para Logistica)'
                Font.Charset = ANSI_CHARSET
                Font.Color = 8673805
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsItalic]
                ParentFont = False
              end
              object DBText1: TDBText
                Left = 120
                Top = 389
                Width = 85
                Height = 13
                DataField = 'LATITUDE_DECIMAL'
                DataSource = DS_RotasPontos
              end
              object DBText2: TDBText
                Left = 230
                Top = 389
                Width = 85
                Height = 13
                DataField = 'LONGITUDE_DECIMAL'
                DataSource = DS_RotasPontos
              end
              object Label18: TLabel
                Left = 7
                Top = 361
                Width = 63
                Height = 13
                Caption = 'Avisar com'
              end
              object Label19: TLabel
                Left = 167
                Top = 361
                Width = 137
                Height = 13
                Caption = 'metros de anteced'#234'ncia'
              end
              object Label21: TLabel
                Left = 7
                Top = 389
                Width = 90
                Height = 13
                Caption = 'Lat/Long Bordo'
              end
              object Label22: TLabel
                Left = 7
                Top = 408
                Width = 96
                Height = 13
                Caption = 'Lat/Long GMaps'
              end
              object DBText3: TDBText
                Left = 120
                Top = 408
                Width = 85
                Height = 13
                DataField = 'LATITUDE'
                DataSource = DS_RotasPontos
              end
              object DBText4: TDBText
                Left = 230
                Top = 408
                Width = 85
                Height = 13
                DataField = 'LONGITUDE'
                DataSource = DS_RotasPontos
              end
              object RzDBEdit1: TRzDBEdit
                Left = 75
                Top = 48
                Width = 64
                Height = 21
                DataSource = DS_RotasPontos
                DataField = 'LATITUDE_DIGITADA'
                Alignment = taRightJustify
                DisabledColor = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FrameVisible = True
                ParentFont = False
                TabOrder = 0
                OnEnter = RzDBEdit1Enter
                OnExit = RzEdit3Exit
                OnKeyDown = RzEdit3KeyDown
              end
              object RzDBEdit2: TRzDBEdit
                Left = 75
                Top = 72
                Width = 64
                Height = 21
                DataSource = DS_RotasPontos
                DataField = 'LONGITUDE_DIGITADA'
                Alignment = taRightJustify
                DisabledColor = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FrameVisible = True
                ParentFont = False
                TabOrder = 1
                OnEnter = RzDBEdit2Enter
                OnExit = RzEdit1Exit
                OnKeyDown = RzEdit1KeyDown
              end
              object RzDBEdit3: TRzDBEdit
                Left = 75
                Top = 261
                Width = 60
                Height = 21
                DataSource = DS_RotasPontos
                DataField = 'VELOCIDADE_MAXIMO'
                Alignment = taRightJustify
                DisabledColor = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FrameVisible = True
                ParentFont = False
                TabOrder = 4
                OnEnter = RzDBEdit3Enter
                OnExit = RzEdit5Exit
                OnKeyDown = RzEdit5KeyDown
              end
              object RzDBEdit4: TRzDBEdit
                Left = 75
                Top = 128
                Width = 60
                Height = 21
                DataSource = DS_RotasPontos
                DataField = 'DISTANCIA_MAXIMA_ULT_PONTO'
                Alignment = taRightJustify
                DisabledColor = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FrameVisible = True
                ParentFont = False
                TabOrder = 2
                OnEnter = RzDBEdit4Enter
                OnExit = RzEdit7Exit
                OnKeyDown = RzEdit7KeyDown
              end
              object RzDBEdit5: TRzDBEdit
                Left = 75
                Top = 192
                Width = 60
                Height = 21
                DataSource = DS_RotasPontos
                DataField = 'TEMPO_MAXIMO_ULT_PONTO'
                Alignment = taRightJustify
                DisabledColor = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FrameVisible = True
                ParentFont = False
                TabOrder = 3
                OnEnter = RzDBEdit5Enter
                OnExit = RzEdit7Exit
                OnKeyDown = RzEdit7KeyDown
              end
              object RzDBCheckBox1: TRzDBCheckBox
                Left = 16
                Top = 317
                Width = 96
                Height = 15
                DataField = 'CHECKPOINT'
                DataSource = DS_RotasPontos
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                Caption = 'CheckPoint ?'
                TabOrder = 5
                WordWrap = True
                OnEnter = RzDBCheckBox1Enter
              end
              object RzBitBtn1: TRzBitBtn
                Left = 232
                Top = 45
                Width = 107
                Height = 43
                Hint = 'Op'#231#227'o para Alocar um Caminh'#227'o em uma Frente e Fazenda'
                FrameColor = 8673805
                Caption = 'Visualizar mapa rota'
                Color = 15791348
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8673805
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                HighlightColor = 8673805
                HotTrack = True
                ParentFont = False
                TabOrder = 7
                TabStop = False
                OnClick = RzBitBtn1Click
                Glyph.Data = {
                  360C0000424D360C000000000000360000002800000020000000200000000100
                  180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9595
                  95FFFFFF959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595FFFF
                  FF004152FFFFFF959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF525E
                  C5005C97004152FFFFFF959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87CB
                  F9525EC5006065004152FFFFFF959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500861500861500861500861500861500861500
                  8687CBF9525EC5005C97004152FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500860000EA0000EA0000EA0000EA0000EA0000
                  EA0000EA87CBF9525EC500606500415244B53C44B53C44B53C001ADCFFFFFF5B
                  5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500860000EAFFFFFF0000EAFFFFFF0000EAFFFF
                  FFFFFFFF38BAFC87CBF9525EC5005C96002A34000000000000000000545454A3
                  A3A3FEFEFE161616FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500860000EAFFFFFFFFFFFFFFFFFF0000EAFFFF
                  FF0000EAFFFFFF0000EA86CAF80030325C5A53A39087E5DFC5E6DDD7AAA6925C
                  5C5C7F7F7FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500860000EAFFFFFF0000EAFFFFFF0000EAFFFF
                  FF0000EAFFFFFF0000EA343C7E5C5953FEEABDFEEABDFEF7DAFFEFE6F8FFF6FF
                  FAF35C5C5CA3A3A35B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500860000EAFFFFFFFFFFFFFFFFFF0000EAFFFF
                  FFFFFFFF0000EA0000EA54524AAA9D7FF7CCB0FEEABDFEF7DAF8FFF6F8FFF6FF
                  FAF3ABA4A0545454AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500860000EA0000EA0000EA0000EA0000EA0000
                  EA0000EA0000EA0000EA191817E5D3AAF7CCB0FEEABDFEF7DAFEF7DAFEF7DAFE
                  F7DAE5DFC5191919E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1500861500861500861500861500861500861500
                  86150086150086150086191917E5DFC5F7CCB0FEEABDFEF7DAFEF7DAFEF7DAFE
                  F7DAE5DFC5191919E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFEFCFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF54534FAA9D7FF9E5DBFEEABDF3D7C9FEEABDFEEABDFE
                  F7DAA79A93545454AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB55129FFFFFFFFFFFFC982
                  3CB85800DAAA86D09256AC835A5C5C5AFFFAF3FEF7DAFEEABDFEEABDFEEABDF7
                  CCB05C5C5CA3A3A35B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFFFFC67A31B858
                  00FFFFFFFEFCFACA8242B858007F7F7E5C5C5CA79A93DBC2B5E5D3AAA689765C
                  5C5C7F7F7FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFFFFB85B00FFFF
                  FFFFFFFFD09256D09256D09256FFFFFFA3A3A3545454191919000000545454A3
                  A3A3FEFEFE161616FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFFFFB85A00FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F28D2FFFFFF5B
                  5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFFFFC5782FD8A4
                  72FFFFFFFFFFFFEFDBC7F3E3D4FFFFFFFFFFFFFFFFFFFFFFFF0710D1FFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFFFFFFFFFFC981
                  3CD49A63D7A16EB85A00E3BD99FFFFFFFFFFFFFFFFFFFFFFFF0026CEFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD66531FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF222ECCFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD665314AB65639B64855AD
                  4F45B34D50B84339B35541B14D4AB9473BB44C40B72D44B53C44B53CFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              end
              object RzDBComboBox1: TRzDBComboBox
                Left = 77
                Top = 357
                Width = 84
                Height = 21
                DataField = 'DISTANCIA_AVISO'
                DataSource = DS_RotasPontos
                TabOrder = 6
                Items.Strings = (
                  '50 metros'
                  '100 metros'
                  '200 metros')
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
            end
          end
          object TabSheet2: TRzTabSheet
            Color = clWhite
            Caption = 'Enviar rota ao Bordo'
            object Label16: TLabel
              Left = 5
              Top = 47
              Width = 176
              Height = 14
              Caption = 'Monitoramento do envio da rota'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8673805
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 13
              Top = 23
              Width = 29
              Height = 14
              Caption = 'Porta'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8673805
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Memo1: TMemo
              Left = 43
              Top = 88
              Width = 339
              Height = 295
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object RzBitBtn3: TRzBitBtn
              Left = 202
              Top = 12
              Width = 125
              Height = 38
              Hint = 'Enviar rota por Zigbee'
              FrameColor = 8673805
              Caption = 'Enviar Rota'
              Color = 15791348
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8673805
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              HighlightColor = 8673805
              HotTrack = True
              ParentFont = False
              TabOrder = 1
              OnClick = RzBitBtn3Click
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333330000333333333333333333328888033333383333333
                3332222288033338888333333332222228033303833833333332262228033000
                0338333333322A62220333033038333333332222283333333038333333333222
                2333333330333333333333333333333330333333883333333333333333333338
                8883333333333888888833880888333333333888888838805088833333380000
                00883309150883388888C44440883099915033333078CC4440883DD999153000
                0003C6C4408833DF998333333033CE6C4088333DD83333333333CCCCC0333333
                D333333333333333333333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
            end
          end
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 173
          Top = 120
          Width = 121
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'TIPO'
          DataSource = DS_RotasPontos
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Ida'#9'I'
            'Volta'#9'V')
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
        end
      end
    end
  end
  inherited QR_Main: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO sig.rotas_fazendas'
      
        '  (COD_ROTA, DESCRICAO, COD_GRUPOEMPRESA, COD_EMPRESA, COD_FILIA' +
        'L, COD_FAZENDA, ZONA)'
      'VALUES'
      
        '  (:COD_ROTA, :DESCRICAO, :COD_GRUPOEMPRESA, :COD_EMPRESA, :COD_' +
        'FILIAL, :COD_FAZENDA, :ZONA)')
    SQLDelete.Strings = (
      'DELETE FROM sig.rotas_fazendas'
      'WHERE'
      '  COD_ROTA = :COD_ROTA')
    SQLUpdate.Strings = (
      'UPDATE sig.rotas_fazendas'
      'SET'
      '  COD_ROTA = :COD_ROTA,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_GRUPOEMPRESA = :COD_GRUPOEMPRESA,'
      '  COD_EMPRESA = :COD_EMPRESA,'
      '  COD_FILIAL = :COD_FILIAL,'
      '  COD_FAZENDA = :COD_FAZENDA,'
      '  ZONA = :ZONA'
      'WHERE'
      '  COD_ROTA = :OLD_COD_ROTA')
    SQLRefresh.Strings = (
      'WHERE'
      '  rf.COD_ROTA = :COD_ROTA')
    SQL.Strings = (
      '  SELECT rf.*, '
      '         fa.descricao desc_fazenda, '
      '         ep.apelido'
      '    FROM sig.rotas_fazendas rf, '
      '         rh.empresa ep,'
      '         agricola.fazenda fa'
      '   WHERE rf.cod_rota         = :cod_rota '
      '     AND rf.cod_fazenda      = fa.cod_fazenda'
      '     AND rf.cod_grupoempresa = ep.cod_grupoempresa'
      '     AND rf.cod_empresa      = ep.cod_empresa'
      'ORDER BY rf.cod_rota')
    OnNewRecord = QR_MainNewRecord
    Left = 428
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'cod_rota'
      end>
    object QR_MainCOD_ROTA: TFloatField
      FieldName = 'COD_ROTA'
      Required = True
    end
    object QR_MainDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object QR_MainCOD_GRUPOEMPRESA: TIntegerField
      FieldName = 'COD_GRUPOEMPRESA'
      Required = True
    end
    object QR_MainCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object QR_MainCOD_FILIAL: TIntegerField
      FieldName = 'COD_FILIAL'
      Required = True
    end
    object QR_MainCOD_FAZENDA: TIntegerField
      FieldName = 'COD_FAZENDA'
      Required = True
    end
    object QR_MainZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QR_MainDATAHORA_INICIO: TDateTimeField
      FieldName = 'DATAHORA_INICIO'
    end
    object QR_MainDATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object QR_MainCOR_TRAJETO_IDA: TStringField
      FieldName = 'COR_TRAJETO_IDA'
      Size = 9
    end
    object QR_MainCOR_TRAJETO_VOLTA: TStringField
      FieldName = 'COR_TRAJETO_VOLTA'
      Size = 9
    end
    object QR_MainOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 4000
    end
    object QR_MainATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 1
    end
    object QR_MainDESC_FAZENDA: TStringField
      FieldName = 'DESC_FAZENDA'
      Size = 50
    end
    object QR_MainAPELIDO: TStringField
      FieldName = 'APELIDO'
    end
  end
  inherited DS_Main: TOraDataSource
    Left = 400
    Top = 24
  end
  object QR_RotasPontos: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO sig.rotas_fazendas_pontos'
      
        '  (COD_ROTA, SEQUENCIA, TEXTO_BORDO, DESCRICAO_DETALHADA, LATITU' +
        'DE, LONGITUDE, CHECKPOINT, DISTANCIA_MAXIMA_ULT_PONTO, TEMPO_MAX' +
        'IMO_ULT_PONTO, VELOCIDADE_MAXIMO, ICONE, LATITUDE_DECIMAL, LONGI' +
        'TUDE_DECIMAL, TEXTO_BORDO2, DISTANCIA_AVISO, TIPO,  LATITUDE_DIG' +
        'ITADA, LONGITUDE_DIGITADA)'
      'VALUES'
      
        '  (:COD_ROTA, :SEQUENCIA, :TEXTO_BORDO, :DESCRICAO_DETALHADA, :L' +
        'ATITUDE, :LONGITUDE, :CHECKPOINT, :DISTANCIA_MAXIMA_ULT_PONTO, :' +
        'TEMPO_MAXIMO_ULT_PONTO, :VELOCIDADE_MAXIMO, :ICONE, :LATITUDE_DE' +
        'CIMAL, :LONGITUDE_DECIMAL, :TEXTO_BORDO2, :DISTANCIA_AVISO, :TIP' +
        'O, :LATITUDE_DIGITADA, :LONGITUDE_DIGITADA)')
    SQLDelete.Strings = (
      'DELETE FROM sig.rotas_fazendas_pontos'
      'WHERE'
      '  COD_ROTA = :COD_ROTA and'
      '  SEQUENCIA = :SEQUENCIA and '
      '  TIPO = :TIPO')
    SQLUpdate.Strings = (
      'UPDATE sig.rotas_fazendas_pontos'
      'SET'
      '  COD_ROTA = :COD_ROTA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TEXTO_BORDO = :TEXTO_BORDO,'
      '  DESCRICAO_DETALHADA = :DESCRICAO_DETALHADA,'
      '  LATITUDE = :LATITUDE,'
      '  LONGITUDE = :LONGITUDE,'
      '  CHECKPOINT = :CHECKPOINT,'
      '  DISTANCIA_MAXIMA_ULT_PONTO = :DISTANCIA_MAXIMA_ULT_PONTO,'
      '  TEMPO_MAXIMO_ULT_PONTO = :TEMPO_MAXIMO_ULT_PONTO,'
      '  VELOCIDADE_MAXIMO = :VELOCIDADE_MAXIMO,'
      '  ICONE = :ICONE,'
      '  LATITUDE_DECIMAL = :LATITUDE_DECIMAL,'
      '  LONGITUDE_DECIMAL = :LONGITUDE_DECIMAL,'
      '  TEXTO_BORDO2 = :TEXTO_BORDO2,'
      '  DISTANCIA_AVISO = :DISTANCIA_AVISO,'
      '  TIPO = :TIPO,'
      '  LATITUDE_DIGITADA = :LATITUDE_DIGITADA,'
      '  LONGITUDE_DIGITADA = :LONGITUDE_DIGITADA'
      'WHERE'
      '  COD_ROTA = :OLD_COD_ROTA and'
      '  SEQUENCIA = :OLD_SEQUENCIA and '
      '  TIPO = :OLD_TIPO')
    SQLRefresh.Strings = (
      'WHERE'
      '  rfp.COD_ROTA = :COD_ROTA and'
      '  rfp.SEQUENCIA = :SEQUENCIA AND'
      '  rfp.TIPO = :TIPO')
    Session = Data_Modulo.Orasession1
    SQL.Strings = (
      '  SELECT rfp.*'
      '    FROM sig.rotas_fazendas_pontos rfp'
      '   WHERE rfp.cod_rota = :cod_rota'
      'ORDER BY rfp.tipo, rfp.sequencia')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Active = True
    OnNewRecord = QR_RotasPontosNewRecord
    Left = 492
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'COD_ROTA'
        ParamType = ptInput
      end>
    object QR_RotasPontosSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      DisplayWidth = 8
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object QR_RotasPontosTIPO: TStringField
      DisplayLabel = 'Ida/Volta'
      DisplayWidth = 8
      FieldName = 'TIPO'
      Size = 1
    end
    object QR_RotasPontosTEXTO_BORDO: TStringField
      DisplayLabel = 'Texto Indicativo~do Bordo (16 Caracteres) Linha 1'
      DisplayWidth = 32
      FieldName = 'TEXTO_BORDO'
      Size = 50
    end
    object QR_RotasPontosTEXTO_BORDO2: TStringField
      DisplayLabel = 'Texto Indicativo~do Bordo (16 Caracteres) Linha 2'
      DisplayWidth = 32
      FieldName = 'TEXTO_BORDO2'
      Size = 50
    end
    object QR_RotasPontosDESCRICAO_DETALHADA: TStringField
      DisplayLabel = 'Descri'#231#227'o detalhada (N'#227'o usada no bordo)'
      DisplayWidth = 44
      FieldName = 'DESCRICAO_DETALHADA'
      Size = 100
    end
    object QR_RotasPontosCHECKPOINT: TStringField
      DisplayLabel = 'CheckPoint ?'
      DisplayWidth = 12
      FieldName = 'CHECKPOINT'
      Size = 1
    end
    object QR_RotasPontosDISTANCIA_MAXIMA_ULT_PONTO: TFloatField
      DisplayLabel = 'Dist'#226'ncia M'#225'xima~Ult. Ponto'
      DisplayWidth = 18
      FieldName = 'DISTANCIA_MAXIMA_ULT_PONTO'
      Visible = False
    end
    object QR_RotasPontosLATITUDE: TFloatField
      DisplayLabel = 'Latitude'
      DisplayWidth = 11
      FieldName = 'LATITUDE'
      Visible = False
    end
    object QR_RotasPontosLONGITUDE: TFloatField
      DisplayLabel = 'Longitude'
      DisplayWidth = 10
      FieldName = 'LONGITUDE'
      Visible = False
    end
    object QR_RotasPontosTEMPO_MAXIMO_ULT_PONTO: TIntegerField
      DisplayLabel = 'Tempo M'#225'ximo~Ult. Ponto'
      DisplayWidth = 14
      FieldName = 'TEMPO_MAXIMO_ULT_PONTO'
      Visible = False
    end
    object QR_RotasPontosVELOCIDADE_MAXIMO: TFloatField
      DisplayLabel = 'Velocidade~M'#225'xima'
      DisplayWidth = 10
      FieldName = 'VELOCIDADE_MAXIMO'
      Visible = False
    end
    object QR_RotasPontosCOD_ROTA: TFloatField
      DisplayWidth = 10
      FieldName = 'COD_ROTA'
      Required = True
      Visible = False
    end
    object QR_RotasPontosICONE: TStringField
      FieldName = 'ICONE'
      Visible = False
    end
    object QR_RotasPontosLATITUDE_DECIMAL: TFloatField
      FieldName = 'LATITUDE_DECIMAL'
      Visible = False
    end
    object QR_RotasPontosLONGITUDE_DECIMAL: TFloatField
      FieldName = 'LONGITUDE_DECIMAL'
      Visible = False
    end
    object QR_RotasPontosDISTANCIA_AVISO: TFloatField
      FieldName = 'DISTANCIA_AVISO'
      Visible = False
    end
    object QR_RotasPontosLATITUDE_DIGITADA: TFloatField
      FieldName = 'LATITUDE_DIGITADA'
      Visible = False
    end
    object QR_RotasPontosLONGITUDE_DIGITADA: TFloatField
      FieldName = 'LONGITUDE_DIGITADA'
      Visible = False
    end
  end
  object DS_RotasPontos: TOraDataSource
    DataSet = QR_RotasPontos
    OnStateChange = DS_RotasPontosStateChange
    Left = 464
    Top = 24
  end
  object QR_VisualizarPontos: TOraQuery
    Session = Data_Modulo.Orasession1
    SQL.Strings = (
      'SELECT sequencia,'
      '       a.latitude, a.longitude,'
      
        '      '#39'var marker = new GLatLng('#39'||a.latitude||'#39','#39'||a.longitude|' +
        '|'#39');'#39' || '
      
        '      '#39' map.addOverlay(createMarker(marker,'#39'||sequencia|| '#39',"'#39'||' +
        ' a.texto_bordo||'#39' - '#39' ||a.sequencia  ||'#39'","'#39'||a.icone ||'#39'")) ;'#39' ' +
        'comand,'
      
        '       AVG(a.latitude)  OVER (PARTITION BY (cod_rota)) ponto_lat' +
        '_central, '
      
        '       AVG(a.longitude) OVER (PARTITION BY (cod_rota)) ponto_lon' +
        'g_central    '
      '  FROM sig.rotas_fazendas_pontos a'
      ' WHERE cod_rota = :cod_rota'
      '   AND a.latitude <> 0'
      '   AND a.latitude is not null'
      '   AND a.longitude <> 0'
      '   AND a.longitude is not null'
      ''
      ''
      'ORDER BY sequencia')
    Left = 526
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_rota'
      end>
    object QR_VisualizarPontosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object QR_VisualizarPontosCOMAND: TStringField
      FieldName = 'COMAND'
      Size = 264
    end
    object QR_VisualizarPontosPONTO_LAT_CENTRAL: TFloatField
      FieldName = 'PONTO_LAT_CENTRAL'
    end
    object QR_VisualizarPontosPONTO_LONG_CENTRAL: TFloatField
      FieldName = 'PONTO_LONG_CENTRAL'
    end
    object QR_VisualizarPontosLATITUDE: TFloatField
      FieldName = 'LATITUDE'
    end
    object QR_VisualizarPontosLONGITUDE: TFloatField
      FieldName = 'LONGITUDE'
    end
  end
  object QR_Parametros: TOraQuery
    Session = Data_Modulo.Orasession1
    SQL.Strings = (
      'SELECT a.*'
      '  FROM sig.parametros_gerais a')
    Left = 558
    Top = 24
    object QR_ParametrosTEMPO_BLINK_NOTICIAS: TFloatField
      FieldName = 'TEMPO_BLINK_NOTICIAS'
    end
    object QR_ParametrosTEMPO_BUSCA_EQUIPAMENTO: TFloatField
      FieldName = 'TEMPO_BUSCA_EQUIPAMENTO'
    end
    object QR_ParametrosTEMPO_RASTRO: TFloatField
      FieldName = 'TEMPO_RASTRO'
    end
    object QR_ParametrosZOOM_PADRAO: TFloatField
      FieldName = 'ZOOM_PADRAO'
    end
    object QR_ParametrosTEMPO_REFRESH: TFloatField
      FieldName = 'TEMPO_REFRESH'
    end
    object QR_ParametrosTOLERANCIA_VELOCIDADE: TFloatField
      FieldName = 'TOLERANCIA_VELOCIDADE'
    end
    object QR_ParametrosCABECALHO_GOOGLE_MAPS: TBlobField
      FieldName = 'CABECALHO_GOOGLE_MAPS'
      BlobType = ftOraBlob
    end
    object QR_ParametrosRODAPE_GOOGLE_MAPS: TBlobField
      FieldName = 'RODAPE_GOOGLE_MAPS'
      BlobType = ftOraBlob
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos Texto|*.txt'
    Title = 'Importar Arquivos TXT'
    Left = 360
    Top = 24
  end
  object TimeOut: TTimer
    Enabled = False
    Interval = 10000
    Left = 544
    Top = 65534
  end
  object QR_EnviaRota: TOraQuery
    Session = Data_Modulo.Orasession1
    SQL.Strings = (
      
        'SELECT DECODE(TIPO,'#39'I'#39','#39'SET1N'#39','#39'SET1T'#39') ||LPAD(sel.qtde,3,'#39'0'#39') p' +
        'rimeiro_comando,'
      '       DECODE(TIPO,'#39'I'#39','#39'SET1P'#39','#39'SET1R'#39')'
      
        '       ||                                            --comando d' +
        'e atualiza'#231#227'o de pontos'
      
        '        LPAD(sel.sequencia,3,'#39'0'#39')   ||                    --nume' +
        'ro do ponto da rota '
      
        '        LPAD(TRUNC(sel.latitude_decimal),4,'#39'0'#39')||'#39'.'#39'||RPAD(SUBST' +
        'R(sel.latitude_decimal - TRUNC(sel.latitude_decimal),INSTR(sel.l' +
        'atitude_decimal - TRUNC(sel.latitude_decimal),'#39'.'#39')+1,5),5,'#39'0'#39')||' +
        '         --latitude '
      
        '        LPAD(TRUNC(sel.longitude_decimal),5,'#39'0'#39')||'#39'.'#39'||RPAD(SUBS' +
        'TR(sel.longitude_decimal - TRUNC(sel.longitude_decimal),INSTR(se' +
        'l.longitude_decimal - TRUNC(sel.longitude_decimal),'#39'.'#39')+1,5),5,'#39 +
        '0'#39')||         --latitude '
      
        '        RPAD(SUBSTR(nvl(sel.texto_bordo ,'#39' '#39'),1,16),16,'#39' '#39')||   ' +
        '      --texto indicativo do ponto na rota com 32 caracteres'
      
        '        RPAD(SUBSTR(nvl(sel.texto_bordo2,'#39' '#39'),1,16),16,'#39' '#39')||   ' +
        '      --texto indicativo do ponto na rota com 32 caracteres'
      
        '        LPAD(NVL(sel.distancia_maxima_ult_ponto,0),3,'#39'0'#39')|| --di' +
        'stancia maxima percorrida do ultimo ponto at'#233' o proximo '
      
        '                                                            --IN' +
        'DICAR'#193' SE EST'#193' PERDIDO'
      
        '        LPAD(NVL(sel.tempo_maximo_ult_ponto,0),3,'#39'0'#39')    || --te' +
        'mpo m'#225'ximo desde o ultimo ponto INDICAR'#193' SE '
      
        '                                                            --ES' +
        'T'#193' ATRASADO       '
      
        '        LPAD(NVL(sel.velocidade_maximo,0),4,'#39'0'#39')         || --Ve' +
        'locidade m'#225'xima permitida entre o ponto anterior e o proximo pon' +
        'to'
      
        '        DECODE(sel.checkpoint,'#39'N'#39',0,1)                   || --1 ' +
        'se for checkpoint e 0 se n'#227'o for'
      
        '        sel.distancia_aviso        --Distancia para avisar com a' +
        'ntecedencia os pontos'
      '        comando,'
      
        '        '#39'SET1J0000000098100000001231000000777713'#39' comando_juliet' +
        'as,        '
      
        '        --SE QTDE E QTDE_TOTAL FOR IGUAL ENT'#195'O S'#211' TEM ROTA DE ID' +
        'A OU ROTA DE VOLTA'
      '        CASE '
      '        WHEN qtde = qtde_total THEN '
      '          '#39'SET0'#39'||LPAD(qtde_total+2,3,'#39'0'#39')'
      '        ELSE'
      '          '#39'SET0'#39'||LPAD(qtde_total+3,3,'#39'0'#39')'
      '        END ultimo_comando,'
      '        qtde,'
      '        sequencia, tipo          '
      '        '
      
        '  FROM (  SELECT COUNT(1) OVER (PARTITION BY (rfp.cod_rota),(rfp' +
        '.tipo)) qtde   ,'
      
        '                 COUNT(1) OVER (PARTITION BY (rfp.cod_rota)) qtd' +
        'e_total,'
      '                 rfp.*                         '
      '            FROM sig.rotas_fazendas_pontos rfp'
      '           WHERE rfp.cod_rota = :cod_rota'
      '--             AND rfp.TIPO = '#39'V'#39
      '           ) sel'
      'ORDER BY tipo, sequencia ')
    Left = 592
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_rota'
      end>
    object QR_EnviaRotaPRIMEIRO_COMANDO: TStringField
      FieldName = 'PRIMEIRO_COMANDO'
      Size = 8
    end
    object QR_EnviaRotaCOMANDO: TStringField
      FieldName = 'COMANDO'
      Size = 70
    end
    object QR_EnviaRotaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QR_EnviaRotaCOMANDO_JULIETAS: TStringField
      FieldName = 'COMANDO_JULIETAS'
      FixedChar = True
      Size = 39
    end
    object QR_EnviaRotaULTIMO_COMANDO: TStringField
      FieldName = 'ULTIMO_COMANDO'
      Size = 7
    end
    object QR_EnviaRotaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object QR_EnviaRotaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 328
    Top = 24
  end
end
