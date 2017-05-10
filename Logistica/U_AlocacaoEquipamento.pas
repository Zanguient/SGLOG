unit U_AlocacaoEquipamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzButton,
  Vcl.ExtCtrls, RzPanel, RzSplit, RzTabs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, DBAccess, Ora, MemDS, cxGridDBTableView, cxCheckBox,
  RzDBNav, Vcl.StdCtrls, Vcl.Mask, wwdbedit, Vcl.ImgList,cxContainer, cxListView,
  ComCtrls, cxImage, cxImageComboBox, cxButtonEdit, cxCustomPivotGrid,
  cxDBPivotGrid, cxVGrid, cxInplaceContainer, cxDBVGrid, cxRadioGroup, RzSpnEdt,cxExportVGLink,
  cxDropDownEdit, cxCheckComboBox, cxDBLookupComboBox, RzRadGrp, cxMemo;

type
  TF_AlocacaoEquipamento = class(TF_TemplateConsulta)
    RzPageControl1: TRzPageControl;
    tsInformacoesFrentes: TRzTabSheet;
    QR_ParametrosER: TOraQuery;
    DS_ParametrosER: TOraDataSource;
    QR_Frente: TOraQuery;
    DS_Frente: TOraDataSource;
    QR_FrenteCOD_GRUPO: TFloatField;
    QR_FrenteCOD_REGIONAL: TFloatField;
    QR_FrenteCOD_UNIDADE: TFloatField;
    QR_FrenteCOD_SAFRA: TFloatField;
    QR_FrenteCOD_FRENTE: TFloatField;
    QR_FrenteDESCRICAO: TStringField;
    QR_FrenteQUOTA_TON_DIA: TFloatField;
    QR_FrenteATIVO: TStringField;
    tsAlocacoes: TRzTabSheet;
    tsParametrosTempos: TRzTabSheet;
    RzSplitter1: TRzSplitter;
    cxGridParametrosTempos: TcxGrid;
    cxGridParametrosTemposDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridParametrosTemposDBBandedTableView1CODIGO_PARAMETRO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1NOME: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TONELADA_VIAGEM: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1DENSIDADE_CARGA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_DESCARGA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_VAZIO_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_VAZIO_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_VAZIO_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_CARRE_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_CARRE_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_CARRE_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_VAZIO_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_VAZIO_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_VAZIO_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_CARRE_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_CARRE_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_CARRE_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposLevel1: TcxGridLevel;
    RzPageControl2: TRzPageControl;
    TabTemposCarregamento: TRzTabSheet;
    TabTemposParametros: TRzTabSheet;
    TabTemposRealizados: TRzTabSheet;
    cxGridTemposRealizados: TcxGrid;
    cxGridTemposRealizadosDBTableView1: TcxGridDBTableView;
    cxGridLevelTemposRealizados: TcxGridLevel;
    RzPgAlocacoes: TRzPageControl;
    TsAlocacaoEquipamentos: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    QR_TemposCarregamento: TOraQuery;
    DS_TemposCarregamento: TOraDataSource;
    cxGridTempoCarregamento: TcxGrid;
    cxGridTempoCarregamentoDBTableView1: TcxGridDBTableView;
    cxGridTempoCarregamentoLevel1: TcxGridLevel;
    cxGridTempoCarregamentoDBTableView1COD_TIPOCARGA: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1TEMPO_CARREGAMENTO_CONJ: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1ALOCACAO_LIBERADA: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1TONELADAS_HORA_CARREGADEIRA: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1TONELADAS_HORA_REBOQUE: TcxGridDBColumn;
    cxGridTempoParametros: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    QR_TemposParametros: TOraQuery;
    DS_TemposParametros: TOraDataSource;
    RzGroupBox1: TRzGroupBox;
    QR_TemposRealizados: TOraQuery;
    DS_TemposRealizados: TOraDataSource;
    QR_TemposRealizadosCOD_SAFRA: TFloatField;
    QR_TemposRealizadosCOD_FRENTE: TFloatField;
    QR_TemposRealizadosCOD_FAZENDA: TFloatField;
    QR_TemposRealizadosCOD_TIPOCARGA: TFloatField;
    QR_TemposRealizadosDESC_TIPOCARGA: TStringField;
    QR_TemposRealizadosMIN_VAZIO_ASFALTO: TFloatField;
    QR_TemposRealizadosMIN_VAZIO_TERRA: TFloatField;
    QR_TemposRealizadosMIN_VAZIO_CARREADOR: TFloatField;
    QR_TemposRealizadosMIN_CARREGADO_ASFALTO: TFloatField;
    QR_TemposRealizadosMIN_CARREGADO_TERRA: TFloatField;
    QR_TemposRealizadosMIN_CARREGADO_CARREADOR: TFloatField;
    QR_TemposRealizadosMIN_CARREGAMENTO: TFloatField;
    QR_TemposRealizadosMIN_DESCARGA: TFloatField;
    QR_TemposRealizadosCOD_GRUPO: TFloatField;
    QR_TemposRealizadosCOD_REGIONAL: TFloatField;
    QR_TemposRealizadosCOD_UNIDADE: TFloatField;
    QR_TemposRealizadosMIN_IDA: TFloatField;
    QR_TemposRealizadosMIN_VOLTA: TFloatField;
    QR_TemposRealizadosMIN_CICLO: TFloatField;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridTemposRealizadosDBTableView1COD_TIPOCARGA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1DESC_TIPOCARGA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_VAZIO_ASFALTO: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_VAZIO_TERRA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_VAZIO_CARREADOR: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_CARREGADO_ASFALTO: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_CARREGADO_TERRA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_CARREGADO_CARREADOR: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_CARREGAMENTO: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_DESCARGA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_IDA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_VOLTA: TcxGridDBColumn;
    cxGridTemposRealizadosDBTableView1MIN_CICLO: TcxGridDBColumn;
    RzPanel1: TRzPanel;
    RzDBNavigator1: TRzDBNavigator;
    RzPanel2: TRzPanel;
    RzDBNavigator2: TRzDBNavigator;
    RzPanel3: TRzPanel;
    QR_TemposParametrosCOD_SAFRA: TFloatField;
    QR_TemposParametrosCOD_FRENTE: TFloatField;
    QR_TemposParametrosCOD_FAZENDA: TFloatField;
    QR_TemposParametrosCOD_TIPOCARGA: TFloatField;
    QR_TemposParametrosDESC_TIPOCARGA: TStringField;
    QR_TemposParametrosMIN_VAZIO_ASFALTO: TFloatField;
    QR_TemposParametrosMIN_VAZIO_TERRA: TFloatField;
    QR_TemposParametrosMIN_VAZIO_CARREADOR: TFloatField;
    QR_TemposParametrosMIN_CARREGADO_ASFALTO: TFloatField;
    QR_TemposParametrosMIN_CARREGADO_TERRA: TFloatField;
    QR_TemposParametrosMIN_CARREGADO_CARREADOR: TFloatField;
    QR_TemposParametrosMIN_CARREGAMENTO: TFloatField;
    QR_TemposParametrosMIN_DESCARGA: TFloatField;
    QR_TemposParametrosMIN_IDA: TFloatField;
    QR_TemposParametrosMIN_VOLTA: TFloatField;
    QR_TemposParametrosMIN_CICLO: TFloatField;
    cxGridDBTableView1COD_TIPOCARGA: TcxGridDBColumn;
    cxGridDBTableView1DESC_TIPOCARGA: TcxGridDBColumn;
    cxGridDBTableView1MIN_VAZIO_ASFALTO: TcxGridDBColumn;
    cxGridDBTableView1MIN_VAZIO_TERRA: TcxGridDBColumn;
    cxGridDBTableView1MIN_VAZIO_CARREADOR: TcxGridDBColumn;
    cxGridDBTableView1MIN_CARREGADO_ASFALTO: TcxGridDBColumn;
    cxGridDBTableView1MIN_CARREGADO_TERRA: TcxGridDBColumn;
    cxGridDBTableView1MIN_CARREGADO_CARREADOR: TcxGridDBColumn;
    cxGridDBTableView1MIN_CARREGAMENTO: TcxGridDBColumn;
    cxGridDBTableView1MIN_DESCARGA: TcxGridDBColumn;
    cxGridDBTableView1MIN_IDA: TcxGridDBColumn;
    cxGridDBTableView1MIN_VOLTA: TcxGridDBColumn;
    cxGridDBTableView1MIN_CICLO: TcxGridDBColumn;
    RzBitBtn1: TRzBitBtn;
    QR_FrenteFazendas: TOraQuery;
    DS_FrenteFazendas: TOraDataSource;
    QR_FrenteFazendasCOD_FRENTE: TFloatField;
    QR_FrenteFazendasFRENTE: TStringField;
    QR_FrenteFazendasCOD_FAZENDA: TFloatField;
    QR_FrenteFazendasFAZENDA: TStringField;
    QR_FrenteFazendasTRANPORTE_LIBERADO: TStringField;
    cxGridDBTableView3COD_FRENTE: TcxGridDBColumn;
    cxGridDBTableView3FRENTE: TcxGridDBColumn;
    cxGridDBTableView3COD_FAZENDA: TcxGridDBColumn;
    cxGridDBTableView3FAZENDA: TcxGridDBColumn;
    cxGridDBTableView3TRANPORTE_LIBERADO: TcxGridDBColumn;
    RzBitBtnAtualizarTemposPercursos: TRzBitBtn;
    QR_Fazenda: TOraQuery;
    DS_Fazenda: TOraDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzGroupBox2: TRzGroupBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    RzPanel5: TRzPanel;
    RzDBNavigator4: TRzDBNavigator;
    QR_EquipamentosFixos: TOraQuery;
    DS_EquipamentosFixos: TOraDataSource;
    RzSplitter2: TRzSplitter;
    cxGrid6: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    TabSheet1: TRzTabSheet;
    RzGroupBox3: TRzGroupBox;
    RzPanel7: TRzPanel;
    RzGroupBox4: TRzGroupBox;
    cxGrid10: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    RzGroupBox5: TRzGroupBox;
    RzBitBtn3: TRzBitBtn;
    RzPanel8: TRzPanel;
    RzBitBtn4: TRzBitBtn;
    TabSheet4: TRzTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    RzPanel10: TRzPanel;
    Panel16: TPanel;
    RzPanel9: TRzPanel;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    Panel18: TPanel;
    Panel20: TPanel;
    RzPanel11: TRzPanel;
    RzBitBtn8: TRzBitBtn;
    RzBitBtn9: TRzBitBtn;
    Panel22: TPanel;
    RzPanel12: TRzPanel;
    RzBitBtn10: TRzBitBtn;
    lvCarregOp: TListView;
    QR_CarregadeirasOP: TOraQuery;
    QR_CarregadeirasOPCOD_GRUPO: TFloatField;
    QR_CarregadeirasOPCOD_REGIONAL: TFloatField;
    QR_CarregadeirasOPCOD_UNIDADE: TFloatField;
    QR_CarregadeirasOPCOD_SAFRA: TFloatField;
    QR_CarregadeirasOPCOD_FRENTE: TFloatField;
    QR_CarregadeirasOPCOD_EQUIPAMENTO: TFloatField;
    QR_CarregadeirasOPCOD_MOTIVO: TFloatField;
    QR_CarregadeirasOPDISPONIVEL: TStringField;
    QR_CarregadeirasOPCAMPO_OFICINA: TStringField;
    QR_CarregadeirasOPOBSERVACAO: TStringField;
    QR_CarregadeirasOPDATA_HORA: TDateTimeField;
    QR_CarregadeirasOPCOD_GRUPO_1: TFloatField;
    QR_CarregadeirasOPCOD_EQUIPAMENTO_1: TFloatField;
    QR_CarregadeirasOPDESCRICAO: TStringField;
    QR_CarregadeirasOPCOD_TIPOEQUIPAMENTO: TFloatField;
    ImagensMaquinas: TcxImageList;
    lvCarregPa: TListView;
    lvReboqOp: TListView;
    lvReboqPa: TListView;
    QR_CarregadeirasPA: TOraQuery;
    QR_CarregadeirasOPCOD_FAZENDA: TFloatField;
    QR_CarregadeirasPACOD_GRUPO: TFloatField;
    QR_CarregadeirasPACOD_REGIONAL: TFloatField;
    QR_CarregadeirasPACOD_UNIDADE: TFloatField;
    QR_CarregadeirasPACOD_SAFRA: TFloatField;
    QR_CarregadeirasPACOD_FRENTE: TFloatField;
    QR_CarregadeirasPACOD_EQUIPAMENTO: TFloatField;
    QR_CarregadeirasPACOD_MOTIVO: TFloatField;
    QR_CarregadeirasPADISPONIVEL: TStringField;
    QR_CarregadeirasPACAMPO_OFICINA: TStringField;
    QR_CarregadeirasPAOBSERVACAO: TStringField;
    QR_CarregadeirasPADATA_HORA: TDateTimeField;
    QR_CarregadeirasPACOD_FAZENDA: TFloatField;
    QR_CarregadeirasPACOD_GRUPO_1: TFloatField;
    QR_CarregadeirasPACOD_EQUIPAMENTO_1: TFloatField;
    QR_CarregadeirasPADESCRICAO: TStringField;
    QR_CarregadeirasPACOD_TIPOEQUIPAMENTO: TFloatField;
    QR_CarregadeirasPACAMPO_OFICINA_DESC: TStringField;
    QR_ReboqueOP: TOraQuery;
    QR_ReboquePA: TOraQuery;
    QR_ReboqueOPCOD_GRUPO: TFloatField;
    QR_ReboqueOPCOD_REGIONAL: TFloatField;
    QR_ReboqueOPCOD_UNIDADE: TFloatField;
    QR_ReboqueOPCOD_SAFRA: TFloatField;
    QR_ReboqueOPCOD_FRENTE: TFloatField;
    QR_ReboqueOPCOD_FAZENDA: TFloatField;
    QR_ReboqueOPCOD_EQUIPAMENTO: TFloatField;
    QR_ReboqueOPCOD_MOTIVO: TFloatField;
    QR_ReboqueOPDISPONIVEL: TStringField;
    QR_ReboqueOPCAMPO_OFICINA: TStringField;
    QR_ReboqueOPOBSERVACAO: TStringField;
    QR_ReboqueOPDATA_HORA: TDateTimeField;
    QR_ReboqueOPCOD_GRUPO_1: TFloatField;
    QR_ReboqueOPCOD_EQUIPAMENTO_1: TFloatField;
    QR_ReboqueOPDESCRICAO: TStringField;
    QR_ReboqueOPCOD_TIPOEQUIPAMENTO: TFloatField;
    QR_ReboquePACOD_GRUPO: TFloatField;
    QR_ReboquePACOD_REGIONAL: TFloatField;
    QR_ReboquePACOD_UNIDADE: TFloatField;
    QR_ReboquePACOD_SAFRA: TFloatField;
    QR_ReboquePACOD_FRENTE: TFloatField;
    QR_ReboquePACOD_FAZENDA: TFloatField;
    QR_ReboquePACOD_EQUIPAMENTO: TFloatField;
    QR_ReboquePACOD_MOTIVO: TFloatField;
    QR_ReboquePADISPONIVEL: TStringField;
    QR_ReboquePACAMPO_OFICINA: TStringField;
    QR_ReboquePAOBSERVACAO: TStringField;
    QR_ReboquePADATA_HORA: TDateTimeField;
    QR_ReboquePACOD_GRUPO_1: TFloatField;
    QR_ReboquePACOD_EQUIPAMENTO_1: TFloatField;
    QR_ReboquePADESCRICAO: TStringField;
    QR_ReboquePACOD_TIPOEQUIPAMENTO: TFloatField;
    QR_ReboquePACAMPO_OFICINA_DESC: TStringField;
    QR_Alocacao: TOraQuery;
    DS_Alocacao: TOraDataSource;
    TM_AtualizaDados: TTimer;
    ImagensAlocacao: TcxImageList;
    RzGroupBox6: TRzGroupBox;
    RzSplitter3: TRzSplitter;
    RzBitBtn13: TRzBitBtn;
    RzBitBtn14: TRzBitBtn;
    RzPanel6: TRzPanel;
    RzPanel13: TRzPanel;
    RzPanel14: TRzPanel;
    RzPanel15: TRzPanel;
    RzPanel16: TRzPanel;
    RzPanel17: TRzPanel;
    RzPanel18: TRzPanel;
    RzPanel20: TRzPanel;
    RzPanel21: TRzPanel;
    RzPanel22: TRzPanel;
    RzPanel23: TRzPanel;
    RzPanel24: TRzPanel;
    RzPanel25: TRzPanel;
    RzPanel26: TRzPanel;
    RzPanel27: TRzPanel;
    RzPanel28: TRzPanel;
    RzPanel29: TRzPanel;
    RzPanel30: TRzPanel;
    RzPanel31: TRzPanel;
    RzPanel32: TRzPanel;
    RzPanel33: TRzPanel;
    lvPatio: TListView;
    QR_AlocacaoPatio: TOraQuery;
    QR_AlocacaoPatioCOD_EQUIPAMENTO: TFloatField;
    QR_AlocacaoPatioDESCRICAO: TStringField;
    QR_AlocacaoPatioSEQUENCIA: TStringField;
    QR_AlocacaoPatioINDEXIMAGE: TFloatField;
    QR_ProxFrentesPatio: TOraQuery;
    DS_ProxFrentesPatio: TOraDataSource;
    QR_ProxFrentesPatioCOD_GRUPO: TFloatField;
    QR_ProxFrentesPatioCOD_REGIONAL: TFloatField;
    QR_ProxFrentesPatioCOD_UNIDADE: TFloatField;
    QR_ProxFrentesPatioCOD_SAFRA: TFloatField;
    QR_ProxFrentesPatioCOD_FRENTE: TFloatField;
    QR_ProxFrentesPatioCOD_FAZENDA: TFloatField;
    QR_ProxFrentesPatioCOD_TIPOCANA: TFloatField;
    QR_ProxFrentesPatioDISTANCIA_ASFALTO: TFloatField;
    QR_ProxFrentesPatioDISTANCIA_TERRA: TFloatField;
    QR_ProxFrentesPatioDISTANCIA_CARREADOR: TFloatField;
    QR_ProxFrentesPatioDATA_HORA_QUEIMA: TDateTimeField;
    QR_ProxFrentesPatioTRANSPORTE_LIBERADO: TStringField;
    QR_ProxFrentesPatioCAPACIDADE_CARREGADEIRA: TFloatField;
    QR_ProxFrentesPatioCAPACIDADE_REBOQUE: TFloatField;
    QR_ProxFrentesPatioSALDO_VAZAO: TFloatField;
    QR_ProxFrentesPatioEXCESSO_FRENTE: TStringField;
    QR_ProxFrentesPatioCAPACIDADE_VAZAO: TFloatField;
    QR_ProxFrentesPatioTON_ULTIMO_EQUIPAMENTO: TFloatField;
    QR_ProxFrentesPatioFRENTE: TStringField;
    QR_ProxFrentesPatioFAZENDA: TStringField;
    QR_ProxFrentesPatioDISTANCIA: TFloatField;
    QR_ProxFrentesPatioTEMPO_NO_CAMPO: TFloatField;
    QR_ProxFrentesPatioEXCESSO: TStringField;
    cxGridDBTableView11COD_FAZENDA: TcxGridDBColumn;
    cxGridDBTableView11SALDO_VAZAO: TcxGridDBColumn;
    cxGridDBTableView11CAPACIDADE_VAZAO: TcxGridDBColumn;
    cxGridDBTableView11FRENTE: TcxGridDBColumn;
    cxGridDBTableView11FAZENDA: TcxGridDBColumn;
    cxGridDBTableView11TEMPO_NO_CAMPO: TcxGridDBColumn;
    cxGridDBTableView11EXCESSO: TcxGridDBColumn;
    cxGridDBTableView8COD_EQUIPAMENTO: TcxGridDBColumn;
    cxGridDBTableView8EQUIPAMENTO: TcxGridDBColumn;
    QR_EquipamentosFixosCOD_SAFRA: TIntegerField;
    QR_EquipamentosFixosCOD_FRENTE: TIntegerField;
    QR_EquipamentosFixosCOD_FAZENDA: TIntegerField;
    QR_EquipamentosFixosCOD_GRUPO: TIntegerField;
    QR_EquipamentosFixosCOD_EQUIPAMENTO: TIntegerField;
    QR_EquipamentosFixosEQUIPAMENTO: TStringField;
    QR_EquipamentosFixosCOD_REGIONAL: TFloatField;
    QR_EquipamentosFixosCOD_UNIDADE: TFloatField;
    QR_ProxFrentesPatioDATAHORA_SALDO: TDateTimeField;
    QR_ALERTA_ALOCACAO: TOraQuery;
    QR_ALERTA_ALOCACAOCOD_SAFRA: TFloatField;
    QR_ALERTA_ALOCACAODATA: TStringField;
    QR_ALERTA_ALOCACAOMENSAGEM: TStringField;
    QR_ALERTA_ALOCACAOLIDA: TStringField;
    QR_ALERTA_ALOCACAOSEQ_ALOCACAO: TFloatField;
    QR_ALERTA_ALOCACAOUSUARIO: TStringField;
    QR_ALERTA_ALOCACAOCOD_MOTIVO: TFloatField;
    QR_ALERTA_ALOCACAODESC_MOTIVO: TStringField;
    DS_ALERTA_ALOCACAO: TOraDataSource;
    TM_AlocarPendencia: TTimer;
    QR_AlocacaoPendente: TOraQuery;
    QR_AlocacaoINDEXSITUACAO: TFloatField;
    QR_AlocacaoCOD_GRUPO: TFloatField;
    QR_AlocacaoCOD_REGIONAL: TFloatField;
    QR_AlocacaoCOD_UNIDADE: TFloatField;
    QR_AlocacaoSEQUENCIA: TFloatField;
    QR_AlocacaoCOD_EQUIPAMENTO: TFloatField;
    QR_AlocacaoEQUIPAMENTO: TStringField;
    QR_AlocacaoCOD_FRENTE: TFloatField;
    QR_AlocacaoFRENTE: TStringField;
    QR_AlocacaoCOD_FAZENDA: TFloatField;
    QR_AlocacaoFAZENDA: TStringField;
    QR_AlocacaoDATA_SAIDA: TDateTimeField;
    QR_AlocacaoDATA_PREV_INICIO_CARREG: TDateTimeField;
    QR_AlocacaoDATA_PREV_TERMINO_CARREG: TDateTimeField;
    QR_AlocacaoREALPREVISTO: TStringField;
    QR_AlocacaoSITUACAO: TStringField;
    QR_AlocacaoABASTECEU: TStringField;
    QR_AlocacaoBITUCA: TStringField;
    cxGridDBTableView7EQUIPAMENTO: TcxGridDBColumn;
    cxGridDBTableView7FRENTE: TcxGridDBColumn;
    cxGridDBTableView7FAZENDA: TcxGridDBColumn;
    cxGridDBTableView7DATA_SAIDA: TcxGridDBColumn;
    cxGridDBTableView7DATA_PREV_INICIO_CARREG: TcxGridDBColumn;
    cxGridDBTableView7DATA_PREV_TERMINO_CARREG: TcxGridDBColumn;
    cxGridDBTableView7DATA_CHEGADA: TcxGridDBColumn;
    cxGridDBTableView7REALPREVISTO: TcxGridDBColumn;
    cxGridDBTableView7SITUACAO: TcxGridDBColumn;
    cxGridDBTableView7ABASTECEU: TcxGridDBColumn;
    cxGridDBTableView7BITUCA: TcxGridDBColumn;
    QR_AlocacaoDATA_PREV_CHEGADA: TDateTimeField;
    QR_AlocacaoATRASO: TStringField;
    QR_AlocacaoVIAGEM_FINALIZADA: TStringField;
    QR_AlocacaoCOD_SAFRA: TFloatField;
    QR_AlocacaoPendenteCOD_ENTRADACANA: TFloatField;
    QR_AlocacaoPendenteCOD_GRUPO: TFloatField;
    QR_AlocacaoPendenteCOD_REGIONAL: TFloatField;
    QR_AlocacaoPendenteCOD_UNIDADE: TFloatField;
    QR_AlocacaoPendenteCOD_EQUIPAMENTO: TIntegerField;
    QR_AlocacaoPendenteCOD_TIPOCARGA: TIntegerField;
    QR_AlocacaoPendenteDATA_CHEGADA: TDateTimeField;
    QR_AlocacaoPendenteDATA_SAIDA: TDateTimeField;
    QR_AlocacaoPendenteENDERECO_H_ZIGBEE: TStringField;
    QR_AlocacaoPendenteENDERECO_L_ZIGBEE: TStringField;
    QR_AlocacaoPendenteALOCACAO_PATIO: TStringField;
    QR_AlocacaoPendenteCOD_FRENTE: TFloatField;
    QR_AlocacaoPendenteCOD_FAZENDA: TFloatField;
    cxGrid8: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DATA: TcxGridDBColumn;
    cxGrid2DBTableView1MENSAGEM: TcxGridDBColumn;
    cxGrid2DBTableView1DESC_MOTIVO: TcxGridDBColumn;
    cxGrid2DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid2DBTableView1COD_SAFRA: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_GRID: TcxGridDBColumn;
    cxGrid2DBTableView1MENSAGEM_GRID: TcxGridDBColumn;
    cxGrid2DBTableView1LIDA: TcxGridDBColumn;
    cxGrid2DBTableView1SEQ_ALOCACAO: TcxGridDBColumn;
    cxGrid2DBTableView1USUARIO_GRID: TcxGridDBColumn;
    cxGrid2DBTableView1COD_MOTIVO: TcxGridDBColumn;
    cxGrid2DBTableView1COD_FAZENDA: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid2DBTableView1DESC_FRENTE: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    QR_FrentesLiberadas: TOraQuery;
    DS_FrentesLiberadas: TOraDataSource;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    QR_FrentesLiberadasCOD_GRUPO: TFloatField;
    QR_FrentesLiberadasCOD_REGIONAL: TFloatField;
    QR_FrentesLiberadasCOD_UNIDADE: TFloatField;
    QR_FrentesLiberadasCOD_SAFRA: TFloatField;
    QR_FrentesLiberadasCOD_FRENTE: TFloatField;
    QR_FrentesLiberadasCOD_FAZENDA: TFloatField;
    QR_FrentesLiberadasCOD_TIPOCANA: TFloatField;
    QR_FrentesLiberadasDISTANCIA_ASFALTO: TFloatField;
    QR_FrentesLiberadasDISTANCIA_TERRA: TFloatField;
    QR_FrentesLiberadasDISTANCIA_CARREADOR: TFloatField;
    QR_FrentesLiberadasDATA_HORA_QUEIMA: TDateTimeField;
    QR_FrentesLiberadasTRANSPORTE_LIBERADO: TStringField;
    QR_FrentesLiberadasCAPACIDADE_CARREGADEIRA: TFloatField;
    QR_FrentesLiberadasCAPACIDADE_REBOQUE: TFloatField;
    QR_FrentesLiberadasSALDO_VAZAO: TFloatField;
    QR_FrentesLiberadasDATAHORA_SALDO: TDateTimeField;
    QR_FrentesLiberadasEXCESSO_FRENTE: TStringField;
    QR_FrentesLiberadasCAPACIDADE_VAZAO: TFloatField;
    QR_FrentesLiberadasTON_ULTIMO_EQUIPAMENTO: TFloatField;
    QR_FrentesLiberadasFAZENDA: TStringField;
    QR_FrentesLiberadasFRENTE: TStringField;
    QR_FrentesLiberadasDISTANCIA: TFloatField;
    QR_FrentesLiberadasTEMPO_NO_CAMPO: TFloatField;
    cxGridDBTableView9DISTANCIA_ASFALTO: TcxGridDBColumn;
    cxGridDBTableView9DISTANCIA_TERRA: TcxGridDBColumn;
    cxGridDBTableView9DISTANCIA_CARREADOR: TcxGridDBColumn;
    cxGridDBTableView9DATA_HORA_QUEIMA: TcxGridDBColumn;
    cxGridDBTableView9CAPACIDADE_CARREGADEIRA: TcxGridDBColumn;
    cxGridDBTableView9CAPACIDADE_REBOQUE: TcxGridDBColumn;
    cxGridDBTableView9SALDO_VAZAO: TcxGridDBColumn;
    cxGridDBTableView9DATAHORA_SALDO: TcxGridDBColumn;
    cxGridDBTableView9CAPACIDADE_VAZAO: TcxGridDBColumn;
    cxGridDBTableView9TON_ULTIMO_EQUIPAMENTO: TcxGridDBColumn;
    cxGridDBTableView9FAZENDA: TcxGridDBColumn;
    cxGridDBTableView9FRENTE: TcxGridDBColumn;
    cxGridDBTableView9DISTANCIA: TcxGridDBColumn;
    cxGridDBTableView9TEMPO_NO_CAMPO: TcxGridDBColumn;
    QR_FrenteExcesso: TOraQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    DateTimeField2: TDateTimeField;
    StringField2: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    DS_FrenteExcesso: TOraDataSource;
    cxGrid11: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxGridDBTableView7ATRASO: TcxGridDBColumn;
    SP_AtualizaOrdemPatio: TOraStoredProc;
    QR_ParametrosERCOD_GRUPO: TFloatField;
    QR_ParametrosERCOD_REGIONAL: TFloatField;
    QR_ParametrosERCOD_UNIDADE: TFloatField;
    QR_ParametrosERCOD_TIPOCARGA: TFloatField;
    QR_ParametrosERTONELADA_VIAGEM: TFloatField;
    QR_ParametrosERTEMP_VAZIO_ASFALTO: TFloatField;
    QR_ParametrosERTEMP_VAZIO_TERRA: TFloatField;
    QR_ParametrosERTEMP_VAZIO_CARREADOR: TFloatField;
    QR_ParametrosERTEMP_CARRE_ASFALTO: TFloatField;
    QR_ParametrosERTEMP_CARRE_TERRA: TFloatField;
    QR_ParametrosERTEMP_CARRE_CARREADOR: TFloatField;
    QR_ParametrosERTEMP_DESCARGA: TFloatField;
    QR_ParametrosERDENSIDADE_CARGA: TFloatField;
    QR_ParametrosERVELOCMAX_VAZIO_ASFALTO: TFloatField;
    QR_ParametrosERVELOCMAX_VAZIO_TERRA: TFloatField;
    QR_ParametrosERVELOCMAX_VAZIO_CARREADOR: TFloatField;
    QR_ParametrosERVELOCMAX_CARRE_ASFALTO: TFloatField;
    QR_ParametrosERVELOCMAX_CARRE_TERRA: TFloatField;
    QR_ParametrosERVELOCMAX_CARRE_CARREADOR: TFloatField;
    QR_ParametrosERDESCRICAO: TStringField;
    QR_Parado: TOraQuery;
    QR_ParadoCOD_EQUIPAMENTO: TFloatField;
    QR_ParadoINICIO_PARADA: TStringField;
    QR_ParadoDESCRICAO: TStringField;
    QR_ParadoHORAS_PARADO: TStringField;
    DS_Parado: TOraDataSource;
    QR_FazendaCOD_FAZENDA: TFloatField;
    QR_FazendaCOD_SAFRA: TFloatField;
    QR_FazendaCOD_FRENTE: TFloatField;
    QR_FazendaCOD_GRUPO: TFloatField;
    QR_FazendaCOD_REGIONAL: TFloatField;
    QR_FazendaCOD_UNIDADE: TFloatField;
    QR_FazendaFAZENDA: TStringField;
    QR_FazendaAPELIDO_FAZENDA: TStringField;
    QR_FazendaCOD_TIPOFAZENDA: TFloatField;
    QR_FazendaTIPOFAZENDA: TStringField;
    QR_FazendaCOD_TIPOCANA: TFloatField;
    QR_FazendaTIPOOCANA: TStringField;
    QR_FazendaCANA_QUEIMADA: TStringField;
    QR_FazendaMECANIZADA: TStringField;
    QR_FazendaDATA_HORA_QUEIMA: TDateTimeField;
    QR_FazendaPERC_RED_VAZAO: TFloatField;
    QR_FazendaTRANSPORTE_LIBERADO: TStringField;
    QR_FazendaEXCESSO_FRENTE: TStringField;
    QR_FazendaCAPACIDADE_VAZAO_TON_HR: TFloatField;
    QR_FazendaSALDO_VAZAO_TON: TFloatField;
    QR_FazendaSALDO_VAZAO_MIN: TFloatField;
    QR_FazendaMEDIA_TON_CARREGADEIRA: TFloatField;
    QR_FazendaMEDIA_TON_REBOQUE: TFloatField;
    QR_FazendaCAP_TON_HR_CARREGADEIRA: TFloatField;
    QR_FazendaCAP_TON_HR_REBOQUE: TFloatField;
    QR_FazendaQTD_CARREGADEIRA: TFloatField;
    QR_FazendaQTD_REBOQUE: TFloatField;
    QR_FazendaQTD_CARREGADEIRAS_PARADAS: TFloatField;
    QR_FazendaQTD_REBOQUES_PARADAS: TFloatField;
    QR_FazendaDISP_CARREGADEIRA: TFloatField;
    QR_FazendaDISP_REBOQUE: TFloatField;
    QR_FazendaQUOTA_TON_DIA: TFloatField;
    QR_FazendaTON_ENTREGUE_FRENTE: TFloatField;
    QR_FazendaFALTAENTREGAR_FRENTE: TFloatField;
    QR_FazendaPERC_TON_ENTREGUE: TFloatField;
    QR_FazendaTON_ENTREGUE_FRENTE_FAZ: TFloatField;
    QR_FazendaDENSIDADE_MEDIA: TFloatField;
    QR_FazendaINDO: TFloatField;
    QR_FazendaCARREGANDO: TFloatField;
    QR_FazendaVOLTANDO: TFloatField;
    QR_FazendaDESCARREGANDO: TFloatField;
    QR_FazendaPARADO: TFloatField;
    QR_FazendaTOTAL: TFloatField;
    n: TFloatField;
    RzPageControl3: TRzPageControl;
    TabSheet5: TRzTabSheet;
    RzSplitterFrenteFazenda: TRzSplitter;
    RzGroupBoxFrente: TRzGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView4COD_FRENTE: TcxGridDBColumn;
    cxGridDBTableView4DESCRICAO: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    RzGroupBoxFazendas: TRzGroupBox;
    RzPanel4: TRzPanel;
    RzDBNavigator3: TRzDBNavigator;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5COD_FAZENDA: TcxGridDBColumn;
    cxGridDBTableView5FAZENDA: TcxGridDBColumn;
    cxGridDBTableView5TIPOFAZENDA: TcxGridDBColumn;
    cxGridDBTableView5COD_TIPOCANA: TcxGridDBColumn;
    cxGridDBTableView5TIPOOCANA: TcxGridDBColumn;
    cxGridDBTableView5CANA_QUEIMADA: TcxGridDBColumn;
    cxGridDBTableView5MECANIZADA: TcxGridDBColumn;
    cxGridDBTableView5DATA_HORA_QUEIMA: TcxGridDBColumn;
    cxGridDBTableView5TRANSPORTE_LIBERADO: TcxGridDBColumn;
    cxGridDBTableView5EXCESSO_FRENTE: TcxGridDBColumn;
    cxGridDBTableView5CAPACIDADE_VAZAO_TON_HR: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    RzPanel19: TRzPanel;
    RzPanel34: TRzPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RzPanel35: TRzPanel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    RzPanel38: TRzPanel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    RzPanel39: TRzPanel;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    RzPanel36: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    RzPanel37: TRzPanel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit26: TwwDBEdit;
    wwDBEdit27: TwwDBEdit;
    TabSheet6: TRzTabSheet;
    QR_FazendasColunas: TOraQuery;
    DS_FazendasColunas: TOraDataSource;
    QR_FazendasColunasCOD_FAZENDA: TFloatField;
    QR_FazendasColunasCOD_SAFRA: TFloatField;
    QR_FazendasColunasCOD_FRENTE: TFloatField;
    QR_FazendasColunasCOD_GRUPO: TFloatField;
    QR_FazendasColunasCOD_REGIONAL: TFloatField;
    QR_FazendasColunasCOD_UNIDADE: TFloatField;
    QR_FazendasColunasFAZENDA: TStringField;
    QR_FazendasColunasAPELIDO_FAZENDA: TStringField;
    QR_FazendasColunasCOD_TIPOFAZENDA: TFloatField;
    QR_FazendasColunasTIPOFAZENDA: TStringField;
    QR_FazendasColunasCOD_TIPOCANA: TFloatField;
    QR_FazendasColunasTIPOOCANA: TStringField;
    QR_FazendasColunasCANA_QUEIMADA: TStringField;
    QR_FazendasColunasMECANIZADA: TStringField;
    QR_FazendasColunasDATA_HORA_QUEIMA: TDateTimeField;
    QR_FazendasColunasPERC_RED_VAZAO: TFloatField;
    QR_FazendasColunasTRANSPORTE_LIBERADO: TStringField;
    QR_FazendasColunasEXCESSO_FRENTE: TStringField;
    QR_FazendasColunasCAPACIDADE_VAZAO_TON_HR: TFloatField;
    QR_FazendasColunasSALDO_VAZAO_TON: TFloatField;
    QR_FazendasColunasSALDO_VAZAO_MIN: TFloatField;
    QR_FazendasColunasMEDIA_TON_CARREGADEIRA: TFloatField;
    QR_FazendasColunasMEDIA_TON_REBOQUE: TFloatField;
    QR_FazendasColunasCAP_TON_HR_CARREGADEIRA: TFloatField;
    QR_FazendasColunasCAP_TON_HR_REBOQUE: TFloatField;
    QR_FazendasColunasQTD_CARREGADEIRA: TFloatField;
    QR_FazendasColunasQTD_REBOQUE: TFloatField;
    QR_FazendasColunasQTD_CARREGADEIRAS_PARADAS: TFloatField;
    QR_FazendasColunasQTD_REBOQUES_PARADAS: TFloatField;
    QR_FazendasColunasDISP_CARREGADEIRA: TFloatField;
    QR_FazendasColunasDISP_REBOQUE: TFloatField;
    QR_FazendasColunasQUOTA_TON_DIA: TFloatField;
    QR_FazendasColunasTON_ENTREGUE_FRENTE: TFloatField;
    QR_FazendasColunasFALTAENTREGAR_FRENTE: TFloatField;
    QR_FazendasColunasPERC_TON_ENTREGUE: TFloatField;
    QR_FazendasColunasTON_ENTREGUE_FRENTE_FAZ: TFloatField;
    QR_FazendasColunasDENSIDADE_MEDIA: TFloatField;
    QR_FazendasColunasINDO: TFloatField;
    QR_FazendasColunasCARREGANDO: TFloatField;
    QR_FazendasColunasVOLTANDO: TFloatField;
    QR_FazendasColunasDESCARREGANDO: TFloatField;
    QR_FazendasColunasPARADO: TFloatField;
    QR_FazendasColunasTOTAL: TFloatField;
    QR_FazendasColunasATRASADO: TFloatField;
    RzPanel40: TRzPanel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid1COD_FRENTE: TcxDBEditorRow;
    cxDBVerticalGrid1COD_FAZENDA: TcxDBEditorRow;
    cxDBVerticalGrid2: TcxDBVerticalGrid;
    cxCategoryRow1: TcxCategoryRow;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    cxDBEditorRow6: TcxDBEditorRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow10: TcxDBEditorRow;
    cxDBEditorRow11: TcxDBEditorRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxDBEditorRow13: TcxDBEditorRow;
    cxDBEditorRow14: TcxDBEditorRow;
    cxCategoryRow2: TcxCategoryRow;
    cxDBEditorRow15: TcxDBEditorRow;
    cxDBEditorRow16: TcxDBEditorRow;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow18: TcxDBEditorRow;
    cxDBEditorRow19: TcxDBEditorRow;
    cxDBEditorRow20: TcxDBEditorRow;
    cxDBEditorRow21: TcxDBEditorRow;
    cxDBEditorRow22: TcxDBEditorRow;
    cxCategoryRow3: TcxCategoryRow;
    cxCategoryRow4: TcxCategoryRow;
    cxDBEditorRow23: TcxDBEditorRow;
    cxDBEditorRow24: TcxDBEditorRow;
    cxDBEditorRow25: TcxDBEditorRow;
    cxDBEditorRow26: TcxDBEditorRow;
    cxDBEditorRow27: TcxDBEditorRow;
    cxDBEditorRow28: TcxDBEditorRow;
    cxCategoryRow5: TcxCategoryRow;
    cxDBEditorRow29: TcxDBEditorRow;
    cxDBEditorRow30: TcxDBEditorRow;
    cxDBEditorRow31: TcxDBEditorRow;
    cxDBEditorRow32: TcxDBEditorRow;
    cxDBEditorRow33: TcxDBEditorRow;
    cxDBEditorRow34: TcxDBEditorRow;
    cxDBEditorRow35: TcxDBEditorRow;
    RzSpinButtons1: TRzSpinButtons;
    b_exportar: TRzBitBtn;
    SaveDialog1: TSaveDialog;
    QR_TemposCarregamentoCOD_GRUPO: TFloatField;
    QR_TemposCarregamentoCOD_REGIONAL: TFloatField;
    QR_TemposCarregamentoCOD_UNIDADE: TFloatField;
    QR_TemposCarregamentoCOD_SAFRA: TFloatField;
    QR_TemposCarregamentoCOD_FRENTE: TFloatField;
    QR_TemposCarregamentoCOD_TIPOCARGA: TFloatField;
    QR_TemposCarregamentoDESCRICAO: TStringField;
    QR_TemposCarregamentoCOD_FAZENDA: TFloatField;
    QR_TemposCarregamentoTEMPO_CARREGAMENTO_CONJ: TFloatField;
    QR_TemposCarregamentoALOCACAO_LIBERADA: TStringField;
    QR_TemposCarregamentoTONELADAS_HORA_CARREGADEIRA: TFloatField;
    QR_TemposCarregamentoTONELADAS_HORA_REBOQUE: TFloatField;
    QR_TemposCarregamentoATUALIZA_IDA: TStringField;
    QR_TemposCarregamentoATUALIZA_VOLTA: TStringField;
    QR_TemposCarregamentoATUALIZA_CARREGAMENTO: TStringField;
    cxGridTempoCarregamentoDBTableView1ATUALIZA_IDA: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1ATUALIZA_VOLTA: TcxGridDBColumn;
    cxGridTempoCarregamentoDBTableView1ATUALIZA_CARREGAMENTO: TcxGridDBColumn;
    QR_AtualizaList: TOraQuery;
    DS_AtualizaList: TOraDataSource;
    QR_AtualizaListHINT: TStringField;
    QR_AtualizaListKEYS: TStringField;
    RzRadioGroup1: TRzRadioGroup;
    RzPanel41: TRzPanel;
    RzPanel42: TRzPanel;
    RzPanel43: TRzPanel;
    RzPanel44: TRzPanel;
    RzPanel45: TRzPanel;
    RzPanel46: TRzPanel;
    Panel3: TPanel;
    RzBtnNovaAlocacao: TRzBitBtn;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    CheckBox2: TCheckBox;
    RzBitBtn15: TRzBitBtn;
    RzBitBtn16: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    TabSheet7: TRzTabSheet;
    cxGrid12: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    TabSheet8: TRzTabSheet;
    QR_TemposRealizadosEspacial: TOraQuery;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    StringField5: TStringField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    DS_TemposRealizadosEspacial: TOraDataSource;
    RzPanel47: TRzPanel;
    RzBitBtn17: TRzBitBtn;
    DS_TemposAtualizacao: TOraDataSource;
    QR_TemposAtualizacao: TOraQuery;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    StringField6: TStringField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    cxGrid13: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    RzPanel48: TRzPanel;
    RzBitBtn18: TRzBitBtn;
    QR_TemposAtualizacaoTIPO_IDA: TStringField;
    QR_TemposAtualizacaoTIPO_VOLTA: TStringField;
    QR_TemposAtualizacaoTIPO_CARREGAMENTO: TStringField;
    cxGridDBTableView13TIPO_IDA: TcxGridDBColumn;
    cxGridDBTableView13TIPO_VOLTA: TcxGridDBColumn;
    cxGridDBTableView13TIPO_CARREGAMENTO: TcxGridDBColumn;
    cxDBVerticalGrid2CategoryRow1: TcxCategoryRow;
    QR_FazendasColunasNUM_ORDEMCORTE: TStringField;
    cxDBVerticalGrid2DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid2DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid2DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid2DBEditorRow4: TcxDBEditorRow;
    QR_FazendasColunasCANA_ENTREGAR_FRENTE_PREV: TStringField;
    QR_FazendasColunasCANA_ENTREGAR_FRENTE_REAL: TStringField;
    QR_FazendasColunasCANA_ENTREGAR_CONS_PREV: TStringField;
    QR_FazendasColunasCANA_ENTREGAR_CONS_REAL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QR_FrenteFazendasAfterScroll(DataSet: TDataSet);
    procedure QR_FrenteAfterScroll(DataSet: TDataSet);
    procedure QR_FazendaNewRecord(DataSet: TDataSet);
    procedure QR_TemposCarregamentoNewRecord(DataSet: TDataSet);
    procedure QR_TemposRealizadosNewRecord(DataSet: TDataSet);
    procedure QR_CarregadeirasOPAfterOpen(DataSet: TDataSet);
    procedure QR_CarregadeirasPAAfterOpen(DataSet: TDataSet);
    procedure QR_ReboqueOPAfterOpen(DataSet: TDataSet);
    procedure QR_ReboquePAAfterOpen(DataSet: TDataSet);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn8Click(Sender: TObject);
    procedure RzBtnNovaAlocacaoClick(Sender: TObject);
    procedure RzBitBtn11Click(Sender: TObject);
    procedure TM_AtualizaDadosTimer(Sender: TObject);
    procedure RzBitBtn12Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn9Click(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn10Click(Sender: TObject);
    procedure RzBitBtn13Click(Sender: TObject);
    procedure RzBitBtn14Click(Sender: TObject);
    procedure QR_AlocacaoPatioAfterOpen(DataSet: TDataSet);
    procedure QR_EquipamentosFixosNewRecord(DataSet: TDataSet);
    procedure TM_AlocarPendenciaTimer(Sender: TObject);
    procedure Alocacao_Pendente;
    procedure RzBitBtn15Click(Sender: TObject);
    procedure RzBitBtn16Click(Sender: TObject);
    procedure cxGridDBTableView8COD_EQUIPAMENTOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView8FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBTableView5COD_FAZENDAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView5FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBTableView5COD_TIPOCANAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTempoCarregamentoDBTableView1COD_TIPOCARGAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTempoCarregamentoDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridTemposRealizadosDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridTemposRealizadosDBTableView1COD_TIPOCARGAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView7CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RzBitBtnAtualizarTemposPercursosClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure cxGridTempoCarregamentoDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxGridTemposRealizadosDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure QR_TemposRealizadosAfterScroll(DataSet: TDataSet);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzSpinButtons1DownLeftClick(Sender: TObject);
    procedure RzSpinButtons1UpRightClick(Sender: TObject);
    procedure b_exportarClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure QR_TemposCarregamentoAfterPost(DataSet: TDataSet);
    procedure QR_TemposRealizadosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    v_fazenda_escolhida : String;
  end;

var
  F_AlocacaoEquipamento: TF_AlocacaoEquipamento;

implementation

{$R *.dfm}

uses u_recursos, U_DM, U_ImagensMonitoramentoTrafego,
     U_BuscaAvancada, U_GravarAlocacao, U_Atualiza_Tempo_Real_Percurso,
     U_AlteraOrdemPatio, U_Painel, U_ParadaReboqueCarreg;

procedure TF_AlocacaoEquipamento.b_exportarClick(Sender: TObject);
begin
  inherited;
  if SaveDialog1.Execute then
  begin
     cxExportVGToExcel(SaveDialog1.FileName+'F', cxDBVerticalGrid1,False, True, 8,'xls');
     cxExportVGToExcel(SaveDialog1.FileName+'I', cxDBVerticalGrid2,False, True, 8,'xls');
  end;
end;

procedure TF_AlocacaoEquipamento.cxGridDBTableView5COD_FAZENDAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var SQL : String;
      valor : Variant;
begin
  inherited;
  Sql := 'SELECT f.cod_fazenda "Codigo",                  ' +
         '       f.descricao "Descri��o",                 ' +
         '       t.descricao "Tipo Fazenda"               ' +
         '  FROM fazenda f, tipo_fazenda t                ' +
         ' WHERE f.cod_tipofazenda = t.cod_tipofazenda    ' +
         '   AND f.cod_grupo = ' + dm.QR_UnidadeCOD_GRUPO.AsString +
         '   AND f.cod_regional = ' + dm.QR_UnidadeCOD_REGIONAL.AsString +
         '   AND f.cod_unidade = ' + dm.QR_UnidadeCOD_UNIDADE.AsString +
         '   &Macro                                       ' +
         ' ORDER BY f.cod_fazenda                         ';

   valor := F_BuscaAvancada.Buscar(sql,1,'Busca Fazendas');
   If valor <> null then begin
     if not (QR_Fazenda.State in [dsInsert,dsEdit]) then
         QR_Fazenda.Edit;
      QR_FazendaCOD_FAZENDA.AsString     := VarToStr(valor);
      QR_FazendaFAZENDA.AsString         := F_BuscaAvancada.Query.FieldByName('Descri��o').AsString;
      QR_FazendaTIPOFAZENDA.AsString     := F_BuscaAvancada.Query.FieldByName('Tipo Fazenda').AsString;
   end;

end;

procedure TF_AlocacaoEquipamento.cxGridDBTableView5COD_TIPOCANAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var SQL : String;
      valor : Variant;
begin
  inherited;


    Sql := 'SELECT cod_tipocana "Codigo",         ' +
           '       descricao "Descri��o",         ' +
           '       cana_queimada "Cana Queimada", ' +
           '       mecanizada "Mecanizada"        ' +
           '  FROM tipo_cana                      ' +
           ' &Macro                               ' +
           ' ORDER BY cod_tipocana                ';

   valor := F_BuscaAvancada.Buscar(sql,1,'Busca Tipo Cana');
   If valor <> null then begin
     if not (QR_Fazenda.State in [dsInsert,dsEdit]) then
         QR_Fazenda.Edit;
      QR_FazendaCOD_TIPOCANA.AsString  := VarToStr(valor);
      QR_FazendaTIPOOCANA.AsString     := F_BuscaAvancada.Query.FieldByName('Descri��o').AsString;
      QR_FazendaCANA_QUEIMADA.AsString := F_BuscaAvancada.Query.FieldByName('Cana Queimada').AsString;
      QR_FazendaMECANIZADA.AsString    := F_BuscaAvancada.Query.FieldByName('Mecanizada').AsString;
   end;
end;

procedure TF_AlocacaoEquipamento.cxGridDBTableView5FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
   if APrevFocusedItem.Caption = 'Fazenda' then
   begin
       if (QR_Fazenda.State in [dsInsert,dsEdit]) then
       begin
         try
          QR_FazendaFAZENDA.Value := Buscar_Descricao('fazenda','descricao','cod_fazenda','   cod_grupo    = '+ dm.QR_UnidadeCOD_GRUPO.AsString +
                                                                                          '   and cod_regional = '+ dm.QR_UnidadeCOD_REGIONAL.AsString +
                                                                                          '   and cod_unidade = '+ dm.QR_UnidadeCOD_UNIDADE.AsString,
                                                                                          QR_FazendaCOD_FAZENDA.AsString);
          QR_FazendaTIPOFAZENDA.Value := Buscar_Descricao('fazenda f, tipo_fazenda t','t.descricao','cod_fazenda','   f.cod_grupo    = '+ dm.QR_UnidadeCOD_GRUPO.AsString +
                                                                                                                  '   and f.cod_regional = '+ dm.QR_UnidadeCOD_REGIONAL.AsString +
                                                                                                                  '   and f.cod_unidade = '+ dm.QR_UnidadeCOD_UNIDADE.AsString +
                                                                                                                  '   and f.cod_tipofazenda = t.cod_tipofazenda ',
                                                                                                                  QR_FazendaCOD_FAZENDA.AsString);
         except
          on e :exception do
          begin
           Application.MessageBox(Pchar('Erro ao localizar Fazenda.'+#13+e.Message),'Aviso',MB_OK+MB_ICONEXCLAMATION);
           Abort;
          end;
         end;
       end;
   end;
   if APrevFocusedItem.Caption = 'C�digo' then
   begin
       if (QR_Fazenda.State in [dsInsert,dsEdit]) then
       begin
         try
           QR_FazendaTIPOOCANA.Value := Buscar_Descricao('tipo_cana','descricao','cod_tipocana','',QR_FazendaCOD_TIPOCANA.AsString);
           QR_FazendaCANA_QUEIMADA.Value := Buscar_Descricao('tipo_cana','cana_queimada','cod_tipocana','',QR_FazendaCOD_TIPOCANA.AsString);
           QR_FazendaMECANIZADA.Value := Buscar_Descricao('tipo_cana','mecanizada','cod_tipocana','',QR_FazendaCOD_TIPOCANA.AsString);

         except
           on e: exception do
           begin
             Application.MessageBox(Pchar('Erro ao localizar Tipo de Cana.'+#13+e.Message),'Aviso',MB_OK+MB_ICONEXCLAMATION);
             Abort;
           end;
         end;
       end;
   end;

end;

procedure TF_AlocacaoEquipamento.cxGridDBTableView7CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

   if VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7SITUACAO.index], 256) = 'Indo' then
   begin
        ACanvas.Brush.Color := clNavy;
        ACanvas.Font.Color := clWhite;
   end
   else
   begin
     if VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7SITUACAO.index], 256) = 'Carregando' then
     begin
        ACanvas.Brush.Color := clGreen;
        ACanvas.Font.Color := clWhite;
     end
     else
     begin
        if VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7SITUACAO.index], 256) = 'Retornando' then
        begin
           ACanvas.Brush.Color := clYellow;
           ACanvas.Font.Color := clBlack;
        end
        else
        begin
           if VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7SITUACAO.index], 256) = 'Descarregando' then
           begin
              ACanvas.Brush.Color := clWhite;
              ACanvas.Font.Color := clBlue;
           end
           else
           begin
              if VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7SITUACAO.index], 256) = 'Parado' then
              begin
                 ACanvas.Brush.Color := clBlack;
                 ACanvas.Font.Color := clWhite;
              end;
           end;

        end;
     end;
   end;

    if (VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7ATRASO.index], 256) = 'Sim') and
       (VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView7SITUACAO.index], 256) <> 'Parado') then
    begin
        ACanvas.Brush.Color := clRed;
        ACanvas.Font.Color := clWhite;
    end;

