unit U_Monitoramento_Trafego_Estatico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzButton,
  Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Vcl.StdCtrls, wwdbdatetimepicker, Vcl.Buttons, dxGDIPlusClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Mask, wwdbedit, RzGroupBar, RzTabs,
  MemDS, DBAccess, Ora, QuickRpt, QRCtrls, U_InformacoesPistaMonitoramento,
  U_BalaoMensagemEquipamento, U_ImagensMonitoramentoTrafego, Vcl.Menus,
  cxContainer, cxImage, RzCmboBx, RzLabel, RzRadGrp;

type TImageVeiculoPista = class(TImage) //TImage
  private
    { Private declarations }
    procedure myOnMouseEnter(Sender : TObject);
    procedure myOnMouseExit(Sender : TObject);
  public
    informacaoBalao : TInformacaoBalao;
    listaInformacaoBalao : array of TInformacaoBalao;

  end;
  type TImage_Pista = class(TImage)
  private
    {Private declarations}
    procedure myOnMouseEnter(Sender: TObject);
  public
    InformacoesPista : TInformacoesPista;
  end;

type
  TF_Monitoramento_Trafego_Estatico = class(TF_TemplateConsulta)
    RzPageControlUnidadeMoagem: TRzPageControl;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    RzGroupBar3: TRzGroupBar;
    RzGroup3: TRzGroup;
    RzGroup4: TRzGroup;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Timer_Veiculos: TTimer;
    QR_Pistas: TOraQuery;
    QR_Veiculos: TOraQuery;
    rzPanelRefresh: TRzPanel;
    imgAtualizacao: TImage;
    cbAtualizacaoAutomatica: TCheckBox;
    SP_AtualizaInformacoesPista: TOraStoredProc;
    QR_Parado: TOraQuery;
    DS_Parado: TOraDataSource;
    QR_ParadoCOD_EQUIPAMENTO: TFloatField;
    QR_ParadoDESCRICAO: TStringField;
    QR_ParadoHORAS_PARADO: TStringField;
    QR_PistasCOD_SAFRA: TFloatField;
    QR_PistasCOD_FRENTE: TFloatField;
    QR_PistasCOD_FAZENDA: TFloatField;
    QR_PistasPISTA: TStringField;
    QR_PistasDESC_FRENTE: TStringField;
    QR_PistasDESC_FAZENDA: TStringField;
    QR_PistasTRANSPORTE_LIBERADO: TStringField;
    QR_PistasDISTANCIA_ASFALTO_IDA: TFloatField;
    QR_PistasDISTANCIA_TERRA_IDA: TFloatField;
    QR_PistasDISTANCIA_CARREADOR_IDA: TFloatField;
    QR_PistasDISTANCIA_ASFALTO_VOLTA: TFloatField;
    QR_PistasDISTANCIA_TERRA_VOLTA: TFloatField;
    QR_PistasDISTANCIA_CARREADOR_VOLTA: TFloatField;
    QR_PistasMAIOR_DISTANCIA: TFloatField;
    QR_PistasMAIOR_DISTANCIA_REGUA: TFloatField;
    QR_PistasDISTANCIA_TOTAL_IDA: TFloatField;
    QR_PistasDISTANCIA_TOTAL_VOLTA: TFloatField;
    QR_PistasMAIOR_TEMPO_QUEIMA: TStringField;
    QR_PistasPREV_PRODUCAO: TFloatField;
    QR_PistasPREVISAO_DIA_CAMINHAO_FRENTE: TFloatField;
    QR_PistasDESCRICAO: TStringField;
    QR_PistasTEMPO_IDA_MIN: TFloatField;
    QR_PistasTEMPO_VOLTA_MIN: TFloatField;
    QR_PistasTEMPOCARREGAMENTO: TFloatField;
    QR_PistasTEMPOTOTALREALIZADO: TFloatField;
    QR_PistasTEMPOIDAESPACIAL: TFloatField;
    QR_PistasTEMPOCARREGAMENTOESPACIAL: TFloatField;
    QR_PistasTEMPOVOLTAESPACIAL: TFloatField;
    QR_PistasQTDEVIAGENSESPACIAL: TFloatField;
    QR_PistasDENSIDADE_CARGA: TFloatField;
    QR_PistasFRENTEFIXA: TStringField;
    QR_PistasCOTAESTAATRASADA: TStringField;
    QR_PistasQTDECOTAATRASADA: TFloatField;
    QR_PistasTON_PREV_ENTREGA: TFloatField;
    QR_PistasQUOTA_TON_DIA: TFloatField;
    QR_PistasTONELADAATRASADA: TFloatField;
    QR_PistasCOD_GRUPO: TFloatField;
    QR_PistasCOD_REGIONAL: TFloatField;
    QR_PistasCOD_UNIDADE: TFloatField;
    QR_PrevistoRealizado: TOraQuery;
    QR_PrevistoRealizadoDESCRICAO: TStringField;
    QR_PrevistoRealizadoPREVISTO: TStringField;
    QR_PrevistoRealizadoREALIZADO: TStringField;
    QR_PrevistoRealizadoDENSIDADE: TFloatField;
    QR_PrevistoRealizadoVIAGENS: TFloatField;
    QR_PrevistoRealizadoPESO: TFloatField;
    QR_PrevistoRealizadoQTDEVEICULOS: TFloatField;
    QR_ALERTA_ALOCACAO: TOraQuery;
    DS_ALERTA_ALOCACAO: TOraDataSource;
    QR_VeiculosAlerta: TOraQuery;
    QR_VeiculosAlertaCOD_GRUPO: TFloatField;
    QR_VeiculosAlertaCOD_REGIONAL: TFloatField;
    QR_VeiculosAlertaCOD_UNIDADE: TFloatField;
    QR_VeiculosAlertaCOD_SAFRA: TFloatField;
    QR_VeiculosAlertaCOD_FRENTE: TFloatField;
    QR_VeiculosAlertaCOD_FAZENDA: TFloatField;
    QR_VeiculosAlertaCOD_EQUIPAMENTO: TFloatField;
    QR_VeiculosAlertaDATA_SAIDA: TDateTimeField;
    QR_VeiculosAlertaCOD_TIPOALERTAALOCACAO: TFloatField;
    QR_VeiculosAlertaOBSERVACAO: TStringField;
    MenuTransferencia: TPopupMenu;
    VisualizarAlertas1: TMenuItem;
    N1: TMenuItem;
    ransferirdeEmpresa1: TMenuItem;
    ransferirdeFazenda1: TMenuItem;
    EnviarSMS1: TMenuItem;
    QR_VeiculosCOD_SAFRA: TFloatField;
    QR_VeiculosCOD_FRENTE: TFloatField;
    QR_VeiculosCOD_FAZENDA: TFloatField;
    QR_VeiculosCOD_GRUPO: TFloatField;
    QR_VeiculosCOD_REGIONAL: TFloatField;
    QR_VeiculosCOD_UNIDADE: TFloatField;
    QR_VeiculosCOD_EQUIPAMENTO: TFloatField;
    QR_VeiculosDESC_EQUIPAMENTO: TStringField;
    QR_VeiculosSITUACAO: TStringField;
    QR_VeiculosABASTECEU: TStringField;
    QR_VeiculosBITUCA: TStringField;
    QR_VeiculosDATA_SAIDA: TDateTimeField;
    QR_VeiculosDATA_PREV_INICIO_CARREG: TDateTimeField;
    QR_VeiculosPORC_IDA: TFloatField;
    QR_VeiculosDATA_PREV_TERMINO_CARREG: TDateTimeField;
    QR_VeiculosDATA_PREV_CHEGADA: TDateTimeField;
    QR_VeiculosPORC_VOLTA: TFloatField;
    QR_VeiculosCOD_TIPOCARGA: TIntegerField;
    QR_VeiculosDESC_TIPOCARGA: TStringField;
    QR_VeiculosATRASO: TStringField;
    QR_VeiculosDESCARREGANDO: TStringField;
    QR_VeiculosSEQUENCIA: TFloatField;
    QR_VeiculosSELECIONADO: TStringField;
    QR_VeiculosATRASADO: TStringField;
    QR_VeiculosTEMPOREAL: TStringField;
    QR_ALERTA_ALOCACAOCOD_SAFRA: TFloatField;
    QR_ALERTA_ALOCACAODATA: TStringField;
    QR_ALERTA_ALOCACAOMENSAGEM: TStringField;
    QR_ALERTA_ALOCACAOLIDA: TStringField;
    QR_ALERTA_ALOCACAOSEQ_ALOCACAO: TFloatField;
    QR_ALERTA_ALOCACAOUSUARIO: TStringField;
    QR_ALERTA_ALOCACAOCOD_MOTIVO: TFloatField;
    QR_ALERTA_ALOCACAODESC_MOTIVO: TStringField;
    RzSplitter1: TRzSplitter;
    Panel3: TPanel;
    Panel9: TPanel;
    RzGroupBarOpcoes: TRzGroupBar;
    RzGroupOpcoes: TRzGroup;
    Label3: TLabel;
    pesquisa_veiculo: TSpeedButton;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    RzPanel3: TRzPanel;
    imgParado: TImage;
    imgAtualizandoInformacoes: TImage;
    imgOperacao: TImage;
    imgDesativado: TImage;
    imgRefreshAtivado: TImage;
    imgRefreshDesativado: TImage;
    Panel4: TPanel;
    rzPanelIndustria: TRzPanel;
    rzPanelRegua: TRzPanel;
    rzPanelLavoura: TRzPanel;
    rzPanelInformacoes: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    Image1: TImage;
    Panel23: TPanel;
    cxGrid2: TcxGrid;
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
    Panel24: TPanel;
    Panel22: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1INICIO_PARADA: TcxGridDBColumn;
    cxGrid1DBTableView1COD_EQUIPAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1HORAS_PARADO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel25: TPanel;
    RzLabel1: TRzLabel;
    QR_Percurso: TOraQuery;
    QR_PercursoSEQUENCIA: TFloatField;
    QR_PercursoPERCURSO: TStringField;
    QR_PercursoCOD_TIPOPERCURSO: TFloatField;
    QR_PercursoINDO_VOLTANDO: TStringField;
    QR_PercursoDISTANCIA: TFloatField;
    RzPageControl2: TRzPageControl;
    Page1: TRzTabSheet;
    Page2: TRzTabSheet;
    pnVeiculos1: TPanel;
    imgInfoFrente: TImage;
    RzGroupBoxModelo: TRzGroupBox;
    RzPanel1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    ScrollBox2: TScrollBox;
    cxImageExcessoCaminhoes: TcxImage;
    cxImageCotaAtrasada: TcxImage;
    cxImageFrenteFixa: TcxImage;
    pnVeiculos2: TPanel;
    Image2: TImage;
    RzGroupBox3: TRzGroupBox;
    ScrollBox1: TScrollBox;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    Panel1: TPanel;
    btnAtualizar: TRzBitBtn;
    ParadaEquipamento: TPopupMenu;
    FinalizarparadadoEquipamento1: TMenuItem;
    QR_ParadoFIM_PARADA: TDateTimeField;
    QR_ParadoCOD_GRUPO: TFloatField;
    QR_ParadoCOD_REGIONAL: TFloatField;
    QR_ParadoCOD_UNIDADE: TFloatField;
    QR_ParadoCOD_SAFRA: TFloatField;
    QR_ParadoINICIO_PARADA_LABEL: TStringField;
    QR_ParadoINICIO_PARADA: TDateTimeField;
    QR_VeiculosPARADO: TStringField;
    cbVisualizarCodigoVeiculo: TRzRadioGroup;
    Label2: TLabel;
    procedure Timer_VeiculosTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzGroupOpcoesClose(Sender: TObject);
    procedure RzGroupOpcoesOpen(Sender: TObject);
    procedure RzGroupAlertaClose(Sender: TObject);
    procedure RzGroupAlertaOpen(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure RzPageControlUnidadeMoagemChange(Sender: TObject);
    procedure cria_pista;
    procedure cria_pista_monitoramento;
    procedure QR_PistasBeforeOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure RzPageControlUnidadeMoagemClose(Sender: TObject;
      var AllowClose: Boolean);
    procedure RzSplitterTemplateResize(Sender: TObject);
    procedure RzSplitterTemplateChange(Sender: TObject);
    procedure cbAtualizacaoAutomaticaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure myOnMouseEnter(Sender: TObject);
    procedure imgVeiculoPistaClick(Sender: TObject);
    procedure informaVeiculodaPistaImage(Sender: TObject);
    procedure RzComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure pesquisa_veiculoClick(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure FinalizarparadadoEquipamento1Click(Sender: TObject);
    procedure cbVisualizarCodigoVeiculoClick(Sender: TObject);
  private
    { Private declarations }
    VeiculoDaPista, vGrupo, vRegional, vUnidade : Integer;
    vTamanhoVeiculo, vTamanhoPista :Integer;
//    const vTamanhoPista = 34;
    const vTamanhoVeiculoHeight = 32;
    const vTamanhoVeiculoWidth = 32;
  public
    { Public declarations }

  protected
    QR_PageControlUnidade : TOraQuery;
  end;

var
  F_Monitoramento_Trafego_Estatico: TF_Monitoramento_Trafego_Estatico;
  rveiculo : real = 0;

implementation

{$R *.dfm}

uses U_DM, u_recursos,  U_BuscaAvancada, U_DisponibilidadesFrentes;

procedure TF_Monitoramento_Trafego_Estatico.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  Timer_Veiculos.Tag := 1;
  Timer_Veiculos.OnTimer(sender);
end;

procedure TF_Monitoramento_Trafego_Estatico.cbAtualizacaoAutomaticaClick(
  Sender: TObject);
begin
  inherited;
  Timer_Veiculos.Enabled := cbAtualizacaoAutomatica.Checked;

  if Timer_Veiculos.Enabled then
    imgAtualizacao.Picture := imgRefreshAtivado.Picture
  else
    imgAtualizacao.Picture := imgRefreshDesAtivado.Picture;
end;

procedure TF_Monitoramento_Trafego_Estatico.ComboBox1Change(Sender: TObject);
var tamanho : Integer;
begin
  inherited;
    tamanho := Round((StrToFloat((ComboBox1.Text))/100)*32);
    vTamanhoPista := tamanho+2;
    vTamanhoVeiculo := tamanho;
    btnAtualizarClick(Self);
end;

procedure TF_Monitoramento_Trafego_Estatico.ComboBox2Change(Sender: TObject);
begin
  inherited;
    btnAtualizarClick(Self);
end;

procedure TF_Monitoramento_Trafego_Estatico.cria_pista;
procedure cria_regua(p_maiorDistancia:double);
   var
   i, qtde_numeros_regua : integer;
   incremento, qtde_ponto, qtde_ponto_adicional, i2  : Real;
   km, pontos : string ;
   vaux : real;
Begin
   qtde_numeros_regua := Trunc(rzPanelRegua.Width / 21.15);

   // Verifica se a maior distancia � maior que a qtde_numeros_regua
   If ( round(p_maiorDistancia) >= qtde_numeros_regua) Then Begin
      incremento := 0;
      rzPanelRegua.Caption := '';
      For i := 1 to qtde_numeros_regua do
      Begin
         incremento := incremento + (round(p_maiorDistancia) / qtde_numeros_regua);
         km := FloatToStr(round(incremento));
         If (Length(km) < 2) then km := '0' + km;
         rzPanelRegua.Caption := rzPanelRegua.Caption + '.' + km;
      End;
      rzPanelRegua.Caption := rzPanelRegua.Caption;
   End
   // A maior distancia � menor que a qtde_numeros_regua
   else Begin
      vaux := (qtde_numeros_regua * 3 {Qtde Digitos}) - (round(p_maiorDistancia) * 2{Qtde Digitos});
      If round(p_maiorDistancia) <= 0
         Then vaux := 0
         Else vaux := (vaux / round(p_maiorDistancia));
      qtde_ponto := trunc(vaux);
      If (vaux - qtde_ponto) <= 0
         then qtde_ponto_adicional := 0
         else qtde_ponto_adicional := (vaux - qtde_ponto);
      rzPanelRegua.Caption := '';
      i2 := qtde_ponto_adicional;
      For i := 1 to round(p_maiorDistancia) do
      Begin
         km := IntToStr(i);
         If (Length(km) < 2) then km := '0' + km;
         pontos := '';
         vaux   := 0;
         while (vaux < qtde_ponto) do Begin
            pontos := pontos + '.';
            vaux   := vaux + 1;
         end;
         If i2 > 1 Then Begin
            rzPanelRegua.Caption := rzPanelRegua.Caption + '.';
            i2 := i2 -1;
         end;
         i2 := i2 + qtde_ponto_adicional;
         rzPanelRegua.Caption := rzPanelRegua.Caption + pontos + km;
      End;
      rzPanelRegua.Caption := rzPanelRegua.Caption;
   End;
End;
var
  i : Integer;
  PosicaoScroll : Integer;

  TPista, TIndustria, TLavoura : TScrollBox;

  TPista_estrada_volta,
  TIndustria_Cabecalho, TLavoura_Cabecalho : TGroupBox;

  TPista_estrada_ida : TGroupBox;

  TPista_traco : TQRShape;

  Top_Pista_cabecalho, Top_Industria_Lavoura_cabecalho,
  Width_Pista_Volta, Width_Pista_Ida, Width_Pista_VoltaAsfalto,
  Top_Veiculo_carregando     ,
  Top_Veiculo_descarregando  ,
  Left_Veiculo_carregando    ,
  Left_Veiculo_descarregando ,
  qtdeInfoTipoCargas: Integer;

  TPista_cabecalho : TRzGroupBox;
  TPista_Titulo : TRzPanel;

  TPista_informacoes         : TImage_Pista;
  TVeiculoImagePista : TImageVeiculoPista;

  TImagem_PistaAsfalto : TImage;
  TImagem_PistaTerra : TImage;

  ComponenteCriado : TComponent;

begin
  QR_Pistas.Close;
  QR_Pistas.Open;

  cria_regua(QR_PistasMAIOR_DISTANCIA_REGUA.AsFloat);

   // Se a pista Mae (ScrollBox) estiver criada, destroi a mesma e seus filhos
   i := 0;
   while (i <= (ComponentCount -1)) do
   Begin
      If Components[i] is TScrollBox Then
      begin
         If copy(TScrollBox(Components[i]).Name,1,5) = 'PISTA' Then
         Begin
            //Pegar a posi��o do Scroll para voltar a barra de rolagem depois de criar os componentes
            PosicaoScroll := TScrollBox(Components[i]).VertScrollBar.Position;
            //Destr�i a PISTA
            TScrollBox(Components[i]).Free;
            i := 0; // Sempre que destruir um componente volta no inicio para nao dar erro.
         End;
      End;
      i := i + 1;
   End;

   if assigned(F_BalaoMensagemEquipamento) then
     F_BalaoMensagemEquipamento.Desativar;

   if assigned(F_InformacoesPistaMonitoramento) then
     F_InformacoesPistaMonitoramento.Desativar;

   // Cria a Pista Mae (ScrollBox) onde todos os demais componentes serao criados.
   TPista          := TScrollBox.Create(Self);
   TPista.Parent   := pnVeiculos1;
   TPista.Visible := false;
   TPista.Left     := -1;
   TPista.Top      := 57;
   TPista.Align := alClient;
   TPista.Name     := 'PISTA';
   TPista.Anchors  := [akLeft,akTop,akBottom];
   TPista.SendToBack;

   Top_Pista_cabecalho := 3;
   Top_Industria_Lavoura_cabecalho := 8;
   Top_Veiculo_carregando     := 3;
   Left_Veiculo_carregando    := 3;
   Top_Veiculo_descarregando  := 3;
   Left_Veiculo_descarregando := 3;

   while Not QR_Pistas.Eof do
   Begin
     // Cria a Pista cabe�alho
      TPista_cabecalho            := TRzGroupBox.Create(Self);
      TPista_cabecalho.Parent     := TScrollBox(TPista);
      TPista_cabecalho.Caption    := QR_PistasDESCRICAO.AsString;
      //TPista_cabecalho.Font.Color := clNavy;
      TPista_cabecalho.Font.Name  := 'Arial';
      TPista_cabecalho.Font.Size  := 7;
      TPista_cabecalho.Left       := 115;
      TPista_cabecalho.Height     := vTamanhoPista*2+20;//90;
      TPista_cabecalho.Top        := Top_Pista_cabecalho;
      Top_Pista_cabecalho         := Top_Pista_cabecalho + vTamanhoPista*2+20;//90;
      TPista_cabecalho.Width      := rzPanelRegua.Width;
      TPista_cabecalho.Name       := 'PISTA_CABECALHO' + QR_PistasPISTA.AsString;

      //Cria o titulo da pista
      TPista_Titulo := TRzPanel.Create(Self);
      //TPista_Titulo := RzPanel1;
      TPista_Titulo.Parent := TScrollBox(TPista);
      TPista_Titulo.BorderOuter := RzPanel1.BorderOuter;
      TPista_Titulo.Color := clbtnface;
      TPista_Titulo.Font.Color := clnavy;
      TPista_Titulo.Font.Size := 7;

      TPista_Titulo.Left := TPista_Cabecalho.Left;
      TPista_Titulo.Top := TPista_Cabecalho.Top;
      TPista_Titulo.Width := TPista_Cabecalho.width;
      TPista_Titulo.Height := 15;
      TPista_Titulo.Caption := QR_PistasDESCRICAO.AsString+ '| Faz.' + QR_PistasCOD_FAZENDA.AsString+' | Dist. Ida '+QR_PistasDISTANCIA_TOTAL_IDA.AsString+' km | Dist. Volta '+QR_PistasDISTANCIA_TOTAL_VOLTA.AsString+' km';
      TPista_Titulo.Name := 'PISTA_TITULO'+QR_PistasPISTA.AsString;
      TPista_Titulo.BringToFront;


      //Cria a pista estrada volta
      Width_Pista_Volta                  := trunc(((QR_PistasDISTANCIA_TOTAL_VOLTA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger));
      Width_Pista_VoltaAsfalto           := trunc(((QR_PistasDISTANCIA_ASFALTO_VOLTA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger));
      TPista_estrada_volta               := TGroupBox.Create(Self);
      TPIsta_estrada_volta.Parent        := TRzGroupBox(TPista_cabecalho);
      //TPIsta_estrada_volta.BevelOuter    := bvLowered;
      //TPIsta_estrada_volta.BevelWidth    := 2;
      TPIsta_estrada_volta.Color         := clGreen;
      TPIsta_estrada_volta.Left          := 5;
      TPIsta_estrada_volta.Height        := vTamanhoPista;
      TPIsta_estrada_volta.Top           := 14;
      TPIsta_estrada_volta.Width         := Width_Pista_volta;
      TPIsta_estrada_volta.ShowHint      := True;
      //TPIsta_estrada_volta.OnMouseEnter  := myOnMouseEnter;
      TPIsta_estrada_volta.Name          := 'PISTA_ESTRADA_VOLTA'+QR_PistasPISTA.AsString;
      TPIsta_estrada_volta.Caption       := '';

      //Cria imagem do asfalto da pista
      TImagem_PistaAsfalto := TImage.Create(Self);
      TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Asfalto.Picture.Graphic;
      TImagem_PistaAsfalto.Width           := Width_Pista_VoltaAsfalto;
      TImagem_PistaAsfalto.Align           := alLeft;
      TImagem_PistaAsfalto.Name            := 'IMGPISTA_ESTRADA_VOLTAAsfalto'+QR_PistasPISTA.AsString;
      TImagem_PistaAsfalto.Parent          := TGroupBox(TPIsta_estrada_volta);

      //Cria imagem da terra da pista
      TImagem_PistaTerra := TImage.Create(Self);
      TImagem_PistaTerra.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Terra.Picture.Graphic;
      TImagem_PistaTerra.Align           := alClient;
      TImagem_PistaTerra.Name            := 'IMGPISTA_ESTRADA_VOLTATerra'+QR_PistasPISTA.AsString;
      TImagem_PistaTerra.Parent          := TGroupBox(TPIsta_estrada_volta);


      // Cria o tra�o da Pista
      TPista_Traco                := TQRShape.Create(Self);
      TPista_Traco.Parent         := TRzGroupBox(TPista_cabecalho);
      TPista_Traco.Pen.Color      := $0000B0B0;
      TPista_Traco.Pen.Style      := psDash;
      TPista_Traco.Shape          := qrsTopAndBottom;
      TPista_Traco.Left           := 5;
      TPista_Traco.Height         := 1;
      TPista_Traco.Top            := TPIsta_estrada_volta.top + TPIsta_estrada_volta.Height;
      TPista_Traco.Width          := (Width_Pista_Ida-4) ;
      TPista_Traco.Name           := 'PISTA_TRACO' + QR_PistasPISTA.AsString;

      // Cria a Pista estrada ida
      Width_Pista_Ida                 := trunc(((QR_PistasDISTANCIA_TOTAL_IDA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger));
      //TPista_estrada_ida              := TPanel.Create(Self);
      TPista_estrada_ida := TGroupBox.Create(Self);
      TPista_estrada_ida.Parent       := TRzGroupBox(TPista_cabecalho);
      //PTista_estrada_ida.BevelOuter   := bvLowered;
      //TPista_estrada_ida.BevelWidth   := 2;
      TPista_estrada_ida.Color        := clGreen;
      TPista_estrada_ida.Left         := 5;
      TPista_estrada_ida.Height       := vTamanhoPista;
      TPista_estrada_ida.Top          := TPista_Traco.Top + TPista_Traco.Height;
      TPista_estrada_ida.Width        := Width_Pista_Ida;
      TPista_estrada_ida.ShowHint     := True;
      //TPista_estrada_ida.OnMouseEnter := myOnMouseEnter;
      TPista_estrada_ida.Name         := 'PISTA_ESTRADA_IDA'+QR_PistasPISTA.AsString;
      TPista_estrada_ida.Caption      := '';

      if TPista_estrada_ida.Width >  TPIsta_estrada_volta.Width then
        TPista_Traco.Width := TPista_estrada_ida.Width - 4
      else
        TPista_Traco.Width := TPista_estrada_volta.Width - 4;
      TPista_Traco.BringToFront;


      //Cria o bot�o de informa��es da pista
      TPista_informacoes                                            := TImage_Pista.Create(Self);
      TPista_informacoes.Parent                                     := TRzGroupBox(TPista_cabecalho);
      TPista_informacoes.Picture                                    := imgInfoFrente.Picture;
      TPista_informacoes.Height                                     := imgInfoFrente.Height;
      TPista_informacoes.Width                                      := imgInfoFrente.Width;
      TPista_informacoes.Left                                       := TPista_estrada_ida.Left + TPista_estrada_ida.Width + 1;
      TPista_informacoes.Top                                        := TPista_estrada_ida.Top + TPista_estrada_ida.Height - TPista_informacoes.Height;
      TPista_informacoes.Name                                       := 'PISTA_INFORMACOES'+QR_PistasPISTA.AsString;
      TPista_informacoes.OnClick                                    := TPista_informacoes.myOnMouseEnter;
      TPista_informacoes.InformacoesPista                           := TInformacoesPista.Create;
      TPista_informacoes.InformacoesPista.frente                    := QR_PistasCOD_FRENTE.AsFloat;
      TPista_informacoes.InformacoesPista.fazenda                   := QR_PistasCOD_FAZENDA.AsFloat;
      TPista_informacoes.InformacoesPista.densidadePista            := QR_PistasDENSIDADE_CARGA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaAsfaltoIda       := QR_PistasDISTANCIA_ASFALTO_IDA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaTerraIda         := QR_PistasDISTANCIA_TERRA_IDA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaCarreadorIda     := QR_PistasDISTANCIA_CARREADOR_IDA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaAsfaltoVolta     := QR_PistasDISTANCIA_ASFALTO_VOLTA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaTerraVolta       := QR_PistasDISTANCIA_TERRA_VOLTA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaCarreadorVolta   := QR_PistasDISTANCIA_CARREADOR_VOLTA.AsFloat;
      TPista_informacoes.InformacoesPista.unidadeMoagem             := QR_PageControlUnidade.FieldByName('nome_unidade').AsString;
      TPista_informacoes.InformacoesPista.tempoIdaPrevisto          := QR_PistasTEMPO_IDA_MIN.AsFloat;
      TPista_informacoes.InformacoesPista.tempoVoltaPrevisto        := QR_PistasTEMPO_VOLTA_MIN.AsFloat;
      TPista_informacoes.InformacoesPista.tempoCarregamentoPrevisto := qr_PistasTEMPOCARREGAMENTO.AsFloat;
      TPista_informacoes.InformacoesPista.tempoTotalRealizado       := QR_PistasTEMPOTOTALREALIZADO.AsFloat;
      TPista_informacoes.InformacoesPista.tempoIdaEspacial          := QR_PistasTEMPOIDAESPACIAL.AsFloat;
      TPista_informacoes.InformacoesPista.tempoCarregamentoEspacial := QR_PistasTEMPOCARREGAMENTOESPACIAL.AsFloat;
      TPista_informacoes.InformacoesPista.tempoVoltaEspacial        := QR_PistasTEMPOVOLTAESPACIAL.AsFloat;
      TPista_informacoes.InformacoesPista.qtdeViagensEspacial       := QR_PistasQTDEVIAGENSESPACIAL.AsInteger;
      TPista_informacoes.InformacoesPista.qtdeDescarregando         := 0;
      TPista_informacoes.InformacoesPista.qtdeIndo                  := 0;
      TPista_informacoes.InformacoesPista.qtdeCarregando            := 0;
      TPista_informacoes.InformacoesPista.qtdeVoltando              := 0;

      qtdeInfoTipoCargas := 0;
      {
      QR_PrevistoRealizado.Close;
      QR_PrevistoRealizado.ParamByName('cod_safra').asInteger := QR_Pistas.FieldByName('cod_safra').asInteger;
      QR_PrevistoRealizado.ParamByName('cod_frente').asInteger := QR_Pistas.FieldByName('cod_frente').asInteger;
      QR_PrevistoRealizado.ParamByName('cod_fazenda').asInteger := QR_Pistas.FieldByName('cod_fazenda').asInteger;
      QR_PrevistoRealizado.Open;
      QR_PrevistoRealizado.First;
      if not QR_PrevistoRealizado.IsEmpty then
      begin
        while not QR_PrevistoRealizado.Eof do
        begin
          Inc(qtdeInfoTipoCargas);
          SetLength(TPista_informacoes.InformacoesPista.informacoesTipoCarga,qtdeInfoTipoCargas);
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1]                := TInformacoesTipoCarga.Create;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].tipoVeiculo    := QR_PrevistoRealizadoDESCRICAO.AsString;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].tempoPrevisto  := QR_PrevistoRealizadoPREVISTO.AsString;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].tempoRealizado := QR_PrevistoRealizadoREALIZADO.AsString;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].densidadeMedia := QR_PrevistoRealizadoDENSIDADE.AsFloat;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].qtdeVeiculos   := QR_PrevistoRealizadoQTDEVEICULOS.AsInteger;
          QR_PrevistoRealizado.Next;
        end;
      end;}


      //############################# INDUSTRIA  ###############################
      // Cria Industria Cabecalho
      TIndustria_Cabecalho            := TGroupBox.Create(Self);
      TIndustria_Cabecalho.Parent     := TScrollBox(TPista);
      //TIndustria_Cabecalho.BevelInner := bvLowered;
      //TIndustria_Cabecalho.BevelOuter := bvRaised;
      //TIndustria_Cabecalho.BevelWidth := 1;
      TIndustria_Cabecalho.Color      := $00EFEFEF;
      TIndustria_Cabecalho.Left       := 3;
      TIndustria_Cabecalho.Height     := vTamanhoPista*2+15; //84; //53;
      TIndustria_Cabecalho.Top        := Top_Industria_Lavoura_cabecalho;
      TIndustria_Cabecalho.Width      := 110;
      TIndustria_Cabecalho.Name       := 'INDUSTRIA_CABECALHO'+QR_PistasPISTA.AsString;
      TIndustria_Cabecalho.Caption    := '';
      // Cria Industria (Componente com barra de rolagem para mostrar os descarregamentos)
      TIndustria                      := TScrollBox.Create(Self);
      TIndustria.Parent               := TGroupBox(TIndustria_cabecalho);
      TIndustria.BorderStyle          := bsNone;
      TIndustria.Color                := $00EFEFEF;
      TIndustria.Height               := vTamanhoPista*2+11;//80; //47;
      TIndustria.Left                 := 2;
      TIndustria.Top                  := 3;
      TIndustria.Width                := 107;
      TIndustria.Name                 := 'INDUSTRIA'+QR_PistasPISTA.AsString;
      TIndustria.Align                := alClient;
      //########################################################################


      //############################# LAVOURA ##################################
      TLavoura_Cabecalho              := TGroupBox.Create(Self);
      TLavoura_Cabecalho.Parent       := TScrollBox(TPista);
      //TLavoura_Cabecalho.BevelInner   := bvLowered;
      //TLavoura_Cabecalho.BevelOuter   := bvRaised;
      //TLavoura_Cabecalho.BevelWidth   := 1;
      TLavoura_Cabecalho.Color        := $00EFEFEF;
      TLavoura_Cabecalho.Left         := TPista_cabecalho.Left + TPista_cabecalho.Width + 3;
      TLavoura_Cabecalho.Height       := vTamanhoPista*2+15; //84;
      TLavoura_Cabecalho.Top          := Top_Industria_Lavoura_cabecalho;
      TLavoura_Cabecalho.Width        := 110;
      TLavoura_Cabecalho.Name         := 'LAVOURA_CABECALHO'+QR_PistasPISTA.AsString;
      TLavoura_Cabecalho.Caption      := '';
      // Cria Lavoura (Componente com barra de rolagem para mostrar os carregamentos)
      TLavoura                        := TScrollBox.Create(Self);
      TLavoura.Parent                 := TGroupBox(TLavoura_cabecalho);
      TLavoura.Align                  := alClient;
      TLavoura.BorderStyle            := bsNone;
      TLavoura.Color                  := $00EFEFEF;
      TLavoura.Height                 := vTamanhoPista*2+11;//80;
      TLavoura.Left                   := 2;
      TLavoura.Top                    := 3;
      TLavoura.Width                  := 107; //79;
      TLavoura.Name                   := 'LAVOURA'+QR_PistasPISTA.AsString;
      //########################################################################

      //### VE�CULOS
      QR_Veiculos.Close;
      QR_Veiculos.ParamByName('cod_grupo').AsFloat := QR_PistasCOD_GRUPO.AsFloat;
      QR_Veiculos.ParamByName('cod_regional').AsFloat := QR_PistasCOD_REGIONAL.AsFloat;
      QR_Veiculos.ParamByName('cod_unidade').AsFloat := QR_PistasCOD_UNIDADE.AsFloat;
      QR_Veiculos.ParamByName('cod_safra').AsFloat := QR_PistasCOD_SAFRA.AsFloat;
      QR_Veiculos.ParamByName('cod_frente').AsFloat := QR_PistasCOD_FRENTE.AsFloat;
      QR_Veiculos.ParamByName('cod_fazenda').AsFloat := QR_PistasCOD_FAZENDA.AsFloat;
      QR_Veiculos.Open;
      QR_Veiculos.First;

      while not QR_Veiculos.Eof do
      begin
        // Cria os ve�culos na Pista
        TVeiculoImagePista          := TImageVeiculoPista.Create(Self);

        ComponenteCriado := nil;
        ComponenteCriado := FindComponent('VEICULO_IMG'+ QR_VeiculosCOD_EQUIPAMENTO.AsString);
        if ComponenteCriado <> nil then
        begin
          Application.MessageBox(Pchar('Componente J� est� criado, verificar aloca��o do equipamento'+QR_VeiculosCOD_EQUIPAMENTO.AsString),'Aviso',MB_OK+MB_ICONERROR);
          ComponenteCriado.Free;
          //Exit;
        end;

        TveiculoImagePista.Name := 'VEICULO_IMG'+QR_VeiculosCOD_EQUIPAMENTO.AsString;
        TVeiculoImagePista.Tag  := QR_VeiculosCOD_EQUIPAMENTO.AsInteger;

        //###### INDO #######
        if QR_VeiculosSITUACAO.AsString = 'I' then
          begin
            TVeiculoImagePista.Parent  := TGroupBox(TPista_estrada_ida);
            TVeiculoImagePista.Top     := 2; //38;
            //TVeiculoImagePista.Left    := (round((QR_VeiculosPERCENTUAL_TRAJETO.AsInteger * Width_Pista_Ida)/100)-32);
            TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio.Picture;
          end
        //##### VOLTANDO ######
        else if QR_VeiculosSITUACAO.AsString = 'V' then
          begin
            TVeiculoImagePista.Parent  := TGroupBox(TPista_estrada_volta);
            TVeiculoImagePista.Top     := 2;
            //TVeiculoImagePista.Left    := Width_Pista_Volta - round((QR_VeiculosPERCENTUAL_TRAJETO.AsInteger * Width_Pista_Volta)/100);
            TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado.Picture;
          end
        //##### CARREGANDO ######
        else if QR_VeiculosSITUACAO.AsString = 'C' then
          begin
            TVeiculoImagePista.Parent  := TScrollBox(TLavoura);
            TVeiculoImagePista.Top     := Top_Veiculo_carregando;
            TVeiculoImagePista.Left    := Left_Veiculo_carregando;
            TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando.Picture;

            case  Left_Veiculo_carregando of
              3: Left_Veiculo_carregando := 38;
             38: Left_Veiculo_carregando := 73;
             73: begin
                   Left_Veiculo_carregando :=  3;
                   Top_Veiculo_carregando  := Top_Veiculo_carregando + 36;
                 end;
           end;

          end
        //##### DESCARREGANDO ######
        else if QR_VeiculosSITUACAO.AsString = 'D' then
          begin
            TVeiculoImagePista.Parent  := TScrollBox(TIndustria);
            TVeiculoImagePista.Top     := Top_Veiculo_descarregando;
            TVeiculoImagePista.Left    := Left_Veiculo_descarregando;
            TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando.Picture;

            case  Left_Veiculo_descarregando of
              3: Left_Veiculo_descarregando := 38;
             38: Left_Veiculo_descarregando := 73;
             73: begin
                   Left_Veiculo_descarregando :=  3;
                   Top_Veiculo_descarregando  := Top_Veiculo_descarregando + 36;
                 end;
           end;

          end;



         TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
         TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

         TVeiculoImagePista.Stretch  := True;
         TVeiculoImagePista.Cursor   := crHandPoint;
         TVeiculoImagePista.ShowHint := false;
         TVeiculoImagePista.Name        := 'VEICULO_IMG'+ QR_VeiculosCOD_EQUIPAMENTO.AsString;
         TVeiculoImagePista.BringToFront;
         TVeiculoImagePista.Width := vTamanhoVeiculo;
         TVeiculoImagePista.Height := vTamanhoVeiculo;
         TVeiculoImagePista.Visible := True;
         //TVeiculoImagePista.Hint := 'Equipamento : '+QR_VeiculosCOD_EQUIPAMENTO.AsString+'-'+QR_VeiculosDESCRICAOEQUIPAMENTO.AsString+#13+
         //                           'Data Sa�da  : '+QR_VeiculosDATA_SAIDA.AsString;
         //TVeiculoImagePista.ShowHint := true;

         TVeiculoImagePista.BringToFront;

        QR_Veiculos.Next;
      end;

      Top_Industria_Lavoura_cabecalho := Top_Industria_Lavoura_cabecalho + vTamanhoPista*2+20;

      TPista.Visible := true;

      QR_Pistas.Next;
   end;
