inherited F_PerfilPermissao: TF_PerfilPermissao
  Caption = 'F_PerfilPermissao'
  ClientHeight = 472
  ClientWidth = 852
  OnShow = FormShow
  ExplicitWidth = 868
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 852
    Height = 472
    Percent = 9
    ExplicitWidth = 852
    ExplicitHeight = 472
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      Height = 472
      ExplicitHeight = 472
      inherited RzBitBtnSair: TRzBitBtn
        Top = 442
        TabOrder = 1
        ExplicitTop = 442
      end
      object btnAtualizar: TRzBitBtn
        Left = 0
        Top = 0
        Height = 30
        Hint = 'Inserir Novo Registro'
        Align = alTop
        Caption = '&Atualizar'
        HotTrack = True
        HotTrackColorType = htctComplement
        LightTextStyle = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAtualizarClick
        DisabledIndex = 1087
        ImageIndex = 1087
        Images = DM.cxImageList16x16
        NumGlyphs = 2
      end
    end
    inherited pnSeparador: TPanel
      Height = 472
      ExplicitHeight = 472
    end
    inherited pnComponentes: TPanel
      Width = 763
      Height = 472
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 472
      object cxGrid1: TcxGrid
        Left = 0
        Top = 49
        Width = 763
        Height = 423
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -4
        ExplicitTop = 47
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          DataController.DataSource = DS_ArvoreAcesso
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.StyleSheet = DM.GridBandedTableViewStyleSheetUserFormat4
          Bands = <
            item
              Caption = #193'rvore Acesso'
              Width = 302
            end
            item
              Caption = 'Permiss'#245'es'
              Width = 418
            end>
          object cxGrid1DBBandedTableView1COD_MODULO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_MODULO'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DESCMODULO: TcxGridDBBandedColumn
            Caption = 'M'#243'dulo'
            DataBinding.FieldName = 'DESCMODULO'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Focusing = False
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1COD_MENU: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_MENU'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DESCMENU: TcxGridDBBandedColumn
            Caption = 'Ferramenta'
            DataBinding.FieldName = 'DESCMENU'
            Visible = False
            GroupIndex = 1
            Options.Editing = False
            Options.Focusing = False
            Width = 135
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1COD_TELA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_TELA'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Options.Focusing = False
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1POSSUIAUTORIZACAO: TcxGridDBBandedColumn
            Caption = 'Autorizado'
            DataBinding.FieldName = 'POSSUIAUTORIZACAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 52
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1INFOAUTORIZACAO: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'INFOAUTORIZACAO'
            Options.Editing = False
            Options.Focusing = False
            Width = 240
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 763
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnPesquisa_Perfil: TSpeedButton
          Left = 428
          Top = 19
          Width = 25
          Height = 22
          Hint = 'Pesquisar perfis de usu'#225'rio  (F9)'
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
          OnClick = btnPesquisa_PerfilClick
        end
        object Label3: TLabel
          Left = 30
          Top = 23
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. Perfil'
          FocusControl = edtCod_perfil
        end
        object edtCod_perfil: TwwDBEdit
          Left = 86
          Top = 20
          Width = 55
          Height = 21
          Hint = 'Aperte F9 para pesquisar o perfis'
          DataField = 'COD_PERFIL'
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = edtCod_perfilExit
          OnKeyDown = edtCod_perfilKeyDown
        end
        object edtNome_perfil: TwwDBEdit
          Left = 145
          Top = 20
          Width = 282
          Height = 21
          TabStop = False
          DataField = 'DESCRICAO'
          Enabled = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
  end
  object QR_ArvoreAcesso: TOraQuery
    SQLUpdate.Strings = (
      'SELECT 1 FROM DUAL')
    Session = DM.Sessao
    SQL.Strings = (
      'SELECT t.cod_modulo,'
      '       m.nome descModulo,'
      '       t.cod_menu,'
      '       mn.descricao descMenu,'
      '       t.cod_tela,'
      '       t.cod_tela||'#39' - '#39'|| t.nome nome,'
      '       (SELECT count(1)'
      '          FROM telas_permissao tp'
      '         WHERE tp.cod_perfil = :cod_perfil'
      '           AND tp.cod_modulo = t.cod_modulo'
      '           AND tp.cod_tela = t.cod_tela) possuiAutorizacao,'
      
        '       (SELECT tp.usuario_permissao||'#39' - '#39'||tp.computador_permis' +
        'sao||'#39' - '#39'||TO_CHAR(tp.data_permissao,'#39'DD/MM/RRRR HH24:MI:SS'#39')'
      '          FROM telas_permissao tp'
      '         WHERE tp.cod_perfil = :cod_perfil'
      '           AND tp.cod_modulo = t.cod_modulo'
      '           AND tp.cod_tela = t.cod_tela) infoAutorizacao'
      '  FROM telas t,'
      '       modulos m,'
      '       menu mn'
      ' WHERE mn.cod_modulo = t.cod_modulo'
      '   AND mn.cod_menu = t.cod_menu'
      '   AND m.cod_modulo = t.cod_modulo'
      'ORDER BY t.cod_modulo, t.cod_menu, t.cod_tela')
    BeforeEdit = QR_ArvoreAcessoBeforeEdit
    BeforePost = QR_ArvoreAcessoBeforePost
    Left = 32
    Top = 175
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_perfil'
      end>
    object QR_ArvoreAcessoCOD_MODULO: TFloatField
      FieldName = 'COD_MODULO'
      Required = True
    end
    object QR_ArvoreAcessoDESCMODULO: TStringField
      FieldName = 'DESCMODULO'
      Size = 30
    end
    object QR_ArvoreAcessoCOD_MENU: TFloatField
      FieldName = 'COD_MENU'
    end
    object QR_ArvoreAcessoDESCMENU: TStringField
      FieldName = 'DESCMENU'
      Size = 200
    end
    object QR_ArvoreAcessoCOD_TELA: TFloatField
      FieldName = 'COD_TELA'
      Required = True
    end
    object QR_ArvoreAcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 93
    end
    object QR_ArvoreAcessoPOSSUIAUTORIZACAO: TFloatField
      FieldName = 'POSSUIAUTORIZACAO'
    end
    object QR_ArvoreAcessoINFOAUTORIZACAO: TStringField
      FieldName = 'INFOAUTORIZACAO'
      Size = 85
    end
  end
  object DS_ArvoreAcesso: TOraDataSource
    DataSet = QR_ArvoreAcesso
    Left = 4
    Top = 176
  end
  object SP_AUTORIZA_REVOGA_FORMULARIO: TOraStoredProc
    StoredProcName = 'pr_libera_form_perfil'
    Session = DM.Sessao
    SQL.Strings = (
      'begin'
      
        '  pr_libera_form_perfil(:P_PERFIL, :P_MODULO, :P_FORMULARIO, :P_' +
        'ACAO);'
      'end;')
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_PERFIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_MODULO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_FORMULARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ACAO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'pr_libera_form_perfil'
  end
end
