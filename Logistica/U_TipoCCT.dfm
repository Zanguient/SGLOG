inherited F_TipoCCT: TF_TipoCCT
  Caption = 'Tipo CCT'
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
          object cxGrid1DBTableView1TIPO_CCT: TcxGridDBColumn
            Caption = 'Identificador'
            DataBinding.FieldName = 'TIPO_CCT'
            Width = 106
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 355
          end
          object cxGrid1DBTableView1FILTRO_LOGISTICA: TcxGridDBColumn
            Caption = 'Participa nos filtros das consultas ?'
            DataBinding.FieldName = 'FILTRO_LOGISTICA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 162
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited QR_Main: TOraQuery
    SQL.Strings = (
      'SELECT a.tipo_cct, a.descricao, a.filtro_logistica'
      '  FROM tipo_cct a'
      'ORDER BY a.tipo_cct')
    OnNewRecord = QR_MainNewRecord
    Left = 184
    object QR_MainTIPO_CCT: TStringField
      FieldName = 'TIPO_CCT'
      Required = True
      Size = 1
    end
    object QR_MainDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 4000
    end
    object QR_MainFILTRO_LOGISTICA: TStringField
      FieldName = 'FILTRO_LOGISTICA'
      Required = True
      Size = 1
    end
  end
end