end;

procedure TF_Monitoramento_Trafego_Estatico.cria_pista_monitoramento;
procedure cria_regua(p_maiorDistancia:double);
   var
   i, qtde_numeros_regua : integer;
   incremento, qtde_ponto, qtde_ponto_adicional, i2  : Real;
   km, pontos : string ;
   vaux : real;
Begin
   qtde_numeros_regua := Trunc(rzPanelRegua.Width / 21.15 {18.95});

   // Verifica se a maior distancia � maior que a qtde_numeros_regua
   If ( round(p_maiorDistancia) >= qtde_numeros_regua) Then Begin
      incremento := 0;
      rzPanelRegua.Caption := '';
      For i := 1 to qtde_numeros_regua do
      Begin
         incremento := incremento + (round(p_maiorDistancia) / qtde_numeros_regua);
         km := FloatToStr(round(incremento));
         If (Length(km) < 2) then km := '0' + km;
         rzPanelRegua.Caption := rzPanelRegua.Caption + '.' + km;
      End;
      rzPanelRegua.Caption := rzPanelRegua.Caption;
   End
   // A maior distancia � menor que a qtde_numeros_regua
   else Begin
      vaux := (qtde_numeros_regua * 3 {Qtde Digitos}) - (round(p_maiorDistancia) * 2{Qtde Digitos});
      If round(p_maiorDistancia) <= 0
         Then vaux := 0
         Else vaux := (vaux / round(p_maiorDistancia));
      qtde_ponto := trunc(vaux);
      If (vaux - qtde_ponto) <= 0
         then qtde_ponto_adicional := 0
         else qtde_ponto_adicional := (vaux - qtde_ponto);
      rzPanelRegua.Caption := '';
      i2 := qtde_ponto_adicional;
      For i := 1 to round(p_maiorDistancia) do
      Begin
         km := IntToStr(i);
         If (Length(km) < 2) then km := '0' + km;
         pontos := '';
         vaux   := 0;
         while (vaux < qtde_ponto) do Begin
            pontos := pontos + '.';
            vaux   := vaux + 1;
         end;
         If i2 > 1 Then Begin
            rzPanelRegua.Caption := rzPanelRegua.Caption + '.';
            i2 := i2 -1;
         end;
         i2 := i2 + qtde_ponto_adicional;
         rzPanelRegua.Caption := rzPanelRegua.Caption + pontos + km;
      End;
      rzPanelRegua.Caption := rzPanelRegua.Caption;
   End;