end;

procedure TF_AlocacaoEquipamento.cxGridDBTableView8COD_EQUIPAMENTOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
     SQL : String;
     Valor : Variant;
begin
  inherited;
  Sql := '         SELECT equipamento.cod_equipamento "C�digo", equipamento.descricao "Ve�culo" ';
  Sql := Sql + '     FROM equipamento, tipo_equipamento                                          ';
  Sql := Sql + '    WHERE equipamento.cod_tipoequipamento = tipo_equipamento.cod_tipoequipamento ';
  Sql := Sql + '      AND tipo_equipamento.tipo_cct = ''C''                                      ';
  Sql := Sql + '          &Macro                                                                ';
  Sql := Sql + ' ORDER BY equipamento.descricao                                                 ';

   SQL := ReplStr(SQL,':cod_equipamento','0');
   valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Equipamentos(Caminh�es)');
   If valor <> null then begin
     if not (QR_EquipamentosFixos.State in [dsInsert,dsEdit]) then
         QR_EquipamentosFixos.Edit;
      QR_EquipamentosFixosCOD_EQUIPAMENTO.AsString := VarToStr(valor);
      QR_EquipamentosFixosEQUIPAMENTO.AsString     := F_BuscaAvancada.Query.FieldByName('Ve�culo').AsString;
   end;
