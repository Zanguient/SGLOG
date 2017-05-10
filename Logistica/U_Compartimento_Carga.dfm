inherited F_Compartimento_Carga: TF_Compartimento_Carga
  Caption = 'Compartimentos de carga'
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
      ExplicitLeft = 0
      inherited RzBitBtnNovo: TRzBitBtn
        ExplicitLeft = 0
        ExplicitTop = 0
      end
      inherited RzBitBtnExcluir: TRzBitBtn
        ExplicitLeft = 0
        ExplicitTop = 60
      end
      inherited DBNavigator: TDBNavigator
        ExplicitLeft = 0
        ExplicitTop = 176
      end
      inherited pnSeparador2: TPanel
        ExplicitLeft = 0
        ExplicitTop = 163
      end
    end
    inherited pnComponentes: TPanel
      Width = 656
      ExplicitLeft = 0
      ExplicitTop = 0
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
          object cxGrid1DBTableView1COD_COMPARTIMENTOCARGA: TcxGridDBColumn
            Caption = 'C'#243'd. Compartimento'
            DataBinding.FieldName = 'COD_COMPARTIMENTOCARGA'
            Width = 123
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 430
          end
          object cxGrid1DBTableView1ATIVO: TcxGridDBColumn
            Caption = 'Ativo ?'
            DataBinding.FieldName = 'ATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 74
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
      'INSERT INTO COMPARTIMENTO_CARGA'
      '  (COD_COMPARTIMENTOCARGA, DESCRICAO, ATIVO)'
      'VALUES'
      '  (:COD_COMPARTIMENTOCARGA, :DESCRICAO, :ATIVO)')
    SQLDelete.Strings = (
      'DELETE FROM COMPARTIMENTO_CARGA'
      'WHERE'
      '  COD_COMPARTIMENTOCARGA = :Old_COD_COMPARTIMENTOCARGA')
    SQLUpdate.Strings = (
      'UPDATE COMPARTIMENTO_CARGA'
      'SET'
      
        '  COD_COMPARTIMENTOCARGA = :COD_COMPARTIMENTOCARGA, DESCRICAO = ' +
        ':DESCRICAO, ATIVO = :ATIVO'
      'WHERE'
      '  COD_COMPARTIMENTOCARGA = :Old_COD_COMPARTIMENTOCARGA')
    SQLRefresh.Strings = (
      
        'SELECT COD_COMPARTIMENTOCARGA, DESCRICAO, ATIVO FROM COMPARTIMEN' +
        'TO_CARGA'
      'WHERE'
      '  COD_COMPARTIMENTOCARGA = :COD_COMPARTIMENTOCARGA')
    SQL.Strings = (
      'SELECT *'
      '  FROM compartimento_carga'
      'ORDER BY cod_compartimentocarga')
    OnNewRecord = QR_MainNewRecord
    Left = 200
    Top = 24
    object QR_MainCOD_COMPARTIMENTOCARGA: TFloatField
      FieldName = 'COD_COMPARTIMENTOCARGA'
      Required = True
    end
    object QR_MainDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 4000
    end
    object QR_MainATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
end