End;
   var
   TPista                     : TScrollBox;
   TPista_cabecalho           : TRzGroupBox;
   TPista_Titulo              : TRzPanel;
   TPista_estrada_ida         : TPanel;
   TPIsta_estrada_volta       : TPanel;
   TPista_informacoes         : TImage_Pista;
   TPista_Traco               : TQRShape;
   TIndustria_cabecalho       : TRzPanel;
   TIndustria                 : TScrollBox;
   TLavoura_cabecalho         : TRzPanel;
   TLavoura                   : TScrollBox;
   TInfoFrente_cabecalho      : TGroupBox;
   TInfoFrente                : TcxImage;
   TLabel_prev                : TLabel;
   TLabel_real                : TLabel;
   TImagem_PistaAsfalto       : Timage;
   TImagem_PistaTerra         : TImage;
   TImagemIndustria           : TImage;
   TImagemLavoura             : Timage;
   Top_Pista_cabecalho        : integer;
   Top_Industria_Lavoura_cabecalho  : integer;
   Width_Pista_Ida            : integer;
   Width_Pista_VoltaTerra     : Integer;
   Width_Pista_volta          : Integer;
   Width_Pista_voltaAsfalto   : Integer;
   top_InfoPista              : Integer;
   TVeiculo                   : TImage;
   TVeiculoImagePista         : TImageVeiculoPista;
   TPanelCodigoVeiculo        : TRZPanel;
   Top_Veiculo_carregando     : integer;
   Top_Veiculo_descarregando  : integer;
   Left_Veiculo_carregando    : integer;
   Left_Veiculo_descarregando : integer;
   i                          : integer;
   j,k                        : integer;
   possuiAlertas              : boolean;
   alertas                    : String;
   qtdeVeiculos               : Integer;
   qtdeInfoTipoCargas         : Integer;
   LimiteVeiculosCarregendo   : Integer;
   QtdAlocadoCarregando       : Integer;
   LimiteVeiculosDescarregendo: Integer;
   QtdAlocadoDesarregando     : Integer;
   ComponentCriado            : TComponent;
   listaInformacoesEquipamentos : array of TInformacaoBalao;
   PosicaoScroll              : Integer;
   Cont_Percurso              : Integer;
   v_posicao                  : Integer;
   v_posicaoant               : integer;
   v_pagecontrol              : String;

