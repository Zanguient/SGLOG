unit U_RotasFazenda_Mapas;

//-------------------------------------------------------------------------------------------------
// Data : 09/02/2012
// Desenvolvedor : P2
// Descri��o Fun��o/Procedure/Tela : Rotas Fazenda, ferramenta para gerenciar e criar novas rotas
// a partir de equipamentos monitorados, baseado em entrada de cana e fazendas liberadas para
// colheita. O sistema de rotas � a base do log�stica espacial.
///ALTERA��ES --------------------------------------------------------------------------------------
// Data :					Descri��o da mudan�a
//
///-------------------------------------------------------------------------------------------------

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzButton,
  Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, cxButtonEdit, cxDBLookupComboBox, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.DBCtrls, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  Vcl.OleCtrls, SHDocVw, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzTabs, Vcl.Buttons,
  RzGroupBar, DBAccess, Ora, MemDS, superobject, cxContainer, cxImage,
  wwdbdatetimepicker, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TF_RotasFazenda_Mapas = class(TF_TemplateConsulta)
    QR_Frente: TOraQuery;
    DS_Frente: TOraDataSource;
    QR_FrenteCOD_GRUPO: TFloatField;
    QR_FrenteCOD_REGIONAL: TFloatField;
    QR_FrenteCOD_UNIDADE: TFloatField;
    QR_FrenteCOD_SAFRA: TFloatField;
    QR_FrenteCOD_FRENTE: TFloatField;
    QR_FrenteCOD_FAZENDA: TFloatField;
    QR_FrenteDESCRICAO: TStringField;
    QR_FrenteTRANSPORTE_LIBERADO: TStringField;
    QR_FrentePOSSUIROTA: TStringField;
    QR_GerenciamentoRotas: TOraQuery;
    QR_GerenciamentoRotasCOD_ROTA: TFloatField;
    QR_GerenciamentoRotasDESCRICAO: TStringField;
    QR_GerenciamentoRotasCOD_FAZENDA: TIntegerField;
    QR_GerenciamentoRotasZONA: TIntegerField;
    QR_GerenciamentoRotasDATAHORA_INICIO: TDateTimeField;
    QR_GerenciamentoRotasOBSERVACAO: TStringField;
    QR_GerenciamentoRotasDATAHORA_FIM: TDateTimeField;
    QR_GerenciamentoRotasATIVO: TStringField;
    QR_GerenciamentoRotasVISUALIZA: TStringField;
    QR_GerenciamentoRotasCOR_TRAJETO_IDA: TStringField;
    QR_GerenciamentoRotasCOR_TRAJETO_VOLTA: TStringField;
    DS_GerenciamentoRotas: TOraDataSource;
    DS_EntradaCana: TOraDataSource;
    QR_EntradaCana: TOraQuery;
    QR_PreRotaPontos: TOraQuery;
    QR_PreRotaPontosCOD_PRE_ROTA: TFloatField;
    QR_PreRotaPontosSEQUENCIA: TIntegerField;
    QR_PreRotaPontosPONTO_INTERESSE: TStringField;
    QR_PreRotaPontosTEXTO_BORDO: TStringField;
    QR_PreRotaPontosTEXTO_BORDO2: TStringField;
    QR_PreRotaPontosDESCRICAO_DETALHADA: TStringField;
    QR_PreRotaPontosDISTANCIA_AVISO: TFloatField;
    QR_PreRotaPontosDATA: TDateTimeField;
    QR_PreRotaPontosDISTANCIA_TOTAL_ULT_PTO: TFloatField;
    DS_PreRotaPontos: TOraDataSource;
    DS_ResumoRota: TOraDataSource;
    QR_ResumoRota: TOraQuery;
    QR_ResumoRotaCOD_ENTRADACANA: TFloatField;
    QR_ResumoRotaEQUIPAMENTO: TStringField;
    QR_ResumoRotaDATASAIDAINDUSTRIA: TDateTimeField;
    QR_ResumoRotaDATACHEGADAFAZENDA: TDateTimeField;
    QR_ResumoRotaDATASAIDAFAZENDA: TDateTimeField;
    QR_ResumoRotaDATACHEGADAINDUSTRIA: TDateTimeField;
    QR_ResumoRotaQTDEPONTOSMONITORADOS: TFloatField;
    QR_ResumoRotaQTDEPONTOSINSTRUMENTADOS: TFloatField;
    ColorDialog1: TColorDialog;
    QR_InformacoesIniciais: TOraQuery;
    QR_InformacoesIniciaisINFORMACOESINICIAISJSON: TMemoField;
    tmVisualizaRotaPontoaPontoEntradaCana: TTimer;
    DS_HorarioTalhaoDistanciaRotaEntradaCana: TOraDataSource;
    QR_HorarioTalhaoDistanciaRotaEntradaCana: TOraQuery;
    QR_HorarioTalhaoDistanciaRotaEntradaCanaHORA_INICIAL: TStringField;
    QR_HorarioTalhaoDistanciaRotaEntradaCanaHORARIO: TStringField;
    SP_GeraRotas: TOraStoredProc;
    SP_BuscaHTMLRota: TOraStoredProc;
    SP_VisualizaRota: TOraStoredProc;
    SP_Gera_PreRota: TOraStoredProc;
    SP_AnalisePreRota: TOraStoredProc;
    SP_ConfirmaRota: TOraStoredProc;
    QR_AvisoDistancia: TOraQuery;
    QR_AvisoDistanciaCODIGO: TFloatField;
    QR_AvisoDistanciaDESCRICAO: TStringField;
    DS_AvisoDistancia: TOraDataSource;
    RzPgRotas: TRzPageControl;
    rzPageControlUnidadesMoagem: TRzPageControl;
    tsRotasPrincipal: TRzTabSheet;
    Panel4: TPanel;
    tsRotasGerenciamentoRotas: TRzTabSheet;
    RzPanel3: TRzPanel;
    RzSplitter1: TRzSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1POSSUIROTA: TcxGridDBColumn;
    cxGrid1DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_FAZENDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1VISUALIZA: TcxGridDBColumn;
    cxGrid2DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid2DBTableView1COD_ROTA: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1ZONA: TcxGridDBColumn;
    cxGrid2DBTableView1DATAHORA_INICIO: TcxGridDBColumn;
    cxGrid2DBTableView1DATAHORA_FIM: TcxGridDBColumn;
    cxGrid2DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid2DBTableView1COR_TRAJETO_IDA: TcxGridDBColumn;
    cxGrid2DBTableView1COR_TRAJETO_VOLTA: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    tsRotasGerarRotasEntradaCana: TRzTabSheet;
    RzPanel7: TRzPanel;
    btnCriarNovasRotas_EntradaCana: TRzBitBtn;
    btnGerenciarRotasExistentes: TRzBitBtn;
    RzPanel1: TRzPanel;
    RzPgNovaRota_EntradaCana: TRzPageControl;
    tsNovaRotaEscolhaFrente: TRzTabSheet;
    RzPanel8: TRzPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid3DBTableView1COD_FAZENDA: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid3DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    tsNovaRotaVisualizaViagem: TRzTabSheet;
    RzPanel9: TRzPanel;
    RzSplitter3: TRzSplitter;
    Panel7: TPanel;
    Panel8: TPanel;
    rzBtnPararRotaPontoaPonto: TRzBitBtn;
    pnVisualizaRotaPontoaPonto: TPanel;
    rzBtnVisualizarPontoaPonto: TRzBitBtn;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1COD_EQUIPAMENTO: TcxGridDBColumn;
    cxGrid4DBTableView1COD_ENTRADACANA: TcxGridDBColumn;
    cxGrid4DBTableView1DATAMOVIMENTO: TcxGridDBColumn;
    cxGrid4DBTableView1DATA_SAIDA: TcxGridDBColumn;
    cxGrid4DBTableView1DATA_CHEGADA: TcxGridDBColumn;
    cxGrid4DBTableView1QTDEPONTOSESPACIAL: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    Panel17: TPanel;
    wbVisualizarViagem: TWebBrowser;
    tsNovaRotaSelecaoPontos: TRzTabSheet;
    RzPanel10: TRzPanel;
    Panel12: TPanel;
    RzSplitter4: TRzSplitter;
    Panel13: TPanel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5DBTableView1SEQUENCIA: TcxGridDBColumn;
    cxGrid5DBTableView1PONTO_INTERESSE: TcxGridDBColumn;
    cxGrid5DBTableView1TEXTO_BORDO: TcxGridDBColumn;
    cxGrid5DBTableView1TEXTO_BORDO2: TcxGridDBColumn;
    cxGrid5DBTableView1DATA: TcxGridDBColumn;
    cxGrid5DBTableView1DISTANCIA_TOTAL_ULT_PTO: TcxGridDBColumn;
    cxGrid5DBTableView1DISTANCIA_AVISO: TcxGridDBColumn;
    cxGrid5DBTableView1DESCRICAO_DETALHADA: TcxGridDBColumn;
    cxGrid5Level1: TcxGridLevel;
    Panel15: TPanel;
    rzBtnGerarPreRota: TRzBitBtn;
    rzBtnAnalisePreRota: TRzBitBtn;
    Panel18: TPanel;
    wbSelecaoPontos: TWebBrowser;
    tsNovaRotaConfirmaRota: TRzTabSheet;
    RzPanel11: TRzPanel;
    RzPanel12: TRzPanel;
    RzGroupBox4: TRzGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    pnNavegacaoNovaRotaEntradaCana: TPanel;
    QR_EntradaCanaCOD_GRUPO: TFloatField;
    QR_EntradaCanaCOD_REGIONAL: TFloatField;
    QR_EntradaCanaCOD_UNIDADE: TFloatField;
    QR_EntradaCanaCOD_EQUIPAMENTO: TFloatField;
    QR_EntradaCanaCOD_ENTRADACANA: TFloatField;
    QR_EntradaCanaDATA_MOVIMENTO: TDateTimeField;
    QR_EntradaCanaDATA_SAIDA: TDateTimeField;
    QR_EntradaCanaDATA_CHEGADA: TDateTimeField;
    QR_EntradaCanaQTDEPONTOSESPACIAL: TFloatField;
    Panel10: TPanel;
    RzPanel13: TRzPanel;
    wwDBComboBoxHorarioTalhaoDistancia: TwwDBComboBox;
    cxImage1: TcxImage;
    RzGroupBox5: TRzGroupBox;
    RzPanel14: TRzPanel;
    rzPnCorTrajetoIda: TRzPanel;
    imgCorTrajetoIda: TImage;
    rzPnCorTrajetoVolta: TRzPanel;
    imgCorTrajetoVolta: TImage;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzPanel15: TRzPanel;
    RzGroupBox6: TRzGroupBox;
    rzBtnConfirmaRota: TRzBitBtn;
    memoDescricaoRota: TMemo;
    RzPanel16: TRzPanel;
    btnProximoGeraRotaEntradaCana: TRzBitBtn;
    btnAnteriorGeraRotaEntradaCana: TRzBitBtn;
    tsRotasGerarRotasAvulsas: TRzTabSheet;
    RzPanel17: TRzPanel;
    RzPgNovaRota_Avulso: TRzPageControl;
    tsNovaRotaAvulsaSelecaoInfo: TRzTabSheet;
    pnNavegacaoNovaRotaAvulsa: TPanel;
    btnProximoGeraRotaAvulsa: TRzBitBtn;
    btnAnteriorGeraRotaAvulsa: TRzBitBtn;
    RzSizePanel1: TRzSizePanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    btnPesquisa_Equipamentos: TSpeedButton;
    Label3: TLabel;
    btnPesquisa_Fazendas: TSpeedButton;
    Label4: TLabel;
    edtCodEquipamento: TwwDBEdit;
    edtCodFazenda: TwwDBEdit;
    edtNomeFazenda: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    cxGrid6: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    RzPanel18: TRzPanel;
    wbVisualizarTrajetoRotaAvulsa: TWebBrowser;
    QR_VisualizarTrajetoRotaAvulsa: TOraQuery;
    QR_VisualizarTrajetoRotaAvulsaSEQUENCIA: TFloatField;
    QR_VisualizarTrajetoRotaAvulsaDATA: TDateTimeField;
    Label6: TLabel;
    DS_VisualizarTrajetoRotaAvulsa: TOraDataSource;
    cxGridDBTableView1SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    SP_VisualizaTrajetoRotaAvulsa: TOraStoredProc;
    btnCriarNovasRotas_Avulso: TRzBitBtn;
    RzPanel19: TRzPanel;
    RzPanel20: TRzPanel;
    tsNovaRotaAvulsaSelecaoPontos: TRzTabSheet;
    Panel14: TPanel;
    RzBitBtnVisualizarTrajetoAvulso: TRzBitBtn;
    RzBitBtnVisualizarPontoaPontoAvulso: TRzBitBtn;
    RzBitBtnPararPontoaPontoAvulso: TRzBitBtn;
    tmVisualizaRotaPontoaPontoAvulso: TTimer;
    QR_VisualizarTrajetoRotaAvulsaQTDETOTALREGISTROS: TFloatField;
    Panel16: TPanel;
    RzPanel21: TRzPanel;
    RzSplitter2: TRzSplitter;
    Panel19: TPanel;
    wbSelecaoPontosRotaAvulsa: TWebBrowser;
    Panel20: TPanel;
    rzBtnGerarPreRotaAvulsa: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    Panel21: TPanel;
    RzPanel22: TRzPanel;
    wwDBComboBoxHorarioTalhaoDistanciaAvulsa: TwwDBComboBox;
    cxGrid7: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label13: TLabel;
    edtZona: TwwDBEdit;
    QR_HorarioTalhaoDistanciaRotaAvulsa: TOraQuery;
    DS_HorarioTalhaoDistanciaRotaAvulsa: TOraDataSource;
    QR_HorarioTalhaoDistanciaRotaAvulsaHORA_INICIAL: TStringField;
    QR_HorarioTalhaoDistanciaRotaAvulsaHORARIO: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel22: TPanel;
    Panel23: TPanel;
    RzPanel24: TRzPanel;
    QR_PercursoRota: TOraQuery;
    DS_PercursoRota: TOraDataSource;
    cxGrid8: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    QR_PercursoRotaAGRUPAMENTOTIPOPERCURSO: TFloatField;
    QR_PercursoRotaCOD_TIPOPERCURSO: TFloatField;
    QR_PercursoRotaTIPOPERCURSO: TStringField;
    QR_PercursoRotaTIPO: TStringField;
    QR_PercursoRotaDISTANCIA: TFloatField;
    cxGridDBTableView3COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGridDBTableView3TIPOPERCURSO: TcxGridDBColumn;
    cxGridDBTableView3TIPO: TcxGridDBColumn;
    cxGridDBTableView3DISTANCIA: TcxGridDBColumn;
    QR_PercursoRotaSEQUENCIA: TFloatField;
    cxGridDBTableView3SEQUENCIA: TcxGridDBColumn;
    cxGrid9: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    RzPanel25: TRzPanel;
    wwDBComboBox2: TwwDBComboBox;
    QR_Talhoes: TOraQuery;
    DS_Talhoes: TOraDataSource;
    QR_TalhoesCOD_SAFRA: TFloatField;
    QR_TalhoesCOD_GRUPO: TFloatField;
    QR_TalhoesCOD_REGIONAL: TFloatField;
    QR_TalhoesCOD_UNIDADE: TFloatField;
    QR_TalhoesCOD_FAZENDA: TFloatField;
    QR_TalhoesZONA: TFloatField;
    QR_TalhoesCOD_TALHAO: TFloatField;
    QR_PercursoCadastrado: TOraQuery;
    DS_PercursoCadastrado: TOraDataSource;
    QR_PercursoCadastradoSEQUENCIA: TFloatField;
    QR_PercursoCadastradoCOD_TIPOPERCURSO: TFloatField;
    QR_PercursoCadastradoDESCRICAO: TStringField;
    QR_PercursoCadastradoTRAJETO: TStringField;
    QR_PercursoCadastradoDISTANCIA: TFloatField;
    QR_TalhoesDATAHORA_INI: TDateTimeField;
    QR_TalhoesHORA_INICIAL: TStringField;
    cxGridDBTableView4SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView4COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGridDBTableView4DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView4TRAJETO: TcxGridDBColumn;
    cxGridDBTableView4DISTANCIA: TcxGridDBColumn;
    tsNovaRotaAvulsaGeraInfoTemp: TRzTabSheet;
    Panel24: TPanel;
    RzSplitter5: TRzSplitter;
    RzPanel23: TRzPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    RzPanel26: TRzPanel;
    Panel27: TPanel;
    cxGrid10: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    btnRotaAvulsaSaidaUsina: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzPanel27: TRzPanel;
    tsRotasGerarRotasAvulsasBasic: TRzTabSheet;
    RzPanel28: TRzPanel;
    btnCriarNovasRotas_AvulsoBasic: TRzBitBtn;
    RzSizePanel2: TRzSizePanel;
    Panel28: TPanel;
    RzPgNovaRota_Avulso_Basic: TRzPageControl;
    tsNovaRotaAvulsaBasicSelecaoInfo: TRzTabSheet;
    RzPanel29: TRzPanel;
    RzPanel30: TRzPanel;
    RzPanel31: TRzPanel;
    Panel29: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtCodEquipamentoRotaAvulsaBasic: TwwDBEdit;
    edtCodFazendaRotaAvulsaBasic: TwwDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Panel30: TPanel;
    RzBitBtnVisualizarTrajetoAvulsoBasic: TRzBitBtn;
    RzBitBtnVisualizarPontoaPontoAvulsoBasic: TRzBitBtn;
    RzBitBtnPararPontoaPontoAvulsoBasic: TRzBitBtn;
    cxGrid11: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    pnNavegacaoNovaRotaAvulsaBasic: TPanel;
    btnProximoGeraRotaAvulsaBasic: TRzBitBtn;
    btnAnteriorGeraRotaAvulsaBasic: TRzBitBtn;
    wbVisualizarTrajetoRotaAvulsaBasic: TWebBrowser;
    tsNovaRotaAvulsaGeraInfoTempBasic: TRzTabSheet;
    RzPanel32: TRzPanel;
    Panel31: TPanel;
    RzPanel33: TRzPanel;
    Panel32: TPanel;
    btnEntradaUsinaCriarRotaAvulsaBasic: TRzBitBtn;
    btnSaidaFazendaCriarRotaAvulsaBasic: TRzBitBtn;
    btnEntradaFazendaCriarRotaAvulsaBasic: TRzBitBtn;
    btnSaidaUsinaCriarRotaAvulsaBasic: TRzBitBtn;
    Panel33: TPanel;
    cxGrid12: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    RzPanel34: TRzPanel;
    SP_GeraPreRotaTMP_Avulsa: TOraStoredProc;
    QR_PreRotaTMP_Basic: TOraQuery;
    QR_PreRotaTMP_BasicSEQUENCIA: TFloatField;
    QR_PreRotaTMP_BasicTEXTO_BORDO: TStringField;
    QR_PreRotaTMP_BasicTEXTO_BORDO2: TStringField;
    QR_PreRotaTMP_BasicDESCRICAO_DETALHADA: TStringField;
    QR_PreRotaTMP_BasicLATITUDE_MAPS: TFloatField;
    QR_PreRotaTMP_BasicLONGITUDE_MAPS: TFloatField;
    QR_PreRotaTMP_BasicDISTANCIA_MAXIMA_ULT_PONTO: TFloatField;
    QR_PreRotaTMP_BasicDISTANCIA_AVISO: TFloatField;
    QR_PreRotaTMP_BasicTIPO: TStringField;
    QR_PreRotaTMP_BasicDISTANCIA_TOTAL_ULT_PTO: TFloatField;
    QR_PreRotaTMP_BasicDISTANCIA_TOTAL_PTO_ATUAL: TFloatField;
    QR_PreRotaTMP_BasicSEQ_MONITORAMENTO: TFloatField;
    QR_PreRotaTMP_BasicPONTOS_INTERESSE: TStringField;
    QR_PreRotaTMP_BasicPONTO_INTERESSE: TStringField;
    QR_PreRotaTMP_BasicCOD_TIPOPERCURSO: TFloatField;
    QR_PreRotaTMP_BasicAGRUPAMENTOTIPOPERCURSO: TFloatField;
    DS_PreRotaTMP_Basic: TOraDataSource;
    cxGridDBTableView5SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView5PONTOS_INTERESSE: TcxGridDBColumn;
    cxGridDBTableView5PONTO_INTERESSE: TcxGridDBColumn;
    cxGridDBTableView7SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView7PONTO_INTERESSE: TcxGridDBColumn;
    cxGridDBTableView7DESCRICAO_DETALHADA: TcxGridDBColumn;
    btnReiniciarMarcacaoCriarRotaAvulsaBasic: TRzBitBtn;
    tmVisualizaRotaPontoaPontoAvulsoBasic: TTimer;
    SP_ReiniciaPreRotaTMP_Avulsa: TOraStoredProc;
    tsNovaRotaAvulsaTipoPercursoTempBasic: TRzTabSheet;
    RzPanel35: TRzPanel;
    Panel34: TPanel;
    RzPanel36: TRzPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    cxGrid13: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    RzPanel37: TRzPanel;
    cxGridDBTableView8SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView8DESCRICAO_DETALHADA: TcxGridDBColumn;
    QR_TipoPercurso: TOraQuery;
    DS_TipoPercurso: TOraDataSource;
    QR_TipoPercursoCOD_TIPOPERCURSO: TFloatField;
    QR_TipoPercursoDESCRICAO: TStringField;
    Panel37: TPanel;
    QR_PreRotaTMP_BasicDESCRICAOTIPOPERCURSO: TStringField;
    cxGridDBTableView8DESCRICAOTIPOPERCURSO: TcxGridDBColumn;
    btnLimparSelecaoCriarRotaAvulsaBasi: TRzBitBtn;
    btnSelecionarTodosPontosCriarRotaAvulsaBasi: TRzBitBtn;
    btnAsfaltoCriarRotaAvulsaBasi: TRzBitBtn;
    cbTipoPercursoCriarRotaAvulsaBasic: TComboBox;
    QR_PreRotaTMP_BasicQTDEREGISTROSSEMPERCURSO: TFloatField;
    tsNovaRotaAvulsaPontosInteresseTempBasic: TRzTabSheet;
    RzPanel38: TRzPanel;
    Panel38: TPanel;
    RzPanel39: TRzPanel;
    Panel39: TPanel;
    RzPanel40: TRzPanel;
    edtTexto1BordoCriarRotaAvulsaBasic: TwwDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    edtTexto2BordoCriarRotaAvulsaBasic: TwwDBEdit;
    Label20: TLabel;
    edtDescricaoPontoInteresseCriarRotaAvulsaBasic: TwwDBEdit;
    cxGrid14: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    btnGravarInformacoesCriarRotaAvulsaBasic: TRzBitBtn;
    btnLimparInformacoesCriarRotaAvulsaBasic: TRzBitBtn;
    Label21: TLabel;
    Label22: TLabel;
    cxGridDBTableView9SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView9TEXTO_BORDO: TcxGridDBColumn;
    cxGridDBTableView9TEXTO_BORDO2: TcxGridDBColumn;
    cxGridDBTableView9DESCRICAO_DETALHADA: TcxGridDBColumn;
    tsNovaRotaResumoConfirmacaoInformacoesBasic: TRzTabSheet;
    RzPanel41: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzPanel42: TRzPanel;
    pnCorTrajetoIdaCriarNovaRotaAvulsaBasic: TRzPanel;
    pnCorTrajetoVoltaCriarNovaRotaAvulsaBasic: TRzPanel;
    imgTrajetoVoltaCriarNovaRotaAvulsaBasic: TImage;
    RzPanel45: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    memoDescricaoRotaCriarNovaRotaAvulsaBasic: TMemo;
    btnConfirmaRotaCriarNovaRotaAvulsaBasic: TRzBitBtn;
    RzPanel46: TRzPanel;
    imgTrajetoIdaCriarNovaRotaAvulsaBasic: TImage;
    SP_ConfirmaRotaAvulsaBasic: TOraStoredProc;
    QR_DistanciaAviso: TOraQuery;
    QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO: TFloatField;
    QR_DistanciaAvisoDISTANCIA: TFloatField;
    QR_DistanciaAvisoPADRAO: TStringField;
    QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO: TFloatField;
    cxGridDBTableView9DISTANCIA_AVISO_DETALHADO: TcxGridDBColumn;
    cbDistanciaAvisoCriarRotaAvulsaBasic: TComboBox;
    QR_TipoPercursoVELOCIDADE_MAXIMA_PADRAO: TFloatField;
    RzSplitter6: TRzSplitter;
    Panel40: TPanel;
    RzPanel43: TRzPanel;
    Panel41: TPanel;
    RzPanel44: TRzPanel;
    cxGrid15: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    QR_GerenciamentoRotasPontos: TOraQuery;
    DS_GerenciamentoRotasPontos: TOraDataSource;
    QR_GerenciamentoRotasPontosCOD_ROTA: TFloatField;
    QR_GerenciamentoRotasPontosSEQUENCIA: TFloatField;
    QR_GerenciamentoRotasPontosTEXTO_BORDO: TStringField;
    QR_GerenciamentoRotasPontosTEXTO_BORDO2: TStringField;
    QR_GerenciamentoRotasPontosDESCRICAO_DETALHADA: TStringField;
    QR_GerenciamentoRotasPontosLATITUDE: TFloatField;
    QR_GerenciamentoRotasPontosLONGITUDE: TFloatField;
    QR_GerenciamentoRotasPontosTIPO: TStringField;
    QR_GerenciamentoRotasPontosLINHA: TFloatField;
    QR_GerenciamentoRotasPontosTRAJETO: TStringField;
    cxGridDBTableView10TEXTO_BORDO: TcxGridDBColumn;
    cxGridDBTableView10TEXTO_BORDO2: TcxGridDBColumn;
    cxGridDBTableView10DESCRICAO_DETALHADA: TcxGridDBColumn;
    cxGridDBTableView10LINHA: TcxGridDBColumn;
    cxGridDBTableView10TRAJETO: TcxGridDBColumn;
    RzPanel47: TRzPanel;
    RzPanel48: TRzPanel;
    cxGrid16: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    QR_GerenciamentoRotasPontosTipoCarga: TOraQuery;
    DS_GerenciamentoRotasPontosTipoCarga: TOraDataSource;
    QR_GerenciamentoRotasPontosTipoCargaCOD_ROTA: TFloatField;
    QR_GerenciamentoRotasPontosTipoCargaSEQUENCIA: TFloatField;
    QR_GerenciamentoRotasPontosTipoCargaTIPO: TStringField;
    QR_GerenciamentoRotasPontosTipoCargaCOD_TIPOCARGA: TFloatField;
    QR_GerenciamentoRotasPontosTipoCargaTEMPO_MAX_ULTIMOPONTO: TFloatField;
    QR_GerenciamentoRotasPontosTipoCargaVELOCIDADE_MAXIMO: TFloatField;
    QR_GerenciamentoRotasPontosTipoCargaTIPOCARGA: TStringField;
    cxGridDBTableView11TEMPO_MAX_ULTIMOPONTO: TcxGridDBColumn;
    cxGridDBTableView11VELOCIDADE_MAXIMO: TcxGridDBColumn;
    cxGridDBTableView11TIPOCARGA: TcxGridDBColumn;
    QR_GerenciamentoRotasPontosTipoCargaTEMPOMINUTOS: TFloatField;
    cxGridDBTableView11TEMPOMINUTOS: TcxGridDBColumn;
    Memo1: TMemo;
    wbGerenciamentoRotas: TWebBrowser;
    procedure rzPageControlUnidadesMoagemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wbGerenciamentoRotasDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure ativaAbasRzPageControl(rzPageControl: TRzPageControl; ativa: boolean);
    procedure btnGerenciarRotasExistentesClick(Sender: TObject);
    procedure QR_FrenteAfterScroll(DataSet: TDataSet);
    procedure QR_GerenciamentoRotasAfterScroll(DataSet: TDataSet);
    procedure btnCriarNovasRotas_EntradaCanaClick(Sender: TObject);
    procedure imgEtapaPosteriorClick(Sender: TObject);
    procedure navegaEtapas(proximaAnterior, funcao: String);
    procedure imgEtapaAnteriorClick(Sender: TObject);
    procedure atualizaPainelNavegacao(rzPageControl : TRzPageControl;
                                      btnAnterior, btnProximo: TRzBitBtn;
                                      pnNavegacao: TPanel);
    procedure wbVisualizarViagemDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure rzBtnPararRotaPontoaPontoClick(Sender: TObject);
    procedure QR_EntradaCanaAfterScroll(DataSet: TDataSet);
    procedure rzBtnVisualizarPontoaPontoClick(Sender: TObject);
    procedure rzBtnGerarPreRotaClick(Sender: TObject);
    procedure QR_PreRotaPontosAfterScroll(DataSet: TDataSet);
    procedure rzBtnAnalisePreRotaClick(Sender: TObject);
    procedure imgCorTrajetoIdaClick(Sender: TObject);
    procedure imgCorTrajetoVoltaClick(Sender: TObject);
    procedure rzBtnConfirmaRotaClick(Sender: TObject);
    procedure rzBtnVisualizarTrajetoClick(Sender: TObject);
    procedure tmVisualizaRotaPontoaPontoEntradaCanaTimer(Sender: TObject);
    procedure wbSelecaoPontosDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure btnProximoGeraRotaEntradaCanaClick(Sender: TObject);
    procedure btnAnteriorGeraRotaEntradaCanaClick(Sender: TObject);
    procedure edtCodEquipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisa_EquipamentosClick(Sender: TObject);
    procedure edtCodEquipamentoExit(Sender: TObject);
    procedure btnPesquisa_FazendasClick(Sender: TObject);
    procedure edtCodFazendaExit(Sender: TObject);
    procedure RzBitBtnVisualizarTrajetoAvulsoClick(Sender: TObject);
    procedure wbVisualizarTrajetoRotaAvulsaDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure btnCriarNovasRotas_AvulsoClick(Sender: TObject);
    procedure QR_VisualizarTrajetoRotaAvulsaAfterScroll(DataSet: TDataSet);
    procedure tmVisualizaRotaPontoaPontoAvulsoTimer(Sender: TObject);
    procedure RzBitBtnVisualizarPontoaPontoAvulsoClick(Sender: TObject);
    procedure RzBitBtnPararPontoaPontoAvulsoClick(Sender: TObject);
    procedure btnProximoGeraRotaAvulsaClick(Sender: TObject);
    procedure btnAnteriorGeraRotaAvulsaClick(Sender: TObject);
    procedure edtCodFazendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtZonaExit(Sender: TObject);
    procedure rzBtnGerarPreRotaAvulsaClick(Sender: TObject);
    procedure QR_TalhoesAfterScroll(DataSet: TDataSet);
    procedure btnCriarNovasRotas_AvulsoBasicClick(Sender: TObject);
    procedure RzBitBtnVisualizarTrajetoAvulsoBasicClick(Sender: TObject);
    procedure wbVisualizarTrajetoRotaAvulsaBasicDocumentComplete(
      ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
    procedure RzBitBtnVisualizarPontoaPontoAvulsoBasicClick(Sender: TObject);
    procedure tmVisualizaRotaPontoaPontoAvulsoBasicTimer(Sender: TObject);
    procedure RzBitBtnPararPontoaPontoAvulsoBasicClick(Sender: TObject);
    procedure btnSaidaUsinaCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure btnEntradaFazendaCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure btnSaidaFazendaCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure btnEntradaUsinaCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure btnReiniciarMarcacaoCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure QR_PreRotaTMP_BasicAfterScroll(DataSet: TDataSet);
    procedure btnAsfaltoCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure btnSelecionarTodosPontosCriarRotaAvulsaBasiClick(Sender: TObject);
    procedure btnLimparSelecaoCriarRotaAvulsaBasiClick(Sender: TObject);
    procedure btnGravarInformacoesCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure btnLimparInformacoesCriarRotaAvulsaBasicClick(Sender: TObject);
    procedure imgTrajetoIdaCriarNovaRotaAvulsaBasicClick(Sender: TObject);
    procedure btnConfirmaRotaCriarNovaRotaAvulsaBasicClick(Sender: TObject);
    procedure imgTrajetoVoltaCriarNovaRotaAvulsaBasicClick(Sender: TObject);
    procedure cbDistanciaAvisoCriarRotaAvulsaBasicDropDown(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid2DBTableView1COR_TRAJETO_IDAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2DBTableView1COR_TRAJETO_VOLTAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure QR_GerenciamentoRotasPontosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    //HTMLWindow2: IHTMLWindow2;
  public
    { Public declarations }
  protected
    QR_PageControlEmpresa : TOraQuery;
    paginaCarregadaGerenciamentoRotas,
    paginaCarregadaVisualizacaoRotas,
    paginaCarregadaGeracaoNovasRotasEntradaCana,
    paginaCarregadaSelecaoPontosEntradaCana,
    paginaCarregadaGeracaoNovasRotasAvulsa,
    paginaCarregadaGeracaoNovasRotasAvulsaBasic : boolean;

    preRotaAnalisada : boolean;

    seqSaidaUsinaCriarRotaAvulsaBasic, seqEntradaFazendaCriarRotaAvulsaBasic,
    seqSaidaFazendaCriarRotaAvulsaBasic, seqEntradaUsinaCriarRotaAvulsaBasic : Double;
  end;

var
  F_RotasFazenda_Mapas: TF_RotasFazenda_Mapas;
  objJSON  : ISuperObject;

implementation

{$R *.dfm}

uses u_recursos, U_DM, U_BuscaAvancada;

procedure TF_RotasFazenda_Mapas.ativaAbasRzPageControl(
  rzPageControl: TRzPageControl; ativa: boolean);
var
  i : Integer;
begin
  //Habilita ou desabilita todas as tabs do page control passado como parametro
  for i := 0 to rzPageControl.PageCount-1 do
    rzPageControl.Pages[i].TabVisible := ativa;
end;

procedure TF_RotasFazenda_Mapas.atualizaPainelNavegacao(rzPageControl : TRzPageControl;
                                                        btnAnterior, btnProximo: TRzBitBtn;
                                                        pnNavegacao: TPanel);
begin
  if rzPageControl.ActivePageIndex = 0 then
    begin
      btnAnterior.Enabled     := False;
      btnAnterior.Hint        := 'Etapa Anterior';
      btnAnterior.ShowHint    := False;
    end
  else
    begin
      btnAnterior.Enabled     := True;
      btnAnterior.Hint        := 'Etapa Anterior';
      btnAnterior.ShowHint    := True;
    end;

  if rzPageControl.ActivePageIndex+1 = rzPageControl.PageCount then
    begin
      btnProximo.Enabled     := False;
      btnProximo.Hint        := 'Pr�xima Etapa';
      btnProximo.ShowHint    := False;
    end
  else
    begin
      btnProximo.Enabled     := True;
      btnProximo.Hint        := 'Pr�xima Etapa';
      btnProximo.ShowHint    := True;
    end;

  pnNavegacao.Caption   := 'Etapa '+IntToStr(rzPageControl.ActivePageIndex+1)+' de '+inttostr(rzPageControl.PageCount);
end;

procedure TF_RotasFazenda_Mapas.btnCriarNovasRotas_EntradaCanaClick(Sender: TObject);
begin
  inherited;
  ativaAbasRzPageControl(RzPgRotas,true);
  RzPgRotas.ActivePage := tsRotasGerarRotasEntradaCana;
  atualizaPainelNavegacao(RzPgNovaRota_EntradaCana,btnAnteriorGeraRotaEntradaCana,btnProximoGeraRotaEntradaCana,pnNavegacaoNovaRotaEntradaCana);
  ativaAbasRzPageControl(RzPgRotas,false);

  ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,true);
  RzPgNovaRota_EntradaCana.ActivePageIndex := 0;
  atualizaPainelNavegacao(RzPgNovaRota_EntradaCana,btnAnteriorGeraRotaEntradaCana,btnProximoGeraRotaEntradaCana,pnNavegacaoNovaRotaEntradaCana);
  ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,false);

  loadHTML(wbVisualizarViagem,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(wbSelecaoPontos,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
end;

procedure TF_RotasFazenda_Mapas.btnEntradaFazendaCriarRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  if seqSaidaUsinaCriarRotaAvulsaBasic = -1 then
  begin
    Application.MessageBox('O ponto de interesse "Sa�da da Usina" deve ser marcado.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  if seqSaidaUsinaCriarRotaAvulsaBasic >= QR_PreRotaTMP_BasicSEQUENCIA.AsFloat then
  begin
    Application.MessageBox('O ponto "Entrada na Fazenda" deve ser ap�s o ponto "Sa�da da Usina".','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  try
    seqEntradaFazendaCriarRotaAvulsaBasic := QR_PreRotaTMP_BasicSEQUENCIA.AsFloat;
    QR_PreRotaTMP_Basic.Edit;
    QR_PreRotaTMP_BasicPONTO_INTERESSE.AsString := 'S';
    QR_PreRotaTMP_BasicPONTOS_INTERESSE.AsString := 'EF';
    QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString := 'ENTRADA NA FAZENDA';
    QR_PreRotaTMP_BasicTEXTO_BORDO.AsString := 'ENTRADA FAZENDA';
    QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsFloat := QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO.AsFloat;
    QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO.AsFloat := QR_DistanciaAvisoDISTANCIA.AsFloat;
    QR_PreRotaTMP_Basic.Post;

  except
    seqEntradaFazendaCriarRotaAvulsaBasic := -1;
    QR_PreRotaTMP_Basic.Cancel;
    Application.MessageBox('Erro ao tentar marcar o ponto Entrada na Fazenda. Tente Novamente.','Erro',MB_ICONERROR + MB_OK);
    Abort;
  end;

  btnSaidaUsinaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := False;
  btnSaidaFazendaCriarRotaAvulsaBasic.Enabled := True;
  btnEntradaUsinaCriarRotaAvulsaBasic.Enabled := False;

  cxGrid12.SetFocus;
  QR_PreRotaTMP_Basic.Next;
end;

procedure TF_RotasFazenda_Mapas.btnEntradaUsinaCriarRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  if seqSaidaFazendaCriarRotaAvulsaBasic = -1 then
  begin
    Application.MessageBox('O ponto de interesse "Sa�da da Fazenda" deve ser marcado.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  if seqSaidaFazendaCriarRotaAvulsaBasic >= QR_PreRotaTMP_BasicSEQUENCIA.AsFloat then
  begin
    Application.MessageBox('O ponto "Entrada na Usina" deve ser ap�s o ponto "Sa�da da Fazenda".','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  try
    seqEntradaUsinaCriarRotaAvulsaBasic := QR_PreRotaTMP_BasicSEQUENCIA.AsFloat;
    QR_PreRotaTMP_Basic.Edit;
    QR_PreRotaTMP_BasicPONTO_INTERESSE.AsString := 'S';
    QR_PreRotaTMP_BasicPONTOS_INTERESSE.AsString := 'EU';
    QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString := 'ENTRADA DA USINA';
    QR_PreRotaTMP_BasicTEXTO_BORDO.AsString := 'ENTRADA USINA';
    QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsFloat := QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO.AsFloat;
    QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO.AsFloat := QR_DistanciaAvisoDISTANCIA.AsFloat;
    QR_PreRotaTMP_Basic.Post;
  except
    seqEntradaUsinaCriarRotaAvulsaBasic := -1;
    QR_PreRotaTMP_Basic.Cancel;
    Application.MessageBox('Erro ao tentar marcar o ponto "Entrada da Fazenda". Tente Novamente.','Erro',MB_ICONERROR + MB_OK);
    Abort;
  end;

  btnSaidaUsinaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := False;
  btnSaidaFazendaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaUsinaCriarRotaAvulsaBasic.Enabled := False;

  cxGrid12.SetFocus;
end;

procedure TF_RotasFazenda_Mapas.btnGerenciarRotasExistentesClick(
  Sender: TObject);
begin
  inherited;

  ativaAbasRzPageControl(RzPgRotas,true);
  RzPgRotas.ActivePage := tsRotasGerenciamentoRotas;

  //teste hirata
  QR_Frente.Close;
  QR_Frente.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Frente.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
  QR_Frente.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
  QR_Frente.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
  QR_Frente.Open;

  ativaAbasRzPageControl(RzPgRotas,false);

  loadHTML(wbGerenciamentoRotas,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
end;

procedure TF_RotasFazenda_Mapas.btnGravarInformacoesCriarRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  if edtTexto1BordoCriarRotaAvulsaBasic.Text = '' then
  begin
    Application.MessageBox('O texto 1 do bordo obrigatoramento deve ser informado.','Aten��o',MB_ICONINFORMATION + MB_OK);
    edtTexto1BordoCriarRotaAvulsaBasic.SetFocus;
    Abort;
  end;

  if edtDescricaoPontoInteresseCriarRotaAvulsaBasic.Text = '' then
  begin
    Application.MessageBox('A descri��o do ponto deve ser informada.','Aten��o',MB_ICONINFORMATION + MB_OK);
    edtDescricaoPontoInteresseCriarRotaAvulsaBasic.SetFocus;
    Abort;
  end;

  QR_DistanciaAviso.Locate('DISTANCIA',cbDistanciaAvisoCriarRotaAvulsaBasic.Text,[]);

  QR_PreRotaTMP_Basic.Edit;
  QR_PreRotaTMP_BasicTEXTO_BORDO.AsString := edtTexto1BordoCriarRotaAvulsaBasic.Text;
  QR_PreRotaTMP_BasicTEXTO_BORDO2.AsString := edtTexto2BordoCriarRotaAvulsaBasic.Text;
  QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString := edtDescricaoPontoInteresseCriarRotaAvulsaBasic.Text;
  QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsFloat := QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO.AsFloat;
  QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO.AsFloat := QR_DistanciaAvisoDISTANCIA.AsFloat;
  QR_PreRotaTMP_BasicPONTO_INTERESSE.AsString := 'S';
  QR_PreRotaTMP_Basic.Post;

  cxGrid14.SetFocus;
end;

procedure TF_RotasFazenda_Mapas.btnLimparInformacoesCriarRotaAvulsaBasicClick(
  Sender: TObject);

begin
  inherited;
  if QR_PreRotaTMP_BasicPONTOS_INTERESSE.AsString <> 'NA' then
  begin
    Application.MessageBox(PChar('Ponto de Interesse "'+QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString+'" n�o pode ser retirado pois � um ponto obrigat�rio.'),'Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  QR_PreRotaTMP_Basic.Edit;
  QR_PreRotaTMP_BasicTEXTO_BORDO.Clear;
  QR_PreRotaTMP_BasicTEXTO_BORDO2.Clear;
  QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.Clear;
  QR_PreRotaTMP_BasicDISTANCIA_AVISO.Clear;
  QR_PreRotaTMP_BasicPONTO_INTERESSE.AsString := 'N';
  QR_PreRotaTMP_Basic.Post;

  QR_PreRotaTMP_BasicAfterScroll(QR_PreRotaTMP_Basic);

end;

procedure TF_RotasFazenda_Mapas.btnLimparSelecaoCriarRotaAvulsaBasiClick(
  Sender: TObject);
begin
  inherited;
  cxGridDBTableView8.DataController.ClearSelection;
end;

procedure TF_RotasFazenda_Mapas.btnPesquisa_EquipamentosClick(Sender: TObject);
var
  resultado : Variant;
  sql : String;
begin
  inherited;
  sql := 'SELECT a.cod_equipamento "C�digo",                             ' +
         '       a.descricao "Descri��o"                                 ' +
         '  FROM tipo_equipamento te,                                    ' +
         '       equipamento a                                           ' +
         ' WHERE a.ativo = ''S''                                         ' +
         '   AND a.cod_grupo = ' + DM.QR_UnidadeCOD_GRUPO.AsString +
         '   AND a.cod_tipoequipamento = te.cod_tipoequipamento          ' +
         '   AND te.tipo_cct = ''C''                                     ' +
         ' &Macro                                                        ' +
         'ORDER BY a.cod_equipamento                                     ' ;
  resultado := F_BuscaAvancada.Buscar(sql,1,'Busca de Equipamentos Ativos');
  if resultado <> null then
  begin
    edtCodEquipamento.Text := resultado;
    RzBitBtnVisualizarTrajetoAvulso.SetFocus;
  end;
end;

procedure TF_RotasFazenda_Mapas.btnPesquisa_FazendasClick(Sender: TObject);
var
  resultado : Variant;
  sql : string;
begin
  inherited;
  sql := 'SELECT t.cod_fazenda "C�digo",                               ' +
         '       f.descricao "Nome",                                   ' +
         '       t.zona "Zona"                                         ' +
         '  FROM talhao t, fazenda f                                   ' +
         ' WHERE f.cod_fazenda = t.cod_fazenda                         ' +
         '   AND EXISTS (SELECT 1                                      ' +
         '                 FROM talhao_geom tg                         ' +
         '                WHERE tg.cod_fazenda = t.cod_fazenda         ' +
         '                  AND tg.zona = t.zona)                      ' +
         '   AND t.cod_grupo = ' + QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsString +
         '   AND t.cod_regional = ' + QR_PageControlEmpresa.FieldByName('COD_REGIONAL').AsString +
         '   AND t.cod_unidade = ' + QR_PageControlEmpresa.FieldByName('COD_UNIDADE').AsString +
         ' &Macro                                                      ' +
         'GROUP BY t.cod_fazenda, f.descricao, t.zona                  ' +
         'ORDER BY t.cod_fazenda, t.zona                               ' ;
  resultado := F_BuscaAvancada.Buscar(sql,1,'Pesquisa de fazendas com mapas');
  if resultado <> null then
  begin
    edtCodFazenda.Text := resultado;
    edtCodFazendaExit(edtCodFazenda);
    edtZona.Text := F_BuscaAvancada.Query.FieldByName('Zona').AsString;
    edtCodEquipamento.SetFocus;
  end;
end;

procedure TF_RotasFazenda_Mapas.FormCreate(Sender: TObject);
var
  url : String;
begin
  top := 1;
  left := 1;
  inherited;

  paginaCarregadaGerenciamentoRotas := False;
  paginaCarregadaSelecaoPontosEntradaCana := False;
  paginaCarregadaGeracaoNovasRotasAvulsa := False;
  paginaCarregadaGeracaoNovasRotasAvulsaBasic := False;

  SP_BuscaHTMLRota.Execute;

  RzPgRotas.ActivePage := tsRotasGerenciamentoRotas;
  RzPgRotas.ActivePage := tsRotasGerarRotasEntradaCana;

  RzPgRotas.ActivePage := tsRotasPrincipal;

  QR_PageControlEmpresa := TOraQuery(PageControlUnidades(rzPageControlUnidadesMoagem, False, True, True));

  rzPageControlUnidadesMoagemChange(rzPageControlUnidadesMoagem);

  preRotaAnalisada := False;

  ativaAbasRzPageControl(RzPgRotas,false);
  ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,false);
  ativaAbasRzPageControl(RzPgNovaRota_Avulso,false);
  ativaAbasRzPageControl(RzPgNovaRota_Avulso_Basic,false);

  //Carrega as dist�ncias cadastradas na caixa de op��es de dist�ncias
  cbDistanciaAvisoCriarRotaAvulsaBasic.Items.Clear;
  QR_DistanciaAviso.Close;
  QR_DistanciaAviso.Open;
  while not QR_DistanciaAviso.Eof do
  begin
    cbDistanciaAvisoCriarRotaAvulsaBasic.Items.Add(QR_DistanciaAvisoDISTANCIA.AsString);
    QR_DistanciaAviso.Next;
  end;
  if QR_DistanciaAviso.Locate('PADRAO','S',[]) then
    cbDistanciaAvisoCriarRotaAvulsaBasic.ItemIndex := QR_DistanciaAviso.RecNo;

end;

procedure TF_RotasFazenda_Mapas.imgCorTrajetoIdaClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := rzPnCorTrajetoIda.Color;
  if ColorDialog1.Execute then
    rzPnCorTrajetoIda.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda_Mapas.imgCorTrajetoVoltaClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := rzPnCorTrajetoVolta.Color;
  if ColorDialog1.Execute then
    rzPnCorTrajetoVolta.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda_Mapas.imgEtapaAnteriorClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('anterior','novaRotaEntradaCana');
end;

procedure TF_RotasFazenda_Mapas.imgEtapaPosteriorClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('proxima','novaRotaEntradaCana');
end;

procedure TF_RotasFazenda_Mapas.imgTrajetoIdaCriarNovaRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := pnCorTrajetoIdaCriarNovaRotaAvulsaBasic.Color;
  if ColorDialog1.Execute then
    pnCorTrajetoIdaCriarNovaRotaAvulsaBasic.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda_Mapas.imgTrajetoVoltaCriarNovaRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := pnCorTrajetoVoltaCriarNovaRotaAvulsaBasic.Color;
  if ColorDialog1.Execute then
    pnCorTrajetoVoltaCriarNovaRotaAvulsaBasic.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda_Mapas.navegaEtapas(proximaAnterior, funcao: String);
var
  sStringList : TStringList;
  i : Integer;
begin
  //Se a fun��o navega etapas for chamado atrav�s
  //da aba de criar nova rota a partir da entrada de cana
  if funcao = 'novaRotaEntradaCana' then
    begin
      if proximaAnterior = 'anterior' then
        begin
          if RzPgNovaRota_EntradaCana.ActivePageIndex = 0 then
          begin
            Application.MessageBox('N�o existem etapas anteriores ao atual.','Aten��o',MB_ICONINFORMATION + MB_OK);
            Abort;
          end;

          ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,true);
          RzPgNovaRota_EntradaCana.ActivePageIndex := RzPgNovaRota_EntradaCana.ActivePageIndex - 1;
          ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,false);
        end

      else if proximaAnterior = 'proxima' then
        begin
          if RzPgNovaRota_EntradaCana.ActivePageIndex+1 = RzPgNovaRota_EntradaCana.PageCount then
          begin
            Application.MessageBox('N�o existem etapas posteriores ao atual.','Aten��o',MB_ICONINFORMATION + MB_OK);
            Abort;
          end;

          if RzPgNovaRota_EntradaCana.ActivePage = tsNovaRotaSelecaoPontos then
            if not preRotaAnalisada then
            begin
              Application.MessageBox('Clique sobre o bot�o "Analisar Viagem" para ativar o pr�ximo passo.','Aten��o',MB_ICONINFORMATION + MB_OK);
              Abort;
            end;


          ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,true);
          RzPgNovaRota_EntradaCana.ActivePageIndex := RzPgNovaRota_EntradaCana.ActivePageIndex + 1;
          ativaAbasRzPageControl(RzPgNovaRota_EntradaCana,false);
        end
      else
        begin
          Application.MessageBox(PChar('Situa��o "'+proximaAnterior+'" n�o aceito pela fun��o de navega��o.'),'Aten��o',MB_ICONERROR + MB_OK);
          Abort;
        end;

      if RzPgNovaRota_EntradaCana.ActivePage = tsNovaRotaVisualizaViagem then
        begin
          if QR_Frente.IsEmpty then
          begin
            Application.MessageBox('Selecione uma frente na etapa anterior para visualizar uma rota.','Aten�ao',MB_ICONINFORMATION + MB_OK);
            btnAnteriorGeraRotaEntradaCanaClick(btnAnteriorGeraRotaEntradaCana);
          end;
            QR_EntradaCana.Close;
            QR_EntradaCana.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
            QR_EntradaCana.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
            QR_EntradaCana.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
            QR_EntradaCana.ParamByName('cod_fazenda').AsFloat := QR_FrenteCOD_FAZENDA.AsFloat;
            QR_EntradaCana.Open;
        end
      else if RzPgNovaRota_EntradaCana.ActivePage = tsNovaRotaSelecaoPontos then
        begin
          preRotaAnalisada            := False;
          rzBtnGerarPreRota.Enabled   := True;
          rzBtnAnalisePreRota.Enabled := False;

          QR_PreRotaPontos.Close;
          QR_PreRotaPontos.ParamByName('cod_pre_rota').AsFloat := -1;
          QR_PreRotaPontos.Open;

          QR_HorarioTalhaoDistanciaRotaEntradaCana.Close;
          QR_HorarioTalhaoDistanciaRotaEntradaCana.ParamByName('cod_grupo').AsFloat := QR_EntradaCanaCOD_GRUPO.AsFloat;
          QR_HorarioTalhaoDistanciaRotaEntradaCana.ParamByName('cod_regional').AsFloat := QR_EntradaCanaCOD_REGIONAL.AsFloat;
          QR_HorarioTalhaoDistanciaRotaEntradaCana.ParamByName('cod_unidade').AsFloat := QR_EntradaCanaCOD_UNIDADE.AsFloat;
          QR_HorarioTalhaoDistanciaRotaEntradaCana.ParamByName('cod_entradacana').AsFloat := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
          QR_HorarioTalhaoDistanciaRotaEntradaCana.Open;

          try
            if wbSelecaoPontos.Tag = 0 then
              ExecJS(wbSelecaoPontos,'limpaTrajeto()');
          except

          end;

        end
      else if RzPgNovaRota_EntradaCana.ActivePage = tsNovaRotaConfirmaRota then
        begin
          memoDescricaoRota.Lines.Clear;
          rzPnCorTrajetoIda.Color   := $00B7FFFF;
          rzPnCorTrajetoVolta.Color := clYellow;

          QR_ResumoRota.Close;
          QR_ResumoRota.ParamByName('cod_pre_rota').AsFloat := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
          QR_ResumoRota.Open;

          rzBtnConfirmaRota.Enabled := True;
        end;

      atualizaPainelNavegacao(RzPgNovaRota_EntradaCana,btnAnteriorGeraRotaEntradaCana,btnProximoGeraRotaEntradaCana,pnNavegacaoNovaRotaEntradaCana);
    end
  else if funcao = 'novaRotaAvulsa' then
    begin
      {if proximaAnterior = 'anterior' then
        begin
          if RzPgNovaRota_Avulso.ActivePageIndex = 0 then
          begin
            Application.MessageBox('N�o existem etapas anteriores ao atual.','Aten��o',MB_ICONINFORMATION + MB_OK);
            Abort;
          end;

          ativaAbasRzPageControl(RzPgNovaRota_Avulso,true);
          RzPgNovaRota_Avulso.ActivePageIndex := RzPgNovaRota_Avulso.ActivePageIndex - 1;
          ativaAbasRzPageControl(RzPgNovaRota_Avulso,false);
        end
      else if proximaAnterior = 'proxima' then
        begin
          if RzPgNovaRota_Avulso.ActivePageIndex+1 = RzPgNovaRota_Avulso.PageCount then
          begin
            Application.MessageBox('N�o existem etapas posteriores ao atual.','Aten��o',MB_ICONINFORMATION + MB_OK);
            Abort;
          end;

          if RzPgNovaRota_Avulso.ActivePage = tsNovaRotaAvulsaSelecaoInfo then
          begin
            if QR_VisualizarTrajetoRotaAvulsa.IsEmpty then
            begin
              Application.MessageBox('Clique em "Visualizar Trajeto" para avan�ar para a pr�xima etapa.','Aten��o',MB_ICONINFORMATION + MB_OK);
              Abort;
            end;
          end;

          ativaAbasRzPageControl(RzPgNovaRota_Avulso,true);
          RzPgNovaRota_Avulso.ActivePageIndex := RzPgNovaRota_Avulso.ActivePageIndex + 1;
          ativaAbasRzPageControl(RzPgNovaRota_Avulso,false);


          if RzPgNovaRota_Avulso.ActivePage = tsNovaRotaAvulsaSelecaoPontos then
          begin
            QR_HorarioTalhaoDistanciaRotaAvulsa.Close;
            QR_HorarioTalhaoDistanciaRotaAvulsa.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
            QR_HorarioTalhaoDistanciaRotaAvulsa.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
            QR_HorarioTalhaoDistanciaRotaAvulsa.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
            QR_HorarioTalhaoDistanciaRotaAvulsa.ParamByName('cod_fazenda').AsFloat := StrToFloat(edtCodFazenda.Text);
            if edtZona.Text = '' then
              QR_HorarioTalhaoDistanciaRotaAvulsa.ParamByName('zona').AsFloat := 0
            else
              QR_HorarioTalhaoDistanciaRotaAvulsa.ParamByName('zona').AsFloat := StrToFloat(edtZona.Text);
            QR_HorarioTalhaoDistanciaRotaAvulsa.Open;
          end;
        end }
      end
    else if funcao = 'novaRotaAvulsaBasic' then
      begin
        if proximaAnterior = 'anterior' then
          begin
            if RzPgNovaRota_Avulso_Basic.ActivePageIndex = 0 then
            begin
              Application.MessageBox('N�o existem etapas anteriores ao atual.','Aten��o',MB_ICONINFORMATION + MB_OK);
              Abort;
            end;

            ativaAbasRzPageControl(RzPgNovaRota_Avulso_Basic,true);
            RzPgNovaRota_Avulso_Basic.ActivePageIndex := RzPgNovaRota_Avulso_Basic.ActivePageIndex - 1;
            ativaAbasRzPageControl(RzPgNovaRota_Avulso_Basic,false);
          end

        else if proximaAnterior = 'proxima' then
          begin
            if RzPgNovaRota_Avulso_Basic.ActivePageIndex+1 = RzPgNovaRota_Avulso_Basic.PageCount then
            begin
              Application.MessageBox('N�o existem etapas posteriores ao atual.','Aten��o',MB_ICONINFORMATION + MB_OK);
              Abort;
            end;

            ativaAbasRzPageControl(RzPgNovaRota_Avulso_Basic,true);
            RzPgNovaRota_Avulso_Basic.ActivePageIndex := RzPgNovaRota_Avulso_Basic.ActivePageIndex + 1;
            ativaAbasRzPageControl(RzPgNovaRota_Avulso_Basic,false);

            if RzPgNovaRota_Avulso_Basic.ActivePage = tsNovaRotaAvulsaGeraInfoTempBasic then
              begin
                btnSaidaUsinaCriarRotaAvulsaBasic.Enabled := True;
                btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := False;
                btnSaidaFazendaCriarRotaAvulsaBasic.Enabled := False;
                btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := False;
                btnReiniciarMarcacaoCriarRotaAvulsaBasic.Enabled := True;

                SP_GeraPreRotaTMP_Avulsa.ParamByName('P_GRUPO').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
                SP_GeraPreRotaTMP_Avulsa.ParamByName('P_REGIONAL').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
                SP_GeraPreRotaTMP_Avulsa.ParamByName('P_UNIDADE').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
                SP_GeraPreRotaTMP_Avulsa.ParamByName('P_EQUIPAMENTO').AsFloat := StrToFloat(edtCodEquipamentoRotaAvulsaBasic.Text);
                SP_GeraPreRotaTMP_Avulsa.ParamByName('P_DATAINI').AsDateTime := wwDBDateTimePicker3.DateTime;
                SP_GeraPreRotaTMP_Avulsa.ParamByName('P_DATAFIM').AsDateTime := wwDBDateTimePicker4.DateTime;
                SP_GeraPreRotaTMP_Avulsa.Execute;

                QR_PreRotaTMP_Basic.Close;
                QR_PreRotaTMP_Basic.Open;
              end
            else if RzPgNovaRota_Avulso_Basic.ActivePage = tsNovaRotaAvulsaTipoPercursoTempBasic then
              begin
                //verifica se todos os potnos foram informados
                if (seqEntradaUsinaCriarRotaAvulsaBasic < 0) then
                begin
                  navegaEtapas('anterior','novaRotaAvulsaBasic');
                  Application.MessageBox('Selecione todos os pontos de interesse obrigat�rios para avan�ar para a pr�xima etapa.','Aten��o',MB_ICONINFORMATION + MB_OK);
                  Abort;
                end;

                QR_TipoPercurso.Close;
                QR_TipoPercurso.Open;

                cbTipoPercursoCriarRotaAvulsaBasic.Items.Clear;
                while not QR_TipoPercurso.Eof do
                begin
                  cbTipoPercursoCriarRotaAvulsaBasic.Items.Add(QR_TipoPercursoDESCRICAO.AsString);
                  QR_TipoPercurso.Next;
                end;

                if cbTipoPercursoCriarRotaAvulsaBasic.Items.Count > 0 then
                begin
                  cbTipoPercursoCriarRotaAvulsaBasic.ItemIndex := 0;
                end;

                QR_PreRotaTMP_Basic.First;
              end
            else if RzPgNovaRota_Avulso_Basic.ActivePage = tsNovaRotaAvulsaPontosInteresseTempBasic then
              begin
                //Verifica se todos os pontos foram classificados com o tipo de percurso
                if QR_PreRotaTMP_BasicQTDEREGISTROSSEMPERCURSO.AsFloat > 0 then
                begin
                  navegaEtapas('anterior','novaRotaAvulsaBasic');
                  Application.MessageBox('Existem pontos sem tipo de percurso parametrizado. Parametrize o tipo de percurso para todos os pontos para avan�ar para a pr�xima etapa.','Aten��o',MB_ICONINFORMATION + MB_OK);
                  Abort;
                end;

                //sStringList := TStringList.Create;
                //split(DM.QR_ParametrosDISTANCIAS_AVISO_BORDO.AsString,',',sStringList);

                //cbDistanciaAvisoPontoInteresseCriarRotaAvulsaBasic.Items.Clear;
                //for I := 0 to sStringList.Count -1 do
                //begin
                //  cbDistanciaAvisoPontoInteresseCriarRotaAvulsaBasic.Items.Add(sStringList.Strings[i]);
                //end;

              end;

              QR_PreRotaTMP_Basic.First;
          end
        else
          begin
            Application.MessageBox(PChar('Situa��o "'+proximaAnterior+'" n�o aceito pela fun��o de navega��o.'),'Aten��o',MB_ICONERROR + MB_OK);
            Abort;
          end;

    atualizaPainelNavegacao(RzPgNovaRota_Avulso_Basic,btnAnteriorGeraRotaAvulsaBasic,btnProximoGeraRotaAvulsaBasic,pnNavegacaoNovaRotaAvulsaBasic);
    end
  else
    Application.MessageBox(pwidechar('Par�metro '+funcao+' n�o aceito na fun��o de navegar etapas.'),'Erro',MB_ICONERROR + MB_OK);

end;

procedure TF_RotasFazenda_Mapas.btnAnteriorGeraRotaAvulsaClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('anterior','novaRotaAvulsaBasic');
end;

procedure TF_RotasFazenda_Mapas.btnAnteriorGeraRotaEntradaCanaClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('anterior','novaRotaEntradaCana');
end;

procedure TF_RotasFazenda_Mapas.btnProximoGeraRotaAvulsaClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('proxima','novaRotaAvulsaBasic');
end;

procedure TF_RotasFazenda_Mapas.btnProximoGeraRotaEntradaCanaClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('proxima','novaRotaEntradaCana');
end;

procedure TF_RotasFazenda_Mapas.btnReiniciarMarcacaoCriarRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Esta fun��o retira todos os pontos de interesse j� marcados. Deseja continuar ?','Confirma��o',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    SP_ReiniciaPreRotaTMP_Avulsa.Execute;

    QR_PreRotaTMP_Basic.Close;
    QR_PreRotaTMP_Basic.Open;

    btnSaidaUsinaCriarRotaAvulsaBasic.Enabled := True;
    btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := False;
    btnSaidaFazendaCriarRotaAvulsaBasic.Enabled := False;
    btnEntradaUsinaCriarRotaAvulsaBasic.Enabled := False;

    seqSaidaUsinaCriarRotaAvulsaBasic := -1;
    seqEntradaFazendaCriarRotaAvulsaBasic := -1;
    seqSaidaFazendaCriarRotaAvulsaBasic := -1;
    seqEntradaUsinaCriarRotaAvulsaBasic := -1;

    Application.MessageBox('Pontos de Interesse retirados com sucesso. Inicie o processo de marca��o desses pontos novamente.','Informa��o',MB_ICONINFORMATION + MB_OK);
  end;

  cxGrid12.SetFocus;
  QR_PreRotaTMP_Basic.Next;

end;

procedure TF_RotasFazenda_Mapas.btnSaidaFazendaCriarRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  if seqEntradaFazendaCriarRotaAvulsaBasic = -1 then
  begin
    Application.MessageBox('O ponto de interesse "Entrada na Fazenda" deve ser marcado.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  if seqEntradaFazendaCriarRotaAvulsaBasic >= QR_PreRotaTMP_BasicSEQUENCIA.AsFloat then
  begin
    Application.MessageBox('O ponto "Sa�da da Fazenda" deve ser ap�s o ponto "Entrada na Fazenda".','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  try
    seqSaidaFazendaCriarRotaAvulsaBasic := QR_PreRotaTMP_BasicSEQUENCIA.AsFloat;
    QR_PreRotaTMP_Basic.Edit;
    QR_PreRotaTMP_BasicPONTO_INTERESSE.AsString := 'S';
    QR_PreRotaTMP_BasicPONTOS_INTERESSE.AsString := 'SF';
    QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString := 'SA�DA DA FAZENDA';
    QR_PreRotaTMP_BasicTEXTO_BORDO.AsString := 'SAIDA FAZENDA';
    QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsFloat := QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO.AsFloat;
    QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO.AsFloat := QR_DistanciaAvisoDISTANCIA.AsFloat;
    QR_PreRotaTMP_Basic.Post;
  except
    seqEntradaFazendaCriarRotaAvulsaBasic := -1;
    QR_PreRotaTMP_Basic.Cancel;
    Application.MessageBox('Erro ao tentar marcar o ponto "Sa�da da Fazenda". Tente Novamente.','Erro',MB_ICONERROR + MB_OK);
    Abort;
  end;

  btnSaidaUsinaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := False;
  btnSaidaFazendaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaUsinaCriarRotaAvulsaBasic.Enabled := True;

  cxGrid12.SetFocus;
  QR_PreRotaTMP_Basic.Next;
end;

procedure TF_RotasFazenda_Mapas.btnSaidaUsinaCriarRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  try
    QR_DistanciaAviso.Locate('PADRAO','S',[]);
    seqSaidaUsinaCriarRotaAvulsaBasic := QR_PreRotaTMP_BasicSEQUENCIA.AsFloat;
    QR_PreRotaTMP_Basic.Edit;
    QR_PreRotaTMP_BasicPONTO_INTERESSE.AsString := 'S';
    QR_PreRotaTMP_BasicPONTOS_INTERESSE.AsString := 'SU';
    QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString := 'SA�DA DA USINA';
    QR_PreRotaTMP_BasicTEXTO_BORDO.AsString := 'SAIDA USINA';
    QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsFloat := QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO.AsFloat;
    QR_PreRotaTMP_BasicDISTANCIA_AVISO_DETALHADO.AsFloat := QR_DistanciaAvisoDISTANCIA.AsFloat;
    QR_PreRotaTMP_Basic.Post;
  except
    seqSaidaUsinaCriarRotaAvulsaBasic := -1;
    QR_PreRotaTMP_Basic.Cancel;
    Application.MessageBox('Erro ao tentar marcar o ponto Sa�da da Usina. Tente Novamente.','Erro',MB_ICONERROR + MB_OK);
    Abort;
  end;

  btnSaidaUsinaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaFazendaCriarRotaAvulsaBasic.Enabled := True;
  btnSaidaFazendaCriarRotaAvulsaBasic.Enabled := False;
  btnEntradaUsinaCriarRotaAvulsaBasic.Enabled := False;

  cxGrid12.SetFocus;
  QR_PreRotaTMP_Basic.Next;

end;

procedure TF_RotasFazenda_Mapas.btnSelecionarTodosPontosCriarRotaAvulsaBasiClick(
  Sender: TObject);
begin
  inherited;
  cxGridDBTableView8.DataController.SelectAll;
end;

procedure TF_RotasFazenda_Mapas.cbDistanciaAvisoCriarRotaAvulsaBasicDropDown(
  Sender: TObject);
begin
  inherited;
  //QR_DistanciaAviso.Locate('DISTANCIA',QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsString,[]);
  QR_DistanciaAviso.Locate('DISTANCIA',cbDistanciaAvisoCriarRotaAvulsaBasic.Text,[]);
end;

procedure TF_RotasFazenda_Mapas.cxGrid2DBTableView1COR_TRAJETO_IDAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := HexToTColor(ReplStr(QR_GerenciamentoRotasCOR_TRAJETO_IDA.AsString,'#',''));

  if ColorDialog1.Execute then
  begin
    if DS_GerenciamentoRotas.State = dsBrowse then
      QR_GerenciamentoRotas.Edit;
    QR_GerenciamentoRotasCOR_TRAJETO_IDA.AsString := '#'+TColorToHex(ColorDialog1.Color);
    cxGrid2.SetFocus;
    cxGrid2DBTableView1OBSERVACAO.FocusWithSelection;
  end;
end;

procedure TF_RotasFazenda_Mapas.cxGrid2DBTableView1COR_TRAJETO_VOLTAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := HexToTColor(ReplStr(QR_GerenciamentoRotasCOR_TRAJETO_VOLTA.AsString,'#',''));

  if ColorDialog1.Execute then
  begin
    if DS_GerenciamentoRotas.State = dsBrowse then
      QR_GerenciamentoRotas.Edit;
    QR_GerenciamentoRotasCOR_TRAJETO_VOLTA.AsString := '#'+TColorToHex(ColorDialog1.Color);
    cxGrid2.SetFocus;
    cxGrid2DBTableView1OBSERVACAO.FocusWithSelection;
  end;
end;

procedure TF_RotasFazenda_Mapas.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Item.Name = cxGrid2DBTableView1COR_TRAJETO_IDA.Name then
  begin
    ACanvas.Brush.Color := HexToTColor(ReplStr(cxGrid2DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid2DBTableView1COR_TRAJETO_IDA.Index],'#',''));
    ACanvas.Font.Color  := ACanvas.Brush.Color;
  end;

  if AViewInfo.Item.Name = cxGrid2DBTableView1COR_TRAJETO_VOLTA.Name then
  begin
    ACanvas.Brush.Color := HexToTColor(ReplStr(cxGrid2DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid2DBTableView1COR_TRAJETO_VOLTA.Index],'#',''));
    ACanvas.Font.Color  := ACanvas.Brush.Color;
  end;

  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Name = cxGrid2DBTableView1COR_TRAJETO_IDA.Name then
    begin
      ACanvas.Font.Color := ACanvas.Brush.Color;
    end;
  end;
end;

procedure TF_RotasFazenda_Mapas.QR_EntradaCanaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  rzBtnVisualizarPontoaPonto.Enabled := False;
  rzBtnPararRotaPontoaPonto.Enabled  := False;
end;

procedure TF_RotasFazenda_Mapas.QR_FrenteAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if RzPgRotas.ActivePage = tsRotasGerenciamentoRotas then
  begin
    //if QR_Frente.Tag = 1 then
    if not QR_Frente.ControlsDisabled then
    begin
      QR_GerenciamentoRotas.Tag := 0;
      QR_GerenciamentoRotas.Close;
      QR_GerenciamentoRotas.ParamByName('cod_fazenda').AsFloat := QR_FrenteCOD_FAZENDA.AsFloat;
      QR_GerenciamentoRotas.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
      QR_GerenciamentoRotas.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
      QR_GerenciamentoRotas.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
      QR_GerenciamentoRotas.Open;
      QR_GerenciamentoRotas.Tag := 1;
      QR_GerenciamentoRotasAfterScroll(QR_GerenciamentoRotas);
    end;
  end;

end;

procedure TF_RotasFazenda_Mapas.QR_GerenciamentoRotasAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  QR_GerenciamentoRotasPontos.Close;
  QR_GerenciamentoRotasPontos.ParamByName('cod_rota').AsFloat := QR_GerenciamentoRotasCOD_ROTA.AsFloat;
  QR_GerenciamentoRotasPontos.Open;

  QR_PercursoRota.Close;
  QR_PercursoRota.ParamByName('cod_rota').AsFloat := QR_GerenciamentoRotasCOD_ROTA.AsFloat;
  QR_PercursoRota.Open;

  QR_Talhoes.Close;
  QR_Talhoes.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Talhoes.ParamByName('cod_grupo').AsFloat := QR_FrenteCOD_GRUPO.AsFloat;
  QR_Talhoes.ParamByName('cod_regional').AsFloat := QR_FrenteCOD_REGIONAL.AsFloat;
  QR_Talhoes.ParamByName('cod_unidade').AsFloat := QR_FrenteCOD_UNIDADE.AsFloat;
  QR_Talhoes.ParamByName('cod_fazenda').AsFloat := QR_GerenciamentoRotasCOD_FAZENDA.AsFloat;
  QR_Talhoes.ParamByName('zona').AsFloat := QR_GerenciamentoRotasZONA.AsFloat;
  QR_Talhoes.Open;

  if QR_GerenciamentoRotas.Tag = 1 then
  begin
    if paginaCarregadaGerenciamentoRotas then
      if QR_GerenciamentoRotas.IsEmpty then
        begin
          ExecJS(wbGerenciamentoRotas,'limpaRotas()');
          ExecJS(wbGerenciamentoRotas,'limpaLayersFazendas()');
        end
      else
        begin
          try
            //ativa_Mensagem('Aguarde...','Sistema gerando informa��es.',0);
            objJSON := so('{"frentes":[]}');

            objJSON['frentes[0]'] := SO(['frente',QR_FrenteCOD_FRENTE.AsInteger,
                                         'fazenda',QR_GerenciamentoRotasCOD_FAZENDA.AsInteger,
                                         'grupoempresa',QR_FrenteCOD_grupo.AsInteger,
                                         'empresa',QR_FrenteCOD_regional.AsInteger,
                                         'filial',QR_FrenteCOD_unidade.AsInteger,
                                         'safra',QR_FrenteCOD_SAFRA.AsInteger,
                                         'numero_rota',QR_GerenciamentoRotasCOD_ROTA.AsInteger]);

            SP_GeraRotas.ParamByName('P_FAZENDAS').AsString           := objJSON.AsString;
            SP_GeraRotas.ParamByName('P_MOSTRAEQUIPAMENTOS').AsString := 'N';
            SP_GeraRotas.Execute;

            ExecJS(wbGerenciamentoRotas,'atualizaInformacoesFrentes('+SP_GeraRotas.parambyname('RESULT').AsString+')');
          finally
            //desativa_Mensagem;
            cxGrid2.SetFocus;
          end;
        end;
  end;
end;

procedure TF_RotasFazenda_Mapas.QR_GerenciamentoRotasPontosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  QR_GerenciamentoRotasPontosTipoCarga.Close;
  QR_GerenciamentoRotasPontosTipoCarga.ParamByName('cod_rota').AsFloat := QR_GerenciamentoRotasPontosCOD_ROTA.AsFloat;
  QR_GerenciamentoRotasPontosTipoCarga.ParamByName('sequencia').AsFloat := QR_GerenciamentoRotasPontosSEQUENCIA.AsFloat;
  QR_GerenciamentoRotasPontosTipoCarga.Open;
end;

procedure TF_RotasFazenda_Mapas.QR_PreRotaPontosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if QR_PreRotaPontos.Tag = 1 then
  begin
    if not QR_PreRotaPontos.IsEmpty then
      execJS(wbSelecaoPontos,'selecionaPonto('+inttostr(QR_PreRotaPontosSEQUENCIA.AsInteger-1)+')');
  end;
end;

procedure TF_RotasFazenda_Mapas.QR_PreRotaTMP_BasicAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
    if paginaCarregadaGeracaoNovasRotasAvulsaBasic then
      if DataSet.IsEmpty then
        begin
          ExecJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaRotas()');
          ExecJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaLayersFazendas()');
        end
      else
        if not DataSet.IsEmpty then
          execJS(wbVisualizarTrajetoRotaAvulsaBasic,'selecionaPonto('+inttostr(QR_PreRotaTMP_BasicSEQUENCIA.AsInteger-1)+')');

    //P2 - 28/03/2012
    //Se a aba ativa for a de marca��o de pontos de interesse
    if RzPgNovaRota_Avulso_Basic.ActivePage = tsNovaRotaAvulsaPontosInteresseTempBasic then
    begin
      //atribui as informa��es para os campos da tela
      edtTexto1BordoCriarRotaAvulsaBasic.Text := QR_PreRotaTMP_BasicTEXTO_BORDO.AsString;
      edtTexto2BordoCriarRotaAvulsaBasic.Text := QR_PreRotaTMP_BasicTEXTO_BORDO2.AsString;
      edtDescricaoPontoInteresseCriarRotaAvulsaBasic.Text := QR_PreRotaTMP_BasicDESCRICAO_DETALHADA.AsString;
      //edtDistanciaAvisoPontoInteresseCriarRotaAvulsaBasic.Text := QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsString;
      //if edtDistanciaAvisoPontoInteresseCriarRotaAvulsaBasic.Text = '' then
      //  edtDistanciaAvisoPontoInteresseCriarRotaAvulsaBasic.Text := cbDistanciaAvisoPontoInteresseCriarRotaAvulsaBasic.Text;
      if not QR_DistanciaAviso.Locate('COD_DISTANCIA_AVISO_BORDO',QR_PreRotaTMP_BasicDISTANCIA_AVISO.AsString,[]) then
        QR_DistanciaAviso.Locate('PADRAO','S',[]);


      cbDistanciaAvisoCriarRotaAvulsaBasic.ItemIndex := QR_DistanciaAvisoCOD_DISTANCIA_AVISO_BORDO.AsInteger;

    end;
end;

procedure TF_RotasFazenda_Mapas.QR_TalhoesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QR_PercursoCadastrado.Close;
  QR_PercursoCadastrado.ParamByName('cod_safra').AsFloat := QR_TalhoesCOD_SAFRA.AsFloat;
  QR_PercursoCadastrado.ParamByName('cod_grupo').AsFloat := QR_TalhoesCOD_GRUPO.AsFloat;
  QR_PercursoCadastrado.ParamByName('cod_regional').AsFloat := QR_TalhoesCOD_REGIONAL.AsFloat;
  QR_PercursoCadastrado.ParamByName('cod_unidade').AsFloat := QR_TalhoesCOD_UNIDADE.AsFloat;
  QR_PercursoCadastrado.ParamByName('cod_fazenda').AsFloat := QR_TalhoesCOD_FAZENDA.AsFloat;
  QR_PercursoCadastrado.ParamByName('zona').AsFloat := QR_TalhoesZONA.AsFloat;
  QR_PercursoCadastrado.ParamByName('cod_talhao').AsFloat := QR_TalhoesCOD_TALHAO.AsFloat;
  QR_PercursoCadastrado.ParamByName('datahora_ini').AsDateTime := QR_TalhoesDATAHORA_INI.AsDateTime;
  QR_PercursoCadastrado.ParamByName('hora_inicial').AsString := QR_TalhoesHORA_INICIAL.AsString;
  QR_PercursoCadastrado.Open;
end;

procedure TF_RotasFazenda_Mapas.QR_VisualizarTrajetoRotaAvulsaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.Tag = 1 then
  begin
    if RzPgRotas.ActivePage = tsRotasGerarRotasAvulsas then
      begin

        if paginaCarregadaGeracaoNovasRotasAvulsa then
          if DataSet.IsEmpty then
            begin
              ExecJS(wbVisualizarTrajetoRotaAvulsa,'limpaRotas()');
              ExecJS(wbVisualizarTrajetoRotaAvulsa,'limpaLayersFazendas()');
            end
          else
            if not DataSet.IsEmpty then
              execJS(wbVisualizarTrajetoRotaAvulsa,'selecionaPonto('+inttostr(QR_VisualizarTrajetoRotaAvulsaSEQUENCIA.AsInteger-1)+')')
      end
    else if RzPgRotas.ActivePage = tsRotasGerarRotasAvulsasBasic then
      begin
        if paginaCarregadaGeracaoNovasRotasAvulsaBasic then
          if DataSet.IsEmpty then
            begin
              ExecJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaRotas()');
              ExecJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaLayersFazendas()');
            end
          else
            if not DataSet.IsEmpty then
              execJS(wbVisualizarTrajetoRotaAvulsaBasic,'selecionaPonto('+inttostr(QR_VisualizarTrajetoRotaAvulsaSEQUENCIA.AsInteger-1)+')')
      end;
  end;
end;

procedure TF_RotasFazenda_Mapas.RzBitBtn2Click(Sender: TObject);
begin
  inherited;
  execJS(wbVisualizarViagem,'limpaRotas()');
  execJS(wbVisualizarViagem,'limpaLayersFazendas()');

  if QR_EntradaCana.IsEmpty then
  begin
    Application.MessageBox('Selecione uma entrada de cana para visualizar uma rota.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  SP_VisualizaRota.ParamByName('P_GRUPO').AsFloat           := QR_EntradaCanaCOD_GRUPO.AsFloat;
  SP_VisualizaRota.ParamByName('P_REGIONAL').AsFloat           := QR_EntradaCanaCOD_REGIONAL.AsFloat;
  SP_VisualizaRota.ParamByName('P_UNIDADE').AsFloat           := QR_EntradaCanaCOD_UNIDADE.AsFloat;
  SP_VisualizaRota.ParamByName('P_ENTRADACANA').AsFloat           := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
  SP_VisualizaRota.ParamByName('P_SOMENTE_VISUALIZACAO').AsString := 'S';
  SP_VisualizaRota.Execute;

  execJS(wbVisualizarViagem,'atualizaTrajeto('+SP_VisualizaRota.ParamByName('RESULT').AsString+')');

  rzBtnVisualizarPontoaPonto.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.btnAsfaltoCriarRotaAvulsaBasicClick(Sender: TObject);
var
  i : Integer;
  bookMarkAtual : TBookmark;
begin
  inherited;

  if cxGridDBTableView8.DataController.GetSelectedCount = 0 then
  begin
    Application.MessageBox('Selecione algum ponto nos registros ao lado para marcar o tipo de percurso.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  QR_TipoPercurso.Locate('DESCRICAO',cbTipoPercursoCriarRotaAvulsaBasic.Text,[]);

  with cxGridDBTableView8 do
  begin
    bookMarkAtual := DataController.DataSource.DataSet.Bookmark;
    try
      for I := 0 to DataController.GetSelectedCount-1 do
      begin
        with TOraQuery.Create(Self) do
        begin
          Session := DM.Sessao;
          try
            SQL.Add('UPDATE pre_rota_tmp SET cod_tipopercurso = :cod_tipopercurso where sequencia = :sequencia');
            ParamByName('sequencia').AsFloat := Controller.SelectedRows[i].Values[cxGridDBTableView8SEQUENCIA.Index];
            ParamByName('cod_tipopercurso').AsFloat := QR_TipoPercursoCOD_TIPOPERCURSO.AsFloat;
            Execute;
          finally
            Free;
          end;
        end;
      end;
    finally
      Controller.ClearSelection;
      DataController.DataSource.DataSet.Close;
      DataController.DataSource.DataSet.Open;
      DataController.DataSource.DataSet.Bookmark := bookMarkAtual;
    end;
  end;

end;

procedure TF_RotasFazenda_Mapas.RzBitBtnPararPontoaPontoAvulsoBasicClick(
  Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPontoAvulsoBasic.Enabled := False;
  if Application.MessageBox('Deseja parar a visualiza��o do trajeto ponto a ponto ?','Confirma��o',MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      //Bot�es de controle da ferramenta criar nova rota avulsa (etapa 1)
      RzBitBtnPararPontoaPontoAvulsoBasic.Enabled  := False;
      RzBitBtnVisualizarTrajetoAvulsoBasic.Enabled := True;
      RzBitBtnVisualizarPontoaPontoAvulsoBasic.Enabled := True;

      //Bot�es de controle do menu lateral
      btnGerenciarRotasExistentes.Enabled := True;
      btnCriarNovasRotas_EntradaCana.Enabled := True;
      btnCriarNovasRotas_Avulso.Enabled := True;
      btnCriarNovasRotas_AvulsoBasic.Enabled := True;

      tmVisualizaRotaPontoaPontoAvulsoBasic.Enabled := False;
      execJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaTrajeto()');
      //QR_VisualizarTrajetoRotaAvulsa.Refresh;
      RzBitBtnVisualizarTrajetoAvulsoBasic.Click;
    end
  else
    tmVisualizaRotaPontoaPontoAvulsoBasic.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.RzBitBtnPararPontoaPontoAvulsoClick(
  Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPontoAvulso.Enabled := False;
  if Application.MessageBox('Deseja parar a visualiza��o do trajeto ponto a ponto ?','Confirma��o',MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      //Bot�es de controle da ferramenta criar nova rota avulsa (etapa 1)
      RzBitBtnPararPontoaPontoAvulso.Enabled  := False;
      RzBitBtnVisualizarTrajetoAvulso.Enabled := True;
      RzBitBtnVisualizarPontoaPontoAvulso.Enabled := True;

      //Bot�es de controle do menu lateral
      btnGerenciarRotasExistentes.Enabled := True;
      btnCriarNovasRotas_EntradaCana.Enabled := True;
      btnCriarNovasRotas_Avulso.Enabled := True;

      tmVisualizaRotaPontoaPontoAvulso.Enabled := False;
      execJS(wbVisualizarTrajetoRotaAvulsa,'limpaTrajeto()');
      QR_VisualizarTrajetoRotaAvulsa.Refresh;
    end
  else
    tmVisualizaRotaPontoaPontoAvulso.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.btnConfirmaRotaCriarNovaRotaAvulsaBasicClick(
  Sender: TObject);
begin
  inherited;
  if memoDescricaoRotaCriarNovaRotaAvulsaBasic.Lines.Text = '' then
  begin
    Application.MessageBox('Informe a descri��o da rota.','Aten��o',MB_ICONINFORMATION + MB_OK);
    memoDescricaoRotaCriarNovaRotaAvulsaBasic.SetFocus;
    Abort;
  end;

  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_GRUPO').AsFloat := QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsFloat;
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_REGIONAL').AsFloat := QR_PageControlEmpresa.FieldByName('COD_REGIONAL').AsFloat;
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_UNIDADE').AsFloat := QR_PageControlEmpresa.FieldByName('COD_UNIDADE').AsFloat;
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_FAZENDA').AsFloat := StrToFloat(edtCodFazendaRotaAvulsaBasic.Text);
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_DATAINICIO').AsDateTime := wwDBDateTimePicker3.DateTime;
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_DATAFIM').AsDateTime := wwDBDateTimePicker4.DateTime;
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_EQUIPAMENTO').AsFloat := StrToFloat(edtCodEquipamentoRotaAvulsaBasic.Text);
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_COR_TRAJETO_IDA').AsString := '#'+TColorToHex(pnCorTrajetoIdaCriarNovaRotaAvulsaBasic.Color);
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_COR_TRAJETO_VOLTA').AsString := '#'+TColorToHex(pnCorTrajetoVoltaCriarNovaRotaAvulsaBasic.Color);
  SP_ConfirmaRotaAvulsaBasic.ParamByName('P_DESCRICAO').AsString := ReplStr(memoDescricaoRotaCriarNovaRotaAvulsaBasic.Text,
                                                                            #13,' ');
  SP_ConfirmaRotaAvulsaBasic.ExecProc;

  btnConfirmaRotaCriarNovaRotaAvulsaBasic.Enabled := False;

  Application.MessageBox('Rota finalizada com �xito.','Informa��o',MB_ICONINFORMATION + MB_OK);

  Application.MessageBox('Voc� ser� redirecionado para a ferramenta Gerenciar Rotas Existentes.','Informa��o',MB_ICONINFORMATION + MB_OK);

  memoDescricaoRotaCriarNovaRotaAvulsaBasic.Lines.Clear;

  btnGerenciarRotasExistentes.Click;
end;

procedure TF_RotasFazenda_Mapas.btnCriarNovasRotas_AvulsoBasicClick(
  Sender: TObject);
begin
  inherited;
  wwDBDateTimePicker3.DateTime := Sysdate_Banco;
  wwDBDateTimePicker4.DateTime := Sysdate_Banco;
  edtCodFazendaRotaAvulsaBasic.Clear;
  edtCodEquipamentoRotaAvulsaBasic.Clear;

  seqSaidaUsinaCriarRotaAvulsaBasic := -1;
  seqEntradaFazendaCriarRotaAvulsaBasic := -1;
  seqSaidaFazendaCriarRotaAvulsaBasic := -1;
  seqEntradaUsinaCriarRotaAvulsaBasic := -1;

  QR_VisualizarTrajetoRotaAvulsa.Tag := 0;
  QR_VisualizarTrajetoRotaAvulsa.Close;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('cod_grupo').AsFloat := -1;
  QR_VisualizarTrajetoRotaAvulsa.Open;
  QR_VisualizarTrajetoRotaAvulsa.Tag := 1;

  QR_DistanciaAviso.Close;
  QR_DistanciaAviso.Open;

  RzBitBtnVisualizarPontoaPontoAvulsoBasic.Enabled := False;
  RzBitBtnPararPontoaPontoAvulsoBasic.Enabled := False;

  paginaCarregadaGeracaoNovasRotasAvulsaBasic := False;

  ativaAbasRzPageControl(RzPgRotas,true);
  RzPgRotas.ActivePage := tsRotasGerarRotasAvulsasBasic;
  RzPgNovaRota_Avulso_Basic.ActivePageIndex := 0;
  atualizaPainelNavegacao(RzPgNovaRota_Avulso_Basic,btnAnteriorGeraRotaAvulsaBasic,btnProximoGeraRotaAvulsaBasic,pnNavegacaoNovaRotaAvulsaBasic);
  ativaAbasRzPageControl(RzPgRotas,false);

  loadHTML(wbVisualizarTrajetoRotaAvulsaBasic,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);

  btnConfirmaRotaCriarNovaRotaAvulsaBasic.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.btnCriarNovasRotas_AvulsoClick(Sender: TObject);
begin
  inherited;
  wwDBDateTimePicker1.DateTime := Sysdate_Banco;
  wwDBDateTimePicker2.DateTime := Sysdate_Banco;
  edtCodFazenda.Clear;
  edtNomeFazenda.Clear;
  edtZona.Text := '0';
  edtCodEquipamento.Clear;

  QR_VisualizarTrajetoRotaAvulsa.Tag := 0;
  QR_VisualizarTrajetoRotaAvulsa.Close;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('cod_grupo').AsFloat := -1;
  QR_VisualizarTrajetoRotaAvulsa.Open;
  QR_VisualizarTrajetoRotaAvulsa.Tag := 1;

  RzBitBtnVisualizarPontoaPontoAvulso.Enabled := False;
  RzBitBtnPararPontoaPontoAvulso.Enabled := False;

  paginaCarregadaGeracaoNovasRotasAvulsa := false;

  ativaAbasRzPageControl(RzPgRotas,true);
  RzPgRotas.ActivePage := tsRotasGerarRotasAvulsas;
  atualizaPainelNavegacao(RzPgNovaRota_Avulso,btnAnteriorGeraRotaAvulsa,btnProximoGeraRotaAvulsa,pnNavegacaoNovaRotaAvulsa);
  ativaAbasRzPageControl(RzPgRotas,false);

  RzPgNovaRota_Avulso.ActivePageIndex := 0;

  loadHTML(wbVisualizarTrajetoRotaAvulsa,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(wbSelecaoPontosRotaAvulsa,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
end;

procedure TF_RotasFazenda_Mapas.RzBitBtnVisualizarPontoaPontoAvulsoBasicClick(
  Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPontoAvulsoBasic.Tag := 0;
  tmVisualizaRotaPontoaPontoAvulsoBasic.Interval := 500;

  //Bot�es de controle da ferramenta Criar Nova Rota Avulsa (etapa 1)
  RzBitBtnVisualizarTrajetoAvulsoBasic.Enabled := False;
  RzBitBtnVisualizarPontoaPontoAvulsoBasic.Enabled := False;
  RzBitBtnPararPontoaPontoAvulsoBasic.Enabled := True;

  //Bot�es de controle do menu lateral
  btnGerenciarRotasExistentes.Enabled := False;
  btnCriarNovasRotas_EntradaCana.Enabled := False;
  btnCriarNovasRotas_Avulso.Enabled := False;
  btnCriarNovasRotas_AvulsoBasic.Enabled := False;

  //Habilita o timer para mostrar os pontos no mapa
  tmVisualizaRotaPontoaPontoAvulsoBasic.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.RzBitBtnVisualizarPontoaPontoAvulsoClick(
  Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPontoAvulso.Tag := 0;
  tmVisualizaRotaPontoaPontoAvulso.Interval := 500;

  //Bot�es de controle da ferramenta Criar Nova Rota Avulsa (etapa 1)
  RzBitBtnVisualizarTrajetoAvulso.Enabled := False;
  RzBitBtnVisualizarPontoaPontoAvulso.Enabled := False;
  RzBitBtnPararPontoaPontoAvulso.Enabled := True;

  //Bot�es de controle do menu lateral
  btnGerenciarRotasExistentes.Enabled := False;
  btnCriarNovasRotas_EntradaCana.Enabled := False;
  btnCriarNovasRotas_Avulso.Enabled := False;

  //Habilita o timer para mostrar os pontos no mapa
  tmVisualizaRotaPontoaPontoAvulso.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.RzBitBtnVisualizarTrajetoAvulsoBasicClick(
  Sender: TObject);
begin
  inherited;
  if not Validar_Periodo(wwDBDateTimePicker3.Text,wwDBDateTimePicker4.Text) then
  begin
    wwDBDateTimePicker3.SetFocus;
    Abort;
  end;

  if edtCodEquipamentoRotaAvulsaBasic.Text = '' then
  begin
    Application.MessageBox('Informe o equipamento para visualizar o trajeto.','Aten��o',MB_ICONINFORMATION + MB_OK);
    edtCodEquipamentoRotaAvulsaBasic.SetFocus;
    Abort;
  end;

  if edtCodFazendaRotaAvulsaBasic.Text = '' then
  begin
    Application.MessageBox('Informe a fazenda para visualizar o trajeto.','Aten��o',MB_ICONINFORMATION + MB_OK);
    edtCodFazendaRotaAvulsaBasic.SetFocus;
    Abort;
  end;

  execJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaRotas()');
  execJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaLayersFazendas()');


  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_GRUPO').AsFloat := QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsFloat;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_EQUIPAMENTO').AsFloat := StrToFloat(edtCodEquipamentoRotaAvulsaBasic.Text);
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_FAZENDA').AsFloat := StrToFloat(edtCodFazendaRotaAvulsaBasic.Text);
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_ZONA').AsFloat := 0;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_DATAINI').AsDateTime := wwDBDateTimePicker3.DateTime;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_DATAFIM').AsDateTime := wwDBDateTimePicker4.DateTime;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_TIPO_VISUALIZACAO').AsString := 'BASIC';
  SP_VisualizaTrajetoRotaAvulsa.Execute;

  memo1.Lines.Text := SP_VisualizaTrajetoRotaAvulsa.ParamByName('RESULT').AsString;

  execJS(wbVisualizarTrajetoRotaAvulsaBasic,'atualizaTrajeto('+SP_VisualizaTrajetoRotaAvulsa.ParamByName('RESULT').AsString+')');

  QR_VisualizarTrajetoRotaAvulsa.Tag := 0;
  QR_VisualizarTrajetoRotaAvulsa.Close;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('COD_GRUPO').AsFloat := QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsFloat;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('COD_EQUIPAMENTO').AsFloat := StrToFloat(edtCodEquipamentoRotaAvulsaBasic.Text);
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('DATA_INI').AsDateTime := wwDBDateTimePicker3.DateTime;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('DATA_FIM').AsDateTime := wwDBDateTimePicker4.DateTime;
  QR_VisualizarTrajetoRotaAvulsa.Open;
  QR_VisualizarTrajetoRotaAvulsa.Tag := 1;
  QR_VisualizarTrajetoRotaAvulsaAfterScroll(QR_VisualizarTrajetoRotaAvulsa);

  if QR_VisualizarTrajetoRotaAvulsa.IsEmpty then
  begin
    Application.MessageBox('Informa��es n�o encontradas.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  RzBitBtnVisualizarPontoaPontoAvulsoBasic.Enabled := True;
  RzBitBtnPararPontoaPontoAvulsoBasic.Enabled := False;
end;

procedure TF_RotasFazenda_Mapas.RzBitBtnVisualizarTrajetoAvulsoClick(Sender: TObject);
begin
  inherited;

  if not Validar_Periodo(wwDBDateTimePicker1.Text,wwDBDateTimePicker2.Text) then
  begin
    wwDBDateTimePicker1.SetFocus;
    Abort;
  end;

  if edtCodEquipamento.Text = '' then
  begin
    Application.MessageBox('Informe o equipamento para visualizar o trajeto.','Aten��o',MB_ICONINFORMATION + MB_OK);
    edtCodEquipamento.SetFocus;
    Abort;
  end;

  if edtCodFazenda.Text = '' then
  begin
    Application.MessageBox('Informe a fazenda para visualizar o trajeto.','Aten��o',MB_ICONINFORMATION + MB_OK);
    edtCodFazenda.SetFocus;
    Abort;
  end;

  execJS(wbVisualizarTrajetoRotaAvulsa,'limpaRotas()');
  execJS(wbVisualizarTrajetoRotaAvulsa,'limpaLayersFazendas()');

  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_GRUPO').AsFloat := QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsFloat;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_EQUIPAMENTO').AsFloat := StrToFloat(edtCodEquipamento.Text);
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_FAZENDA').AsFloat := StrToFloat(edtCodFazenda.Text);
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_ZONA').AsFloat := 0;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_DATAINI').AsDateTime := wwDBDateTimePicker1.DateTime;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_DATAFIM').AsDateTime := wwDBDateTimePicker2.DateTime;
  SP_VisualizaTrajetoRotaAvulsa.ParamByName('P_TIPO_VISUALIZACAO').AsString := 'ENTERPRISE';
  SP_VisualizaTrajetoRotaAvulsa.Execute;

  memo1.Lines.Text := SP_VisualizaTrajetoRotaAvulsa.ParamByName('RESULT').AsString;

  execJS(wbVisualizarTrajetoRotaAvulsa,'atualizaTrajeto('+SP_VisualizaTrajetoRotaAvulsa.ParamByName('RESULT').AsString+')');

  QR_VisualizarTrajetoRotaAvulsa.Tag := 0;
  QR_VisualizarTrajetoRotaAvulsa.Close;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('COD_GRUPO').AsFloat := QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsFloat;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('COD_EQUIPAMENTO').AsFloat := StrToFloat(edtCodEquipamento.Text);
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('DATA_INI').AsDateTime := wwDBDateTimePicker1.DateTime;
  QR_VisualizarTrajetoRotaAvulsa.ParamByName('DATA_FIM').AsDateTime := wwDBDateTimePicker2.DateTime;
  QR_VisualizarTrajetoRotaAvulsa.Open;
  QR_VisualizarTrajetoRotaAvulsa.Tag := 1;
  QR_VisualizarTrajetoRotaAvulsaAfterScroll(QR_VisualizarTrajetoRotaAvulsa);

  RzBitBtnVisualizarPontoaPontoAvulso.Enabled := True;
  RzBitBtnPararPontoaPontoAvulso.Enabled := False;
end;

procedure TF_RotasFazenda_Mapas.rzBtnAnalisePreRotaClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja analisar o trajeto ?','Confirma��o',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    SP_AnalisePreRota.ParamByName('P_PREROTA').AsFloat := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
    SP_AnalisePreRota.ExecProc;

    Application.MessageBox('Pre Rota analisada com �xito.','Informa��o',MB_ICONINFORMATION + MB_OK);

    rzBtnGerarPreRota.Enabled   := False;
    rzBtnAnalisePreRota.Enabled := False;
    preRotaAnalisada            := True;
  end;
end;

procedure TF_RotasFazenda_Mapas.rzBtnConfirmaRotaClick(Sender: TObject);
begin
  inherited;
  if memoDescricaoRota.Lines.Text = '' then
  begin
    Application.MessageBox('Informe a descri��o da rota.','Aten��o',MB_ICONINFORMATION + MB_OK);
    memoDescricaoRota.SetFocus;
    Abort;
  end;

  SP_ConfirmaRota.ParamByName('P_PREROTA').AsFloat            := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
  SP_ConfirmaRota.ParamByName('P_DESCRICAO').AsString         := memoDescricaoRota.Lines.Text;
  SP_ConfirmaRota.ParamByName('P_COR_TRAJETO_IDA').AsString   := '#'+TColorToHex(rzPnCorTrajetoIda.Color);
  SP_ConfirmaRota.ParamByName('P_COR_TRAJETO_VOLTA').AsString := '#'+TColorToHex(rzPnCorTrajetoVolta.Color);
  SP_ConfirmaRota.ExecProc;

  rzBtnConfirmaRota.Enabled := False;

  Application.MessageBox('Rota finalizada com �xito.','Informa��o',MB_ICONINFORMATION + MB_OK);

  Application.MessageBox('Voc� ser� redirecionado para a ferramenta Gerenciar Rotas Existentes.','Informa��o',MB_ICONINFORMATION + MB_OK);

  btnGerenciarRotasExistentes.Click;
end;

procedure TF_RotasFazenda_Mapas.rzBtnGerarPreRotaAvulsaClick(Sender: TObject);
var
  preRota : String;
begin
  inherited;

  if QR_HorarioTalhaoDistanciaRotaAvulsa.IsEmpty then
  begin
    Application.MessageBox('Escolha um hor�rio para gerar o trajeto.','Aten��o',MB_ICONINFORMATION + MB_OK);
    wwDBComboBoxHorarioTalhaoDistanciaAvulsa.SetFocus;
    Abort;
  end;



  try
    execJS(wbSelecaoPontosRotaAvulsa,'limpaRotas()');
    execJS(wbSelecaoPontosRotaAvulsa,'limpaLayersFazendas()');
  finally

  end;
end;

procedure TF_RotasFazenda_Mapas.rzBtnGerarPreRotaClick(Sender: TObject);
var
  preRota : String;
begin
  inherited;

  if QR_HorarioTalhaoDistanciaRotaEntradaCana.IsEmpty then
  begin
    Application.MessageBox('Escolha um hor�rio para gerar a pr� rota.','Aten��o',MB_ICONINFORMATION + MB_OK);
    wwDBComboBoxHorarioTalhaoDistancia.SetFocus;
    Abort;
  end;


  //ativa_Mensagem('Log�stica','Aguarde gerando pr�-rota.',0);
  try
    execJS(wbSelecaoPontos,'limpaRotas()');
    execJS(wbSelecaoPontos,'limpaLayersFazendas()');

    preRota := VarToStr(Buscar_Descricao('pre_rota',
                                         'cod_pre_rota',
                                         'cod_entradacana',
                                         'cod_grupo = '+QR_PageControlEmpresa.FieldByName('cod_grupo').AsString +
                                         ' and cod_regional = '+QR_PageControlEmpresa.FieldByName('cod_regional').AsString +
                                         ' and cod_unidade = '+QR_PageControlEmpresa.FieldByName('cod_unidade').AsString,
                                         QR_EntradaCanaCOD_ENTRADACANA.AsFloat));

    if preRota = '' then
    begin
      SP_Gera_PreRota.ParamByName('P_ENTRADACANA').AsFloat             := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
      SP_Gera_PreRota.ParamByName('P_BUFFER_GEOMETRIA_METROS').AsFloat := 100;
      SP_Gera_PreRota.ParamByName('P_HORARIO_INICIAL').AsString        := QR_HorarioTalhaoDistanciaRotaEntradaCanaHORA_INICIAL.AsString;
      SP_Gera_PreRota.ExecProc;

      preRota := SP_Gera_PreRota.ParamByName('RESULT').AsString;
    end;

    SP_VisualizaRota.ParamByName('P_GRUPO').AsFloat                 := QR_EntradaCanaCOD_GRUPO.AsFloat;
    SP_VisualizaRota.ParamByName('P_REGIONAL').AsFloat              := QR_EntradaCanaCOD_REGIONAL.AsFloat;
    SP_VisualizaRota.ParamByName('P_UNIDADE').AsFloat               := QR_EntradaCanaCOD_UNIDADE.AsFloat;
    SP_VisualizaRota.ParamByName('P_ENTRADACANA').AsFloat           := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
    SP_VisualizaRota.ParamByName('P_SOMENTE_VISUALIZACAO').AsString := 'N';
    SP_VisualizaRota.ExecProc;

    execJS(wbSelecaoPontos,'atualizaTrajeto('+SP_VisualizaRota.ParamByName('RESULT').AsString+')');

    QR_PreRotaPontos.Tag := 0;
    QR_PreRotaPontos.Close;
    QR_PreRotaPontos.ParamByName('cod_pre_rota').AsFloat := StrToFloat(preRota);
    QR_PreRotaPontos.Open;
    QR_PreRotaPontos.Tag := 1;
    QR_PreRotaPontosAfterScroll(QR_PreRotaPontos);

    preRotaAnalisada            := False;
    rzBtnGerarPreRota.Enabled   := False;
    rzBtnAnalisePreRota.Enabled := True;
  finally
    //desativa_Mensagem;
  end;
end;

procedure TF_RotasFazenda_Mapas.rzBtnPararRotaPontoaPontoClick(Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPontoEntradaCana.Enabled := False;
  if Application.MessageBox('Deseja parar a visualiza��o do trajeto ponto a ponto ?','Confirma��o',MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      rzBtnPararRotaPontoaPonto.Enabled  := False;
      tmVisualizaRotaPontoaPontoEntradaCana.Enabled := False;
      execJS(wbVisualizarViagem,'limpaTrajeto()');
      QR_EntradaCanaAfterScroll(QR_EntradaCana);
    end
  else
    tmVisualizaRotaPontoaPontoEntradaCana.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.rzBtnVisualizarPontoaPontoClick(
  Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPontoEntradaCana.Tag := 0;
  tmVisualizaRotaPontoaPontoEntradaCana.Interval := 500;
  rzBtnPararRotaPontoaPonto.Enabled   := True;
  tmVisualizaRotaPontoaPontoEntradaCana.Enabled  := True;
end;

procedure TF_RotasFazenda_Mapas.rzBtnVisualizarTrajetoClick(Sender: TObject);
begin
  inherited;
  execJS(wbVisualizarViagem,'limpaRotas()');
  execJS(wbVisualizarViagem,'limpaLayersFazendas()');

  if QR_EntradaCana.IsEmpty then
  begin
    Application.MessageBox('Selecione um registro para visualizar o trajeto.','Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  SP_VisualizaRota.ParamByName('P_GRUPO').AsFloat := QR_EntradaCanaCOD_GRUPO.AsFloat;
  SP_VisualizaRota.ParamByName('P_REGIONAL').AsFloat := QR_EntradaCanaCOD_REGIONAL.AsFloat;
  SP_VisualizaRota.ParamByName('P_UNIDADE').AsFloat := QR_EntradaCanaCOD_UNIDADE.AsFloat;
  SP_VisualizaRota.ParamByName('P_ENTRADACANA').AsFloat := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
  SP_VisualizaRota.ParamByName('P_SOMENTE_VISUALIZACAO').AsString := 'S';
  SP_VisualizaRota.Execute;

  execJS(wbVisualizarViagem,'atualizaTrajeto('+SP_VisualizaRota.ParamByName('RESULT').AsString+')');

  rzBtnVisualizarPontoaPonto.Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.rzPageControlUnidadesMoagemChange(
  Sender: TObject);
begin
  inherited;
  if PageControlChange(rzPageControlUnidadesMoagem, QR_PageControlEmpresa) then
  begin
    QR_Frente.Tag := 0;
    QR_Frente.Close;
    QR_Frente.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
    QR_Frente.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
    QR_Frente.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
    QR_Frente.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
    QR_Frente.Open;
    QR_Frente.Tag := 1;
    QR_FrenteAfterScroll(QR_Frente);

    try
      if (paginaCarregadaGerenciamentoRotas) and
         (QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat <> 0) then
        execJS(wbGerenciamentoRotas,'centralizaMapa('+QR_PageControlEmpresa.FieldByName('latitude').AsString+','
                                                     +QR_PageControlEmpresa.FieldByName('longitude').AsString+')');

      if (paginaCarregadaGeracaoNovasRotasAvulsa) and
         (QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat <> 0) then
        execJS(wbGerenciamentoRotas,'centralizaMapa('+QR_PageControlEmpresa.FieldByName('latitude').AsString+','
                                                     +QR_PageControlEmpresa.FieldByName('longitude').AsString+')');
    except

    end;


    RzPgRotas.ActivePage := tsRotasPrincipal;
  end;
end;

procedure TF_RotasFazenda_Mapas.tmVisualizaRotaPontoaPontoAvulsoBasicTimer(
  Sender: TObject);
begin
  inherited;
  TTimer(Sender).Enabled := False;
  execJS(wbVisualizarTrajetoRotaAvulsaBasic,'visualizaPontoTimer('+IntToStr(TTimer(Sender).Tag)+')');
  TTimer(Sender).Tag := TTimer(Sender).Tag + 1;
  if TTimer(Sender).Tag >= QR_VisualizarTrajetoRotaAvulsaQTDETOTALREGISTROS.AsInteger-3 then
    begin
      TTimer(Sender).Enabled := False;
      RzBitBtnPararPontoaPontoAvulsoBasic.Enabled  := False;
      RzBitBtnVisualizarPontoaPontoAvulsoBasic.Enabled := False;
      execJS(wbVisualizarTrajetoRotaAvulsaBasic,'limpaTrajeto()');
      Application.MessageBox('Fim de Trajeto.','Informa��o',MB_ICONINFORMATION + MB_OK);
      Abort;
    end
  else
    TTimer(Sender).Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.tmVisualizaRotaPontoaPontoAvulsoTimer(
  Sender: TObject);
begin
  inherited;
  TTimer(Sender).Enabled := False;
  execJS(wbVisualizarTrajetoRotaAvulsa,'visualizaPontoTimer('+IntToStr(TTimer(Sender).Tag)+')');
  TTimer(Sender).Tag := TTimer(Sender).Tag + 1;
  if TTimer(Sender).Tag >= QR_VisualizarTrajetoRotaAvulsaQTDETOTALREGISTROS.AsInteger-3 then
    begin
      TTimer(Sender).Enabled := False;
      RzBitBtnPararPontoaPontoAvulso.Enabled  := False;
      RzBitBtnVisualizarPontoaPontoAvulso.Enabled := False;
      execJS(wbVisualizarViagem,'limpaTrajeto()');
      Application.MessageBox('Fim de Trajeto.','Informa��o',MB_ICONINFORMATION + MB_OK);
      Abort;
    end
  else
    TTimer(Sender).Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.tmVisualizaRotaPontoaPontoEntradaCanaTimer(
  Sender: TObject);
begin
  inherited;
  TTimer(Sender).Enabled := False;
  execJS(wbVisualizarViagem,'visualizaPontoTimer('+IntToStr(TTimer(Sender).Tag)+')');
  TTimer(Sender).Tag := TTimer(Sender).Tag + 1;
  if TTimer(Sender).Tag >= QR_EntradaCanaQTDEPONTOSESPACIAL.AsInteger-3 then
    begin
      TTimer(Sender).Enabled := False;
      rzBtnPararRotaPontoaPonto.Enabled  := False;
      rzBtnVisualizarPontoaPonto.Enabled := False;
      execJS(wbVisualizarViagem,'limpaTrajeto()');
      Application.MessageBox('Fim de Trajeto.','Informa��o',MB_ICONINFORMATION + MB_OK);
      Abort;
    end
  else
    TTimer(Sender).Enabled := True;
end;

procedure TF_RotasFazenda_Mapas.wbGerenciamentoRotasDocumentComplete(
  ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  Curwebrowser: IwebBrowser;
  TopWebBrowser : IwebBrowser;
  Document : OleVariant;
  WindowName : String;
begin
  inherited;

  CurWebrowser := pDisp as IWebBrowser;
  TopWebBrowser := (ASender as TWebBrowser).DefaultInterface;
  if CurWebrowser=TopWebBrowser then
  begin
    //ShowMessage('Document is complete.');
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
    QR_InformacoesIniciais.ParamByName('tipo_visualizacao').AsString := 'BASIC';
    QR_InformacoesIniciais.Open;

    try
      execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');
    except

    end;

    paginaCarregadaGerenciamentoRotas := True;
  end
  else
  begin
    Document := CurWebrowser.Document;
    WindowName := Document.ParentWindow.Name;
    //ShowMessage('Frame ' + WindowName + ' is loaded.')
  end;
end;

procedure TF_RotasFazenda_Mapas.wbSelecaoPontosDocumentComplete(
  ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  Curwebrowser: IwebBrowser;
  TopWebBrowser : IwebBrowser;
  Document : OleVariant;
  WindowName : String;
begin
  CurWebrowser := pDisp as IWebBrowser;
  TopWebBrowser := (ASender as TWebBrowser).DefaultInterface;
  if CurWebrowser=TopWebBrowser then
  begin
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
    QR_InformacoesIniciais.ParamByName('tipo_visualizacao').AsString := 'ENTERPRISE';
    QR_InformacoesIniciais.Open;

    try
      execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');
    except

    end;

    TWebBrowser(ASender).Tag := 0;
  end
  else
  begin
    Document := CurWebrowser.Document;
    WindowName := Document.ParentWindow.Name;
  end;
end;

procedure TF_RotasFazenda_Mapas.wbVisualizarTrajetoRotaAvulsaBasicDocumentComplete(
  ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  Curwebrowser: IwebBrowser;
  TopWebBrowser : IwebBrowser;
  Document : OleVariant;
  WindowName : String;
begin
  inherited;

  CurWebrowser := pDisp as IWebBrowser;
  TopWebBrowser := (ASender as TWebBrowser).DefaultInterface;
  if CurWebrowser=TopWebBrowser then
  begin
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
    QR_InformacoesIniciais.ParamByName('tipo_visualizacao').AsString := 'BASIC';
    QR_InformacoesIniciais.Open;

    paginaCarregadaGeracaoNovasRotasAvulsaBasic := True;

    try
      execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');
    except
      wbVisualizarViagemDocumentComplete(ASender,pDisp,URL);
    end;
  end
  else
  begin
    Document := CurWebrowser.Document;
    WindowName := Document.ParentWindow.Name;
  end;

end;

procedure TF_RotasFazenda_Mapas.wbVisualizarTrajetoRotaAvulsaDocumentComplete(
  ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  Curwebrowser: IwebBrowser;
  TopWebBrowser : IwebBrowser;
  Document : OleVariant;
  WindowName : String;
begin
  inherited;

  CurWebrowser := pDisp as IWebBrowser;
  TopWebBrowser := (ASender as TWebBrowser).DefaultInterface;
  if CurWebrowser=TopWebBrowser then
  begin
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_regional').AsFloat := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_unidade').AsFloat := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
    QR_InformacoesIniciais.ParamByName('tipo_visualizacao').AsString := 'ENTERPRISE';
    QR_InformacoesIniciais.Open;

    paginaCarregadaGeracaoNovasRotasAvulsa := True;

    try
      execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');
    except
      wbVisualizarViagemDocumentComplete(ASender,pDisp,URL);
    end;
  end
  else
  begin
    Document := CurWebrowser.Document;
    WindowName := Document.ParentWindow.Name;
  end;
end;

procedure TF_RotasFazenda_Mapas.wbVisualizarViagemDocumentComplete(
  ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  Curwebrowser: IwebBrowser;
  TopWebBrowser : IwebBrowser;
  Document : OleVariant;
  WindowName : String;
begin
  CurWebrowser := pDisp as IWebBrowser;
  TopWebBrowser := (ASender as TWebBrowser).DefaultInterface;
  if CurWebrowser=TopWebBrowser then
  begin
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupo').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupo').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_regional').AsFloat      := QR_PageControlEmpresa.FieldByName('cod_regional').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_unidade').AsFloat       := QR_PageControlEmpresa.FieldByName('cod_unidade').AsFloat;
    QR_InformacoesIniciais.ParamByName('tipo_visualizacao').AsString := 'ENTERPRISE';
    QR_InformacoesIniciais.Open;

    try
      execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');
    except

    end;
  end
  else
  begin
    Document := CurWebrowser.Document;
    WindowName := Document.ParentWindow.Name;
  end;

end;

procedure TF_RotasFazenda_Mapas.edtCodEquipamentoExit(Sender: TObject);
begin
  inherited;
  if edtCodEquipamento.Text <> '' then
    if  Buscar_Descricao('tipo_equipamento te, equipamento a',
                         'count(1)',
                         'a.cod_equipamento',
                         'a.cod_grupo = '+DM.QR_UnidadeCOD_GRUPO.AsString+
                         ' AND a.ativo = ''S'' '+
                         ' AND a.cod_tipoequipamento = te.cod_tipoequipamento '+
                         ' AND te.tipo_cct = ''C'' ',
                         edtCodEquipamento.Text) = 0 then
     begin
       Application.MessageBox('Equipamento n�o est� cadastrado, n�o est� ativo ou n�o � do tipo de equipamento caminh�o.','Aten��o',MB_ICONERROR + MB_OK);
       edtCodEquipamento.Clear;
       edtCodEquipamento.SetFocus;
       Abort;
     end;
end;

procedure TF_RotasFazenda_Mapas.edtCodEquipamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then btnPesquisa_Equipamentos.Click;
end;

procedure TF_RotasFazenda_Mapas.edtCodFazendaExit(Sender: TObject);
begin
  inherited;
  if edtCodFazenda.Text = '' then
    edtNomeFazenda.Clear
  else
    begin
      edtNomeFazenda.Text := VarToStr(Buscar_Descricao('fazenda a',
                                                       'a.descricao',
                                                       'a.cod_fazenda',
                                                       'a.cod_grupo = '+DM.QR_UnidadeCOD_GRUPO.AsString+
                                                       ' AND a.cod_regional = '+DM.QR_UnidadeCOD_REGIONAL.AsString+
                                                       ' AND a.cod_unidade = '+DM.QR_UnidadeCOD_UNIDADE.AsString+
                                                       ' AND EXISTS (SELECT 1 '+
                                                       '                 FROM talhao_geom tg '+
                                                       '                WHERE tg.cod_fazenda = a.cod_fazenda)',
                                                       edtCodFazenda.Text));
      if edtNomeFazenda.Text = '' then
      begin
        Application.MessageBox('Fazenda n�o cadastrada ou n�o possui mapa importado.','Aten��o',MB_ICONERROR + MB_OK);
        edtCodFazenda.Clear;
        edtCodFazenda.SetFocus;
        Abort;
      end;
    end;
end;

procedure TF_RotasFazenda_Mapas.edtCodFazendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then btnPesquisa_Fazendas.Click;

end;

procedure TF_RotasFazenda_Mapas.edtZonaExit(Sender: TObject);
begin
  inherited;
  if edtZona.Text <> '' then
  begin
    if edtCodFazenda.Text = '' then
    begin
      Application.MessageBox('Informe o c�digo da fazenda.','Aten��o',MB_ICONINFORMATION + MB_OK);
      edtCodFazenda.SetFocus;
      Abort;
    end;

    if Buscar_Descricao('talhao t, fazenda f',
                        'COUNT(1)',
                        't.zona',
                        'EXISTS (SELECT 1                              ' +
                        '          FROM talhao_geom tg                 ' +
                        '         WHERE tg.cod_fazenda = t.cod_fazenda ' +
                        '                  AND tg.zona = t.zona)       ' +
                        '   AND t.cod_grupo = ' + QR_PageControlEmpresa.FieldByName('COD_GRUPO').AsString +
                        '   AND t.cod_regional = ' + QR_PageControlEmpresa.FieldByName('COD_REGIONAL').AsString +
                        '   AND t.cod_unidade = ' + QR_PageControlEmpresa.FieldByName('COD_UNIDADE').AsString +
                        '   AND t.cod_fazenda = ' + edtCodFazenda.Text,
                        edtZona.Text) = 0 then
    begin
      Application.MessageBox('Zona n�o cadastrada para a fazenda ou n�o possui mapa importado.','Aten��o',MB_ICONINFORMATION + MB_OK);
      edtZona.Clear;
      edtZona.SetFocus;
      Abort;
    end;
  end;
end;

end.
