unit U_RotasFazenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_TemplateConsulta, StdCtrls, Buttons, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, OleCtrls, SHDocVw, RzPanel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Ora, RzTabs, ImgList, RzGroupBar,
  RzSplit, MemDS, DBAccess, cxMemo, cxRichEdit, cxTextEdit, cxImage,
  cxImageComboBox, cxBlobEdit, MSHTML, ActiveX,
  superobject,
  //pngextra,
  RzButton,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, ColorGrd, cxDBLookupComboBox, DBCtrls,
  cxColorComboBox, cxButtonEdit, pngimage, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxGDIPlusClasses;

type
  TF_RotasFazenda = class(TF_TemplateConsulta)
    rzPageControlUnidadesMoagem: TRzPageControl;
    QR_GerenciamentoRotas: TOraQuery;
    Panel3: TPanel;
    RzSplitter1: TRzSplitter;
    RzGroupBar1: TRzGroupBar;
    RzGroup2: TRzGroup;
    ImageList1: TImageList;
    RzPgRotas: TRzPageControl;
    tsRotasVisualizaRotas: TRzTabSheet;
    tsRotasGerarRotas: TRzTabSheet;
    QR_Frente: TOraQuery;
    QR_FrenteCOD_SAFRA: TIntegerField;
    QR_FrenteCOD_FRENTE: TIntegerField;
    QR_FrenteCOD_FAZENDA: TIntegerField;
    QR_FrenteDESCRICAO: TStringField;
    QR_FrenteTRANSPORTE_LIBERADO: TStringField;
    QR_FrentePOSSUIROTA: TStringField;
    QR_FrenteCOD_GRUPOEMPRESA: TFloatField;
    QR_FrenteCOD_EMPRESA: TFloatField;
    QR_FrenteCOD_FILIAL: TFloatField;
    DS_Frente: TOraDataSource;
    RzPanel3: TRzPanel;
    Panel5: TPanel;
    wbVisualizarRotas: TWebBrowser;
    tsRotasGerenciamentoRotas: TRzTabSheet;
    RzPanel4: TRzPanel;
    RzPgNovaRota: TRzPageControl;
    tsNovaRotaEscolhaFrente: TRzTabSheet;
    tsNovaRotaVisualizaViagem: TRzTabSheet;
    pnNavegacaoNovaRota: TPanel;
    RzPanel5: TRzPanel;
    Label1: TLabel;
    RzPanel1: TRzPanel;
    QR_GerenciamentoRotasCOD_ROTA: TFloatField;
    QR_GerenciamentoRotasDESCRICAO: TStringField;
    QR_GerenciamentoRotasCOD_FAZENDA: TIntegerField;
    QR_GerenciamentoRotasZONA: TIntegerField;
    QR_GerenciamentoRotasDATAHORA_INICIO: TDateTimeField;
    QR_GerenciamentoRotasDATAHORA_FIM: TDateTimeField;
    QR_GerenciamentoRotasOBSERVACAO: TStringField;
    QR_GerenciamentoRotasATIVO: TStringField;
    DS_GerenciamentoRotas: TOraDataSource;
    QR_GerenciamentoRotasVISUALIZA: TStringField;
    tsRotasPrincipal: TRzTabSheet;
    Panel4: TPanel;
    QR_InformacoesIniciais: TOraQuery;
    QR_InformacoesIniciaisINFORMACOESINICIAISJSON: TMemoField;
    RzGroup1: TRzGroup;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    SP_GeraRotas: TOraStoredProc;
    tsNovaRotaSelecaoPontos: TRzTabSheet;
    tsNovaRotaConfirmaRota: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel6: TRzPanel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid3DBTableView1COD_FAZENDA: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid3DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn;
    QR_EntradaCana: TOraQuery;
    QR_EntradaCanaCOD_ENTRADACANA: TFloatField;
    QR_EntradaCanaDATAMOVIMENTO: TDateTimeField;
    QR_EntradaCanaDATA_SAIDA: TDateTimeField;
    QR_EntradaCanaDATA_CHEGADA: TDateTimeField;
    QR_EntradaCanaQTDEPONTOSESPACIAL: TFloatField;
    DS_EntradaCana: TOraDataSource;
    Panel9: TPanel;
    SP_BuscaHTMLRota: TOraStoredProc;
    SP_VisualizaRota: TOraStoredProc;
    QR_EntradaCanaCOD_EQUIPAMENTO: TIntegerField;
    RzPanel7: TRzPanel;
    QR_PreRotaPontos: TOraQuery;
    tmVisualizaRotaPontoaPonto: TTimer;
    SP_Gera_PreRota: TOraStoredProc;
    Panel12: TPanel;
    ColorDialog1: TColorDialog;
    DS_PreRotaPontos: TOraDataSource;
    QR_PreRotaPontosCOD_PRE_ROTA: TFloatField;
    QR_PreRotaPontosSEQUENCIA: TIntegerField;
    QR_PreRotaPontosPONTO_INTERESSE: TStringField;
    QR_PreRotaPontosTEXTO_BORDO: TStringField;
    QR_PreRotaPontosTEXTO_BORDO2: TStringField;
    QR_PreRotaPontosDESCRICAO_DETALHADA: TStringField;
    RzPanel8: TRzPanel;
    SP_AnalisePreRota: TOraStoredProc;
    QR_PreRotaPontosDISTANCIA_AVISO: TFloatField;
    QR_AvisoDistancia: TOraQuery;
    QR_AvisoDistanciaCODIGO: TFloatField;
    QR_AvisoDistanciaDESCRICAO: TStringField;
    DS_AvisoDistancia: TOraDataSource;
    RzPanel9: TRzPanel;
    RzGroupBox4: TRzGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Panel11: TPanel;
    RzGroupBox1: TRzGroupBox;
    rzPnCorTrajetoIda: TRzPanel;
    rzPnCorTrajetoVolta: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    memoDescricaoRota: TMemo;
    RzGroupBox3: TRzGroupBox;
    rzBtnVisualizarRota: TRzBitBtn;
    rzBtnConfirmaRota: TRzBitBtn;
    Label8: TLabel;
    DBText1: TDBText;
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
    Panel14: TPanel;
    wbConfirmacaoRota: TWebBrowser;
    QR_ResumoRota: TOraQuery;
    DS_ResumoRota: TOraDataSource;
    QR_PreRotaPontosDATA: TDateTimeField;
    QR_PreRotaPontosVELOCIDADE: TFloatField;
    QR_ResumoRotaCOD_ENTRADACANA: TFloatField;
    QR_ResumoRotaEQUIPAMENTO: TStringField;
    QR_ResumoRotaDATASAIDAINDUSTRIA: TDateTimeField;
    QR_ResumoRotaDATACHEGADAFAZENDA: TDateTimeField;
    QR_ResumoRotaDATASAIDAFAZENDA: TDateTimeField;
    QR_ResumoRotaDATACHEGADAINDUSTRIA: TDateTimeField;
    QR_ResumoRotaQTDEPONTOSMONITORADOS: TFloatField;
    QR_ResumoRotaQTDEPONTOSINSTRUMENTADOS: TFloatField;
    QR_PreRotaPontosDISTANCIA_TOTAL_ULT_PTO: TFloatField;
    QR_HorarioTalhaoDistancia: TOraQuery;
    DS_HorarioTalhaoDistancia: TOraDataSource;
    QR_HorarioTalhaoDistanciaHORA_INICIAL: TStringField;
    QR_HorarioTalhaoDistanciaHORARIO: TStringField;
    SP_ConfirmaRota: TOraStoredProc;
    QR_GerenciamentoRotasCOR_TRAJETO_IDA: TStringField;
    QR_GerenciamentoRotasCOR_TRAJETO_VOLTA: TStringField;
    QR_GerenciamentoRotasCOD_GRUPOEMPRESA: TIntegerField;
    QR_GerenciamentoRotasCOD_EMPRESA: TIntegerField;
    QR_GerenciamentoRotasCOD_FILIAL: TIntegerField;
    RzSplitter2: TRzSplitter;
    Panel6: TPanel;
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
    Panel16: TPanel;
    RzSplitter3: TRzSplitter;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    RzBitBtn2: TRzBitBtn;
    rzBtnPararRotaPontoaPonto: TRzBitBtn;
    pnVisualizaRotaPontoaPonto: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    rzBtnVisualizarPontoaPonto: TRzBitBtn;
    cbIntevervaloPontos: TwwDBComboBox;
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
    cxGrid5DBTableView1VELOCIDADE: TcxGridDBColumn;
    cxGrid5DBTableView1DISTANCIA_AVISO: TcxGridDBColumn;
    cxGrid5DBTableView1DESCRICAO_DETALHADA: TcxGridDBColumn;
    cxGrid5Level1: TcxGridLevel;
    Panel15: TPanel;
    rzBtnGerarPreRota: TRzBitBtn;
    rzBtnAnalisePreRota: TRzBitBtn;
    RzGroupBox5: TRzGroupBox;
    wwDBComboBoxHorarioTalhaoDistancia: TwwDBComboBox;
    Panel18: TPanel;
    wbSelecaoPontos: TWebBrowser;
    imgEtapaPosterior: TImage;
    Panel19: TPanel;
    imgEtapaAnterior: TImage;
    imgCorTrajetoIda: TImage;
    imgCorTrajetoVolta: TImage;
    wbGerenciamentoRotas: TWebBrowser;
    imgAnteriorTransparente: TImage;
    imgProximoTransparente: TImage;
    imgProximoAtivado: TImage;
    imgAnteriorAtivado: TImage;
    procedure imgCorTrajetoVoltaClick(Sender: TObject);
    procedure imgCorTrajetoIdaClick(Sender: TObject);
    procedure imgEtapaPosteriorClick(Sender: TObject);
    procedure imgEtapaAnteriorClick(Sender: TObject);
    procedure cxGrid2DBTableView1VISUALIZAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid2DBTableView1COR_TRAJETO_VOLTAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid2DBTableView1COR_TRAJETO_IDAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure rzBtnConfirmaRotaClick(Sender: TObject);
    procedure RzPgNovaRotaChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure QR_PreRotaPontosAfterPost(DataSet: TDataSet);
    procedure QR_PreRotaPontosAfterScroll(DataSet: TDataSet);
    procedure rzBtnAnalisePreRotaClick(Sender: TObject);
    procedure PNGBtnCorTrajetoVoltaClick(Sender: TObject);
    procedure PNGBtnCorTrajetoIdaClick(Sender: TObject);
    procedure rzBtnGerarPreRotaClick(Sender: TObject);
    procedure rzBtnPararRotaPontoaPontoClick(Sender: TObject);
    procedure tmVisualizaRotaPontoaPontoTimer(Sender: TObject);
    procedure rzBtnVisualizarPontoaPontoClick(Sender: TObject);
    procedure QR_EntradaCanaAfterScroll(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzPgNovaRotaChange(Sender: TObject);
    procedure PNGBtnAnteriorClick(Sender: TObject);
    procedure PNGBtnProximoClick(Sender: TObject);
    procedure QR_GerenciamentoRotasAfterScroll(DataSet: TDataSet);
    procedure RzPgRotasChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QR_FrenteAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure rzPageControlUnidadesMoagemChange(Sender: TObject);
    procedure RzGroup2Items2Click(Sender: TObject);
    procedure RzGroup2Items1Click(Sender: TObject);
    procedure RzGroup2Items0Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure navegaEtapas(proximaAnterior: String);
    procedure atualizaPainelNavegacao;

    //Funções específica do TWebBrowser
    //procedure navegaHTML(wb: TWebBrowser; html: String);
    //procedure executaJavaScript(wb: TWebBrowser; funcao: String);
    //function GetElementIdValue(WebBrowser: TWebBrowser;
    //                           TagName, TagId, TagAttrib: string):string;

    //Funções específicas para converter tcolor para hex e hex para tcolor
    function TColorToHex(Color : TColor) : string;
    function HexToTColor(sColor : string) : TColor;


    procedure ativaAbasFerramentas(ativa: boolean);
    procedure ativaAbasNovasRota(ativa: boolean);
    procedure wbVisualizarViagemDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure wbSelecaoPontosDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure wbGerenciamentoRotasDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
    HTMLWindow2: IHTMLWindow2;
    contadorPontos : Integer;
  public
    { Public declarations }
  protected
    QR_PageControlEmpresa : TOraQuery;
    paginaCarregadaGerenciamentoRotas,
    paginaCarregadaVisualizacaoRotas,
    paginaCarregadaGeracaoNovasRotas,
    paginaCarregadaSelecaoPontos : boolean;

    preRotaAnalisada : boolean;

    const url = 'C:\Executaveis\logisticaGMAPS.htm';

  end;

var
  F_RotasFazenda: TF_RotasFazenda;
  objJSON  : ISuperObject;

implementation

uses funcoes, U_Modulo, U_MensagemEspera;

{$R *.dfm}

procedure TF_RotasFazenda.ativaAbasFerramentas(ativa: boolean);
var
  i : Integer;
begin
  //Desabilita todas as tabs das ferramentas
  for i := 0 to RzPgRotas.PageCount - 1 do
    RzPgRotas.Pages[i].TabVisible := ativa;
end;

procedure TF_RotasFazenda.ativaAbasNovasRota(ativa: boolean);
var
  i : Integer;
begin
  //Desabilita todas as tabs das etapas da nova rota
  for i := 0 to RzPgNovaRota.PageCount-1 do
    RzPgNovaRota.Pages[i].TabVisible := ativa;
end;

procedure TF_RotasFazenda.atualizaPainelNavegacao;
begin
  if RzPgNovaRota.ActivePageIndex = 0 then
    begin
      imgEtapaAnterior.Enabled     := imgAnteriorTransparente.Enabled;
      imgEtapaAnterior.Hint        := imgAnteriorTransparente.Hint;
      imgEtapaAnterior.Picture     := imgAnteriorTransparente.Picture;
      imgEtapaAnterior.ShowHint    := imgAnteriorTransparente.ShowHint;
    end
  else
    begin
      imgEtapaAnterior.Enabled     := imgAnteriorAtivado.Enabled;
      imgEtapaAnterior.Hint        := imgAnteriorAtivado.Hint;
      imgEtapaAnterior.Picture     := imgAnteriorAtivado.Picture;
      imgEtapaAnterior.ShowHint    := imgAnteriorAtivado.ShowHint;
    end;

  if RzPgNovaRota.ActivePageIndex+1 = RzPgNovaRota.PageCount then
    begin
      imgEtapaPosterior.Enabled     := imgProximoTransparente.Enabled;
      imgEtapaPosterior.Hint        := imgProximoTransparente.Hint;
      imgEtapaPosterior.Picture     := imgProximoTransparente.Picture;
      imgEtapaPosterior.ShowHint    := imgProximoTransparente.ShowHint;
    end
  else
    begin
      imgEtapaPosterior.Enabled     := imgProximoAtivado.Enabled;
      imgEtapaPosterior.Hint        := imgProximoAtivado.Hint;
      imgEtapaPosterior.Picture     := imgProximoAtivado.Picture;
      imgEtapaPosterior.ShowHint    := imgProximoAtivado.ShowHint;
    end;

  pnNavegacaoNovaRota.Caption   := 'Etapa '+IntToStr(RzPgNovaRota.ActivePageIndex+1)+' de '+inttostr(RzPgNovaRota.PageCount);
end;

procedure TF_RotasFazenda.BitBtn1Click(Sender: TObject);
var
  teste : String;
begin
  inherited;
  //teste := 'Retorno Carregado:'+ GetElementIdValue(wbGerenciamentoRotas, 'input', 'retorno', 'value');
  showmessage(teste);
end;

procedure TF_RotasFazenda.BitBtn2Click(Sender: TObject);
// Proper error checking omitted for brevity.
var
  Window: IHTMLWindow2;
  DispatchIdOfProperty: Integer;
  MyPropertyValue: OleVariant;
  Temp: TExcepInfo;
  Res: Integer;
  Params:TDispParams;
begin
  // get window interface
  Window:= (wbGerenciamentoRotas.ControlInterface.Document as IHTMLDocument2).parentWindow;
  Assert(Assigned(Window));
  // get dispatch ID of our variable
  if (Window as IDispatchEx).GetDispID('myVariable', fdexNameCaseSensitive, DispatchIdOfProperty) = S_OK then
  begin
    // no parameters
    ZeroMemory(@Params, SizeOf(Params));
    // get value of our variable
    Res:=(Window as IDispatchEx).InvokeEx(DispatchIdOfProperty, LOCALE_USER_DEFAULT, DISPATCH_PROPERTYGET, @Params, MyPropertyValue, Temp, nil);
    if Res=S_OK then
    begin
      // voila - this should display the value
      ShowMessage(MyPropertyValue);
    end else
      ShowMessage('Error reading property value');
  end
  else
    ShowMessage('Property not found');
end;

procedure TF_RotasFazenda.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid1DBTableView1POSSUIROTA.Index] = 'N' then
  begin
    ACanvas.brush.color := clYellow;
    ACanvas.Font.Color  := clBlack;
  end;