Begin

   // Atualiza os Alertas
   //QR_Alerta.Refresh;

   // Veiculos parados
   QR_Parado.Refresh;

   // Le as Pistas
   QR_Pistas.Close;
   QR_Pistas.Open;
   //Paga a pagina que ser� criada, ou seja, a pagina que n�o est� ativa
   //Essa variav�l ser� usada nos nomes de todos os componentes criados da PISTA
   if RzPageControl2.ActivePage = Page1 then
      v_pagecontrol := '2'
   else v_pagecontrol := '1';

   // Cria a regua para demonstrar a maior dist�ncia em Km.
   cria_regua(QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger);

   // Cria a Pista Mae (ScrollBox) onde todos os demais componentes serao criados.
   TPista          := TScrollBox.Create(Self);
   //TPista.parent   := TabSheet1;

   //Cria no Panel que est� na pagina que n�o est� ativa
   if RzPageControl2.ActivePage = Page1 then
      TPista.Parent := pnVeiculos2
   else
      TPista.Parent   := pnVeiculos1;

   //Henrique 13/04/2011
   //passamos a criar a pista e deixa-la invisivel, tornando-a visivel somente
   //depois que tudo estiver criado, percebemos que a performance melhorou bastante
   TPista.Visible := false;

   TPista.Left     := -1;
   TPista.Top      := 57;
