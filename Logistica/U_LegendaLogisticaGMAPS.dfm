inherited F_LegendaLogisticaGMAPS: TF_LegendaLogisticaGMAPS
  Caption = 'F_LegendaLogisticaGMAPS'
  ClientHeight = 417
  ClientWidth = 730
  ExplicitWidth = 746
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzSplitterTemplate: TRzSplitter
    Width = 730
    Height = 417
    Percent = 11
    ExplicitWidth = 730
    ExplicitHeight = 417
    UpperLeftControls = (
      pnOpcoes
      pnSeparador)
    LowerRightControls = (
      pnComponentes)
    inherited pnOpcoes: TPanel
      Height = 417
      ExplicitLeft = 0
      ExplicitHeight = 417
      inherited RzBitBtnSair: TRzBitBtn
        Top = 387
        ExplicitTop = 387
      end
      inherited RzBitBtnNovo: TRzBitBtn
        ExplicitLeft = 0
        ExplicitTop = 0
      end
      inherited RzBitBtnExcluir: TRzBitBtn
        ExplicitLeft = 0
        ExplicitTop = 60
      end
      inherited RzBitBtnPesquisar: TRzBitBtn
        Top = 120
        ExplicitTop = 120
      end
      inherited DBNavigator: TDBNavigator
        Top = 163
        ExplicitLeft = 0
        ExplicitTop = 163
      end
      inherited pnSeparador2: TPanel
        Top = 268
        ExplicitLeft = 0
        ExplicitTop = 268
      end
      inherited pnSeparador1: TPanel
        Top = 150
        ExplicitTop = 150
      end
    end
    inherited pnSeparador: TPanel
      Height = 417
      ExplicitHeight = 417
    end
    inherited pnComponentes: TPanel
      Width = 648
      Height = 417
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 648
      ExplicitHeight = 417
      object Panel3: TPanel
        Left = 499
        Top = 0
        Width = 149
        Height = 417
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 149
          Height = 185
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel6: TPanel
            Left = 0
            Top = 157
            Width = 149
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object btnCarregar: TRzBitBtn
              Left = 2
              Top = 2
              Width = 78
              Caption = 'Carregar'
              TabOrder = 0
              OnClick = btnCarregarClick
              Glyph.Data = {
                4E010000424D4E01000000000000760000002800000012000000120000000100
                040000000000D800000000000000000000001000000000000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333330000003333333333333333330000003333333333333333330000003800
                000000000003330000003007B7B7B7B7B7B03300000030F07B7B7B7B7B703300
                000030B0B7B7B7B7B7B70300000030FB0B7B7B7B7B7B0300000030BF07B7B7B7
                B7B7B000000030FBF000007B7B7B7000000030BFBFBFBF0000000300000030FB
                FBFBFBFBFB033300000030BFBFBFBFBFBF033300000030FBFBF0000000333300
                0000330000033333333333000000333333333333333333000000333333333333
                333333000000333333333333333333000000}
            end
            object btnExcluir: TRzBitBtn
              Left = 84
              Top = 2
              Width = 64
              Caption = 'Excluir'
              TabOrder = 1
              OnClick = btnExcluirClick
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
                F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
                F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
                7777777700000007777777777777777777777777777777777777}
            end
          end
          object cxImage1: TcxImage
            Left = 0
            Top = 19
            Align = alClient
            TabOrder = 1
            Height = 138
            Width = 149
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 149
            Height = 19
            Align = alTop
            BevelOuter = bvNone
            Caption = #205'cone Legenda'
            Color = clGray
            ParentBackground = False
            TabOrder = 2
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 499
        Height = 417
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
          OptionsView.GroupByBox = False
          Styles.StyleSheet = Data_Modulo.GridTableViewStyleSheetUserFormat4
          object cxGrid1DBTableView1COD_LEGENDA_GMAPS: TcxGridDBColumn
            Caption = 'Sequencia'
            DataBinding.FieldName = 'COD_LEGENDA_GMAPS'
            Width = 102
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 384
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
      'INSERT INTO sig.legenda_gmaps'
      '  (COD_LEGENDA_GMAPS, DESCRICAO, ICONE_PNG)'
      'VALUES'
      '  (:COD_LEGENDA_GMAPS, :DESCRICAO, empty_blob())'
      'RETURNING'
      '  ICONE_PNG'
      'INTO'
      '  :ICONE_PNG')
    SQLDelete.Strings = (
      'DELETE FROM sig.legenda_gmaps'
      'WHERE'
      '  COD_LEGENDA_GMAPS = :COD_LEGENDA_GMAPS')
    SQLUpdate.Strings = (
      'UPDATE sig.legenda_gmaps'
      'SET'
      '  COD_LEGENDA_GMAPS = :COD_LEGENDA_GMAPS,'
      '  DESCRICAO = :DESCRICAO,'
      '  ICONE_PNG = empty_blob()'
      'WHERE'
      '  COD_LEGENDA_GMAPS = :OLD_COD_LEGENDA_GMAPS'
      'RETURNING'
      '  ICONE_PNG'
      'INTO'
      '  :ICONE_PNG')
    SQL.Strings = (
      'SELECT a.cod_legenda_gmaps, a.descricao, a.icone_png'
      '  FROM legenda_gmaps a'
      'ORDER BY a.cod_legenda_gmaps')
    AfterScroll = QR_MainNewRecord
    OnNewRecord = QR_MainNewRecord
    object QR_MainCOD_LEGENDA_GMAPS: TFloatField
      FieldName = 'COD_LEGENDA_GMAPS'
      Required = True
    end
    object QR_MainDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object QR_MainICONE_PNG: TBlobField
      FieldName = 'ICONE_PNG'
      BlobType = ftOraBlob
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Portable Network Graphics (*.png)|*.png'
    Left = 112
    Top = 152
  end
end
