inherited F_CheckList_Sistema: TF_CheckList_Sistema
  Caption = 'F_CheckList_Sistema'
  ClientWidth = 867
  ExplicitWidth = 883
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 867
    Position = 104
    ExplicitWidth = 867
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      Width = 100
      ExplicitWidth = 100
      inherited RzBitBtnSair: TRzBitBtn
        Width = 100
        ExplicitWidth = 100
      end
      object btnAtualizar: TRzBitBtn
        Left = 0
        Top = 0
        Width = 100
        Height = 30
        Hint = 'Inserir Novo Registro'
        Align = alTop
        Caption = '&Atualizar'
        HotTrack = True
        HotTrackColorType = htctComplement
        LightTextStyle = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnAtualizarClick
        DisabledIndex = 1087
        ImageIndex = 1087
        Images = DM.cxImageList16x16
        NumGlyphs = 2
      end
    end
    inherited pnSeparador: TPanel
      Left = 100
      ExplicitLeft = 100
    end
    inherited pnComponentes: TPanel
      Width = 753
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 753
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 753
        Height = 414
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -4
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DS_CheckList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
          object cxGrid1DBTableView1GRUPO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'GRUPO'
            Width = 153
          end
          object cxGrid1DBTableView1REGIONAL: TcxGridDBColumn
            Caption = 'Regional'
            DataBinding.FieldName = 'REGIONAL'
            Width = 173
          end
          object cxGrid1DBTableView1UNIDADE: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'UNIDADE'
            Width = 200
          end
          object cxGrid1DBTableView1POSSUIREFERENCIAESPACIAL: TcxGridDBColumn
            Caption = 'Refer'#234'ncia Espacial Informado ?'
            DataBinding.FieldName = 'POSSUIREFERENCIAESPACIAL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 107
          end
          object cxGrid1DBTableView1POSSUIMAPAUNIDADE: TcxGridDBColumn
            Caption = 'Mapa da Unidade Importado ?'
            DataBinding.FieldName = 'POSSUIMAPAUNIDADE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 95
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object QR_CheckList: TOraQuery
    SQL.Strings = (
      'SELECT a.cod_grupo||'#39'-'#39'||g.nome grupo,'
      '       a.cod_regional||'#39'-'#39'||r.nome regional,'
      '       a.cod_unidade||'#39'-'#39'||a.nome unidade,'
      
        '       CASE WHEN (a.latitude IS NOT NULL AND a.longitude IS NOT ' +
        'NULL)'
      '            THEN '#39'S'#39
      '            ELSE '#39'N'#39
      '       END possuiReferenciaEspacial,'
      '       DECODE( (SELECT COUNT(1)'
      '                  FROM unidade_geom ug'
      '                 WHERE ug.cod_grupo = a.cod_grupo'
      '                   AND ug.cod_regional = a.cod_regional'
      
        '                   AND ug.cod_unidade = a.cod_unidade),0,'#39'N'#39','#39'S'#39 +
        ') possuiMapaUnidade'
      '  FROM unidade a,'
      '       regional r,'
      '       grupo g'
      ' WHERE g.cod_grupo = r.cod_grupo'
      '   AND r.cod_grupo = a.cod_grupo'
      '   AND r.cod_regional = a.cod_regional')
    Left = 168
    Top = 175
    object QR_CheckListGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 241
    end
    object QR_CheckListREGIONAL: TStringField
      FieldName = 'REGIONAL'
      Size = 241
    end
    object QR_CheckListUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 241
    end
    object QR_CheckListPOSSUIREFERENCIAESPACIAL: TStringField
      FieldName = 'POSSUIREFERENCIAESPACIAL'
      FixedChar = True
      Size = 3
    end
    object QR_CheckListPOSSUIMAPAUNIDADE: TStringField
      FieldName = 'POSSUIMAPAUNIDADE'
      Size = 3
    end
  end
  object DS_CheckList: TOraDataSource
    DataSet = QR_CheckList
    Left = 128
    Top = 176
  end
end