end;

procedure TF_AlocacaoEquipamento.cxGridDBTableView8FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
    if APrevFocusedItem.Caption = 'C�digo' then
    begin
      if (QR_EquipamentosFixos.State in [dsInsert,dsedit]) then
      begin
         QR_EquipamentosFixosEQUIPAMENTO.AsString :=  Buscar_Descricao('equipamento',
                                                                       'descricao',
                                                                       'cod_equipamento',
                                                                       '',
                                                                       QR_EquipamentosFixosCOD_EQUIPAMENTO.value);
      end;
    end;
end;

procedure TF_AlocacaoEquipamento.cxGridTempoCarregamentoDBTableView1COD_TIPOCARGAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
     SQL : String;
     Valor : Variant;
begin
  inherited;
  Sql := 'SELECT cod_tipocarga "C�digo", descricao "Descri��o" ' +
         '  FROM tipo_carga                                   ' +
         ' WHERE ativo = ''S''                                ' +
         ' &Macro                                             ' +
         ' ORDER BY cod_tipocarga                             ';

   SQL := ReplStr(SQL,':cod_equipamento','0');
   valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Tipo de Carga');
   If valor <> null then begin
     if not (QR_TemposCarregamento.State in [dsInsert,dsEdit]) then
         QR_TemposCarregamento.Edit;
      QR_TemposCarregamentoCOD_TIPOCARGA.AsString := VarToStr(valor);
      QR_TemposCarregamentoDESCRICAO.AsString     := F_BuscaAvancada.Query.FieldByName('Descri��o').AsString;
      cxGridTempoCarregamentoDBTableView1TEMPO_CARREGAMENTO_CONJ.FocusWithSelection;
   end;