end;

procedure TF_RotasFazenda.cxGrid2DBTableView1COR_TRAJETO_IDAPropertiesButtonClick(
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

procedure TF_RotasFazenda.cxGrid2DBTableView1COR_TRAJETO_VOLTAPropertiesButtonClick(
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

procedure TF_RotasFazenda.cxGrid2DBTableView1CustomDrawCell(
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

procedure TF_RotasFazenda.cxGrid2DBTableView1VISUALIZAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    ativa_Mensagem('Aguarde...','Sistema gerando informações.',0);

    objJSON := so('{"frentes":[]}');

    objJSON['frentes[0]'] := SO(['frente',QR_FrenteCOD_FRENTE.AsInteger,
                                 'fazenda',QR_GerenciamentoRotasCOD_FAZENDA.AsInteger,
                                 'grupoempresa',QR_FrenteCOD_GRUPOEMPRESA.AsInteger,
                                 'empresa',QR_FrenteCOD_EMPRESA.AsInteger,
                                 'filial',QR_FrenteCOD_FILIAL.AsInteger,
                                 'safra',QR_FrenteCOD_SAFRA.AsInteger,
                                 'numero_rota',QR_GerenciamentoRotasCOD_ROTA.AsInteger]);

    SP_GeraRotas.ParamByName('P_FAZENDAS').AsString           := objJSON.AsString;
    SP_GeraRotas.ParamByName('P_MOSTRAEQUIPAMENTOS').AsString := 'N';
    SP_GeraRotas.Execute;
  
    ExecJS(wbGerenciamentoRotas,'atualizaInformacoesFrentes('+SP_GeraRotas.parambyname('RESULT').AsString+')');
  finally
    desativa_Mensagem;
    cxGrid1.SetFocus;
  end;
end;

{procedure TF_RotasFazenda.executaJavaScript(wb: TWebBrowser; funcao: String);
var
  Doc: IHTMLDocument2;        //Documento HTML
  HTMLWindow: IHTMLWindow2;   //Componente principal do documento HTML
  JavaScriptFunction: string; //Nome da função javaScript
begin
  inherited;
  // Get reference to current document
  Doc := wb.Document as IHTMLDocument2;
  if not Assigned(Doc) then
    Exit;
  // Get parent window of current document
  HTMLWindow := Doc.parentWindow;
  if not Assigned(HTMLWindow) then
    Exit;
  // Run JavaScript
  try
    JavaScriptFunction := funcao;
    HTMLWindow.execScript(JavaScriptFunction, 'JavaScript'); // execute function
  except
    // handle exception in case JavaScript fails to run
    Application.MessageBox('Erro ao tentar executar a função.','Atenção',MB_ICONINFORMATION + MB_OK);
  end;
end;
}

procedure TF_RotasFazenda.FormCreate(Sender: TObject);
var
  url : String;
begin
  inherited;
  paginaCarregadaGerenciamentoRotas := False;
  paginaCarregadaSelecaoPontos      := False;

  SP_BuscaHTMLRota.Execute;
  loadHTML(wbGerenciamentoRotas,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(wbVisualizarViagem,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(wbVisualizarRotas,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(wbSelecaoPontos,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(wbConfirmacaoRota,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);

  RzPgRotas.ActivePage := tsRotasPrincipal;

  QR_AvisoDistancia.Close;
  QR_AvisoDistancia.Open;

  QR_PageControlEmpresa := TOraQuery(PageControlEmpresas(rzPageControlUnidadesMoagem, False, True, True));

  rzPageControlUnidadesMoagemChange(rzPageControlUnidadesMoagem);

  preRotaAnalisada := False;

  ativaAbasFerramentas(false);

  ativaAbasNovasRota(false);

end;

{function TF_RotasFazenda.GetElementIdValue(WebBrowser: TWebBrowser; TagName,
  TagId, TagAttrib: string): string;
var
  Document: IHTMLDocument2;
  Body: IHTMLElement2;
  Tags: IHTMLElementCollection;
  Tag: IHTMLElement;
  I: Integer;
begin
  Result:='';
  if not Supports(WebBrowser.Document, IHTMLDocument2, Document) then
    raise Exception.Create('Documento html inválido');
  if not Supports(Document.body, IHTMLElement2, Body) then
    raise Exception.Create('Não foi possível encontrar a tag body');
  Tags := Body.getElementsByTagName(UpperCase(TagName));
  for I := 0 to Pred(Tags.length) do begin
    Tag:=Tags.item(I, EmptyParam) as IHTMLElement;
    if Tag.id=TagId then Result := Tag.getAttribute(TagAttrib, 0);
  end;
end;}

function TF_RotasFazenda.HexToTColor(sColor: string): TColor;
begin
   Result :=
     RGB(
       StrToInt('$'+Copy(sColor, 1, 2)),
       StrToInt('$'+Copy(sColor, 3, 2)),
       StrToInt('$'+Copy(sColor, 5, 2))
     ) ;
end;

procedure TF_RotasFazenda.imgCorTrajetoIdaClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := rzPnCorTrajetoIda.Color;
  if ColorDialog1.Execute then
    rzPnCorTrajetoIda.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda.imgCorTrajetoVoltaClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := rzPnCorTrajetoVolta.Color;
  if ColorDialog1.Execute then
    rzPnCorTrajetoVolta.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda.imgEtapaPosteriorClick(Sender: TObject);
begin
  navegaEtapas('proxima');
end;

procedure TF_RotasFazenda.imgEtapaAnteriorClick(Sender: TObject);
begin
  navegaEtapas('anterior');
end;

procedure TF_RotasFazenda.navegaEtapas(proximaAnterior: String);
begin
  if proximaAnterior = 'anterior' then
    begin
      if RzPgNovaRota.ActivePageIndex = 0 then
      begin
        Application.MessageBox('Não existem etapas anteriores ao atual.','Atenção',MB_ICONINFORMATION + MB_OK);
        Abort;
      end;

      ativaAbasNovasRota(true);
      RzPgNovaRota.ActivePageIndex := RzPgNovaRota.ActivePageIndex - 1;
      ativaAbasNovasRota(false);
    end

  else if proximaAnterior = 'proxima' then
    begin
      if RzPgNovaRota.ActivePageIndex+1 = RzPgNovaRota.PageCount then
      begin
        Application.MessageBox('Não existem etapas posteriores ao atual.','Atenção',MB_ICONINFORMATION + MB_OK);
        Abort;
      end;

      if RzPgNovaRota.ActivePage = tsNovaRotaSelecaoPontos then
        if not preRotaAnalisada then
        begin
          Application.MessageBox('Clique sobre o botão "Analisar Pré Rota" para passar para a etapa de confirmação da rota.','Atenção',MB_ICONINFORMATION + MB_OK);
          Abort;
        end;


      ativaAbasNovasRota(true);
      RzPgNovaRota.ActivePageIndex := RzPgNovaRota.ActivePageIndex + 1;
      ativaAbasNovasRota(false);
    end
  else
    begin
      Application.MessageBox(PChar('Situação "'+proximaAnterior+'" não aceito pela função de navegação.'),'Atenção',MB_ICONERROR + MB_OK);
      Abort;
    end;

  if RzPgNovaRota.ActivePage = tsNovaRotaVisualizaViagem then
    begin
      if QR_Frente.IsEmpty then
      begin
        Application.MessageBox('Selecione uma frente na etapa anterior para visualizar uma rota.','Atençao',MB_ICONINFORMATION + MB_OK);
        imgEtapaAnteriorClick(imgEtapaAnterior);
      end;
        QR_EntradaCana.Close;
        QR_EntradaCana.ParamByName('cod_grupoempresa').AsFloat := QR_FrenteCOD_GRUPOEMPRESA.AsFloat;
        QR_EntradaCana.ParamByName('cod_empresa').AsFloat      := QR_FrenteCOD_EMPRESA.AsFloat;
        QR_EntradaCana.ParamByName('cod_filial').AsFloat       := QR_FrenteCOD_FILIAL.AsFloat;
        QR_EntradaCana.ParamByName('cod_fazenda').AsFloat      := QR_FrenteCOD_FAZENDA.AsFloat;
        QR_EntradaCana.Open;
    end
  else if RzPgNovaRota.ActivePage = tsNovaRotaSelecaoPontos then
    begin
      preRotaAnalisada            := False;
      rzBtnGerarPreRota.Enabled   := True;
      rzBtnAnalisePreRota.Enabled := False;

      QR_PreRotaPontos.Close;
      QR_PreRotaPontos.ParamByName('cod_pre_rota').AsFloat := -1;
      QR_PreRotaPontos.Open;

      QR_HorarioTalhaoDistancia.Close;
      QR_HorarioTalhaoDistancia.ParamByName('cod_entradacana').AsFloat := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
      QR_HorarioTalhaoDistancia.Open;

      try
        if wbSelecaoPontos.Tag = 0 then
          ExecJS(wbSelecaoPontos,'limpaTrajeto()');
      except

      end;

    end
  else if RzPgNovaRota.ActivePage = tsNovaRotaConfirmaRota then
    begin
      memoDescricaoRota.Lines.Clear;
      rzPnCorTrajetoIda.Color   := $00B7FFFF;
      rzPnCorTrajetoVolta.Color := clYellow;

      QR_ResumoRota.Close;
      QR_ResumoRota.ParamByName('cod_pre_rota').AsFloat := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
      QR_ResumoRota.Open;

      rzBtnConfirmaRota.Enabled := True;
    end;

  atualizaPainelNavegacao;
end;

{procedure TF_RotasFazenda.navegaHTML(wb: TWebBrowser; html: String);
var
  aStream     : TMemoryStream;
begin
  inherited;
  wb.Tag := 0;
  wb.Navigate('about:blank');
  if Assigned(wb.Document) then
  begin
    aStream := TMemoryStream.Create;
    try
      aStream.WriteBuffer(Pointer(html)^,Length(html));
      aStream.Seek(0,soFromBeginning);
      (wb.Document as IPersistStreamInit).Load(TStreamAdapter.Create(aStream));
      wb.Tag := 1;
    finally
      aStream.Free;
    end;
  end;
end; }

procedure TF_RotasFazenda.PNGBtnAnteriorClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('anterior');
end;

procedure TF_RotasFazenda.PNGBtnCorTrajetoIdaClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := rzPnCorTrajetoIda.Color;
  if ColorDialog1.Execute then
    rzPnCorTrajetoIda.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda.PNGBtnCorTrajetoVoltaClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := rzPnCorTrajetoVolta.Color;
  if ColorDialog1.Execute then
    rzPnCorTrajetoVolta.Color := ColorDialog1.Color;
end;

procedure TF_RotasFazenda.PNGBtnProximoClick(Sender: TObject);
begin
  inherited;
  navegaEtapas('proxima');
end;

procedure TF_RotasFazenda.QR_EntradaCanaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  rzBtnVisualizarPontoaPonto.Enabled := False;
  rzBtnPararRotaPontoaPonto.Enabled  := False;
end;

procedure TF_RotasFazenda.QR_FrenteAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if RzPgRotas.ActivePage = tsRotasGerenciamentoRotas then
  begin
    if QR_Frente.Tag = 1 then
    begin
      QR_GerenciamentoRotas.Tag := 0;
      QR_GerenciamentoRotas.Close;
      QR_GerenciamentoRotas.ParamByName('cod_fazenda').AsFloat      := QR_FrenteCOD_FAZENDA.AsFloat;
      QR_GerenciamentoRotas.ParamByName('cod_grupoempresa').AsFloat := QR_FrenteCOD_GRUPOEMPRESA.AsFloat;
      QR_GerenciamentoRotas.ParamByName('cod_empresa').AsFloat      := QR_FrenteCOD_EMPRESA.AsFloat;
      QR_GerenciamentoRotas.ParamByName('cod_filial').AsFloat       := QR_FrenteCOD_FILIAL.AsFloat;
      QR_GerenciamentoRotas.Open;
      QR_GerenciamentoRotas.Tag := 1;
      QR_GerenciamentoRotasAfterScroll(QR_GerenciamentoRotas);
    end;
  end;

end;

procedure TF_RotasFazenda.QR_GerenciamentoRotasAfterScroll(DataSet: TDataSet);
begin
  inherited;
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
            ativa_Mensagem('Aguarde...','Sistema gerando informações.',0);
            objJSON := so('{"frentes":[]}');

            objJSON['frentes[0]'] := SO(['frente',QR_FrenteCOD_FRENTE.AsInteger,
                                         'fazenda',QR_GerenciamentoRotasCOD_FAZENDA.AsInteger,
                                         'grupoempresa',QR_FrenteCOD_GRUPOEMPRESA.AsInteger,
                                         'empresa',QR_FrenteCOD_EMPRESA.AsInteger,
                                         'filial',QR_FrenteCOD_FILIAL.AsInteger,
                                         'safra',QR_FrenteCOD_SAFRA.AsInteger,
                                         'numero_rota',QR_GerenciamentoRotasCOD_ROTA.AsInteger]);

            SP_GeraRotas.ParamByName('P_FAZENDAS').AsString           := objJSON.AsString;
            SP_GeraRotas.ParamByName('P_MOSTRAEQUIPAMENTOS').AsString := 'N';
            SP_GeraRotas.Execute;

            ExecJS(wbGerenciamentoRotas,'atualizaInformacoesFrentes('+SP_GeraRotas.parambyname('RESULT').AsString+')');
          finally
            desativa_Mensagem;
            cxGrid2.SetFocus;
          end;
        end;
  end;
end;

procedure TF_RotasFazenda.QR_PreRotaPontosAfterPost(DataSet: TDataSet);
begin
  inherited;
  execJS(wbSelecaoPontos,'atualizaPontoInteresse('+IntToStr(QR_PreRotaPontosSEQUENCIA.AsInteger-1)+',"'+QR_PreRotaPontosPONTO_INTERESSE.AsString+'")');

  preRotaAnalisada := False;
  rzBtnAnalisePreRota.Enabled := True;
end;

procedure TF_RotasFazenda.QR_PreRotaPontosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if QR_PreRotaPontos.Tag = 1 then
  begin
    if not QR_PreRotaPontos.IsEmpty then
      execJS(wbSelecaoPontos,'selecionaPonto('+inttostr(QR_PreRotaPontosSEQUENCIA.AsInteger-1)+')');
  end;
end;

procedure TF_RotasFazenda.rzBtnGerarPreRotaClick(Sender: TObject);
var
  preRota : String;
begin
  inherited;

  if QR_HorarioTalhaoDistancia.IsEmpty then
  begin
    Application.MessageBox('Escolha um horário para gerar a pré rota.','Atenção',MB_ICONINFORMATION + MB_OK);
    wwDBComboBoxHorarioTalhaoDistancia.SetFocus;
    Abort;
  end;
  

  ativa_Mensagem('Logística','Aguarde gerando pré-rota.',0);
  try
    execJS(wbSelecaoPontos,'limpaRotas()');
    execJS(wbSelecaoPontos,'limpaLayersFazendas()');

    preRota := VarToStr(pesquisa_descricao('sig.pre_rota','cod_pre_rota','cod_entradacana','',QR_EntradaCanaCOD_ENTRADACANA.AsFloat));

    if preRota = '' then
    begin
      SP_Gera_PreRota.ParamByName('P_ENTRADACANA').AsFloat             := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
      SP_Gera_PreRota.ParamByName('P_BUFFER_GEOMETRIA_METROS').AsFloat := 100;
      SP_Gera_PreRota.ParamByName('P_HORARIO_INICIAL').AsString        := QR_HorarioTalhaoDistanciaHORA_INICIAL.AsString;
      SP_Gera_PreRota.ExecProc;

      preRota := SP_Gera_PreRota.ParamByName('RESULT').AsString;
    end;

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
    desativa_Mensagem;
  end;
end;

procedure TF_RotasFazenda.rzBtnConfirmaRotaClick(Sender: TObject);
begin
  inherited;
  if memoDescricaoRota.Lines.Text = '' then
  begin
    Application.MessageBox('Informe a descrição da rota.','Atenção',MB_ICONINFORMATION + MB_OK);
    memoDescricaoRota.SetFocus;
    Abort;
  end;

  SP_ConfirmaRota.ParamByName('P_PREROTA').AsFloat            := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
  SP_ConfirmaRota.ParamByName('P_DESCRICAO').AsString         := memoDescricaoRota.Lines.Text;
  SP_ConfirmaRota.ParamByName('P_COR_TRAJETO_IDA').AsString   := '#'+TColorToHex(rzPnCorTrajetoIda.Color);
  SP_ConfirmaRota.ParamByName('P_COR_TRAJETO_VOLTA').AsString := '#'+TColorToHex(rzPnCorTrajetoVolta.Color);
  SP_ConfirmaRota.ExecProc;

  rzBtnConfirmaRota.Enabled := False;

  Application.MessageBox('Rota finalizada com êxito.','Informação',MB_ICONINFORMATION + MB_OK);

  Application.MessageBox('Você será redirecionado a aba Gerenciamento de Rotas.','Informação',MB_ICONINFORMATION + MB_OK);

  RzGroup2.Items[0].Click;
end;

procedure TF_RotasFazenda.RzBitBtn2Click(Sender: TObject);
begin
  inherited;
  execJS(wbVisualizarViagem,'limpaRotas()');
  execJS(wbVisualizarViagem,'limpaLayersFazendas()');

  if QR_EntradaCana.IsEmpty then
  begin
    Application.MessageBox('Selecione uma entrada de cana para visualizar uma rota.','Atenção',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  SP_VisualizaRota.ParamByName('P_ENTRADACANA').AsFloat           := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
  SP_VisualizaRota.ParamByName('P_SOMENTE_VISUALIZACAO').AsString := 'S';
  SP_VisualizaRota.Execute;

  execJS(wbVisualizarViagem,'atualizaTrajeto('+SP_VisualizaRota.ParamByName('RESULT').AsString+')');

  rzBtnVisualizarPontoaPonto.Enabled := True;

  {
  if QR_GerenciamentoRotas.IsEmpty then
    begin
      executaJavaScript(wbVisualizarViagem,'limpaRotas()');
      executaJavaScript(wbVisualizarViagem,'limpaLayersFazendas()');
    end
  else
    begin
      try
        ativa_Mensagem('Aguarde...','Sistema gerando informações.',0);  }
        //objJSON := so('{"frentes":[]}');

  {      objJSON['frentes[0]'] := SO(['frente',QR_FrenteCOD_FRENTE.AsInteger,
                                     'fazenda',QR_FrenteCOD_FAZENDA.AsInteger,
                                     'grupoempresa',QR_FrenteCOD_GRUPOEMPRESA.AsInteger,
                                     'empresa',QR_FrenteCOD_EMPRESA.AsInteger,
                                     'filial',QR_FrenteCOD_FILIAL.AsInteger,
                                     'safra',QR_FrenteCOD_SAFRA.AsInteger]);

        SP_GeraRotas.ParamByName('P_FAZENDAS').AsString           := objJSON.AsString;
        SP_GeraRotas.ParamByName('P_MOSTRAEQUIPAMENTOS').AsString := 'N';
        SP_GeraRotas.Execute;

        executaJavaScript(wbGerenciamentoRotas,'atualizaInformacoesFrentes('+SP_GeraRotas.parambyname('RESULT').AsString+')');
      finally
        desativa_Mensagem;
        cxGrid1.SetFocus;
      end;
    end; }
end;

procedure TF_RotasFazenda.rzBtnAnalisePreRotaClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja analisar a rota ?','Confirmação',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    SP_AnalisePreRota.ParamByName('P_PREROTA').AsFloat := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
    SP_AnalisePreRota.ExecProc;

    Application.MessageBox('Pre Rota analisada com êxito.','Informação',MB_ICONINFORMATION + MB_OK);

    rzBtnGerarPreRota.Enabled   := False;
    rzBtnAnalisePreRota.Enabled := False;
    preRotaAnalisada            := True;
  end;
end;

procedure TF_RotasFazenda.rzBtnPararRotaPontoaPontoClick(Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPonto.Enabled := False;
  if Application.MessageBox('Deseja parar a visualização do trajeto ponto a ponto ?','Confirmação',MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      rzBtnPararRotaPontoaPonto.Enabled  := False;
      tmVisualizaRotaPontoaPonto.Enabled := False;
      execJS(wbVisualizarViagem,'limpaTrajeto()');
      QR_EntradaCanaAfterScroll(QR_EntradaCana);
    end
  else
    tmVisualizaRotaPontoaPonto.Enabled := True;
end;

procedure TF_RotasFazenda.rzBtnVisualizarPontoaPontoClick(Sender: TObject);
begin
  inherited;
  contadorPontos := 0;
  tmVisualizaRotaPontoaPonto.Interval := trunc(StrToFloat(cbIntevervaloPontos.Text) * 1000);
  rzBtnPararRotaPontoaPonto.Enabled   := True;
  tmVisualizaRotaPontoaPonto.Enabled  := True;
end;

procedure TF_RotasFazenda.RzGroup2Items0Click(Sender: TObject);
begin
  inherited;
  ativaAbasFerramentas(true);
  RzPgRotas.ActivePage := tsRotasGerenciamentoRotas;
  ativaAbasFerramentas(false);
end;

procedure TF_RotasFazenda.RzGroup2Items1Click(Sender: TObject);
begin
  inherited;
  RzPgRotas.ActivePage := tsRotasVisualizaRotas;
end;

procedure TF_RotasFazenda.RzGroup2Items2Click(Sender: TObject);
begin
  inherited;
  ativaAbasFerramentas(true);
  RzPgRotas.ActivePage    := tsRotasGerarRotas;
  ativaAbasFerramentas(false);

  //Novo
  ativaAbasNovasRota(true);
  RzPgNovaRota.ActivePage := tsNovaRotaEscolhaFrente;
  ativaAbasNovasRota(false);
end;

procedure TF_RotasFazenda.rzPageControlUnidadesMoagemChange(Sender: TObject);
begin
  inherited;
  if PageControlChange(rzPageControlUnidadesMoagem, QR_PageControlEmpresa) then
  begin
    QR_Frente.Tag := 0;
    QR_Frente.Close;
    QR_Frente.ParamByName('cod_safra').AsFloat := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
    QR_Frente.ParamByName('cod_grupoempresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupoempresa').AsFloat;
    QR_Frente.ParamByName('cod_empresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat;
    QR_Frente.ParamByName('cod_filial').AsFloat := QR_PageControlEmpresa.FieldByName('cod_filial').AsFloat;
    QR_Frente.Open;
    QR_Frente.Tag := 1;
    QR_FrenteAfterScroll(QR_Frente);

    if (paginaCarregadaGerenciamentoRotas) and
       (QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat <> 0) then
      execJS(wbGerenciamentoRotas,'centralizaMapa('+QR_PageControlEmpresa.FieldByName('latitude').AsString+','
                                                              +QR_PageControlEmpresa.FieldByName('longitude').AsString+')');

    RzPgRotas.ActivePage := tsRotasPrincipal;
  end;
end;

procedure TF_RotasFazenda.RzPgNovaRotaChange(Sender: TObject);
begin
  inherited;
  {if RzPgNovaRota.ActivePage = tsNovaRotaVisualizaViagem then
    begin
      if QR_Frente.IsEmpty then
      begin
        Application.MessageBox('Selecione uma frente na etapa anterior para visualizar uma rota.','Atençao',MB_ICONINFORMATION + MB_OK);
        PNGBtnAnteriorClick(PNGBtnAnterior);
      end;
        QR_EntradaCana.Close;
        QR_EntradaCana.ParamByName('cod_grupoempresa').AsFloat := QR_FrenteCOD_GRUPOEMPRESA.AsFloat;
        QR_EntradaCana.ParamByName('cod_empresa').AsFloat      := QR_FrenteCOD_EMPRESA.AsFloat;
        QR_EntradaCana.ParamByName('cod_filial').AsFloat       := QR_FrenteCOD_FILIAL.AsFloat;
        QR_EntradaCana.ParamByName('cod_fazenda').AsFloat      := QR_FrenteCOD_FAZENDA.AsFloat;
        QR_EntradaCana.Open;
    end
  else if RzPgNovaRota.ActivePage = tsNovaRotaSelecaoPontos then
    begin
      preRotaAnalisada            := False;
      rzBtnGerarPreRota.Enabled   := True;
      rzBtnAnalisePreRota.Enabled := False;

      QR_PreRotaPontos.Close;
      QR_PreRotaPontos.ParamByName('cod_pre_rota').AsFloat := -1;
      QR_PreRotaPontos.Open;

      QR_HorarioTalhaoDistancia.Close;
      QR_HorarioTalhaoDistancia.ParamByName('cod_entradacana').AsFloat := QR_EntradaCanaCOD_ENTRADACANA.AsFloat;
      QR_HorarioTalhaoDistancia.Open;

      try
        if wbSelecaoPontos.Tag = 0 then
          executaJavaScript(wbSelecaoPontos,'limpaTrajeto()');
      except

      end;

    end
  else if RzPgNovaRota.ActivePage = tsNovaRotaConfirmaRota then
    begin
      memoDescricaoRota.Lines.Clear;
      rzPnCorTrajetoIda.Color   := $00B7FFFF;
      rzPnCorTrajetoVolta.Color := clYellow;

      QR_ResumoRota.Close;
      QR_ResumoRota.ParamByName('cod_pre_rota').AsFloat := QR_PreRotaPontosCOD_PRE_ROTA.AsFloat;
      QR_ResumoRota.Open;

      rzBtnConfirmaRota.Enabled := True;
    end;}
end;

procedure TF_RotasFazenda.RzPgNovaRotaChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  inherited;
  //Se a nova aba for de Confirmação de rota, verifica se foi realizada
  //a verificação da pre rota
  {if RzPgNovaRota.Pages[NewIndex] = tsNovaRotaConfirmaRota then
  begin
    if not preRotaAnalisada then
    begin
      ativaAbasNovasRota(False);
      Application.MessageBox('Clique sobre o botão "Analisar Pré Rota" para passar para a etapa de confirmação da rota.','Atenção',MB_ICONINFORMATION + MB_OK);
      AllowChange := False;
      Abort;
    end;
  end;}
end;

procedure TF_RotasFazenda.RzPgRotasChange(Sender: TObject);
begin
  inherited;
  if RzPgRotas.ActivePage = tsRotasGerenciamentoRotas then
    begin
      QR_Frente.Tag := 0;
      QR_Frente.Refresh;
      QR_Frente.Tag := 1;
      QR_FrenteAfterScroll(QR_Frente);
      //wbGerenciamentoRotas.Navigate(url);
    end
  else if RzPgRotas.ActivePage = tsRotasGerarRotas then
    begin
      RzPgNovaRota.ActivePage := tsNovaRotaEscolhaFrente;
      //wbVisualizarViagem.Navigate(url);
      atualizaPainelNavegacao;
    end;

end;

function TF_RotasFazenda.TColorToHex(Color: TColor): string;
begin
   Result :=
     IntToHex(GetRValue(Color), 2) +
     IntToHex(GetGValue(Color), 2) +
     IntToHex(GetBValue(Color), 2) ;
end;

procedure TF_RotasFazenda.tmVisualizaRotaPontoaPontoTimer(Sender: TObject);
begin
  inherited;
  tmVisualizaRotaPontoaPonto.Enabled := False;
  execJS(wbVisualizarViagem,'visualizaPontoTimer('+IntToStr(contadorPontos)+')');
  Inc(contadorPontos);
  if contadorPontos >= QR_EntradaCanaQTDEPONTOSESPACIAL.AsInteger-3 then
    begin
      tmVisualizaRotaPontoaPonto.Enabled := False;
      rzBtnPararRotaPontoaPonto.Enabled  := False;
      rzBtnVisualizarPontoaPonto.Enabled := False;
      execJS(wbVisualizarViagem,'limpaTrajeto()');
      Application.MessageBox('Visualização finalizada.','Informação',MB_ICONINFORMATION + MB_OK);
      Abort;
    end
  else
    tmVisualizaRotaPontoaPonto.Enabled := True;
end;

procedure TF_RotasFazenda.wbGerenciamentoRotasDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  inherited;
  //if TWebBrowser(ASender).Tag = 1 then
  //begin
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupoempresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupoempresa').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_empresa').AsFloat      := QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_filial').AsFloat       := QR_PageControlEmpresa.FieldByName('cod_filial').AsFloat;
    QR_InformacoesIniciais.Open;
    execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');

    paginaCarregadaGerenciamentoRotas := True;
  //end;
end;

procedure TF_RotasFazenda.wbSelecaoPontosDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  inherited;
  //if TWebBrowser(ASender).Tag = 1 then
  //begin
    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupoempresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupoempresa').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_empresa').AsFloat      := QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_filial').AsFloat       := QR_PageControlEmpresa.FieldByName('cod_filial').AsFloat;
    QR_InformacoesIniciais.Open;
    execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');
    TWebBrowser(ASender).Tag := 0;
  //end;
end;

procedure TF_RotasFazenda.wbVisualizarViagemDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  inherited;
  //if TWebBrowser(ASender).Tag = 1 then
  //begin

    QR_InformacoesIniciais.Close;
    QR_InformacoesIniciais.ParamByName('cod_grupoempresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupoempresa').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_empresa').AsFloat      := QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat;
    QR_InformacoesIniciais.ParamByName('cod_filial').AsFloat       := QR_PageControlEmpresa.FieldByName('cod_filial').AsFloat;
    QR_InformacoesIniciais.Open;
    execJS(TWebBrowser(ASender), 'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');

  //end;
end;

end.
