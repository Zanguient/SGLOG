inherited F_Modalidade_Colheita: TF_Modalidade_Colheita
  Caption = 'Modalidades de colheita'
  ClientWidth = 738
  ExplicitWidth = 754
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 738
    Percent = 11
    ExplicitWidth = 738
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      inherited RzBitBtnPesquisar: TRzBitBtn
        ExplicitLeft = 0
        ExplicitTop = 133
      end
      inherited DBNavigator: TDBNavigator
        Top = 163
        ExplicitTop = 163
      end
      inherited pnSeparador2: TPanel
        Top = 268
        ExplicitTop = 268
      end
    end
    inherited pnComponentes: TPanel
      Width = 656
      ExplicitLeft = 0
      ExplicitWidth = 656
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 398
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DS_Main
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' informa'#231#245'es'
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = DM.GridTableViewStyleSheetUserFormat4
          object cxGrid1DBTableView1COD_TIPOCOLHEITA: TcxGridDBColumn
            Caption = 'C'#243'd. Modalidade'
            DataBinding.FieldName = 'COD_TIPOCOLHEITA'
            Width = 106
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 533
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited QR_Main: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TIPO_COLHEITA'
      '  (COD_TIPOCOLHEITA, DESCRICAO)'
      'VALUES'
      '  (:COD_TIPOCOLHEITA, :DESCRICAO)')
    SQLDelete.Strings = (
      'DELETE FROM TIPO_COLHEITA'
      'WHERE'
      '  COD_TIPOCOLHEITA = :Old_COD_TIPOCOLHEITA')
    SQLUpdate.Strings = (
      'UPDATE TIPO_COLHEITA'
      'SET'
      '  COD_TIPOCOLHEITA = :COD_TIPOCOLHEITA, DESCRICAO = :DESCRICAO'
      'WHERE'
      '  COD_TIPOCOLHEITA = :Old_COD_TIPOCOLHEITA')
    SQLRefresh.Strings = (
      'SELECT COD_TIPOCOLHEITA, DESCRICAO FROM TIPO_COLHEITA'
      'WHERE'
      '  COD_TIPOCOLHEITA = :COD_TIPOCOLHEITA')
    SQL.Strings = (
      'SELECT tc.*'
      '  FROM tipo_colheita tc'
      'ORDER BY cod_tipocolheita')
    object QR_MainCOD_TIPOCOLHEITA: TFloatField
      FieldName = 'COD_TIPOCOLHEITA'
      Required = True
    end
    object QR_MainDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 4000
    end
  end
end