//   TPista.Width    := 777;
//   TPista.Height   := 230;
//   TPista.Height   := TabSheet1.Height - Panel3.Height - Panel6.Height;
   TPista.Align := alClient;

   //###### PISTA ######
   TPista.Name     := 'PISTA'+v_pagecontrol;
   TPista.Anchors  := [akLeft,akTop,akBottom];
   TPista.SendToBack;


   Top_Pista_cabecalho := 3;
   Top_Industria_Lavoura_cabecalho := 5;

   if assigned(F_BalaoMensagemEquipamento) then
     F_BalaoMensagemEquipamento.Desativar;
   if assigned(F_InformacoesPistaMonitoramento) then
     F_InformacoesPistaMonitoramento.Desativar;

   while Not QR_Pistas.Eof do
   Begin
      if QR_PistasMAIOR_DISTANCIA_REGUA.AsFloat = 0 then
      begin
        Application.MessageBox('N�o foi Poss�vel Encontrar a Maior Dist�ncia para a Forma��o das Pistas!', 'Aten��o!', MB_ICONERROR + MB_OK);
        Close;
        Abort;
      end;

      // Cria a Pista cabe�alho
      TPista_cabecalho            := TRzGroupBox.Create(Self);
      TPista_cabecalho.Parent     := TScrollBox(TPista);
      TPista_cabecalho.Caption    := QR_PistasDESCRICAO.AsString;
      TPista_cabecalho.Font.Color := clHighlight;
      TPista_cabecalho.Font.Name  := 'Arial';
      TPista_cabecalho.Font.Size  := 7;
      TPista_cabecalho.Left       := 115;
      TPista_cabecalho.Height     := vTamanhoPista*2+20;//90;
      TPista_cabecalho.Top        := Top_Pista_cabecalho;
      Top_Pista_cabecalho         := Top_Pista_cabecalho + vTamanhoPista*2+20;//90;
      TPista_cabecalho.Width      := rzPanelRegua.Width;
      TPista_cabecalho.Name       := 'PISTA_CABECALHO'+v_pagecontrol + QR_PistasPISTA.AsString;

      //Cria o titulo da pista
      TPista_Titulo := TRzPanel.Create(Self);
      //TPista_Titulo := RzPanel1;
      TPista_Titulo.Parent := TScrollBox(TPista);
      TPista_Titulo.BorderOuter := RzPanel1.BorderOuter;
      TPista_Titulo.Color := clbtnface;
      TPista_Titulo.Font.Color := clHighlight;
      TPista_Titulo.Font.Size := 7;
      TPista_Titulo.Left := TPista_Cabecalho.Left;
      TPista_Titulo.Top := TPista_Cabecalho.Top;
      TPista_Titulo.Width := TPista_Cabecalho.width;
      TPista_Titulo.Height := 15;
      TPista_Titulo.Caption := QR_PistasDESCRICAO.AsString;
                               //+ '| Faz.' + QR_PistasCOD_FAZENDA.AsString+' | Dist. Ida '+QR_PistasDISTANCIA_TOTAL_IDA.AsString+' km | Dist. Volta '+QR_PistasDISTANCIA_TOTAL_VOLTA.AsString+' km';
      TPista_Titulo.Name := 'PISTA_TITULO'+v_pagecontrol+QR_PistasPISTA.AsString;
      TPista_Titulo.BringToFront;

      //Cria a pista estrada volta
      Width_Pista_Volta                  := trunc(((QR_PistasDISTANCIA_TOTAL_VOLTA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger));
      TPista_estrada_volta               := TPanel.Create(Self);
      TPIsta_estrada_volta.Parent        := TRzGroupBox(TPista_cabecalho);
      TPIsta_estrada_volta.BevelOuter    := bvNone; //bvLowered;
      TPIsta_estrada_volta.BevelWidth    := 2;
      TPIsta_estrada_volta.Color         := $00EFEFEF;
      TPIsta_estrada_volta.Left          := 5;
      TPIsta_estrada_volta.Height        := vTamanhoPista; //34; //70; //38;
      TPIsta_estrada_volta.Top           := 14;
      TPIsta_estrada_volta.Width         := Width_Pista_volta;
      TPIsta_estrada_volta.ShowHint      := True;
      TPIsta_estrada_volta.OnMouseEnter  := myOnMouseEnter;
      TPIsta_estrada_volta.Name          := 'PISTA_ESTRADA_VOLTA'+v_pagecontrol+QR_PistasPISTA.AsString;
      TPIsta_estrada_volta.Caption       := '';


      QR_Percurso.Close;
      QR_Percurso.ParamByName('cod_grupo').AsFloat := vGrupo;
      QR_Percurso.ParamByName('cod_regional').AsFloat := vRegional;
      QR_Percurso.ParamByName('cod_unidade').AsFloat := vUnidade;
      QR_Percurso.ParamByName('cod_safra').AsFloat := dm.QR_SafrasCOD_SAFRA.AsFloat;
      QR_Percurso.ParamByName('tipo').AsString := 'V';
      QR_Percurso.ParamByName('cod_fazenda').AsFloat := QR_PistasCOD_FAZENDA.AsFloat;
      QR_Percurso.MacroByName('MacroOrdem').Value := ' ORDER BY a.sequencia desc ';
      QR_Percurso.Open;
      QR_Percurso.First;

      Cont_Percurso := 0;
      v_posicaoant  := 0;

      while not QR_Percurso.Eof do
      begin
         Cont_Percurso := Cont_Percurso +1;

            //Cria imagem do asfalto da pista
          Width_Pista_VoltaAsfalto           := trunc(((QR_PercursoDISTANCIA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger));
          v_posicaoant :=  Width_Pista_VoltaAsfalto + v_posicaoant;
          TImagem_PistaAsfalto                 := TImage.Create(Self);
          if QR_PercursoPERCURSO.AsString = 'A' then
                TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Asfalto.Picture.Graphic
          else if QR_PercursoPERCURSO.AsString = 'T' then
                TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Terra.Picture.Graphic
          else if QR_PercursoPERCURSO.AsString = 'C' then
                TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Carreador.Picture.Graphic;
          TImagem_PistaAsfalto.Width           := Width_Pista_VoltaAsfalto;
          if Cont_Percurso = QR_Percurso.RecordCount then
             TImagem_PistaAsfalto.Align           := alClient
          else
             TImagem_PistaAsfalto.Align           := alLeft;
          TImagem_PistaAsfalto.Stretch         := True;
          TImagem_PistaAsfalto.Name            := 'IMGPISTA_ESTRADA_VOLTA'+v_pagecontrol+QR_PercursoSEQUENCIA.AsString
                                                   +QR_PercursoPERCURSO.AsString+QR_PistasPISTA.AsString;
          TImagem_PistaAsfalto.Parent          := TGroupBox(TPIsta_estrada_volta);
          TImagem_PistaAsfalto.Left            := v_posicaoant;

          QR_Percurso.Next;
      end;


      // Cria o tra�o da Pista
      TPista_Traco                := TQRShape.Create(Self);
      TPista_Traco.Parent         := TRzGroupBox(TPista_cabecalho); //TGroupBox(TPista_Estrada);
      TPista_Traco.Pen.Color      := $0000B0B0;
      TPista_Traco.Pen.Style      := psSolid;
      TPista_Traco.Shape          := qrsTopAndBottom;
      TPista_Traco.Left           := 1;
      TPista_Traco.Height         := 1;
      TPista_Traco.Top            := TPIsta_estrada_volta.top + TPIsta_estrada_volta.Height;
      TPista_Traco.Width          := (Width_Pista_Ida-4) ;
      TPista_Traco.Name           := 'PISTA_TRACO'+v_pagecontrol+ QR_PistasPISTA.AsString;

      // Cria a Pista estrada ida
      Width_Pista_Ida                 := trunc(((QR_PistasDISTANCIA_TOTAL_IDA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_regua.AsInteger));
      TPista_estrada_ida              := TPanel.Create(Self);
      TPista_estrada_ida.Parent       := TRzGroupBox(TPista_cabecalho);
      TPista_estrada_ida.BevelOuter   := bvNone; //bvLowered;
      TPista_estrada_ida.BevelWidth   := 2;
      TPista_estrada_ida.Color        := $00EFEFEF;
      TPista_estrada_ida.Left         := 5;
      TPista_estrada_ida.Height       := vTamanhoPista; //34; //70; //38;
      TPista_estrada_ida.Top          := TPista_Traco.Top + TPista_Traco.Height;
      TPista_estrada_ida.Width        := Width_Pista_Ida;
      TPista_estrada_ida.ShowHint     := True;
      TPista_estrada_ida.OnMouseEnter := myOnMouseEnter;
      TPista_estrada_ida.Name         := 'PISTA_ESTRADA_IDA'+v_pagecontrol+QR_PistasPISTA.AsString;
      TPista_estrada_ida.Caption      := '';

      QR_Percurso.Close;
      QR_Percurso.ParamByName('cod_grupo').AsFloat := vGrupo;
      QR_Percurso.ParamByName('cod_regional').AsFloat := vRegional;
      QR_Percurso.ParamByName('cod_unidade').AsFloat := vUnidade;
      QR_Percurso.ParamByName('cod_safra').AsFloat := dm.QR_SafrasCOD_SAFRA.AsFloat;
      QR_Percurso.ParamByName('tipo').AsString := 'I';
      QR_Percurso.ParamByName('cod_fazenda').AsFloat := QR_PistasCOD_FAZENDA.AsFloat;
      QR_Percurso.MacroByName('MacroOrdem').Value := ' ORDER BY a.sequencia ';
      QR_Percurso.Open;

      QR_Percurso.First;
      Cont_Percurso := 0;
      v_posicaoant  := 0;

      while not QR_Percurso.Eof do
      begin

         Cont_Percurso := Cont_Percurso +1;
            //Cria imagem do asfalto da pista
          Width_Pista_VoltaAsfalto           := trunc(((QR_PercursoDISTANCIA.AsInteger * (rzPanelRegua.Width - 32))/QR_PistasMAIOR_DISTANCIA_REGUA.AsInteger));
          v_posicaoant :=  Width_Pista_VoltaAsfalto + v_posicaoant;
          TImagem_PistaAsfalto                 := TImage.Create(Self);
          if QR_PercursoPERCURSO.AsString = 'A' then
                TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Asfalto.Picture.Graphic
          else if QR_PercursoPERCURSO.AsString = 'T' then
                TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Terra.Picture.Graphic
          else if QR_PercursoPERCURSO.AsString = 'C' then
                TImagem_PistaAsfalto.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Carreador.Picture.Graphic;
          TImagem_PistaAsfalto.Width           := Width_Pista_VoltaAsfalto;
          if Cont_Percurso = QR_Percurso.RecordCount then
             TImagem_PistaAsfalto.Align           := alClient
          else
             TImagem_PistaAsfalto.Align           := alLeft;
          TImagem_PistaAsfalto.Stretch         := True;
          TImagem_PistaAsfalto.Name            := 'IMGPISTA_ESTRADA_IDA'+v_pagecontrol+QR_PercursoSEQUENCIA.AsString
                                                   +QR_PercursoPERCURSO.AsString+QR_PistasPISTA.AsString;
          TImagem_PistaAsfalto.Parent          := TGroupBox(TPista_estrada_ida);
          TImagem_PistaAsfalto.Left            := v_posicaoant;
          QR_Percurso.Next;
      end;

      //atualizao o tra�o para a pista maior
      if TPista_estrada_ida.Width >  TPIsta_estrada_volta.Width then
        TPista_Traco.Width := TPista_estrada_ida.Width - 4
      else
        TPista_Traco.Width := TPista_estrada_volta.Width - 4;
      TPista_Traco.BringToFront;

      //Cria o bot�o de informa��es da pista
      TPista_informacoes                                            := TImage_Pista.Create(Self);
      TPista_informacoes.Parent                                     := TRzGroupBox(TPista_cabecalho);
      TPista_informacoes.Picture                                    := imgInfoFrente.Picture;
      TPista_informacoes.Height                                     := imgInfoFrente.Height;
      TPista_informacoes.Width                                      := imgInfoFrente.Width;
      TPista_informacoes.Left                                       := TPista_estrada_ida.Left + TPista_estrada_ida.Width + 1;
      TPista_informacoes.Top                                        := TPista_estrada_ida.Top + TPista_estrada_ida.Height - TPista_informacoes.Height;
      TPista_informacoes.Stretch                                    := True;
      TPista_informacoes.Name                                       := 'PISTA_INFORMACOES'+v_pagecontrol+QR_PistasPISTA.AsString;
      TPista_informacoes.OnClick                                    := TPista_informacoes.myOnMouseEnter;
      TPista_informacoes.InformacoesPista                           := TInformacoesPista.Create;
      TPista_informacoes.InformacoesPista.frente                    := QR_PistasCOD_FRENTE.AsFloat;
      TPista_informacoes.InformacoesPista.fazenda                   := QR_PistasCOD_FAZENDA.AsFloat;
      TPista_informacoes.InformacoesPista.densidadePista            := QR_PistasDENSIDADE_CARGA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaAsfaltoIda       := QR_PistasDISTANCIA_ASFALTO_IDA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaTerraIda         := QR_PistasDISTANCIA_TERRA_IDA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaCarreadorIda     := QR_PistasDISTANCIA_CARREADOR_IDA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaAsfaltoVolta     := QR_PistasDISTANCIA_ASFALTO_VOLTA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaTerraVolta       := QR_PistasDISTANCIA_TERRA_VOLTA.AsFloat;
      TPista_informacoes.InformacoesPista.distanciaCarreadorVolta   := QR_PistasDISTANCIA_CARREADOR_VOLTA.AsFloat;
      TPista_informacoes.InformacoesPista.unidadeMoagem             := QR_PageControlUnidade.FieldByName('nome_unidade').AsString;
      TPista_informacoes.InformacoesPista.tempoIdaPrevisto          := QR_PistasTEMPO_IDA_MIN.AsFloat;
      TPista_informacoes.InformacoesPista.tempoVoltaPrevisto        := QR_PistasTEMPO_VOLTA_MIN.AsFloat;
      TPista_informacoes.InformacoesPista.tempoCarregamentoPrevisto := qr_PistasTEMPOCARREGAMENTO.AsFloat;
      TPista_informacoes.InformacoesPista.tempoTotalRealizado       := QR_PistasTEMPOTOTALREALIZADO.AsFloat;
      TPista_informacoes.InformacoesPista.tempoIdaEspacial          := QR_PistasTEMPOIDAESPACIAL.AsFloat;
      TPista_informacoes.InformacoesPista.tempoCarregamentoEspacial := QR_PistasTEMPOCARREGAMENTOESPACIAL.AsFloat;
      TPista_informacoes.InformacoesPista.tempoVoltaEspacial        := QR_PistasTEMPOVOLTAESPACIAL.AsFloat;
      TPista_informacoes.InformacoesPista.qtdeViagensEspacial       := QR_PistasQTDEVIAGENSESPACIAL.AsInteger;
      TPista_informacoes.InformacoesPista.qtdeDescarregando         := 0;
      TPista_informacoes.InformacoesPista.qtdeIndo                  := 0;
      TPista_informacoes.InformacoesPista.qtdeCarregando            := 0;
      TPista_informacoes.InformacoesPista.qtdeVoltando              := 0;

      qtdeInfoTipoCargas := 0;

      QR_PrevistoRealizado.Close;
      QR_PrevistoRealizado.ParamByName('cod_grupo').asInteger := QR_PistasCOD_GRUPO.asInteger;
      QR_PrevistoRealizado.ParamByName('cod_regional').asInteger := QR_PistasCOD_REGIONAL.asInteger;
      QR_PrevistoRealizado.ParamByName('cod_unidade').asInteger := QR_PistasCOD_UNIDADE.AsInteger;
      QR_PrevistoRealizado.ParamByName('cod_safra').asInteger := QR_Pistas.FieldByName('cod_safra').asInteger;
      QR_PrevistoRealizado.ParamByName('cod_frente').asInteger := QR_Pistas.FieldByName('cod_frente').asInteger;
      QR_PrevistoRealizado.ParamByName('cod_fazenda').asInteger := QR_Pistas.FieldByName('cod_fazenda').asInteger;
      QR_PrevistoRealizado.Open;
      QR_PrevistoRealizado.First;
      if not QR_PrevistoRealizado.IsEmpty then
      begin
        while not QR_PrevistoRealizado.Eof do
        begin
          Inc(qtdeInfoTipoCargas);
          SetLength(TPista_informacoes.InformacoesPista.informacoesTipoCarga,qtdeInfoTipoCargas);
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1]                := TInformacoesTipoCarga.Create;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].tipoVeiculo    := QR_PrevistoRealizadoDESCRICAO.AsString;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].tempoPrevisto  := QR_PrevistoRealizadoPREVISTO.AsString;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].tempoRealizado := QR_PrevistoRealizadoREALIZADO.AsString;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].densidadeMedia := QR_PrevistoRealizadoDENSIDADE.AsFloat;
          TPista_informacoes.InformacoesPista.informacoesTipoCarga[qtdeInfoTipoCargas-1].qtdeVeiculos   := QR_PrevistoRealizadoQTDEVEICULOS.AsInteger;
          QR_PrevistoRealizado.Next;
        end;
      end;



      //############################# INDUSTRIA  ###############################
      // Cria Industria Cabecalho
      TIndustria_Cabecalho            := TRzPanel.Create(Self);
      TIndustria_Cabecalho.Parent     := TScrollBox(TPista);
      TIndustria_Cabecalho.Left       := 3;
      TIndustria_Cabecalho.Height     := vTamanhoPista*2+16; //84; //53;
      TIndustria_Cabecalho.Top        := Top_Industria_Lavoura_cabecalho;
      TIndustria_Cabecalho.Width      := 110;
      TIndustria_Cabecalho.Name       := 'INDUSTRIA_CABECALHO'+v_pagecontrol+QR_PistasPISTA.AsString;
      TIndustria_Cabecalho.Caption    := '';
      TIndustria_Cabecalho.BorderOuter := RzGroupBoxModelo.BorderInner;

      // Cria Industria (Componente com barra de rolagem para mostrar os descarregamentos)
      TIndustria                      := TScrollBox.Create(Self);
      TIndustria.Parent               := TRzpanel(TIndustria_cabecalho);
      TIndustria.BorderStyle          := bsNone;
      TIndustria.Align                := alClient;
      TIndustria.Color                := $00EFEFEF;
      TIndustria.Height               := vTamanhoPista*2+17;//80; //47;
      TIndustria.Left                 := 2;
      TIndustria.Top                  := 3;
      TIndustria.Width                := 107;
      TIndustria.Name                 := 'INDUSTRIA'+v_pagecontrol+QR_PistasPISTA.AsString;

      //Cria a imagem da industria
      TImagemIndustria                := TImage.Create(Self);
      TImagemIndustria.Parent         := TGroupBox(TIndustria);
      TImagemIndustria.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_industria.Picture.Graphic;
      TImagemIndustria.Name           := 'IMGINDUSTRIA'+v_pagecontrol+QR_PistasPISTA.AsString;
      TImagemIndustria.Stretch        := True;
      TImagemIndustria.Align          := alClient;

      //########################################################################


      //############################# LAVOURA ##################################
      TLavoura_Cabecalho              := TRzPanel.Create(Self);
      TLavoura_Cabecalho.Parent       := TScrollBox(TPista);
      TLavoura_Cabecalho.Left         := TPista_cabecalho.Left + TPista_cabecalho.Width + 3;
      TLavoura_Cabecalho.Height       := vTamanhoPista*2+17; //84;
      TLavoura_Cabecalho.Top          := Top_Industria_Lavoura_cabecalho;
      TLavoura_Cabecalho.Width        := 110;
      TLavoura_Cabecalho.Name         := 'LAVOURA_CABECALHO'+v_pagecontrol+QR_PistasPISTA.AsString;
      TLavoura_Cabecalho.Caption      := '';
      TLavoura_Cabecalho.BorderOuter := RzGroupBoxModelo.BorderInner;

      // Cria Lavoura (Componente com barra de rolagem para mostrar os carregamentos)
      TLavoura                        := TScrollBox.Create(Self);
      TLavoura.Parent                 := TRzGroupBox(TLavoura_cabecalho);
      TLavoura.BorderStyle            := bsNone;
      TLavoura.Align                  := alClient;
      TLavoura.Color                  := $00EFEFEF;
      TLavoura.Height                 := vTamanhoPista*2+17;//80;
      TLavoura.Left                   := 2;
      TLavoura.Top                    := 3;
      TLavoura.Width                  := 107; //79;
      TLavoura.Name                   := 'LAVOURA'+v_pagecontrol+QR_PistasPISTA.AsString;
      TLavoura.Align                  := alClient;

      //Cria a imagem da lavoura
      TImagemLavoura                  := TImage.Create(Self);
      TImagemLavoura.Parent           := TRzGroupBox(TLavoura);
      TImagemLavoura.Picture.Graphic  := F_ImagensMonitoramentoTrafego.Img_lavoura.Picture.Graphic;
      TImagemLavoura.Name             := 'IMGIlavouta'+v_pagecontrol+QR_PistasPISTA.AsString;
      TImagemLavoura.Stretch          := True;
      TImagemLavoura.Align            := alClient;

      //########################################################################

      //####################### INFORMA��ES DA FRENTE ##########################
      //Cria Informa��es Frente Cabe�alho
      TInfoFrente_cabecalho            := TGroupBox.Create(Self);
      TInfoFrente_cabecalho.Parent     := TScrollBox(TPista);
      //TInfoFrente_cabecalho.BevelInner := bvLowered;
      //TInfoFrente_cabecalho.BevelOuter := bvRaised;
      //TInfoFrente_cabecalho.BevelWidth := 1;
      TInfoFrente_cabecalho.Color      := $00EFEFEF;
      TInfoFrente_cabecalho.Left       := rzPanelInformacoes.Left; //TLavoura_cabecalho.Left + TLavoura.Width + 3;
      TInfoFrente_cabecalho.Height     := vTamanhoPista*2+15;//84;
      TInfoFrente_cabecalho.Top        := Top_Industria_Lavoura_cabecalho;
      TInfoFrente_cabecalho.Width      := rzPanelInformacoes.Width;
      TInfoFrente_cabecalho.Name       := 'INFOFRENTE_CABECALHO'+v_pagecontrol+QR_PistasPISTA.AsString;
      TInfoFrente_cabecalho.Caption    := '';


      top_InfoPista                    := 3;

      //Frente Fixa
      if QR_PistasFRENTEFIXA.AsString = 'S' then
      begin
        TInfoFrente              := TcxImage.Create(Self);
        TInfoFrente.Parent       := TInfoFrente_cabecalho;
        TInfoFrente.Align        := alTop;
        TInfoFrente.Transparent  := true;
        TInfoFrente.Picture      := cxImageFrenteFixa.Picture;
        TInfoFrente.Hint         := cxImageFrenteFixa.Hint;
        TInfoFrente.ShowHint     := cxImageFrenteFixa.ShowHint;
        TInfoFrente.Style        := cxImageFrenteFixa.Style;
        TInfoFrente.Height       := cxImageFrenteFixa.Height;
        TInfoFrente.Width        := cxImageFrenteFixa.Width;
        TInfoFrente.Left         := cxImageFrenteFixa.Left;
        TInfoFrente.Top          := top_InfoPista;
        TInfoFrente.Transparent  := cxImageFrenteFixa.Transparent;
        top_InfoPista            := top_InfoPista + TInfoFrente.Height;
      end;

      //Cota Atrasada
      if QR_PistasCOTAESTAATRASADA.AsString = 'S' then
      begin
        TInfoFrente              := TcxImage.Create(Self);
        TInfoFrente.Parent       := TInfoFrente_cabecalho;
        TInfoFrente.Align        := alTop;
        TInfoFrente.Picture      := cxImageCotaAtrasada.Picture;
        TInfoFrente.Hint         := cxImageCotaAtrasada.Hint + ' em ' + QR_PistasQTDECOTAATRASADA.AsString + ' %' + #13 + 'Qtde. Atrasada em ' + QR_PistasTONELADAATRASADA.AsString + ' ton.';
        TInfoFrente.ShowHint     := cxImageCotaAtrasada.ShowHint;
        TInfoFrente.Style        := cxImageCotaAtrasada.Style;
        TInfoFrente.Height       := cxImageCotaAtrasada.Height;
        TInfoFrente.Width        := cxImageCotaAtrasada.Width;
        TInfoFrente.Left         := cxImageCotaAtrasada.Left;
        TInfoFrente.Top          := top_InfoPista;
        TInfoFrente.Transparent  := cxImageCotaAtrasada.Transparent;
        top_InfoPista            := top_InfoPista + TInfoFrente.Height;
      end;

      //########################################################################

      Top_Industria_Lavoura_cabecalho := Top_Industria_Lavoura_cabecalho + vTamanhoPista*2+20;//90;




      //########################################################################
      //### CONSTRU��O DOS *** VE�CULOS ***                                  ###
      //########################################################################
      // Le os Ve�culos
      //SHint_concatenado := '';
      QR_Veiculos.Close;
      QR_Veiculos.ParamByName('cod_grupo').AsFloat := QR_PistasCOD_GRUPO.AsFloat;
      QR_Veiculos.ParamByName('cod_regional').AsFloat := QR_PistasCOD_REGIONAL.AsFloat;
      QR_Veiculos.ParamByName('cod_unidade').AsFloat := QR_PistasCOD_UNIDADE.AsFloat;
      QR_Veiculos.ParamByName('cod_safra').AsFloat := QR_PistasCOD_SAFRA.AsFloat;
      QR_Veiculos.ParamByName('cod_frente').AsFloat := QR_PistasCOD_FRENTE.AsFloat;
      QR_Veiculos.ParamByName('cod_fazenda').AsFloat := QR_PistasCOD_FAZENDA.AsFloat;

      QR_Veiculos.ParamByName('realprevisto').Value             := Copy(ComboBox2.Text,1,1);
      //QR_Veiculos.MacroByName('filtroTipoCarga').Value          := retornaFiltro('TIPOCARGA');
      //QR_Veiculos.MacroByName('filtroTipoCargaTexto').Value     := ''''+retornaFiltro('TIPOCARGA')+'''';
      //QR_Veiculos.MacroByName('filtroTipoProprietario').Value   := retornaFiltro('TIPOPROPRIETARIO');
      //QR_Veiculos.MacroByName('filtroTipoAlertaAlocacao').Value := retornaFiltro('MOTIVOSALERTA');

      QR_Veiculos.Open;

      QR_Veiculos.First;
      Top_Veiculo_carregando     := 3;
      Left_Veiculo_carregando    := 3;
      Top_Veiculo_descarregando  := 3;
      Left_Veiculo_descarregando := 3;
      LimiteVeiculosCarregendo   := 0;
      QtdAlocadoCarregando       := 0;
      LimiteVeiculosDescarregendo:= 0;
      QtdAlocadoDesarregando     := 0;
      listaInformacoesEquipamentos := nil;
      qtdeVeiculos := 0;

      while Not QR_Veiculos.Eof do
      Begin

         // Cria os ve�culos na Pista
         TVeiculoImagePista          := TImageVeiculoPista.Create(Self);

         ComponentCriado := nil;
         ComponentCriado := FindComponent('VEICULO_IMG'+ QR_VeiculosCOD_EQUIPAMENTO.AsString);

         if ComponentCriado <> nil then
         begin
           Application.MessageBox(Pchar('Componente J� est� criado, verificar aloca��o do equipamento'+QR_VeiculosCOD_EQUIPAMENTO.AsString),'Aviso',MB_OK+MB_ICONERROR);
           ComponentCriado.Free;
         end;


         // Se estiver indo ou voltando cria os images na TPista_Estrada
         If (QR_VeiculosSITUACAO.Value='I') or (QR_VeiculosSITUACAO.Value='V') Then
         Begin
            If (QR_VeiculosSITUACAO.Value='I') then
              TVeiculoImagePista.Parent   := TGroupBox(TPista_Estrada_Ida)
            else
              TVeiculoImagePista.Parent   := TGroupBox(TPista_Estrada_Volta);
           { if Application.Title = 'Log�stica Transporte Cana' then
              TVeiculoImagePista.OnClick := imgVeiculoPistaClick;}
         End;

         // Se estiver Carregando cria os Veiculos na Tlavoura
         If (QR_VeiculosSITUACAO.Value='C')  Then
            TVeiculoImagePista.Parent   := TScrollBox(TLavoura);

         // Se estiver Descarregando cria os Veiculos na TIndustria
         If (QR_VeiculosSITUACAO.Value='D')  Then
            TVeiculoImagePista.Parent   := TScrollBox(TIndustria);

         TVeiculoImagePista.Tag      := QR_VeiculosCOD_EQUIPAMENTO.AsInteger;

         TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
         TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

         TVeiculoImagePista.informacaoBalao := TInformacaoBalao.Create;
         TVeiculoImagePista.informacaoBalao.Cod_Equipamento   := QR_VeiculosCOD_EQUIPAMENTO.AsInteger;
         TVeiculoImagePista.informacaoBalao.Saida_Industria   := QR_VeiculosDATA_SAIDA.AsString;
         TVeiculoImagePista.informacaoBalao.Chegada_Lavoura   := QR_VeiculosDATA_PREV_INICIO_CARREG.AsString;
         TVeiculoImagePista.informacaoBalao.Saida_Lavoura     := QR_VeiculosDATA_PREV_TERMINO_CARREG.AsString;
         TVeiculoImagePista.informacaoBalao.Chegada_Industria := QR_VeiculosDATA_PREV_CHEGADA.AsString;
         TVeiculoImagePista.informacaoBalao.Equipamento       := QR_VeiculosCOD_EQUIPAMENTO.AsString + ' ' + QR_VeiculosDESC_EQUIPAMENTO.AsString+ ' ' +QR_VeiculosDESC_TIPOCARGA.AsString;
         TVeiculoImagePista.informacaoBalao.Parado            := QR_VeiculosPARADO.AsString;
         //Mostrar se o veiculo esta sendo mostrado pelo Real ou Previsto
         if QR_VeiculosTEMPOREAL.AsString = 'S' then
            TVeiculoImagePista.informacaoBalao.RealPrevisto := 'Posi��o Real'
            else
              TVeiculoImagePista.informacaoBalao.RealPrevisto := 'Posi��o Previsto';

         QR_ALERTA_ALOCACAO.Close;
         QR_ALERTA_ALOCACAO.ParamByName('COD_SAFRA').value    := DM.QR_SafrasCOD_SAFRA.Value;
         QR_ALERTA_ALOCACAO.ParamByName('SEQ_ALOCACAO').value := QR_VeiculosSEQUENCIA.Value;
         QR_ALERTA_ALOCACAO.Open;

         TVeiculoImagePista.informacaoBalao.Alarmes := TStringList.Create;
         if QR_ALERTA_ALOCACAO.IsEmpty then
           TVeiculoImagePista.informacaoBalao.Alarmes.Add('-> N�o possui Avisos.')
         else
           while Not QR_ALERTA_ALOCACAO.Eof do
           Begin
              TVeiculoImagePista.informacaoBalao.Alarmes.Add('-> '+QR_ALERTA_ALOCACAODATA.AsString+' '+QR_ALERTA_ALOCACAOMENSAGEM.AsString+
                                                            '   Motivo: '+QR_ALERTA_ALOCACAODESC_MOTIVO.AsString);
              // Le o pr�ximo alerta do veiculo
              QR_ALERTA_ALOCACAO.Next;
           End;

         //Marcelo Hirata - 07/06/2011
         //Verifica se a aloca��o possui alertas
         QR_VeiculosAlerta.Close;
         QR_VeiculosAlerta.ParamByName('cod_grupo').AsFloat        := QR_VeiculosCOD_GRUPO.AsFloat;
         QR_VeiculosAlerta.ParamByName('cod_regional').AsFloat     := QR_VeiculosCOD_REGIONAL.AsFloat;
         QR_VeiculosAlerta.ParamByName('cod_unidade').AsFloat      := QR_VeiculosCOD_UNIDADE.AsFloat;
         QR_VeiculosAlerta.ParamByName('cod_safra').AsFloat        := QR_VeiculosCOD_SAFRA.AsFloat;
         QR_VeiculosAlerta.ParamByName('cod_frente').AsFloat       := QR_VeiculosCOD_FRENTE.AsFloat;
         QR_VeiculosAlerta.ParamByName('cod_fazenda').AsFloat      := QR_VeiculosCOD_FAZENDA.AsFloat;
         QR_VeiculosAlerta.ParamByName('cod_equipamento').AsFloat  := QR_VeiculosCOD_EQUIPAMENTO.AsFloat;
         QR_VeiculosAlerta.ParamByName('data_saida').AsDateTime    := QR_VeiculosDATA_SAIDA.AsDateTime;
         QR_VeiculosAlerta.Open;
         possuiAlertas := not QR_VeiculosAlerta.IsEmpty;

         TVeiculoImagePista.informacaoBalao.Alertas := TStringList.Create;
         if possuiAlertas then
           while not QR_VeiculosAlerta.Eof do
           begin
             TVeiculoImagePista.informacaoBalao.Alertas.Add('---------------------------------------------------------------------------------------------------------------------'
                                                            +#13+QR_VeiculosAlertaOBSERVACAO.AsString);
             QR_VeiculosAlerta.Next;
           end
         else
           TVeiculoImagePista.informacaoBalao.Alertas.Add('-> N�o possui alertas.');

         // Verifica se vai agrupar os hints quando estiver na mesma posicao de chegada.
         If (QR_VeiculosPORC_VOLTA.Value = 100) and (QR_VeiculosSITUACAO.Value = 'V') Then
         Begin
            SetLength(listaInformacoesEquipamentos,qtdeVeiculos+1);
            listaInformacoesEquipamentos[qtdeVeiculos] := TInformacaoBalao.Create;
            listaInformacoesEquipamentos[qtdeVeiculos] := TVeiculoImagePista.informacaoBalao;
            Inc(qtdeVeiculos);
         End;

         //#####################################################################
         //### VERIFICA SE O VEICULO ESTA *** INDO ***                       ###
         //#####################################################################
         // P3 OS VEICULOS EM PARADAS SEMPRE TER�O ALERTAS POR ESSE MOTIVO ESTAO COMTEMPLADOS APENAS PARA OS ALERTAS.

         If QR_VeiculosSITUACAO.Value = 'I' Then
         Begin
           //Incrementa informa��o quantidade indo da pista
           Inc(TPista_informacoes.InformacoesPista.qtdeIndo);

           TVeiculoImagePista.Top   := 2; //38;
           TVeiculoImagePista.Left  := (round((QR_VeiculosPORC_IDA.AsInteger * Width_Pista_Ida)/100)-32);

           if QR_VeiculosTEMPOREAL.AsString = 'S' then
           begin
              //verifica se � para localizar o ve�culo
              If TVeiculoImagePista.Tag = Rveiculo Then
              begin
                  TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                  //Se a aloca��o possuir alertas
                  if possuiAlertas then
                  begin
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Selecionado_Real.Picture
                     else
                         //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado_Real.Picture
                        else
                          TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Selecionado_Real.Picture;
   //                      Teste.Picture.Graphic := btnPNG_Direita_Vazio_Alerta_Selecionado.ImageNormal;
                    end
                    else
                    begin
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Selecionado_Transparente_Real.Picture
                     else
                        //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                           TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado_Transparente_R.Picture
                        else
                           TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Selecionado_Transparente_Real.Picture;
                    end;
                  end
                  else
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Selecionado_Real.Picture
                      else
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Selecionado_Real.Picture;
                    end
                    else
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Selecionado_Transparente_Real.Picture
                      else
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Selecionado_Transparente_Real.Picture;
                    end;
                end
              else
              begin
                  TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
                  //Se a aloca��o possuir alertas
                  if possuiAlertas then
                  begin
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Real.Picture
                     else
                        //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Real.Picture
                        else
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Real.Picture;
                    end
                    else
                    begin
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Transparente_Real.Picture
                     else
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Transparente_Real.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Transparente_Real.Picture
                    end;
                  end
                  else
                  begin
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Real.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Real.Picture
                    end
                    else
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Transparente_Real.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Transparente_Real.Picture;
                    end;
                  end;
              end;
           end
           else
           begin //daki para baixo os equipamentos pelo previsto
              //verifica se � para localizar o ve�culo
              If TVeiculoImagePista.Tag = Rveiculo Then
              begin
                  TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                  //Se a aloca��o possuir alertas
                  if possuiAlertas then
                  begin
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Selecionado.Picture
                     else
                         //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado.Picture
                        else
                          TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Selecionado.Picture;
   //                      Teste.Picture.Graphic := btnPNG_Direita_Vazio_Alerta_Selecionado.ImageNormal;
                    end
                    else
                    begin
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Selecionado_Transparente.Picture
                     else
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado_Transparente.Picture
                      else
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Selecionado_Transparente.Picture;
                    end;
                  end
                  else //daki para baixo os equipamento sem alertas
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Selecionado.Picture
                      else
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Selecionado.Picture;
                    end
                    else
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Selecionado_Transparente.Picture
                      else
                         TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Selecionado_Transparente.Picture;
                    end;
                end
              else //daki para baixo os equipamentos que n�o  est�o selecionados
              begin
                  TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
                  //Se a aloca��o possuir alertas
                  if possuiAlertas then
                  begin
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado.Picture
                     else
                        //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado.Picture
                        else
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta.Picture;
                    end
                    else
                    begin
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Parado_Transparente.Picture
                     else
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Atrasado_Transparente.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Alerta_Transparente.Picture
                    end;
                  end
                  else
                  begin
                    //Se estiver selecionado
                    if QR_VeiculosSELECIONADO.AsString = 'S' then
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado.Picture
                      else
                        TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio.Picture
                    end
                    else
                    begin
                      //Se Estiver Atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Atrasado_Transparente.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio_Transparente.Picture;
                    end;
                  end;
              end;
           end;// if temporeal
         End;
         //#####################################################################


         //#####################################################################
         //### VERIFICA SE O VEICULO ESTA *** VOLTANDO ***                   ###
         //#####################################################################
         if QR_VeiculosSITUACAO.Value = 'V' Then
         begin
           //Incrementa quantidade voltando da pista
           Inc(TPista_informacoes.InformacoesPista.qtdeVoltando);

           TVeiculoImagePista.Top   := 2;
           TVeiculoImagePista.Left  := Width_Pista_Volta - round((QR_VeiculosPORC_VOLTA.AsInteger * Width_Pista_Volta)/100);
           //Verifica se vai gerar as imagens do Real
           if QR_VeiculosTEMPOREAL.AsString <> 'S' then
           begin
             // Verifica se � para localizar o ve�culo
             if TVeiculoImagePista.Tag = Rveiculo Then
             begin
                 TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                //Se a aloca��o possuir alertas
                 if possuiAlertas then
                   //Se estiver selecionado
                   if QR_VeiculosSELECIONADO.AsString = 'S' then
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Selecionado.Picture
                     else
                        //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado.Picture
                        else
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Selecionado.Picture
                   else
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Selecionado_Transparente.Picture
                     else
                        //Se estiver atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado_Transpare.Picture
                        else
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Selecionado_Transparente.Picture
                 else
                   //Se estiver selecionado
                   if QR_VeiculosSELECIONADO.AsString = 'S' then
                     //Se estiver atrasado
                   if QR_VeiculosATRASADO.AsString = 'S' then
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Atrasado_Selecionado.Picture
                     else
                       TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Selecionado.Picture
                   else
                     //Se estiver atrasado
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Atrasado_Selecionado_Transparente.Picture
                     else
                       TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Selecionado_Transparente.Picture;
             end
             else
             begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
               //Se a aloca��o possuir alertas
               if possuiAlertas then
                 //Se estiver selecinoado
                 if QR_VeiculosSELECIONADO.AsString = 'S' then
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado.Picture
                     else
                      //Se estiver atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta.Picture
                 else
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Transparente.Picture
                     else
                      //Se estiver atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Transparente.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Transparente.Picture
               else
                 //Se estiver selecionado
                 if QR_VeiculosSELECIONADO.AsString = 'S' then
                   //Se estiver atrasado
                   if QR_VeiculosATRASADO.AsString = 'S' then
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Atrasado.Picture
                   else
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado.Picture
                 else
                   //Se estiver atrasado
                   if QR_VeiculosSELECIONADO.AsString = 'S' then
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Selecionado_Transparente.Picture
                   else
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Transparente.Picture;
             end;
           end
           else //daki para baixo � do Real
           begin
             // Verifica se � para localizar o ve�culo
             if TVeiculoImagePista.Tag = Rveiculo Then
             begin
                 TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                //Se a aloca��o possuir alertas
                 if possuiAlertas then
                   //Se estiver selecionado
                   if QR_VeiculosSELECIONADO.AsString = 'S' then
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Selecionado_Real.Picture
                     else
                        //Se Estiver Atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado_Real.Picture
                        else
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Selecionado_Real.Picture
                   else
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Selecionado_Transparente_Real.Picture
                     else
                        //Se estiver atrasado
                        if QR_VeiculosATRASADO.AsString = 'S' then
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado_Tran_Real.Picture
                        else
                          TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Selecionado_Transparente_Real.Picture
                 else
                   //Se estiver selecionado
                   if QR_VeiculosSELECIONADO.AsString = 'S' then
                     //Se estiver atrasado
                   if QR_VeiculosATRASADO.AsString = 'S' then
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Atrasado_Selecionado_Real.Picture
                     else
                       TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Selecionado_Real.Picture
                   else
                     //Se estiver atrasado
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Atrasado_Selecionado_Transparente_Rea.Picture
                     else
                       TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Selecionado_Transparente_Real.Picture;
             end
             else
             begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
               //Se a aloca��o possuir alertas
               if possuiAlertas then
                 //Se estiver selecinoado
                 if QR_VeiculosSELECIONADO.AsString = 'S' then
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Real.Picture
                     else
                      //Se estiver atrasado
                      if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Real.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Real.Picture
                 else
                    //Se Estiver Parado
                     if QR_VeiculosPARADO.AsString = 'S' then
                        TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado_Transparente_Real.Picture
                     else
                      //Se estiver atrasado
                       if QR_VeiculosATRASADO.AsString = 'S' then
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Atrasado_Transparente_Real.Picture
                      else
                        TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Alerta_Transparente_Real.Picture
               else
                 //Se estiver selecionado
                 if QR_VeiculosSELECIONADO.AsString = 'S' then
                   //Se estiver atrasado
                   if QR_VeiculosATRASADO.AsString = 'S' then
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Atrasado_Real.Picture
                   else
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Real.Picture
                 else
                   //Se estiver atrasado
                   if QR_VeiculosSELECIONADO.AsString = 'S' then
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Selecionado_Transparente_Real.Picture
                   else
                     TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Transparente_Real.Picture;
             end;
           end; //if tempo real
         end;
         //#####################################################################


         //#####################################################################
         //### VERIFICA SE O VEICULO ESTA *** CARREGANDO ***                 ###
         //#####################################################################
         if QR_VeiculosSITUACAO.Value = 'C' then
         begin
           //Incrementa quantidade carregando da pista
           Inc(TPista_informacoes.InformacoesPista.qtdeCarregando);


           TVeiculoImagePista.Top        := Top_Veiculo_carregando;
           TVeiculoImagePista.Left       := Left_Veiculo_carregando;

          { LimiteVeiculosCarregendo := Trunc((rzPanelLavoura.Width-8)/TVeiculoPNG.Width);
           inc(QtdAlocadoCarregando);
           if QtdAlocadoCarregando > 1 then
           begin
             if QtdAlocadoCarregando < LimiteVeiculosCarregendo then
                Left_Veiculo_carregando := TVeiculoPNG.Width+3
             else
             begin
                Left_Veiculo_carregando := 3;
                Top_Veiculo_carregando := TVeiculoPNG.Height+3;
             end;
           end
           else
           begin
              Left_Veiculo_carregando := TVeiculoPNG.Width+3;
           end;            }

           case  Left_Veiculo_carregando of
              3: Left_Veiculo_carregando := 38;
             38: Left_Veiculo_carregando := 73;
             73: begin
                   Left_Veiculo_carregando :=  3;
                   Top_Veiculo_carregando  := Top_Veiculo_carregando + 36;
                 end;
           end;
           //Verificar se vai gerar pelo real
           if QR_VeiculosTEMPOREAL.AsString = 'S' then
           begin
              // Verifica se � para localizar o ve�culo
              if TVeiculoImagePista.Tag = Rveiculo Then
              begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                if QR_VeiculosSELECIONADO.AsString = 'S' then
                begin
                  if QR_VeiculosPARADO.AsString = 'S' then
                     TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Parado_Selecionado_Real.Picture
                  else
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado_Selecionado_Real.Picture
                     else
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Selecionado_Real.Picture;
                end
                else
                begin
                  if QR_VeiculosPARADO.AsString = 'S' then
                     TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Carregando_Parado_Selecionado_Transparente_Real.Picture
                  else
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Carregando_Atrasado_Selecionado_Transparente_Real.Picture
                     else
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Selecionado_Transparente_Real.Picture;
                end;
              end
              else
              begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
                if QR_VeiculosSELECIONADO.AsString = 'S' then
                begin
                  if QR_VeiculosPARADO.AsString = 'S' then
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Parado_Real.Picture
                  else
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado_Real.Picture
                     else
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Real.Picture;
                end
                else
                begin
                  if QR_VeiculosPARADO.AsString = 'S' then
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Parado_Transparente_Real.Picture
                  else
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado_Transparente_Real.Picture
                     else
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Transparente_Real.Picture;
                end;
              end;
           end
           else
           begin
              // Verifica se � para localizar o ve�culo
              if TVeiculoImagePista.Tag = Rveiculo Then
              begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                if QR_VeiculosSELECIONADO.AsString = 'S' then
                begin
                  if QR_VeiculosPARADO.AsString = 'S' then
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Parado_Selecionado.Picture
                  else
                     if QR_VeiculosATRASADO.AsString = 'S' then
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado_Selecionado.Picture
                     else
                       TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Selecionado.Picture;
                end
                else
                begin
                  if QR_VeiculosATRASADO.AsString = 'S' then
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado_Selecionado_Transparente.Picture
                  else
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Selecionado_Transparente.Picture;
                end;
              end
              else
              begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
                if QR_VeiculosSELECIONADO.AsString = 'S' then
                begin
                  if QR_VeiculosATRASADO.AsString = 'S' then
                    TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado.Picture
                  else
                    TVeiculoImagePista.Picture := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando.Picture;
                end
                else
                begin
                  if QR_VeiculosATRASADO.AsString = 'S' then
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Atrasado_Transparente.Picture
                  else
                    TVeiculoImagePista.Picture   := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Carregando_Transparente.Picture;
                end;
              end;
           end; //if tempo real
         end;
         //#####################################################################


         //#####################################################################
         //### VERIFICA SE O VEICULO ESTA *** DESCARREGANDO ***                 ###
         //#####################################################################
         if QR_VeiculosSITUACAO.Value = 'D' then
         begin
           //Incrementa quantidade descarregando da pista
           Inc(TPista_informacoes.InformacoesPista.qtdeDescarregando);

           TVeiculoImagePista.Top                  := Top_Veiculo_descarregando;
           TVeiculoImagePista.Left                 := Left_Veiculo_descarregando;
           case  Left_Veiculo_descarregando of
              3: Left_Veiculo_descarregando := 38;
             38: Left_Veiculo_descarregando := 73;
             73: begin
                   Left_Veiculo_descarregando :=  3;
                   Top_Veiculo_descarregando  := Top_Veiculo_descarregando + 36;
                 end;
           end;
           //verifica se � para gerar pelo tempo real
           if QR_VeiculosTEMPOREAL.AsString = 'S' then
           begin
              if TVeiculoImagePista.Tag = Rveiculo then
              begin
                  TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                  if QR_VeiculosSELECIONADO.AsString = 'S' then
                    TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Selecionado_Real.Picture
                  else
                    TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Selecionado_Transparente_Real.Picture;
              end
              else
              begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
                if QR_VeiculosSELECIONADO.AsString = 'S' then
                  TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Real.Picture
                else
                  TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Transparente_Real.Picture;
              end;
           end
           else
           begin
              if TVeiculoImagePista.Tag = Rveiculo then
              begin
                  TVeiculoImagePista.informacaoBalao.TipoImagem := 1;
                  if QR_VeiculosSELECIONADO.AsString = 'S' then
                    TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Selecionado.Picture
                  else
                    TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Selecionado_Transparente.Picture;
              end
              else
              begin
                TVeiculoImagePista.informacaoBalao.TipoImagem := 0;
                if QR_VeiculosSELECIONADO.AsString = 'S' then
                  TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando.Picture
                else
                  TVeiculoImagePista.Picture  := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando_Transparente.Picture;
              end;
           end; //if tempo teal
         end;
         //#####################################################################

         TVeiculoImagePista.Stretch  := True;
         TVeiculoImagePista.Cursor   := crHandPoint;
         TVeiculoImagePista.ShowHint := false;
         TVeiculoImagePista.Name        := 'VEICULO_IMG'+v_pagecontrol+ QR_VeiculosCOD_EQUIPAMENTO.AsString;
         TVeiculoImagePista.BringToFront;
         TVeiculoImagePista.Width := vTamanhoVeiculo;
         TVeiculoImagePista.Height := vTamanhoVeiculo;
         TVeiculoImagePista.Visible := True;

         TVeiculoImagePista.BringToFront;

         SetLength(TVeiculoImagePista.listaInformacaoBalao,qtdeVeiculos+1);

         if qtdeVeiculos = 0 then
           begin
             SetLength(TVeiculoImagePista.listaInformacaoBalao,1);
             TVeiculoImagePista.listaInformacaoBalao[0] := TInformacaoBalao.Create;
             TVeiculoImagePista.listaInformacaoBalao[0] := TVeiculoImagePista.informacaoBalao;
           end
         else
           SetLength(TVeiculoImagePista.listaInformacaoBalao,qtdeVeiculos);
           for I := 0 to qtdeVeiculos-1 do
           begin
             TVeiculoImagePista.listaInformacaoBalao[i] := TInformacaoBalao.Create;
             TVeiculoImagePista.listaInformacaoBalao[i] := listaInformacoesEquipamentos[i];
           end;

         case cbVisualizarCodigoVeiculo.ItemIndex of
           1 : begin
                   //Cria o panel com o c�digo do equipamento
                   TPanelCodigoVeiculo := TRZPanel.Create(Self);
                   TPanelCodigoVeiculo.Parent := TVeiculoImagePista.Parent;
                   TPanelCodigoVeiculo.Color := clWhite;
                   TPanelCodigoVeiculo.Height := 9;
                   TPanelCodigoVeiculo.Width  := 32; //TVeiculoImagePista.Width;
                   TPanelCodigoVeiculo.Left   := TVeiculoImagePista.Left;
                   TPanelCodigoVeiculo.Top    := TVeiculoImagePista.Top;
                   TPanelCodigoVeiculo.Font.Size := 7;
                   TPanelCodigoVeiculo.Font.Name := 'Tahoma';
                   TPanelCodigoVeiculo.Font.Color := clBlack;
                   TPanelCodigoVeiculo.Font.Style := [fsBold];
                   TPanelCodigoVeiculo.Caption := QR_VeiculosCOD_EQUIPAMENTO.AsString;
                   TPanelCodigoVeiculo.BringToFront;
                   TPanelCodigoVeiculo.BorderOuter := TPanelCodigoVeiculo.BorderInner;
                   TPanelCodigoVeiculo.Transparent := False;

                   TPanelCodigoVeiculo.Name := 'COD_VEICULO'+v_pagecontrol+QR_VeiculosCOD_EQUIPAMENTO.AsString;
            end;
          end;

         // Le o pr�ximo ve�culo
         QR_Veiculos.Next;
      End;
      // Le a proxima Pista
      QR_Pistas.Next;
   End;


   //Henrique 13/04/2011
   //passamos a criar a pista e deixa-la invisivel, tornando-a visivel somente
   //depois que tudo estiver criado, percebemos que a performance melhorou bastante
   TPista.Visible := true;
   //Volta a posi��o original do Scroll, para n�o ter que rolar na barra de rolagem
   TPista.VertScrollBar.Position := PosicaoScroll;
   //Muda a pagina ativa para que acabou de ser criada
   if RzPageControl2.ActivePage = Page1 then
   begin
     RzPageControl2.ActivePage := Page2;
     v_pagecontrol := '1';
   end
   else
   begin
      RzPageControl2.ActivePage := Page1;
      v_pagecontrol := '2';
   end;

   //Aqui destroi a pista da pagina que foi desativada
   // Se a pista Mae (ScrollBox) estiver criada, destroi a mesma e seus filhos
   i := 0;
   while (i <= (ComponentCount -1)) do
   Begin
      If Components[i] is TScrollBox Then
      begin
         If copy(TScrollBox(Components[i]).Name,1,6) = 'PISTA'+v_pagecontrol Then
         Begin
            //Pegar a posi��o do Scroll para voltar a barra de rolagem depois de criar os componentes
            PosicaoScroll := TScrollBox(Components[i]).VertScrollBar.Position;
            //Destr�i a PISTA
            TScrollBox(Components[i]).Free;
            i := 0; // Sempre que destruir um componente volta no inicio para nao dar erro.
         End;
      End;
      i := i + 1;
   End;

End;

procedure TF_Monitoramento_Trafego_Estatico.FinalizarparadadoEquipamento1Click(
  Sender: TObject);
begin
  inherited;
  if Application.MessageBox(Pchar('Deseja realmente encerrar a parada para o equipamento '+QR_ParadoCOD_EQUIPAMENTO.AsString+'?'),'Confirma��o',MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
    QR_Parado.Edit;
    QR_ParadoFIM_PARADA.AsDateTime := now;
    QR_Parado.Post;

  {   with TOraQuery.Create(Self) do
   begin
     Session := dm.Sessao;
     Close;
     SQL.Text :='UPDATE PARADA_EQUIPAMENTO                 ' +
                'SET                                       ' +
                '  FIM_PARADA = :FIM_PARADA                ' +
                'WHERE                                     ' +
                '  COD_GRUPO = :COD_GRUPO                  ' +
                '   AND COD_REGIONAL = :COD_REGIONAL       ' +
                '   AND COD_UNIDADE = :COD_UNIDADE         ' +
                '   AND COD_SAFRA = :COD_SAFRA             ' +
                '   AND COD_EQUIPAMENTO = :COD_EQUIPAMENTO ' +
                '   AND INICIO_PARADA = :INICIO_PARADA     ' ;
     ParamByName('cod_grupo').AsFloat := QR_ParadoCOD_GRUPO.AsFloat;
     ParamByName('cod_regional').AsFloat := QR_ParadoCOD_REGIONAL.AsFloat;
     ParamByName('cod_unidade').AsFloat := QR_ParadoCOD_UNIDADE.AsFloat;
     ParamByName('cod_safra').AsFloat := QR_ParadoCOD_SAFRA.AsFloat;
     ParamByName('cod_equipamento').AsFloat := QR_ParadoCOD_EQUIPAMENTO.AsFloat;
     ParamByName('INICIO_PARADA').AsDateTime := QR_ParadoINICIO_PARADA.AsDateTime;
     ParamByName('FIM_PARADA').AsDateTime := now;
     Debug := True;
     Execute;
     Free;
   end;}
   QR_Parado.Refresh;
  end;
end;

procedure TF_Monitoramento_Trafego_Estatico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

   if not Verificar_Formulario_Criado(TF_DisponibilidadesFrentes, False) then
   begin
      //Fecha o form e desaloca da mem�ria
      F_BalaoMensagemEquipamento.Tag := 1;
      F_BalaoMensagemEquipamento.Desativar;
      F_BalaoMensagemEquipamento.Release;
      F_BalaoMensagemEquipamento := nil;
   end;

  //Fecha o form e desaloca da mem�ria
  F_InformacoesPistaMonitoramento.Tag := 1;
  F_InformacoesPistaMonitoramento.Desativar;
  F_InformacoesPistaMonitoramento.Release;
  F_InformacoesPistaMonitoramento := nil;
end;

procedure TF_Monitoramento_Trafego_Estatico.FormCreate(Sender: TObject);
var
  i : integer;
begin
  Top := 1;
  Left := 1;

  inherited;

  vTamanhoVeiculo := 32;
  vTamanhoPista := 34;

  QR_Parado.Close;
  QR_Parado.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Parado.ParamByName('COD_GRUPO').AsFloat  := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Parado.ParamByName('COD_REGIONAL').AsFloat  := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Parado.ParamByName('COD_UNIDADE').AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Parado.Open;

  Timer_Veiculos.Tag := 60;

  for i := 0 to RzGroupBarOpcoes.GroupCount-1 do
    RzGroupBarOpcoes.Groups[i].Close;

//  for I := 0 to RzGroupBarAlertas.GroupCount-1 do
///    RzGroupBarAlertas.Groups[i].Close;

  F_BalaoMensagemEquipamento := TF_BalaoMensagemEquipamento.create(Self);
  F_InformacoesPistaMonitoramento := TF_InformacoesPistaMonitoramento.Create(Self);

  QR_PageControlUnidade := TOraQuery(PageControlUnidades(rzPageControlUnidadeMoagem, True, True, False));
  rzPageControlUnidadeMoagemChange(rzPageControlUnidadeMoagem);

  cbAtualizacaoAutomaticaClick(cbAtualizacaoAutomatica);
end;

procedure TF_Monitoramento_Trafego_Estatico.FormResize(Sender: TObject);
begin
  inherited;
  btnAtualizar.Click;
end;

procedure TF_Monitoramento_Trafego_Estatico.imgVeiculoPistaClick(
  Sender: TObject);
var
  Pt: TPoint;
begin
    informaVeiculodaPistaImage(Sender);
    //showmessage(inttostr(VeiculoDaPista));
    GetCursorPos(Pt);
    MenuTransferencia.Popup(Pt.x, Pt.y);
end;

procedure TF_Monitoramento_Trafego_Estatico.informaVeiculodaPistaImage(
  Sender: TObject);
var
  codigoVeiculo: String;
  posicao : Integer;
begin
  codigoVeiculo := TImageVeiculoPista(Sender).informacaoBalao.Equipamento;
//  Delete(CodigoVeiculo,1,8);
  Posicao := Pos(' ',CodigoVeiculo);
  if Posicao = 0 then
    begin
      Application.MessageBox('N�o foi encontrada uma aloca��o para esse equipamento!','Aloca��o n�o encontrada.',MB_ICONERROR + MB_OK);
      Abort;
    end
  else
    begin
      VeiculoDaPista := StrToInt(Copy(CodigoVeiculo,1,Posicao - 1));
      ransferirdeEmpresa1.Caption := 'Transferir o Ve�culo ' + IntToStr(VeiculoDaPista) + ' de Empresa';
      ransferirdeFazenda1.Caption := 'Transferir o Ve�culo ' + IntToStr(VeiculoDaPista) + ' de Fazenda';
    end;
end;

procedure TF_Monitoramento_Trafego_Estatico.myOnMouseEnter(Sender: TObject);
begin
  if F_BalaoMensagemEquipamento.Showing then
    F_BalaoMensagemEquipamento.Desativar;

  if F_InformacoesPistaMonitoramento.Showing then
    F_InformacoesPistaMonitoramento.Desativar;
end;

procedure TF_Monitoramento_Trafego_Estatico.pesquisa_veiculoClick(
  Sender: TObject);
var SQL : String;
    valor : Variant;
begin
   showmessage('lembrar de habilitar recurso que desabilita o botao gravar');
  Sql := '         SELECT equipamento.cod_equipamento "C�digo", equipamento.descricao "Ve�culo" ';
  Sql := Sql + '     FROM equipamento, tipo_equipamento                                          ';
  Sql := Sql + '    WHERE equipamento.cod_tipoequipamento = tipo_equipamento.cod_tipoequipamento ';
  Sql := Sql + '      AND tipo_equipamento.tipo_cct = ''C''                                      ';
  Sql := Sql + '          &Macro                                                                ';
  Sql := Sql + ' ORDER BY equipamento.descricao                                                 ';

   SQL := ReplStr(SQL,':cod_equipamento','0');
   valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Equipamentos');
   If valor <> null then begin
      wwDBEdit5.Text := VarToStr(valor);
      wwDBEdit6.Text := F_BuscaAvancada.Query.FieldByName('Ve�culo').AsString;
      wwDBEdit5Exit(Sender);
   end;
end;

procedure TF_Monitoramento_Trafego_Estatico.QR_PistasBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  QR_Pistas.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Pistas.ParamByName('cod_grupo').AsFloat := vGrupo;
  QR_Pistas.ParamByName('cod_regional').AsFloat := vRegional;
  QR_Pistas.ParamByName('cod_unidade').AsFloat := vUnidade;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzGroupOpcoesClose(Sender: TObject);
begin
  inherited;
  panel3.Height := 50;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzGroupOpcoesOpen(Sender: TObject);
begin
  inherited;
  panel3.Height := 80;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzComboBox1Change(Sender: TObject);
var tamanho : integer;
begin
  inherited;

end;

procedure TF_Monitoramento_Trafego_Estatico.RzGroupAlertaClose(Sender: TObject);
begin
  inherited;
  TRzGroup(Sender).Parent.Height := 23;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzGroupAlertaOpen(Sender: TObject);
begin
  inherited;
  TRzGroup(Sender).Parent.Height := 152;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzPageControlUnidadeMoagemChange(
  Sender: TObject);
begin
  inherited;

    if PageControlChange(rzPageControlUnidadeMoagem, QR_PageControlUnidade) then
    begin
      vGrupo := QR_PageControlUnidade.FieldByName('cod_grupo').asinteger;
      vRegional := QR_PageControlUnidade.FieldByName('cod_regional').asinteger;
      vUnidade := QR_PageControlUnidade.FieldByName('cod_unidade').asinteger;

      Timer_Veiculos.Tag := 1;
      Timer_Veiculos.OnTimer(Sender);

    end;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzPageControlUnidadeMoagemClose(
  Sender: TObject; var AllowClose: Boolean);
begin
  inherited;
  TRzPageControl(Sender).ActivePage.Free;
  if RzPageControlUnidadeMoagem.PageCount > 0 then
    RzPageControlUnidadeMoagem.ActivePageIndex := 0
  else
    begin
      vGrupo := -1;
      btnAtualizar.Click;
    end;
end;

procedure TF_Monitoramento_Trafego_Estatico.cbVisualizarCodigoVeiculoClick(Sender: TObject);
begin
  inherited;
    btnAtualizarClick(btnAtualizar);
end;

procedure TF_Monitoramento_Trafego_Estatico.RzSplitterTemplateChange(
  Sender: TObject);
begin
  inherited;
  btnAtualizar.Click;
end;

procedure TF_Monitoramento_Trafego_Estatico.RzSplitterTemplateResize(
  Sender: TObject);
begin
  inherited;
  btnAtualizar.Click;
end;

procedure TF_Monitoramento_Trafego_Estatico.Timer_VeiculosTimer(
  Sender: TObject);
begin
  inherited;
  TTimer(Sender).Enabled := False;

  TTimer(Sender).Tag := TTimer(Sender).Tag - 1;

  if TTimer(Sender).Tag <= 1 then
  begin
    if (cbAtualizacaoAutomatica.Checked) or (TRzBitBtn(sender) = btnAtualizar) or (TRzPageControl(Sender) = RzPageControlUnidadeMoagem) then
    begin
      //cria_pista;
      cria_pista_monitoramento;
    end;

    TTimer(Sender).Tag := 60;
  end;

  rzPanelRefresh.Caption := 'Atualizar: '+IntToStr(TTimer(Sender).Tag)+' seg.';

  TTimer(Sender).Enabled := True;
end;

procedure TF_Monitoramento_Trafego_Estatico.wwDBEdit5Exit(Sender: TObject);
begin
  inherited;
   if wwdbedit5.Text <> '' then
   begin
      with TOraQuery.Create(Self)do
      begin
        SQL.Text := '  SELECT equipamento.cod_equipamento "C�digo", equipamento.descricao "Ve�culo"  '+
                    '    FROM equipamento, tipo_equipamento                                          '+
                    '   WHERE equipamento.cod_tipoequipamento = tipo_equipamento.cod_tipoequipamento '+
                    '     AND tipo_equipamento.tipo_cct = ''C''                                      '+
                    '     AND cod_equipamento = :cod_equipamento                                     ';
        ParamByName('cod_equipamento').AsString := wwDBEdit5.Text;
        Open;
        if not IsEmpty then
        begin
          wwDBEdit6.Text := FieldByName('Ve�culo').AsString;
          rveiculo := StrToFloat(wwDBEdit5.Text);
          btnAtualizarClick(Self);
        end
        else Application.MessageBox('Ve�culo n�o  encontrado','Aviso',mb_ok+MB_ICONEXCLAMATION);
        Free;
      end;
    end
    else
    begin
      wwDBEdit6.Text := '';
      rveiculo := 0;
      btnAtualizarClick(Self);
    end;
end;

{ TImageVeiculoPista }

procedure TImageVeiculoPista.myOnMouseEnter(Sender: TObject);
var
  Ponto : TPoint;
begin
  TScrollBox(TImageVeiculoPista(Sender).Parent).ShowHint := False;

  GetCursorPos(Ponto);

  sleep(500);

  F_InformacoesPistaMonitoramento.Desativar;

  F_BalaoMensagemEquipamento.Desativar;

  F_BalaoMensagemEquipamento.Ativar(Sender,Ponto,TImageVeiculoPista(Sender).informacaoBalao,TImageVeiculoPista(Sender).listaInformacaoBalao);
end;

procedure TImageVeiculoPista.myOnMouseExit(Sender: TObject);
begin
  TScrollBox(TImageVeiculoPista(Sender).Parent).ShowHint := True;
end;

{ TImage_Pista }

procedure TImage_Pista.myOnMouseEnter(Sender: TObject);
var
  Ponto : TPoint;
begin
  GetCursorPos(Ponto);

  Sleep(500);

  F_BalaoMensagemEquipamento.Desativar;

  F_InformacoesPistaMonitoramento.Desativar;

  F_InformacoesPistaMonitoramento.Ativar(Sender,Ponto,TImage_Pista(Sender).InformacoesPista);
end;

end.