end;

procedure TF_AlocacaoEquipamento.cxGridTempoCarregamentoDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if AFocusedItem = cxGridTempoCarregamentoDBTableView1COD_TIPOCARGA then
    begin
      cxGridTempoCarregamento.Hint := 'Aperte F9 para pesquisar os Tipos de Cargas';
      cxGridTempoCarregamento.ShowHint := True;
    end
  else
    begin
      cxGridTempoCarregamento.Hint := '';
      cxGridTempoCarregamento.ShowHint := False;
    end;

    if APrevFocusedItem.Caption = 'Tipo Carga' then
    begin
      if (QR_TemposCarregamento.State in [dsInsert,dsedit]) then
      begin
       try
         QR_TemposCarregamentoDESCRICAO.AsString :=  Buscar_Descricao('tipo_carga',
                                                                       'descricao',
                                                                       'cod_tipocarga',
                                                                       ' ativo = ''S'' ',
                                                                       QR_TemposCarregamentoCOD_TIPOCARGA.value);
         //Pega o peso prad�o do tipo de carga
         with TOraQuery.Create(Self) do
         begin
           Close;
           Session := dm.Sessao;
           SQL.Text := 'SELECT NVL(tempo_carregamento_conj,0) tempo ' +
                       '  FROM tipo_carga                           ' +
                       ' WHERE cod_tipocarga = :cod_tipocarga       ' ;
           ParamByName('cod_tipocarga').AsFloat := QR_TemposCarregamentoCOD_TIPOCARGA.AsFloat;
           Open;
           if not IsEmpty then
              QR_TemposCarregamentoTEMPO_CARREGAMENTO_CONJ.AsFloat := FieldByName('tempo').AsFloat;
           Free;
         end;
       except
          on e:exception do
          begin
              Application.MessageBox(Pchar('Erro ao localizar tipo de carga, verificar se existe o c�digo '
                                           +QR_TemposCarregamentoCOD_TIPOCARGA.AsString+#13+e.Message),'Aviso',MB_OK+MB_ICONEXCLAMATION);
              Abort;
          end;
       end;
      end;
    end;
end;

procedure TF_AlocacaoEquipamento.cxGridTempoCarregamentoDBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    if cxGridTempoCarregamentoDBTableView1COD_TIPOCARGA.Focused then
      cxGridTempoCarregamentoDBTableView1COD_TIPOCARGAPropertiesButtonClick(cxGridTempoCarregamentoDBTableView1COD_TIPOCARGA,cxGridTempoCarregamentoDBTableView1COD_TIPOCARGA.Index);
end;

procedure TF_AlocacaoEquipamento.cxGridTemposRealizadosDBTableView1COD_TIPOCARGAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
     SQL : String;
     Valor : Variant;
begin
  inherited;
  Sql := 'SELECT cod_tipocarga "C�digo", descricao "Descri��o" ' +
         '  FROM tipo_carga                                   ' +
         ' WHERE ativo = ''S''                                ' +
         ' &Macro                                             ' +
         ' ORDER BY cod_tipocarga                             ';

   SQL := ReplStr(SQL,':cod_equipamento','0');
   valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Tipo de Carga');
   If valor <> null then begin
     if not (QR_TemposRealizados.State in [dsInsert,dsEdit]) then
         QR_TemposRealizados.Edit;
      QR_TemposRealizadosCOD_TIPOCARGA.AsString := VarToStr(valor);
      QR_TemposRealizadosDESC_TIPOCARGA.AsString     := F_BuscaAvancada.Query.FieldByName('Descri��o').AsString;
      cxGridTemposRealizadosDBTableView1MIN_VAZIO_ASFALTO.FocusWithSelection;
   end;

end;

procedure TF_AlocacaoEquipamento.cxGridTemposRealizadosDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
    if AFocusedItem = cxGridTemposRealizadosDBTableView1COD_TIPOCARGA then
      begin
        cxGridTemposRealizados.Hint := 'Aperte F9 para pesquisar Tipos de Cargas';
        cxGridTemposRealizados.ShowHint := True;
      end
    else
      begin
        cxGridTemposRealizados.Hint := '';
        cxGridTemposRealizados.ShowHint := False;
      end;

    if APrevFocusedItem.Caption = 'Tipo Carga' then
    begin
      if (DS_TemposRealizados.State in [dsInsert,dsedit]) then
      begin
       try
         QR_TemposRealizadosDESC_TIPOCARGA.AsString :=  Buscar_Descricao('tipo_carga',
                                                                        'descricao',
                                                                        'cod_tipocarga',
                                                                        ' ativo = ''S'' ',
                                                                        QR_TemposRealizadosCOD_TIPOCARGA.value);
       except
          on e:exception do
          begin
              Application.MessageBox(Pchar('Erro ao localizar tipo de carga, verificar se existe o c�digo '
                                           +QR_TemposRealizadosCOD_TIPOCARGA.AsString+#13+e.Message),'Aviso',MB_OK+MB_ICONEXCLAMATION);
              Abort;
          end;
       end;
      end;
    end;
end;

procedure TF_AlocacaoEquipamento.cxGridTemposRealizadosDBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    if cxGridTemposRealizadosDBTableView1COD_TIPOCARGA.Focused then
      cxGridTemposRealizadosDBTableView1COD_TIPOCARGAPropertiesButtonClick(cxGridTemposRealizadosDBTableView1COD_TIPOCARGA,cxGridTemposRealizadosDBTableView1COD_TIPOCARGA.Index);

end;

procedure TF_AlocacaoEquipamento.FormCreate(Sender: TObject);
begin
  inherited;
  Left := 1;
  Top := 1;
  RzPageControl1.ActivePage := tsAlocacoes;
  RzPgAlocacoes.ActivePage := TsAlocacaoEquipamentos;

  with TOraQuery.Create(self)do
  begin
    Session := dm.Sessao;
    Close;
    SQL.Text := 'SELECT ENVIAR_MENSAGEM_VEICULO FROM PARAMETROS_LOGISTICA ' +
                 ' WHERE COD_GRUPO = ' + DM.QR_UnidadeCOD_GRUPO.AsString +
                 '   AND COD_REGIONAL = '+ DM.QR_UnidadeCOD_REGIONAL.AsString +
                 '   AND COD_UNIDADE = ' + DM.QR_UnidadeCOD_UNIDADE.AsString;
    Open;
    RzBitBtn11.Visible := FieldByName('ENVIAR_MENSAGEM_VEICULO').AsString = 'S';
    Free;
  end;

  QR_ParametrosER.Close;
  QR_ParametrosER.ParamByName('cod_grupo').AsString := DM.QR_GrupoCOD_GRUPO.AsString;
  QR_ParametrosER.ParamByName('cod_regional').AsString := dm.QR_UnidadeCOD_REGIONAL.AsString;
  QR_ParametrosER.ParamByName('cod_unidade').AsString := dm.QR_UnidadeCOD_UNIDADE.AsString;
  QR_ParametrosER.Open;
  // P3 abrindo as query so form
  QR_Frente.Close;
  QR_Frente.ParamByName('cod_grupo').AsString := DM.QR_GrupoCOD_GRUPO.AsString;
  QR_Frente.ParamByName('cod_regional').AsString := dm.QR_UnidadeCOD_REGIONAL.AsString;
  QR_Frente.ParamByName('cod_unidade').AsString := dm.QR_UnidadeCOD_UNIDADE.AsString;
  QR_Frente.ParamByName('cod_safra').AsFloat := dm.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Frente.Open;

  QR_FrenteFazendas.Close;
  QR_FrenteFazendas.ParamByName('cod_grupo').AsString := DM.QR_GrupoCOD_GRUPO.AsString;
  QR_FrenteFazendas.ParamByName('cod_regional').AsString := dm.QR_UnidadeCOD_REGIONAL.AsString;
  QR_FrenteFazendas.ParamByName('cod_unidade').AsString := dm.QR_UnidadeCOD_UNIDADE.AsString;
  QR_FrenteFazendas.ParamByName('cod_safra').AsFloat := dm.QR_SafrasCOD_SAFRA.AsFloat;
  QR_FrenteFazendas.Open;

  QR_Alocacao.Close;
  QR_Alocacao.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Alocacao.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Alocacao.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Alocacao.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Alocacao.Open;

  QR_AlocacaoPatio.Close;
  QR_AlocacaoPatio.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_AlocacaoPatio.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_AlocacaoPatio.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_AlocacaoPatio.Open;

  QR_ProxFrentesPatio.Close;
  QR_ProxFrentesPatio.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_ProxFrentesPatio.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_ProxFrentesPatio.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_ProxFrentesPatio.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_ProxFrentesPatio.Open;

  QR_FrentesLiberadas.Close;
  QR_FrentesLiberadas.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_FrentesLiberadas.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_FrentesLiberadas.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_FrentesLiberadas.Open;

  QR_FrenteExcesso.Close;
  QR_FrenteExcesso.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_FrenteExcesso.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_FrenteExcesso.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_FrenteExcesso.Open;
end;

procedure TF_AlocacaoEquipamento.FormResize(Sender: TObject);
begin
  inherited;
    panel12.Width := trunc(panel11.Width/2);
    panel16.Width := trunc(panel12.Width/2);
    Panel22.Width := trunc(panel18.Width/2);
end;

procedure TF_AlocacaoEquipamento.Alocacao_Pendente;
begin
     QR_AlocacaoPendente.Close;
     QR_AlocacaoPendente.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
     QR_AlocacaoPendente.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
     QR_AlocacaoPendente.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
     QR_AlocacaoPendente.Open;

     if not QR_AlocacaoPendente.IsEmpty then
     begin
        F_GravarAlocacao.tipo_alocacao := 'A';
        F_GravarAlocacao.Equipamento_AL_Pendente := QR_AlocacaoPendenteCOD_EQUIPAMENTO.AsInteger;
        F_GravarAlocacao.ftop :=  (Self.Top) + trunc(self.Height/2);
        F_GravarAlocacao.fleft := Self.Left + trunc(self.Width/2);
        F_GravarAlocacao.Show;
     end;
end;


procedure TF_AlocacaoEquipamento.QR_CarregadeirasPAAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lvCarregPa.Clear;
  QR_CarregadeirasPA.First;
    while not QR_CarregadeirasPA.Eof do
    begin
       with lvCarregPa.Items.Add do
       begin
         Caption    := QR_CarregadeirasPACOD_EQUIPAMENTO.AsString+' - '+QR_CarregadeirasPADESCRICAO.AsString;
         ImageIndex := 0;
         StateIndex := QR_CarregadeirasPACOD_EQUIPAMENTO.AsInteger;
       end;
       QR_CarregadeirasPA.Next;
    end;

end;

procedure TF_AlocacaoEquipamento.QR_EquipamentosFixosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QR_EquipamentosFixosCOD_SAFRA.AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_EquipamentosFixosCOD_FRENTE.AsFloat   := QR_FrenteFazendasCOD_FRENTE.AsFloat;
  QR_EquipamentosFixosCOD_FAZENDA.AsFloat  := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
  QR_EquipamentosFixosCOD_GRUPO.AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_EquipamentosFixosCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_EquipamentosFixosCOD_UNIDADE.AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;

end;

procedure TF_AlocacaoEquipamento.QR_AlocacaoPatioAfterOpen(DataSet: TDataSet);
begin
  inherited;
   lvPatio.Clear;
  QR_AlocacaoPatio.First;
    while not QR_AlocacaoPatio.Eof do
    begin
       with lvPatio.Items.Add do
       begin
         Caption    := QR_AlocacaoPatioSEQUENCIA.AsString+' - '+QR_AlocacaoPatioCOD_EQUIPAMENTO.AsString+' - '+QR_AlocacaoPatioDESCRICAO.AsString;
         ImageIndex := QR_AlocacaoPatioINDEXIMAGE.AsInteger;
         StateIndex := QR_AlocacaoPatioCOD_EQUIPAMENTO.AsInteger;
       end;
       QR_AlocacaoPatio.Next;
    end;
end;

procedure TF_AlocacaoEquipamento.QR_CarregadeirasOPAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lvCarregOp.Clear;
  QR_CarregadeirasOP.First;
    while not QR_CarregadeirasOP.Eof do
    begin
       with lvCarregOp.Items.Add do
       begin
         Caption    := QR_CarregadeirasOPCOD_EQUIPAMENTO.AsString+' - '+QR_CarregadeirasOPDESCRICAO.AsString;
         ImageIndex := 0;
         StateIndex := QR_CarregadeirasOPCOD_EQUIPAMENTO.AsInteger;
       end;
       QR_CarregadeirasOP.Next;
    end;

end;

procedure TF_AlocacaoEquipamento.QR_FazendaNewRecord(DataSet: TDataSet);
begin
  inherited;
   QR_FazendaCOD_SAFRA.AsFloat := QR_FrenteCOD_SAFRA.AsFloat;
   QR_FazendaCOD_FRENTE.AsFloat := QR_FrenteCOD_FRENTE.AsFloat;
   QR_FazendaCOD_GRUPO.AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
   QR_FazendaCOD_REGIONAL.AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
   QR_FazendaCOD_UNIDADE.AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
   QR_FazendaTRANSPORTE_LIBERADO.AsString := 'N';
   QR_FazendaCANA_QUEIMADA.AsString := 'N';

end;

procedure TF_AlocacaoEquipamento.QR_FrenteAfterScroll(DataSet: TDataSet);
begin
  inherited;
   QR_Fazenda.Close;
   QR_Fazenda.ParamByName('cod_safra').AsFloat := QR_FrenteCOD_SAFRA.AsFloat;
   QR_Fazenda.ParamByName('cod_frente').AsFloat := QR_FrenteCOD_FRENTE.AsFloat;
   QR_Fazenda.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
   QR_Fazenda.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
   QR_Fazenda.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
   QR_Fazenda.Open;

   QR_FazendasColunas.Close;
   QR_FazendasColunas.ParamByName('cod_safra').AsFloat := QR_FrenteCOD_SAFRA.AsFloat;
   QR_FazendasColunas.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
   QR_FazendasColunas.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
   QR_FazendasColunas.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
   QR_FazendasColunas.Open;
end;

procedure TF_AlocacaoEquipamento.QR_FrenteFazendasAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   QR_TemposCarregamento.Close;
   QR_TemposCarregamento.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_TemposCarregamento.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_TemposCarregamento.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_TemposCarregamento.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_TemposCarregamento.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_TemposCarregamento.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_TemposCarregamento.Open;

   QR_TemposParametros.Close;
   QR_TemposParametros.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_TemposParametros.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_TemposParametros.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_TemposParametros.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_TemposParametros.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_TemposParametros.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_TemposParametros.Open;

   QR_TemposRealizados.Close;
   QR_TemposRealizados.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_TemposRealizados.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_TemposRealizados.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_TemposRealizados.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_TemposRealizados.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_TemposRealizados.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_TemposRealizados.Open;

   QR_TemposRealizadosEspacial.Close;
   QR_TemposRealizadosEspacial.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_TemposRealizadosEspacial.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_TemposRealizadosEspacial.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_TemposRealizadosEspacial.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_TemposRealizadosEspacial.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_TemposRealizadosEspacial.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_TemposRealizadosEspacial.Open;

   QR_TemposAtualizacao.Close;
   QR_TemposAtualizacao.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_TemposAtualizacao.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_TemposAtualizacao.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_TemposAtualizacao.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_TemposAtualizacao.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_TemposAtualizacao.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_TemposAtualizacao.Open;

   QR_CarregadeirasOP.Close;
   QR_CarregadeirasOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_CarregadeirasOP.Open;

   QR_CarregadeirasPA.Close;
   QR_CarregadeirasPA.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_CarregadeirasPA.Open;

   QR_ReboqueOP.Close;
   QR_ReboqueOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_ReboqueOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_ReboqueOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_ReboqueOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_ReboqueOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_ReboqueOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_ReboqueOP.Open;

   QR_reboquePA.Close;
   QR_reboquePA.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_reboquePA.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_reboquePA.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_reboquePA.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_reboquePA.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_reboquePA.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_reboquePA.Open;

   QR_EquipamentosFixos.Close;
   QR_EquipamentosFixos.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_EquipamentosFixos.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_EquipamentosFixos.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_EquipamentosFixos.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_EquipamentosFixos.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_EquipamentosFixos.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_EquipamentosFixos.Open;


end;

procedure TF_AlocacaoEquipamento.QR_ReboqueOPAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lvReboqOp.Clear;
  QR_ReboqueOP.First;
    while not QR_ReboqueOP.Eof do
    begin
       with lvReboqOp.Items.Add do
       begin
         Caption    := QR_ReboqueOPCOD_EQUIPAMENTO.AsString+' - '+QR_ReboqueOPDESCRICAO.AsString;
         ImageIndex := 1;
         StateIndex := QR_ReboqueOPCOD_EQUIPAMENTO.AsInteger;
       end;
       QR_ReboqueOP.Next;
    end;
end;

procedure TF_AlocacaoEquipamento.QR_ReboquePAAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lvReboqPa.Clear;
  QR_ReboquePA.First;
    while not QR_ReboquePA.Eof do
    begin
       with lvReboqPa.Items.Add do
       begin
         Caption    := QR_ReboquePACOD_EQUIPAMENTO.AsString+' - '+QR_ReboquePADESCRICAO.AsString;
         ImageIndex := 1;
         StateIndex := QR_ReboquePACOD_EQUIPAMENTO.AsInteger;
       end;
       QR_ReboquePA.Next;
    end;
end;

procedure TF_AlocacaoEquipamento.QR_TemposCarregamentoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
   QR_FrenteFazendasAfterScroll(QR_FrenteFazendas);
end;

procedure TF_AlocacaoEquipamento.QR_TemposCarregamentoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
    QR_TemposCarregamentoCOD_GRUPO.AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
    QR_TemposCarregamentoCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL .AsFloat;
    QR_TemposCarregamentoCOD_UNIDADE.AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
    QR_TemposCarregamentoCOD_SAFRA.AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
    QR_TemposCarregamentoCOD_FRENTE.AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
    QR_TemposCarregamentoCOD_FAZENDA.AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    QR_TemposCarregamentoALOCACAO_LIBERADA.AsString := 'N';
    QR_TemposCarregamentoATUALIZA_IDA.AsString := 'P';
    QR_TemposCarregamentoATUALIZA_VOLTA.AsString := 'P';
    QR_TemposCarregamentoATUALIZA_CARREGAMENTO.AsString := 'P';

    with TOraQuery.Create(Self) do
    begin
      Close;
      Session := DM.Sessao;
      SQL.Text := 'SELECT NVL(ton_hora_carregadeira,0) ton ' +
                  '  FROM parametros_logistica             ' +
                  ' WHERE cod_grupo    = :cod_grupo        ' +
                  '   AND cod_regional = :cod_regional     ' +
                  '   AND cod_unidade  = :cod_unidade      ' ;
      ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
      ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
      ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
      Open;
      if not IsEmpty then
         QR_TemposCarregamentoTONELADAS_HORA_CARREGADEIRA.AsFloat := FieldByName('ton').AsFloat;
      Free;
    end;
end;

procedure TF_AlocacaoEquipamento.QR_TemposRealizadosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
   QR_FrenteFazendasAfterScroll(QR_FrenteFazendas);
end;

procedure TF_AlocacaoEquipamento.QR_TemposRealizadosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  RzBitBtnAtualizarTemposPercursos.Enabled := not DataSet.IsEmpty;
end;

procedure TF_AlocacaoEquipamento.QR_TemposRealizadosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
    QR_TemposRealizadosCOD_GRUPO.AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
    QR_TemposRealizadosCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL .AsFloat;
    QR_TemposRealizadosCOD_UNIDADE.AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
    QR_TemposRealizadosCOD_SAFRA.AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
    QR_TemposRealizadosCOD_FRENTE.AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
    QR_TemposRealizadosCOD_FAZENDA.AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    QR_TemposRealizadosMIN_VAZIO_ASFALTO.AsFloat := 0;
    QR_TemposRealizadosMIN_VAZIO_TERRA.AsFloat := 0;
    QR_TemposRealizadosMIN_VAZIO_CARREADOR.AsFloat := 0;
    QR_TemposRealizadosMIN_CARREGADO_ASFALTO.AsFloat := 0;
    QR_TemposRealizadosMIN_CARREGADO_TERRA.AsFloat := 0;
    QR_TemposRealizadosMIN_CARREGADO_CARREADOR.AsFloat := 0;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn10Click(Sender: TObject);
var vcod_equipamento : Integer;
begin
  inherited;
  if lvReboqPa.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione um equipamento que est� em Parada.','Aviso',mb_ok+MB_ICONINFORMATION);
    Abort;
  end;


  vcod_equipamento := lvReboqPA.Selected.StateIndex;

  with TOraQuery.Create(Self) do
  begin
    Session := DM.Sessao;
    SQL.Text := 'UPDATE FRENTE_REBOQUE SET DISPONIVEL       = ''N'' ' +
                '                          ,CAMPO_OFICINA   = ''C'' ' +
                '                            ,OBSERVACAO    = ''''  ' +
                '                            ,COD_MOTIVO    = ''''  ' +
                '                            , DATA_HORA    = SYSDATE ' +
                '                            , ORDEMSERVICO = '''' ' +
                ' WHERE COD_GRUPO = :COD_GRUPO                    ' +
                '   AND COD_REGIONAL = :COD_REGIONAL              ' +
                '   AND COD_UNIDADE = :COD_UNIDADE                ' +
                '   AND COD_FRENTE = :COD_FRENTE                  ' +
                '   AND COD_SAFRA = :COD_SAFRA                    ' +
                '   AND COD_FAZENDA = :COD_FAZENDA                ' +
                '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO        ' ;
              ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
              ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
              ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
              ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
              ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
              ParamByName('cod_equipamento').AsInteger := VCOD_EQUIPAMENTO;
              ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    Execute;
    Free;
  end;
  dm.Sessao.Commit;
   QR_ReboqueOP.Close;
   QR_ReboqueOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_ReboqueOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_ReboqueOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_ReboqueOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_ReboqueOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_ReboqueOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_ReboqueOP.Open;

   QR_reboquePA.Close;
   QR_reboquePA.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_reboquePA.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_reboquePA.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_reboquePA.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_reboquePA.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_reboquePA.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_reboquePA.Open;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn11Click(Sender: TObject);
begin
  inherited;
  F_Painel.v_cod_frente  := QR_Alocacaocod_Frente.AsString;
  F_Painel.v_cod_fazenda := QR_Alocacaocod_Fazenda.AsString;
  F_Painel.v_cod_veiculo := QR_Alocacaocod_Equipamento.AsString;
  F_Painel.v_descFazenda := QR_AlocacaoFazenda.AsString;
  F_Painel.Edit1.Clear;
  F_Painel.Show;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn12Click(Sender: TObject);
begin
  inherited;
  QR_Alocacao.Close;
  QR_Alocacao.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Alocacao.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Alocacao.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Alocacao.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Alocacao.Open;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn13Click(Sender: TObject);
var vcod_equipamento : Integer;
begin
  inherited;
  if lvCarregOp.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione um equipamento que esta em opera��o.','Aviso',mb_ok+MB_ICONINFORMATION);
    Abort;
  end;

  vcod_equipamento := lvCarregOp.Selected.StateIndex;

  if Application.MessageBox(PChar('Deseja realmente excluir a alocac?o do equipamento '+InttoStr(vcod_equipamento)),'Confirmac?o',MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
    with TOraQuery.Create(Self) do
    begin
      Session := DM.Sessao;
      SQL.Text := 'DELETE FROM FRENTE_CARREGADEIRA                   ' +
                  ' WHERE COD_GRUPO = :COD_GRUPO                     ' +
                  '   AND COD_REGIONAL = :COD_REGIONAL               ' +
                  '   AND COD_UNIDADE = :COD_UNIDADE                 ' +
                  '   AND COD_FRENTE = :COD_FRENTE                   ' +
                  '   AND COD_SAFRA = :COD_SAFRA                     ' +
                  '   AND COD_FAZENDA = :COD_FAZENDA                 ' +
                  '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO         ' ;
                ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
                ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
                ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
                ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
                ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
                ParamByName('cod_equipamento').AsInteger := VCOD_EQUIPAMENTO;
                ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
      Execute;
      Free;
    end;
    dm.Sessao.Commit;
    QR_CarregadeirasOP.Close;
    QR_CarregadeirasOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
    QR_CarregadeirasOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
    QR_CarregadeirasOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    QR_CarregadeirasOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
    QR_CarregadeirasOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
    QR_CarregadeirasOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
    QR_CarregadeirasOP.Open;
  end;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn14Click(Sender: TObject);
VAR vcod_equipamento : Integer;
begin
  inherited;
  if lvReboqOp.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione um equipamento que est� em opera��o.','Aviso',mb_ok+MB_ICONINFORMATION);
    Abort;
  end;

  vcod_equipamento := lvReboqOp.Selected.StateIndex;

  if Application.MessageBox(PChar('Deseja realmente excluir a alocac?o do equipamento '+InttoStr(vcod_equipamento)),'Confirmac?o',MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
    with TOraQuery.Create(Self) do
    begin
      Session := DM.Sessao;
      SQL.Text := 'DELETE FROM FRENTE_REBOQUE                        ' +
                  ' WHERE COD_GRUPO = :COD_GRUPO                     ' +
                  '   AND COD_REGIONAL = :COD_REGIONAL               ' +
                  '   AND COD_UNIDADE = :COD_UNIDADE                 ' +
                  '   AND COD_FRENTE = :COD_FRENTE                   ' +
                  '   AND COD_SAFRA = :COD_SAFRA                     ' +
                  '   AND COD_FAZENDA = :COD_FAZENDA                 ' +
                  '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO         ' ;
                ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
                ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
                ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
                ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
                ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
                ParamByName('cod_equipamento').AsInteger := VCOD_EQUIPAMENTO;
                ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
      Execute;
      Free;
    end;
    dm.Sessao.Commit;
    QR_ReboqueOP.Close;
    QR_ReboqueOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
    QR_ReboqueOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
    QR_ReboqueOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    QR_ReboqueOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
    QR_ReboqueOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
    QR_ReboqueOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
    QR_ReboqueOP.Open;
  end;

end;

procedure TF_AlocacaoEquipamento.RzBitBtn15Click(Sender: TObject);
begin
  inherited;
  if not fn_computador_logistica(dm.QR_UnidadeCOD_GRUPO.AsInteger,
                                 dm.QR_UnidadeCOD_REGIONAL.AsInteger,
                                 dm.QR_UnidadeCOD_UNIDADE.AsInteger,
                                 fnc_computador_logado) then
  begin
    Application.MessageBox('Computador n�o autorizado para fazer exclus�o de aloca��es.','Aviso',MB_OK+MB_ICONWARNING);
    Abort;
  end;

   if Application.MessageBox(PChar('Deseja excluir a aloca��o do equipaemnto '+QR_AlocacaoCOD_EQUIPAMENTO.AsString),'Confirma��o',mb_yesno+mb_iconquestion) = idyes then
   begin
    QR_Alocacao.Delete;
   end;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn16Click(Sender: TObject);
begin
  inherited;
  if not fn_computador_logistica(dm.QR_UnidadeCOD_GRUPO.AsInteger,
                                 dm.QR_UnidadeCOD_REGIONAL.AsInteger,
                                 dm.QR_UnidadeCOD_UNIDADE.AsInteger,
                                 fnc_computador_logado) then
  begin
    Application.MessageBox('Computador n�o autorizado para fazer finaliza��o de aloca��es.','Aviso',MB_OK+MB_ICONWARNING);
    Abort;
  end;

   if Application.MessageBox(PChar('Deseja finalizar a aloca��o do equipaemnto '+QR_AlocacaoCOD_EQUIPAMENTO.AsString),'Confirma��o',mb_yesno+mb_iconquestion) = idyes then
   begin
     if not qr_alocacao.IsEmpty then
     begin
       QR_Alocacao.Edit;
       QR_AlocacaoVIAGEM_FINALIZADA.AsString := 'S';
       QR_Alocacao.Post;
     end;
   end;

end;

procedure TF_AlocacaoEquipamento.RzBitBtn1Click(Sender: TObject);
begin
  inherited;
  QR_TemposParametros.Refresh;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn2Click(Sender: TObject);
var valor : integer; letra, chave, validade, check_chave, cnpj : string;
  I : Integer;
begin
  inherited;

  //    InputQuery('Teste','Digite um valor',chave);
    InputQuery('Teste','Digite o prazo de validade',validade);
    InputQuery('Teste','Digite o cnpj',cnpj);
    showmessage('Valor DBID '+Buscar_DadosParaLicenca+
                ' Valor Retornado CripSerie ' + CriptoStr(Buscar_DadosParaLicenca)+
                ' chave ' + CriptoChave(Buscar_DadosParaLicenca,'1',cnpj,Date,StrToInt(validade)));

    InputQuery('Teste','Digite uma Chave',check_chave);

    if DescriptoChave(Buscar_DadosParaLicenca, '1',cnpj,check_chave,0) then
      showmessage('Validou DB_ID')
    else
      showmessage('n�o validou DB_ID');

    if DescriptoChave(Buscar_DadosParaLicenca,'1',cnpj,check_chave,1) then
      showmessage('Validou Data')
    else
      showmessage('n�o validou Data');

    if DescriptoChave(Buscar_DadosParaLicenca,'1',cnpj,check_chave,2) then
      showmessage('Validou CNPJ')
    else
      showmessage('n�o validou CNPJ');

    if DescriptoChave(Buscar_DadosParaLicenca,'1',cnpj,check_chave,4) then
      showmessage('Validou ID Produto')
    else
      showmessage('n�o ID Produto');

    if DescriptoChave(Buscar_DadosParaLicenca,'1',cnpj,check_chave,3) then
      showmessage('Validou Total')
    else
      showmessage('n�o validou Total');
end;

procedure TF_AlocacaoEquipamento.RzBitBtnAtualizarTemposPercursosClick(Sender: TObject);
var  bookMarktipocarga  : TBookMark;
begin
  inherited;
  bookMarktipocarga := QR_TemposRealizados.GetBookmark;

  F_Atualiza_Tempo_Real_Percurso := TF_Atualiza_Tempo_Real_Percurso.Create(Application);
  F_Atualiza_Tempo_Real_Percurso.v_cod_frente    := QR_FrenteFazendasCOD_FRENTE.AsInteger;
  F_Atualiza_Tempo_Real_Percurso.v_cod_fazenda   := QR_FrenteFazendasCOD_FAZENDA.AsInteger;
  F_Atualiza_Tempo_Real_Percurso.v_cod_tipocarga := QR_TemposRealizadosCOD_TIPOCARGA.AsInteger;
  F_Atualiza_Tempo_Real_Percurso.v_desc_tipocarga := QR_TemposRealizadosDESC_TIPOCARGA.AsString;
  F_Atualiza_Tempo_Real_Percurso.v_desc_frente   := QR_FrenteFazendasFRENTE.AsString;
  F_Atualiza_Tempo_Real_Percurso.v_desc_fazenda   := QR_FrenteFazendasFAZENDA.AsString;

  F_Atualiza_Tempo_Real_Percurso.v_top :=  (Self.Top) + trunc(self.Height/2);
  F_Atualiza_Tempo_Real_Percurso.v_left := Self.Left + trunc(self.Width/2);

  F_Atualiza_Tempo_Real_Percurso.ShowModal;

  QR_TemposRealizados.Refresh;

  QR_TemposRealizados.GotoBookmark(bookMarktipocarga);

end;

procedure TF_AlocacaoEquipamento.RzBitBtn3Click(Sender: TObject);
begin
  inherited;
    F_AlteraOrdemPatio := TF_AlteraOrdemPatio.Create(Application);
    F_AlteraOrdemPatio.vtop :=  (Self.Top) + trunc(self.Height/2);
    F_AlteraOrdemPatio.vleft := Self.Left + trunc(self.Width/2);
    F_AlteraOrdemPatio.ShowModal;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn4Click(Sender: TObject);
begin
  inherited;
   QR_Fazenda.Close;
   QR_Fazenda.ParamByName('cod_safra').AsFloat := QR_FrenteCOD_SAFRA.AsFloat;
   QR_Fazenda.ParamByName('cod_frente').AsFloat := QR_FrenteCOD_FRENTE.AsFloat;
   QR_Fazenda.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
   QR_Fazenda.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
   QR_Fazenda.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
   QR_Fazenda.Open;

   QR_FazendasColunas.Close;
   QR_FazendasColunas.ParamByName('cod_safra').AsFloat := QR_FrenteCOD_SAFRA.AsFloat;
   QR_FazendasColunas.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
   QR_FazendasColunas.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
   QR_FazendasColunas.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
   QR_FazendasColunas.Open;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn5Click(Sender: TObject);
 var vcod_equipamento, motivo : integer;
 Local, Observacao, OrdemServico : String;
begin
  inherited;
  if lvCarregOp.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione um equipamento em Opera��o.','Aviso',mb_ok+MB_ICONINFORMATION);
    Abort;
  end;

  vcod_equipamento := lvCarregOp.Selected.StateIndex;

  F_ParadaReboqueCarreg := TF_ParadaReboqueCarreg.Create(Self);

 Local := 'C';
 Motivo := 1;
 Observacao := '';
 OrdemServico := '';

 if F_ParadaReboqueCarreg.Escolha(Local, OrdemServico, Observacao, Motivo) = 'S' then
 begin

  with TOraQuery.Create(Self) do
  begin
    Session := DM.Sessao;
    SQL.Text := 'UPDATE FRENTE_CARREGADEIRA SET DISPONIVEL = ''S'' ' +
                '                            ,CAMPO_OFICINA = ' + QuotedStr(Local) +
                '                              ,OBSERVACAO  = ' + QuotedStr(Observacao) +
                '                              ,COD_MOTIVO  = ' + IntToStr(Motivo) +
                '                            , ORDEMSERVICO = ' + QuotedStr(Ordemservico) +
                '                            , DATA_HORA    = SYSDATE ' +
                '                            , PARADAAUTOMATICA    = ''N'' ' +
                ' WHERE COD_GRUPO = :COD_GRUPO                     ' +
                '   AND COD_REGIONAL = :COD_REGIONAL               ' +
                '   AND COD_UNIDADE = :COD_UNIDADE                 ' +
                '   AND COD_FRENTE = :COD_FRENTE                   ' +
                '   AND COD_SAFRA = :COD_SAFRA                     ' +
                '   AND COD_FAZENDA = :COD_FAZENDA                 ' +
                '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO         ' ;
              ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
              ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
              ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
              ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
              ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
              ParamByName('cod_equipamento').AsInteger := VCOD_EQUIPAMENTO;
              ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    Execute;
    Free;
  end;
  dm.Sessao.Commit;
   QR_CarregadeirasOP.Close;
   QR_CarregadeirasOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_CarregadeirasOP.Open;

   QR_CarregadeirasPA.Close;
   QR_CarregadeirasPA.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_CarregadeirasPA.Open;
 end;
 F_ParadaReboqueCarreg.Release;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn6Click(Sender: TObject);
VAR SQL : String;
    valor : Variant;
begin
  inherited;
     SQL:= 'SELECT e.cod_equipamento "Equipamento", e.descricao "Descricao", t.tipo_cct "Tipo" ' +
           '  FROM equipamento e,                                                              ' +
           '       tipo_equipamento t                                                          ' +
           ' WHERE t.cod_tipoequipamento = e.cod_tipoequipamento                               ' +
           '   AND T.TIPO_CCT IN (''O'',''G'')                                                 ' +
           '   &Macro ';
      valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Equipamentos');
      If valor <> null then
      begin
         if Application.MessageBox(PChar('Deseja alocar o equipamento '
                                         +VarToStr(valor)+' para Frente '+QR_FrenteFazendasCOD_FRENTE.AsString
                                         +' e Fazenda '+QR_FrenteFazendasCOD_FAZENDA.AsString),'Confirma��o',MB_YESNO+MB_ICONQUESTION) = IDYES then
         begin
            with TOraQuery.Create(Self) do
            begin
              Session := DM.Sessao;
              SQL.Text := 'SELECT a.cod_frente, f.descricao            '+
                          '  FROM frente_carregadeira a,               '+
                          '       frente f                             '+
                          ' WHERE a.cod_equipamento = :cod_equipamento '+
                          '   AND f.cod_grupo = a.cod_grupo            '+
                          '   AND f.cod_regional = a.cod_regional      '+
                          '   AND f.cod_unidade = a.cod_unidade        '+
                          '   AND f.cod_frente = a.cod_frente          ';
              ParamByName('cod_equipamento').AsString := VartoStr(valor);
              Open;
              if not IsEmpty then
              begin
                Application.MessageBox(PChar('Equipamento j� alocado para a Frente '+FieldByName('cod_frente').AsString
                                             +' '+FieldByName('descricao').AsString),'Aviso',MB_OK+MB_ICONEXCLAMATION);
                                             Free;
                                             Abort;
              end;
              Free;
            end;

            with TOraQuery.Create(Self) do
            begin
              Session := DM.Sessao;
              SQL.Text := '  INSERT INTO frente_carregadeira VALUES(:COD_GRUPO,       ' +
                          '                                         :COD_REGIONAL,    ' +
                          '                                         :COD_UNIDADE,     ' +
                          '                                         :COD_SAFRA,       ' +
                          '                                         :COD_FRENTE,      ' +
                          '                                         :COD_EQUIPAMENTO, ' +
                          '                                         NULL,             ' +
                          '                                         ''N'',            ' +
                          '                                         NULL,             ' +
                          '                                         NULL,             ' +
                          '                                         SYSDATE,          ' +
                          '                                         :COD_FAZENDA,     ' +
                          '                                         '''',             ' +
                          '                                         NULL)             ' ;
              ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
              ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
              ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
              ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
              ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
              ParamByName('cod_equipamento').AsString := VarToStr(valor);
              ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
              Execute;
              Free;
            end;
            dm.Sessao.Commit;
            QR_CarregadeirasOP.Close;
            QR_CarregadeirasOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
            QR_CarregadeirasOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
            QR_CarregadeirasOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
            QR_CarregadeirasOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
            QR_CarregadeirasOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
            QR_CarregadeirasOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
            QR_CarregadeirasOP.Open;
         end;
      end;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn7Click(Sender: TObject);
var vcod_equipamento, Motivo : integer;
  Observacao, Local, Ordemservico : String;
begin
  inherited;

  if lvCarregPa.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione um equipamento que est� em Parada.','Aviso',mb_ok+MB_ICONINFORMATION);
    Abort;
  end;


  vcod_equipamento := lvCarregPa.Selected.StateIndex;

  with TOraQuery.Create(Self) do
  begin
    Session := DM.Sessao;
    SQL.Text := 'UPDATE FRENTE_CARREGADEIRA SET DISPONIVEL  = ''N'' ' +
                '                            ,CAMPO_OFICINA = ''C'' ' +
                '                              ,OBSERVACAO  = ''''  ' +
                '                              ,COD_MOTIVO  = ''''  ' +
                '                            , DATA_HORA    = SYSDATE ' +
                '                            , ORDEMSERVICO = '''' ' +
                ' WHERE COD_GRUPO = :COD_GRUPO                     ' +
                '   AND COD_REGIONAL = :COD_REGIONAL               ' +
                '   AND COD_UNIDADE = :COD_UNIDADE                 ' +
                '   AND COD_FRENTE = :COD_FRENTE                   ' +
                '   AND COD_SAFRA = :COD_SAFRA                     ' +
                '   AND COD_FAZENDA = :COD_FAZENDA                 ' +
                '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO         ' ;
              ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
              ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
              ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
              ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
              ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
              ParamByName('cod_equipamento').AsInteger := VCOD_EQUIPAMENTO;
              ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    Execute;
    Free;
  end;
  dm.Sessao.Commit;
   QR_CarregadeirasOP.Close;
   QR_CarregadeirasOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_CarregadeirasOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_CarregadeirasOP.Open;

   QR_CarregadeirasPA.Close;
   QR_CarregadeirasPA.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_CarregadeirasPA.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_CarregadeirasPA.Open;
end;

procedure TF_AlocacaoEquipamento.RzBitBtn8Click(Sender: TObject);
var vcod_equipamento, Motivo : Integer;
    Local, Observacao,  OrdemServico : String;
begin
  inherited;
  if lvReboqOp.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione um equipamento que est� em opera��o.','Aviso',mb_ok+MB_ICONINFORMATION);
    Abort;
  end;


  vcod_equipamento := lvReboqOp.Selected.StateIndex;


  F_ParadaReboqueCarreg := TF_ParadaReboqueCarreg.Create(Self);

 Local := 'C';
 Motivo := 1;
 Observacao := '';
 OrdemServico := '';

 if F_ParadaReboqueCarreg.Escolha(Local,OrdemServico, Observacao, Motivo) = 'S' then
 begin

  with TOraQuery.Create(Self) do
  begin
    Session := DM.Sessao;
    SQL.Text := 'UPDATE FRENTE_REBOQUE SET DISPONIVEL = ''S'' ' +
                '                            ,CAMPO_OFICINA = ' + QuotedStr(Local) +
                '                              ,OBSERVACAO  = ' + QuotedStr(Observacao) +
                '                              ,COD_MOTIVO  = ' + IntToStr(Motivo) +
                '                            , ORDEMSERVICO = ' + QuotedStr(Ordemservico) +
                '                            , DATA_HORA    = SYSDATE ' +
                '                            , PARADAAUTOMATICA    = ''N'' ' +
                ' WHERE COD_GRUPO = :COD_GRUPO                     ' +
                '   AND COD_REGIONAL = :COD_REGIONAL               ' +
                '   AND COD_UNIDADE = :COD_UNIDADE                 ' +
                '   AND COD_FRENTE = :COD_FRENTE                   ' +
                '   AND COD_SAFRA = :COD_SAFRA                     ' +
                '   AND COD_FAZENDA = :COD_FAZENDA                 ' +
                '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO         ' ;
              ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
              ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
              ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
              ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
              ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
              ParamByName('cod_equipamento').AsInteger := VCOD_EQUIPAMENTO;
              ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
    Execute;
    Free;
  end;
  dm.Sessao.Commit;
   QR_ReboqueOP.Close;
   QR_ReboqueOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_ReboqueOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_ReboqueOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_ReboqueOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_ReboqueOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_ReboqueOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_ReboqueOP.Open;

   QR_reboquePA.Close;
   QR_reboquePA.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_reboquePA.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
   QR_reboquePA.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
   QR_reboquePA.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_reboquePA.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_reboquePA.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_reboquePA.Open;
 end;
 F_ParadaReboqueCarreg.Release;

end;

procedure TF_AlocacaoEquipamento.RzBitBtn9Click(Sender: TObject);
var SQL : String;
    valor : Variant;
begin
  inherited;
     SQL:= 'SELECT e.cod_equipamento "Equipamento", e.descricao "Descricao", t.tipo_cct "Tipo" ' +
           '  FROM equipamento e,                                                              ' +
           '       tipo_equipamento t                                                          ' +
           ' WHERE t.cod_tipoequipamento = e.cod_tipoequipamento                               ' +
           '   AND T.TIPO_CCT IN (''R'')                                                 ' +
           '  &Macro ';
      valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Equipamentos');
      If valor <> null then
      begin
         if Application.MessageBox(PChar('Deseja alocar o equipamento '
                                         +VarToStr(valor)+' para Frente '+QR_FrenteFazendasCOD_FRENTE.AsString
                                         +' e Fazenda '+QR_FrenteFazendasCOD_FAZENDA.AsString),'Confirma��o',MB_YESNO+MB_ICONQUESTION) = IDYES then
         begin
            with TOraQuery.Create(Self) do
            begin
              Session := DM.Sessao;
              SQL.Text := 'SELECT a.cod_frente, f.descricao            '+
                          '  FROM frente_reboque      a,               '+
                          '       frente f                             '+
                          ' WHERE a.cod_equipamento = :cod_equipamento '+
                          '   AND f.cod_grupo = a.cod_grupo            '+
                          '   AND f.cod_regional = a.cod_regional      '+
                          '   AND f.cod_unidade = a.cod_unidade        '+
                          '   AND f.cod_frente = a.cod_frente          ';
              ParamByName('cod_equipamento').AsString := VartoStr(valor);
              Open;
              if not IsEmpty then
              begin
                Application.MessageBox(PChar('Equipamento j� alocado para a Frente '+FieldByName('cod_frente').AsString
                                             +' '+FieldByName('descricao').AsString),'Aviso',MB_OK+MB_ICONEXCLAMATION);
                                             Free;
                                             Abort;
              end;
              Free;
            end;

            with TOraQuery.Create(Self) do
            begin
              Session := DM.Sessao;
              SQL.Text := '  INSERT INTO frente_reboque      VALUES(:COD_GRUPO,       ' +
                          '                                         :COD_REGIONAL,    ' +
                          '                                         :COD_UNIDADE,     ' +
                          '                                         :COD_SAFRA,       ' +
                          '                                         :COD_FRENTE,      ' +
                          '                                         :COD_FAZENDA,     ' +
                          '                                         :COD_EQUIPAMENTO, ' +
                          '                                         NULL,             ' +
                          '                                         ''N'',            ' +
                          '                                         NULL,             ' +
                          '                                         NULL,             ' +
                          '                                         SYSDATE,          ' +
                          '                                         '''',             ' +
                          '                                         NULL)             ' ;
              ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
              ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
              ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
              ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
              ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
              ParamByName('cod_equipamento').AsString := VarToStr(valor);
              ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
              Execute;
              Free;
            end;
            dm.Sessao.Commit;
            QR_ReboqueOP.Close;
            QR_ReboqueOP.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
            QR_ReboqueOP.ParamByName('cod_frente').AsFloat := QR_FrenteFazendasCOD_FRENTE.AsFloat;
            QR_ReboqueOP.ParamByName('cod_fazenda').AsFloat := QR_FrenteFazendasCOD_FAZENDA.AsFloat;
            QR_ReboqueOP.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
            QR_ReboqueOP.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
            QR_ReboqueOP.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
            QR_ReboqueOP.Open;
         end;
      end;

end;

procedure TF_AlocacaoEquipamento.RzBtnNovaAlocacaoClick(Sender: TObject);
begin
  inherited;

  F_GravarAlocacao.tipo_alocacao := 'M';//manual
  F_GravarAlocacao.ftop :=  (Self.Top) + trunc(self.Height/2);
  F_GravarAlocacao.fleft := Self.Left + trunc(self.Width/2);
  F_GravarAlocacao.Show;

end;

procedure TF_AlocacaoEquipamento.RzSpinButtons1DownLeftClick(Sender: TObject);
begin
  inherited;
  if (cxDBVerticalGrid2.TopVisibleRowIndex + 1) <= cxDBVerticalGrid2.ViewInfo.VisibleRowCount then
      cxDBVerticalGrid2.TopVisibleRowIndex := cxDBVerticalGrid2.TopVisibleRowIndex + 1;
end;

procedure TF_AlocacaoEquipamento.RzSpinButtons1UpRightClick(Sender: TObject);
begin
  inherited;
  if (cxDBVerticalGrid2.TopVisibleRowIndex - 1) >= 0 then
      cxDBVerticalGrid2.TopVisibleRowIndex := cxDBVerticalGrid2.TopVisibleRowIndex - 1;
end;

procedure TF_AlocacaoEquipamento.TM_AlocarPendenciaTimer(Sender: TObject);
begin
  inherited;
  if CheckBox2.Checked then
  begin
    If not F_GravarAlocacao.Active then
        Alocacao_Pendente;
  end;

end;

procedure TF_AlocacaoEquipamento.TM_AtualizaDadosTimer(Sender: TObject);
begin
  inherited;
   QR_Alocacao.Refresh;
   QR_AlocacaoPatio.Close;
   QR_AlocacaoPatio.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_AlocacaoPatio.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_AlocacaoPatio.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_AlocacaoPatio.Open;

   RzBitBtn3.Enabled := not QR_AlocacaoPatio.IsEmpty;

   QR_ProxFrentesPatio.Close;
   QR_ProxFrentesPatio.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_ProxFrentesPatio.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_ProxFrentesPatio.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_ProxFrentesPatio.Open;

  QR_FrentesLiberadas.Close;
  QR_FrentesLiberadas.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_FrentesLiberadas.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_FrentesLiberadas.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_FrentesLiberadas.Open;

  QR_FrenteExcesso.Close;
  QR_FrenteExcesso.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_FrenteExcesso.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_FrenteExcesso.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_FrenteExcesso.Open;

   QR_FazendasColunas.Close;
   QR_FazendasColunas.ParamByName('cod_safra').AsFloat := QR_FrenteCOD_SAFRA.AsFloat;
   QR_FazendasColunas.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
   QR_FazendasColunas.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
   QR_FazendasColunas.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
   QR_FazendasColunas.Open;

end;

end.
