unit U_DisponibilidadesFrentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzTabs, RzButton,
  Vcl.ExtCtrls, RzPanel, RzSplit, Ora, Data.DB, MemDS, DBAccess, RzGroupBar,
  Vcl.StdCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, U_BalaoMensagemEquipamento;

type TImageVeiculoPista = class(TImage) //TImage
  private
    { Private declarations }
    procedure myOnMouseEnter(Sender : TObject);
    procedure myOnMouseExit(Sender : TObject);
  public
    informacaoBalao : TInformacaoBalao;
    listaInformacaoBalao : array of TInformacaoBalao;

  end;

type
  TF_DisponibilidadesFrentes = class(TF_TemplateConsulta)
    Panel1: TPanel;
    RzPageControlUnidadeMoagem: TRzPageControl;
    QR_Pistas: TOraQuery;
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
    QR_PistasAPELIDO: TStringField;
    ScrollBox1: TScrollBox;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    RzPanel3: TRzPanel;
    RzGroup2: TRzGroup;
    RzPanel4: TRzPanel;
    RzGroup3: TRzGroup;
    RzPanel5: TRzPanel;
    RzGroup4: TRzGroup;
    RzPanel6: TRzPanel;
    RzGroup5: TRzGroup;
    RzPanel7: TRzPanel;
    QR_Disponibilidade: TOraQuery;
    QR_DisponibilidadeCOLHEDORAS_DIPONIVEL: TFloatField;
    QR_DisponibilidadeCOLHEDORAS_INDIPONIVEL: TFloatField;
    QR_DisponibilidadeCOLHEDORAS_TOTAL: TFloatField;
    QR_DisponibilidadeDISPONIBILIDADE_COLHEDORAS: TFloatField;
    QR_DisponibilidadeREBOQUES_DIPONIVEL: TFloatField;
    QR_DisponibilidadeREBOQUES_INDIPONIVEL: TFloatField;
    QR_DisponibilidadeREBOQUES_TOTAL: TFloatField;
    QR_DisponibilidadeDISPONIBILIDADE_REBOQUE: TFloatField;
    QR_Maquinas: TOraQuery;
    QR_MaquinasCOD_GRUPO: TFloatField;
    QR_MaquinasCOD_REGIONAL: TFloatField;
    QR_MaquinasCOD_UNIDADE: TFloatField;
    QR_MaquinasCOD_SAFRA: TFloatField;
    QR_MaquinasCOD_FRENTE: TFloatField;
    QR_MaquinasCOD_FAZENDA: TFloatField;
    QR_MaquinasCOD_EQUIPAMENTO: TFloatField;
    QR_MaquinasTIPO: TFloatField;
    QR_MaquinasDESC_EQUIPAMENTO: TStringField;
    QR_ParadoC: TOraQuery;
    QR_ParadoCCOD_GRUPO: TFloatField;
    QR_ParadoCCOD_REGIONAL: TFloatField;
    QR_ParadoCCOD_UNIDADE: TFloatField;
    QR_ParadoCCOD_SAFRA: TFloatField;
    QR_ParadoCCOD_FRENTE: TFloatField;
    QR_ParadoCCOD_FAZENDA: TFloatField;
    QR_ParadoCCOD_EQUIPAMENTO: TFloatField;
    QR_ParadoCDESC_EQUIPAMENTO: TStringField;
    QR_ParadoCTIPO: TFloatField;
    QR_ParadoCCOD_MOTIVO: TFloatField;
    QR_ParadoCDATA_HORA: TDateTimeField;
    QR_ParadoCOBSERVACAO: TStringField;
    QR_ParadoCORDEMSERVICO: TStringField;
    QR_ParadoO: TOraQuery;
    QR_ParadoOCOD_GRUPO: TFloatField;
    QR_ParadoOCOD_REGIONAL: TFloatField;
    QR_ParadoOCOD_UNIDADE: TFloatField;
    QR_ParadoOCOD_SAFRA: TFloatField;
    QR_ParadoOCOD_FRENTE: TFloatField;
    QR_ParadoOCOD_FAZENDA: TFloatField;
    QR_ParadoOCOD_EQUIPAMENTO: TFloatField;
    QR_ParadoODESC_EQUIPAMENTO: TStringField;
    QR_ParadoOTIPO: TFloatField;
    QR_ParadoOCOD_MOTIVO: TFloatField;
    QR_ParadoODATA_HORA: TDateTimeField;
    QR_ParadoOOBSERVACAO: TStringField;
    QR_ParadoOORDEMSERVICO: TStringField;
    QR_Veiculos: TOraQuery;
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
    QR_VeiculosPARADO: TStringField;
    QR_VeiculosSELECIONADO: TStringField;
    QR_VeiculosATRASADO: TStringField;
    QR_VeiculosTEMPOREAL: TStringField;
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
    QR_ALERTA_ALOCACAO: TOraQuery;
    QR_ALERTA_ALOCACAOCOD_SAFRA: TFloatField;
    QR_ALERTA_ALOCACAODATA: TStringField;
    QR_ALERTA_ALOCACAOMENSAGEM: TStringField;
    QR_ALERTA_ALOCACAOLIDA: TStringField;
    QR_ALERTA_ALOCACAOSEQ_ALOCACAO: TFloatField;
    QR_ALERTA_ALOCACAOUSUARIO: TStringField;
    QR_ALERTA_ALOCACAOCOD_MOTIVO: TFloatField;
    QR_ALERTA_ALOCACAODESC_MOTIVO: TStringField;
    RzGroup6: TRzGroup;
    RzPanel8: TRzPanel;
    QR_Fixos: TOraQuery;
    QR_FixosCOD_GRUPO: TIntegerField;
    QR_FixosCOD_REGIONAL: TFloatField;
    QR_FixosCOD_UNIDADE: TFloatField;
    QR_FixosCOD_SAFRA: TIntegerField;
    QR_FixosCOD_FRENTE: TIntegerField;
    QR_FixosCOD_FAZENDA: TIntegerField;
    QR_FixosCOD_EQUIPAMENTO: TIntegerField;
    QR_FixosDESC_EQUIPAMENTO: TStringField;
    QR_FixosFIXOTRAVADO: TStringField;
    QR_Descarregando: TOraQuery;
    rzPanelRefresh: TRzPanel;
    imgAtualizacao: TImage;
    cbAtualizacaoAutomatica: TCheckBox;
    Timer_Veiculos: TTimer;
    QR_DescarregandoCOD_SAFRA: TFloatField;
    QR_DescarregandoCOD_FRENTE: TFloatField;
    QR_DescarregandoCOD_FAZENDA: TFloatField;
    QR_DescarregandoCOD_GRUPO: TFloatField;
    QR_DescarregandoCOD_REGIONAL: TFloatField;
    QR_DescarregandoCOD_UNIDADE: TFloatField;
    QR_DescarregandoCOD_EQUIPAMENTO: TFloatField;
    QR_DescarregandoDESC_EQUIPAMENTO: TStringField;
    QR_DescarregandoSITUACAO: TStringField;
    QR_DescarregandoABASTECEU: TStringField;
    QR_DescarregandoBITUCA: TStringField;
    QR_DescarregandoDATA_SAIDA: TDateTimeField;
    QR_DescarregandoDATA_PREV_INICIO_CARREG: TDateTimeField;
    QR_DescarregandoPORC_IDA: TFloatField;
    QR_DescarregandoDATA_PREV_TERMINO_CARREG: TDateTimeField;
    QR_DescarregandoDATA_PREV_CHEGADA: TDateTimeField;
    QR_DescarregandoPORC_VOLTA: TFloatField;
    QR_DescarregandoCOD_TIPOCARGA: TIntegerField;
    QR_DescarregandoDESC_TIPOCARGA: TStringField;
    QR_DescarregandoATRASO: TStringField;
    QR_DescarregandoDESCARREGANDO: TStringField;
    QR_DescarregandoSEQUENCIA: TFloatField;
    QR_DescarregandoPARADO: TStringField;
    QR_DescarregandoSELECIONADO: TStringField;
    QR_DescarregandoATRASADO: TStringField;
    QR_DescarregandoTEMPOREAL: TStringField;
    ScrollBox2: TScrollBox;
    RzPanel9: TRzPanel;
    RzPanel10: TRzPanel;
    QR_ParadoCMOTIVO: TStringField;
    QR_ParadoCHORAS: TFloatField;
    QR_ParadoCMINUTOS: TFloatField;
    QR_ParadoOMOTIVO: TStringField;
    QR_ParadoOHORAS: TFloatField;
    QR_ParadoOMINUTOS: TFloatField;
    QR_DescarregandoDATA_CHEGADA: TDateTimeField;
    QR_DescarregandoHORAS: TFloatField;
    QR_DescarregandoMINUTOS: TFloatField;
    RzBitBtn1: TRzBitBtn;
    QR_ParadoOPARADAAUTOMATICA: TStringField;
    QR_ParadoCPARADAAUTOMATICA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RzPageControlUnidadeMoagemChange(Sender: TObject);
    procedure RzPageControlUnidadeMoagemClose(Sender: TObject;
      var AllowClose: Boolean);
    procedure Cria_frentes;
    procedure QR_PistasBeforeOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ChangeGroup(NomeGroup : String; TamStr,
                        Tamanho : Integer);
    procedure FormResize(Sender: TObject);
    procedure RzGroupBarCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure RzGroup2CanClose(Sender: TObject; var CanClose: Boolean);
    procedure RzGroup2CanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure RzGroup3CanClose(Sender: TObject; var CanClose: Boolean);
    procedure RzGroup3CanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure RzGroup4CanClose(Sender: TObject; var CanClose: Boolean);
    procedure RzGroup4CanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure RzGroup5CanClose(Sender: TObject; var CanClose: Boolean);
    procedure RzGroup5CanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure RzGroup6CanClose(Sender: TObject; var CanClose: Boolean);
    procedure RzGroup6CanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure Timer_VeiculosTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vGrupo, vRegional, vUnidade : Integer;
  public
    { Public declarations }
  protected
    QR_PageControlUnidade2 : TOraQuery;
  end;

var
  F_DisponibilidadesFrentes: TF_DisponibilidadesFrentes;

implementation

{$R *.dfm}

uses u_recursos, U_DM, U_ImagensMonitoramentoTrafego,
  U_InformacoesPistaMonitoramento, U_Monitoramento_Trafego_Estatico;

procedure TF_DisponibilidadesFrentes.FormActivate(Sender: TObject);
begin
  inherited;
//  Cria_frentes;
//  F_DisponibilidadesFrentes.Refresh;
end;

procedure TF_DisponibilidadesFrentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   if not Verificar_Formulario_Criado(TF_Monitoramento_Trafego_Estatico, False) then
   begin
     //Fecha o form e desaloca da mem�ria
     F_BalaoMensagemEquipamento.Tag := 1;
     F_BalaoMensagemEquipamento.Desativar;
     F_BalaoMensagemEquipamento.Release;
     F_BalaoMensagemEquipamento := nil;
   end;
end;

procedure TF_DisponibilidadesFrentes.FormCreate(Sender: TObject);
begin
  inherited;

  QR_PageControlUnidade2 := TOraQuery(PageControlUnidades(rzPageControlUnidadeMoagem, True, True, False));
  rzPageControlUnidadeMoagemChange(rzPageControlUnidadeMoagem);

  Left := 1;
  Top  := 1;

  RzPanel2.Caption := 'Frente :    '+#13+'Fazenda :    '+#13+'Apelido :    ';
  RzPanel10.Caption := 'Usina'+#13+'Desc.';

  F_BalaoMensagemEquipamento := TF_BalaoMensagemEquipamento.create(Self);

end;

procedure TF_DisponibilidadesFrentes.FormResize(Sender: TObject);
begin
  inherited;
    Cria_frentes;
end;

procedure TF_DisponibilidadesFrentes.QR_PistasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  QR_Pistas.ParamByName('cod_safra').AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
  QR_Pistas.ParamByName('cod_grupo').AsFloat := vGrupo;
  QR_Pistas.ParamByName('cod_regional').AsFloat := vRegional;
  QR_Pistas.ParamByName('cod_unidade').AsFloat := vUnidade;
end;

procedure TF_DisponibilidadesFrentes.RzGroup2CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    RzGroup2.Caption := RzPanel4.Caption;
end;

procedure TF_DisponibilidadesFrentes.RzGroup2CanOpen(Sender: TObject;
  var CanOpen: Boolean);
begin
  inherited;
    RzGroup2.Caption := '';
end;

procedure TF_DisponibilidadesFrentes.RzGroup3CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    RzGroup3.Caption := RzPanel5.Caption;
end;

procedure TF_DisponibilidadesFrentes.RzGroup3CanOpen(Sender: TObject;
  var CanOpen: Boolean);
begin
  inherited;
  RzGroup3.Caption := '';
end;

procedure TImageVeiculoPista.myOnMouseEnter(Sender: TObject);
var
  Ponto : TPoint;
begin
  TScrollBox(TImageVeiculoPista(Sender).Parent).ShowHint := False;

  GetCursorPos(Ponto);

  sleep(500);

  F_BalaoMensagemEquipamento.Desativar;

  F_BalaoMensagemEquipamento.Ativar(Sender,Ponto,TImageVeiculoPista(Sender).informacaoBalao,TImageVeiculoPista(Sender).listaInformacaoBalao);
end;

procedure TImageVeiculoPista.myOnMouseExit(Sender: TObject);
begin
  TScrollBox(TImageVeiculoPista(Sender).Parent).ShowHint := True;
end;

procedure TF_DisponibilidadesFrentes.RzGroup4CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
   RzGroup4.Caption := RzPanel6.Caption;
end;

procedure TF_DisponibilidadesFrentes.RzGroup4CanOpen(Sender: TObject;
  var CanOpen: Boolean);
begin
  inherited;
   RzGroup4.Caption := '';
end;

procedure TF_DisponibilidadesFrentes.RzGroup5CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
     RzGroup5.Caption := RzPanel7.Caption;
end;

procedure TF_DisponibilidadesFrentes.RzGroup5CanOpen(Sender: TObject;
  var CanOpen: Boolean);
begin
  inherited;
   RzGroup5.Caption := '';
end;

procedure TF_DisponibilidadesFrentes.RzGroup6CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    RzGroup6.Caption := RzPanel8.Caption;
end;

procedure TF_DisponibilidadesFrentes.RzGroup6CanOpen(Sender: TObject;
  var CanOpen: Boolean);
begin
  inherited;
      RzGroup6.Caption := '';
end;

procedure TF_DisponibilidadesFrentes.RzGroupBarCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
  var vHeigthGroup, Aberto, Fechado : Integer;
  I: Integer;
begin
  inherited;
     vHeigthGroup := trzgroupbar(sender).Height;
     vHeigthGroup := vHeigthGroup - trzgroupbar(sender).Groups[0].Height;

     Aberto := 0;
     Fechado := 0;
     for I := 1 to trzgroupbar(sender).GroupCount-1 do
     begin
       if trzgroupbar(sender).Groups[I].Opened then
          Aberto := Aberto + 1
       else
          Fechado := Fechado + 1;
     end;

     if Aberto > 0 then
     begin
       vHeigthGroup := vHeigthGroup - (Fechado * 40);
       vHeigthGroup := Trunc((vHeigthGroup-(Aberto * 20)) / Aberto);

       for I := 1 to trzgroupbar(sender).GroupCount-1 do
       begin
         if trzgroupbar(sender).Groups[I].Opened then
         begin
            trzgroupbar(sender).Groups[I].Height := vHeigthGroup;
            trzgroupbar(sender).Groups[I].OpenedHeight := vHeigthGroup;
         end;
       end;
     end;

     ChangeGroup('GROUPDIS',8,RzGroup1.Height);
     ChangeGroup('GROUPMAQUINAS',13,RzGroup2.Height);
     ChangeGroup('GROUPPARADOC',12,RzGroup3.Height);
     ChangeGroup('GROUPPARADOO',12,RzGroup4.Height);
     ChangeGroup('GROUPVEICULOS',13,RzGroup5.Height);
     ChangeGroup('GROUPFIXOS',10,RzGroup6.Height);
end;

procedure TF_DisponibilidadesFrentes.RzPageControlUnidadeMoagemChange(
  Sender: TObject);
begin
  inherited;

    if PageControlChange(rzPageControlUnidadeMoagem, QR_PageControlUnidade2) then
    begin
      vGrupo := QR_PageControlUnidade2.FieldByName('cod_grupo').asinteger;
      vRegional := QR_PageControlUnidade2.FieldByName('cod_regional').asinteger;
      vUnidade := QR_PageControlUnidade2.FieldByName('cod_unidade').asinteger;

//      Timer_Veiculos.Tag := 1;
//      Timer_Veiculos.OnTimer(Sender);
        cria_frentes;

    end;
end;


procedure TF_DisponibilidadesFrentes.RzPageControlUnidadeMoagemClose(
  Sender: TObject; var AllowClose: Boolean);
begin
  inherited;
  TRzPageControl(Sender).ActivePage.Free;
  if RzPageControlUnidadeMoagem.PageCount > 0 then
    RzPageControlUnidadeMoagem.ActivePageIndex := 0
  else
    begin
      vGrupo := -1;
//      btnAtualizar.Click;
    end;

end;

procedure TF_DisponibilidadesFrentes.Timer_VeiculosTimer(Sender: TObject);
begin
  inherited;
  TTimer(Sender).Enabled := False;

  TTimer(Sender).Tag := TTimer(Sender).Tag - 1;

  if TTimer(Sender).Tag <= 1 then
  begin
    if (cbAtualizacaoAutomatica.Checked) {or (TRzBitBtn(sender) = btnAtualizar)} or (TRzPageControl(Sender) = RzPageControlUnidadeMoagem) then
    begin
      //cria_pista;
      Cria_frentes;
    end;

    TTimer(Sender).Tag := 60;
  end;

  rzPanelRefresh.Caption := 'Atualizar: '+IntToStr(TTimer(Sender).Tag)+' seg.';

  TTimer(Sender).Enabled := True;
end;

procedure TF_DisponibilidadesFrentes.BitBtn1Click(Sender: TObject);
var i : Integer;
begin
  inherited;
   i := 0;
   while (i <= (ComponentCount -1)) do
   Begin
      If Components[i] is TRzGroup Then
      begin
         If copy(TRzGroup(Components[i]).Name,1,5) = 'GROUP' Then
         Begin
            TRzGroup(Components[i]).OpenedHeight := 200;
         End;
      End;
      i := i + 1;
   End;
end;

procedure TF_DisponibilidadesFrentes.ChangeGroup(NomeGroup : String; TamStr,
                                                 Tamanho : Integer);
var i : Integer;
begin
  inherited;
   i := 0;
   while (i <= (ComponentCount -1)) do
   Begin
      If Components[i] is TRzGroup Then
      begin
         If copy(TRzGroup(Components[i]).Name,1,TamStr) = NomeGroup Then
         Begin
            TRzGroup(Components[i]).OpenedHeight := Tamanho;
         End;
      End;
      i := i + 1;
   End;
end;


procedure TF_DisponibilidadesFrentes.Cria_frentes;
var i,
    vHeigthGroup,
    QtdeCol,
    QtdeLin,
    TopImg,
    leftImg,
    Rveiculo,
    qtdeVeiculos  : Integer;
   vResize : Boolean;
   TScrollFrentes     : TScrollBox;
   TPista             : TRzPanel;
   TCabecalho         : TRzPanel;
   TInformacoes       : TRzGroupBar;
   TGroupDisp         : TRzGroup;
   TGroupMaquinas     : TRzGroup;
   TScrolMaquinas     : TScrollBox;
   TGroupParadosC     : TRzGroup;
   TScrolParadosC     : TScrollBox;
   TGroupParadosO     : TRzGroup;
   TGroupFixos        : TRzGroup;
   TScrolParadosO     : TScrollBox;
   TGroupVeiculos     : TRzGroup;
   TScrolVeiculos     : TScrollBox;
   TScrolFixos        : TScrollBox;
   TScrolDesc         : TScrollBox;
   TVeiculoImagePista : TImageVeiculoPista;
   TLabelVeiculo      : TLabel;
   listaInformacoesEquipamentos : array of TInformacaoBalao;
   ComponentCriado              : TComponent;
   possuiAlertas                : Boolean;
   vAdiantadoAtrasado           : String;
begin
   i := 0;
   while (i <= (ComponentCount -1)) do
   Begin
      If Components[i] is TScrollBox Then
      begin
         If (copy(TScrollBox(Components[i]).Name,1,14) = 'SCROLLFRENTES')
            or (copy(TScrollBox(Components[i]).Name,1,20) = 'SCROLLDESCARREGANDO') Then
         Begin
            //Destr�i a PISTA
            TScrollBox(Components[i]).Free;
            i := 0; // Sempre que destruir um componente volta no inicio para nao dar erro.
         End;
      End;
      i := i + 1;
   End;

   Panel1.Visible := False;
   Rveiculo := 0;
   //Cria o componente base
   TScrollFrentes := TScrollBox.Create(Self);
   TScrollFrentes.Name := 'SCROLLFRENTES';
   TScrollFrentes.Parent := Panel1;
   TScrollFrentes.Align := alClient;

   vResize := True;
   vHeigthGroup := 1;
   RzGroupBarCanResize(RzGroupBar1,vHeigthGroup,vHeigthGroup,vResize);


   QR_Pistas.Close;
   QR_Pistas.Open;
   QR_Pistas.First;

   while not QR_Pistas.Eof do
   begin
      TPista        := TRzPanel.Create(Self);
      TPista.Name   := 'PISTA'+QR_PistasPISTA.AsString;
      TPista.Parent := TScrollFrentes;
      TPista.Align  := alLeft;
      TPista.Width  := 213;
      TPista.Color  := clWhite;


      TCabecalho := TRzPanel.Create(Self);
      TCabecalho.Parent := TPista;
      TCabecalho.Caption := QR_PistasCOD_FRENTE.AsString+' - '+
                            QR_PistasDESC_FRENTE.AsString+#13+
                            QR_PistasCOD_FAZENDA.AsString+' - '+
                            Copy(QR_PistasDESC_FAZENDA.AsString,1,20)+'.'+#13+
                            QR_PistasAPELIDO.AsString;
      TCabecalho.Name := 'CABECALHO'+QR_PistasPISTA.AsString;
      TCabecalho.Align := alTop;
      TCabecalho.Font.Color := clHotLight;
      TCabecalho.Font.Style := [fsBold];
      TCabecalho.Height := 60;
      TCabecalho.BorderOuter := RzPanel2.BorderOuter;
      TCabecalho.Color  := RzPanel2.Color;


      TInformacoes := TRzGroupBar.Create(Self);
      TInformacoes.Parent      := TPista;
      TInformacoes.Align       := alClient;
      TInformacoes.VisualStyle := RzGroupBar1.VisualStyle;
      TInformacoes.Color       := RzGroupBar1.Color;

      // DISPONIBILIDADE
      QR_Disponibilidade.Close;
      QR_Disponibilidade.ParamByName('cod_grupo').AsFloat    := vGrupo;
      QR_Disponibilidade.ParamByName('cod_regional').AsFloat := vRegional;
      QR_Disponibilidade.ParamByName('cod_unidade').AsFloat  := vUnidade;
      QR_Disponibilidade.ParamByName('cod_safra').AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
      QR_Disponibilidade.ParamByName('cod_frente').AsFloat   := QR_PistasCOD_FRENTE.AsFloat;
      QR_Disponibilidade.ParamByName('cod_fazenda').AsFloat  := QR_PistasCOD_FAZENDA.AsFloat;
      QR_Disponibilidade.Open;

      TGroupDisp := TRzGroup.Create(Self);
      TInformacoes.AddGroup(TGroupDisp);
      TGroupDisp.Name    := 'GROUPDISP'+QR_PistasPISTA.AsString;
      TGroupDisp.Caption           := '';
      TGroupDisp.CanClose          := False;
      TGroupDisp.CaptionFont.Size  := 0;
      TGroupDisp.CaptionHeight     := 0;
      TGroupDisp.Font.Color        := clRed;
      TGroupDisp.Font.Size         := 10;
      TGroupDisp.CaptionFont.Size  := 0;
      TGroupDisp.Items.Add.Caption := '     Colhedoras : ' + FormatFloat('##0.00',QR_DisponibilidadeDISPONIBILIDADE_COLHEDORAS.AsFloat)+'%';
      TGroupDisp.Items.Add.Caption := '     Reboques   : ' + FormatFloat('##0.00',QR_DisponibilidadeDISPONIBILIDADE_REBOQUE.AsFloat)+'%';
      TGroupDisp.OpenedHeight      := RzGroup1.OpenedHeight;
      TGroupDisp.Repaint;

      //EQUIPAMENTOS ALOCADOS
      TGroupMaquinas := TRzGroup.Create(Self);
      TInformacoes.AddGroup(TGroupMaquinas);
      TGroupMaquinas.Name          := 'GROUPMAQUINAS'+QR_PistasPISTA.AsString;
      TGroupMaquinas.Caption       := '';
      TGroupMaquinas.CanClose      := False;
      TGroupMaquinas.CaptionHeight := 0;
      TGroupMaquinas.OpenedHeight  := RzGroup2.OpenedHeight;
      TScrolMaquinas               := TScrollBox.Create(Self);
      TScrolMaquinas.Align         := alClient;
      TScrolMaquinas.Parent        := TGroupMaquinas;

      QR_Maquinas.Close;
      QR_Maquinas.ParamByName('cod_grupo').AsFloat    := vGrupo;
      QR_Maquinas.ParamByName('cod_regional').AsFloat := vRegional;
      QR_Maquinas.ParamByName('cod_unidade').AsFloat  := vUnidade;
      QR_Maquinas.ParamByName('cod_safra').AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
      QR_Maquinas.ParamByName('cod_frente').AsFloat   := QR_PistasCOD_FRENTE.AsFloat;
      QR_Maquinas.ParamByName('cod_fazenda').AsFloat  := QR_PistasCOD_FAZENDA.AsFloat;
      QR_Maquinas.Open;
      QR_Maquinas.First;

      QtdeCol := 0;
      TopImg     := 2;
      LeftImg    := 2;
      while not QR_Maquinas.Eof do
      begin

        TVeiculoImagePista := TImageVeiculoPista.Create(Self);
        TVeiculoImagePista.Name    := 'MAQUINA'+QR_MaquinasCOD_EQUIPAMENTO.AsString;
        TVeiculoImagePista.Height  := 32;
        TVeiculoImagePista.Width   := 32;
        TVeiculoImagePista.Top     := TopImg;
        TVeiculoImagePista.Left    := LeftImg;
        TVeiculoImagePista.Parent  := TScrolMaquinas;
        TVeiculoImagePista.Stretch := True;
        TLabelVeiculo              := TLabel.Create(Self);
        TLabelVeiculo.Name         := 'LBMaquina'+QR_MaquinasCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Caption      := QR_MaquinasCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Top          := TopImg + 34;
        TLabelVeiculo.Left         := leftImg + 2;
        TLabelVeiculo.Font.Style   := [fsBold];
        TLabelVeiculo.Parent       := TScrolMaquinas;

         TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
         TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

         TVeiculoImagePista.informacaoBalao                 := TInformacaoBalao.Create;
         TVeiculoImagePista.informacaoBalao.Cod_Equipamento := QR_MaquinasCOD_EQUIPAMENTO.AsInteger;
         TVeiculoImagePista.informacaoBalao.Equipamento     := QR_MaquinasCOD_EQUIPAMENTO.AsString + ' ' + QR_MaquinasDESC_EQUIPAMENTO.AsString;
         TVeiculoImagePista.informacaoBalao.Parado          := 'N';
         TVeiculoImagePista.informacaoBalao.TipoHint        := 'E';
         TVeiculoImagePista.informacaoBalao.cod_frente      := QR_PistasCOD_FRENTE.AsInteger;
         TVeiculoImagePista.informacaoBalao.cod_fazenda     := QR_PistasCOD_FAZENDA.AsInteger;
         TVeiculoImagePista.informacaoBalao.Alertas         := TStringList.Create;
         TVeiculoImagePista.informacaoBalao.Alarmes         := TStringList.Create;
         TVeiculoImagePista.informacaoBalao.Observacoes     := TStringList.Create;
         TVeiculoImagePista.informacaoBalao.Observacoes.Add('EQUIPAMENTO EM OPERA��O');



        if QR_MaquinasTIPO.AsInteger = 0 then
           TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.ImgColhedora.Picture.Graphic
        else if QR_MaquinasTIPO.AsInteger = 1 then
             TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.ImgReboque.Picture.Graphic
             else if QR_MaquinasTIPO.AsInteger = 2 then
             TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado.Picture.Graphic;

         SetLength(TVeiculoImagePista.listaInformacaoBalao,1);
         TVeiculoImagePista.listaInformacaoBalao[0] := TInformacaoBalao.Create;
         TVeiculoImagePista.listaInformacaoBalao[0] := TVeiculoImagePista.informacaoBalao;

        QtdeCol := QtdeCol + 1;
        LeftImg := LeftImg + 32 + 12;

        if (QtdeCol = 4) then
        begin
           TopImg  := TopImg + 32 + 15;
           LeftImg  := 2;
           QtdeCol := 0;
        end;
        QR_Maquinas.Next;
      end;

      //PARADOS NO CAMPO
      TGroupParadosC := TRzGroup.Create(Self);
      TInformacoes.AddGroup(TGroupParadosC);
      TGroupParadosC.Name          := 'GROUPPARADOC'+QR_PistasPISTA.AsString;
      TGroupParadosC.Caption       := '';
      TGroupParadosC.CanClose      := False;
      TGroupParadosC.CaptionHeight := 0;
      TGroupParadosC.OpenedHeight  := RzGroup3.OpenedHeight;
      TScrolParadosC               := TScrollBox.Create(Self);
      TScrolParadosC.Align         := alClient;
      TScrolParadosC.Parent        := TGroupParadosC;

      QR_ParadoC.Close;
      QR_ParadoC.ParamByName('cod_grupo').AsFloat    := vGrupo;
      QR_ParadoC.ParamByName('cod_regional').AsFloat := vRegional;
      QR_ParadoC.ParamByName('cod_unidade').AsFloat  := vUnidade;
      QR_ParadoC.ParamByName('cod_safra').AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
      QR_ParadoC.ParamByName('cod_frente').AsFloat   := QR_PistasCOD_FRENTE.AsFloat;
      QR_ParadoC.ParamByName('cod_fazenda').AsFloat  := QR_PistasCOD_FAZENDA.AsFloat;
      QR_ParadoC.Open;
      QR_ParadoC.First;

      QtdeCol := 0;
      TopImg     := 2;
      LeftImg    := 2;
      while not QR_ParadoC.Eof do
      begin

        TVeiculoImagePista         := TImageVeiculoPista.Create(Self);
        TVeiculoImagePista.Name    := 'PARADOSC'+QR_ParadoCCOD_EQUIPAMENTO.AsString;
        TVeiculoImagePista.Height  := 32;
        TVeiculoImagePista.Width   := 32;
        TVeiculoImagePista.Top     := TopImg;
        TVeiculoImagePista.Left    := LeftImg;
        TVeiculoImagePista.Parent  := TScrolParadosC;
        TVeiculoImagePista.Stretch := True;
        TLabelVeiculo              := TLabel.Create(Self);
        TLabelVeiculo.Name         := 'LBParadosC'+QR_ParadoCCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Caption      := QR_ParadoCCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Top          := TopImg + 34;
        TLabelVeiculo.Left         := leftImg + 2;
        TLabelVeiculo.Font.Style   := [fsBold];
        TLabelVeiculo.Parent       := TScrolParadosC;

        TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
        TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

        TVeiculoImagePista.informacaoBalao                 := TInformacaoBalao.Create;
        TVeiculoImagePista.informacaoBalao.Cod_Equipamento := QR_ParadoCCOD_EQUIPAMENTO.AsInteger;
        TVeiculoImagePista.informacaoBalao.Equipamento     := QR_ParadoCCOD_EQUIPAMENTO.AsString + ' ' + QR_ParadoCDESC_EQUIPAMENTO.AsString;
        TVeiculoImagePista.informacaoBalao.Parado          := 'S';
        TVeiculoImagePista.informacaoBalao.TipoHint        := 'E';
        TVeiculoImagePista.informacaoBalao.cod_frente      := QR_PistasCOD_FRENTE.AsInteger;
        TVeiculoImagePista.informacaoBalao.cod_fazenda     := QR_PistasCOD_FAZENDA.AsInteger;
        TVeiculoImagePista.informacaoBalao.Alertas         := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Alarmes         := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Observacoes     := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Observacoes.Add('Motivo da Parada :'+QR_ParadoCCOD_MOTIVO.AsString+'-'+QR_ParadoCMOTIVO.AsString
                                                      +#13+'Data Hora Parada :'+QR_ParadoCDATA_HORA.AsString
                                                      +#13+'Horas Parada :'+QR_ParadoCHORAS.AsString+':'+QR_ParadoCMINUTOS.AsString + 'Hrs'
                                                      +#13+'Observa��o :'+QR_ParadoCOBSERVACAO.AsString
                                                      +#13+'Ordem Servi�o :'+QR_ParadoCORDEMSERVICO.AsString);
      if QR_ParadoCPARADAAUTOMATICA.AsString = 'S' then
        TVeiculoImagePista.informacaoBalao.Observacoes.Add('Parada AUTOMATICA')
      else
        TVeiculoImagePista.informacaoBalao.Observacoes.Add('Parada MANUAL');

        if QR_ParadoCTIPO.AsInteger = 0 then
           TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.ImgColhedora.Picture.Graphic
        else if QR_ParadoCTIPO.AsInteger = 1 then
             TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.ImgReboque.Picture.Graphic
             else if QR_ParadoCTIPO.AsInteger = 2 then
             TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado.Picture.Graphic;

         SetLength(TVeiculoImagePista.listaInformacaoBalao,1);
         TVeiculoImagePista.listaInformacaoBalao[0] := TInformacaoBalao.Create;
         TVeiculoImagePista.listaInformacaoBalao[0] := TVeiculoImagePista.informacaoBalao;

        QtdeCol := QtdeCol + 1;
        LeftImg := LeftImg + 32 + 12;

        if (QtdeCol = 4) then
        begin
           TopImg  := TopImg + 32 + 15;
           LeftImg  := 2;
           QtdeCol := 0;
        end;
        QR_ParadoC.Next;
      end;


      TGroupParadosO := TRzGroup.Create(Self);
      TInformacoes.AddGroup(TGroupParadosO);
      TGroupParadosO.Name          := 'GROUPPARADOO'+QR_PistasPISTA.AsString;
      TGroupParadosO.Caption       := '';
      TGroupParadosO.CanClose      := False;
      TGroupParadosO.CaptionHeight := 0;
      TGroupParadosO.OpenedHeight  := RzGroup4.OpenedHeight;
      TScrolParadosO               := TScrollBox.Create(Self);
      TScrolParadosO.Align         := alClient;
      TScrolParadosO.Parent        := TGroupParadosO;

      QR_ParadoO.Close;
      QR_ParadoO.ParamByName('cod_grupo').AsFloat    := vGrupo;
      QR_ParadoO.ParamByName('cod_regional').AsFloat := vRegional;
      QR_ParadoO.ParamByName('cod_unidade').AsFloat  := vUnidade;
      QR_ParadoO.ParamByName('cod_safra').AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
      QR_ParadoO.ParamByName('cod_frente').AsFloat   := QR_PistasCOD_FRENTE.AsFloat;
      QR_ParadoO.ParamByName('cod_fazenda').AsFloat  := QR_PistasCOD_FAZENDA.AsFloat;
      QR_ParadoO.Open;
      QR_ParadoO.First;

      QtdeCol := 0;
      TopImg     := 2;
      LeftImg    := 2;
      while not QR_ParadoO.Eof do
      begin

        TVeiculoImagePista         := TImageVeiculoPista.Create(Self);
        TVeiculoImagePista.Name    := 'PARADOSO'+QR_ParadoOCOD_EQUIPAMENTO.AsString;
        TVeiculoImagePista.Height  := 32;
        TVeiculoImagePista.Width   := 32;
        TVeiculoImagePista.Top     := TopImg;
        TVeiculoImagePista.Left    := LeftImg;
        TVeiculoImagePista.Parent  := TScrolParadosO;
        TVeiculoImagePista.Stretch := True;
        TLabelVeiculo              := TLabel.Create(Self);
        TLabelVeiculo.Name         := 'LBParadosO'+QR_ParadoOCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Caption      := QR_ParadoOCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Top          := TopImg + 34;
        TLabelVeiculo.Left         := leftImg + 2;
        TLabelVeiculo.Font.Style   := [fsBold];
        TLabelVeiculo.Parent       := TScrolParadosO;

         TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
         TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

        TVeiculoImagePista.informacaoBalao                 := TInformacaoBalao.Create;
        TVeiculoImagePista.informacaoBalao.Cod_Equipamento := QR_ParadoOCOD_EQUIPAMENTO.AsInteger;
        TVeiculoImagePista.informacaoBalao.Equipamento     := QR_ParadoOCOD_EQUIPAMENTO.AsString + ' ' + QR_ParadoODESC_EQUIPAMENTO.AsString;
        TVeiculoImagePista.informacaoBalao.Parado          := 'S';
        TVeiculoImagePista.informacaoBalao.TipoHint        := 'E';
        TVeiculoImagePista.informacaoBalao.cod_frente      := QR_PistasCOD_FRENTE.AsInteger;
        TVeiculoImagePista.informacaoBalao.cod_fazenda     := QR_PistasCOD_FAZENDA.AsInteger;
        TVeiculoImagePista.informacaoBalao.Alertas         := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Alarmes         := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Observacoes     := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Observacoes.Add('Motivo da Parada :'+QR_ParadoOCOD_MOTIVO.AsString+'-'+QR_ParadoOMOTIVO.AsString
                                                      +#13+'Data Hora Parada :'+QR_ParadoODATA_HORA.AsString
                                                      +#13+'Horas Parada :'+QR_ParadoOHORAS.AsString+':'+QR_ParadoOMINUTOS.AsString + 'Hrs'
                                                      +#13+'Observa��o :'+QR_ParadoOOBSERVACAO.AsString
                                                      +#13+'Ordem Servi�o :'+QR_ParadoOORDEMSERVICO.AsString);
        if QR_ParadoOPARADAAUTOMATICA.AsString = 'S' then
           TVeiculoImagePista.informacaoBalao.Observacoes.Add('Parada AUTOMATICA')
        else
           TVeiculoImagePista.informacaoBalao.Observacoes.Add('Parada MANUAL');

        if QR_ParadoOTIPO.AsInteger = 0 then
           TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.ImgColhedora.Picture.Graphic
        else if QR_ParadoOTIPO.AsInteger = 1 then
             TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.ImgReboque.Picture.Graphic
             else if QR_ParadoOTIPO.AsInteger = 2 then
             TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Carregado_Parado.Picture.Graphic;

         SetLength(TVeiculoImagePista.listaInformacaoBalao,1);
         TVeiculoImagePista.listaInformacaoBalao[0] := TInformacaoBalao.Create;
         TVeiculoImagePista.listaInformacaoBalao[0] := TVeiculoImagePista.informacaoBalao;

        QtdeCol := QtdeCol + 1;
        LeftImg := LeftImg + 32 + 12;

        if (QtdeCol = 4) then
        begin
           TopImg  := TopImg + 32 + 15;
           LeftImg  := 2;
           QtdeCol := 0;
        end;
        QR_ParadoO.Next;
      end;

      TGroupveiculos := TRzGroup.Create(Self);
      TInformacoes.AddGroup(TGroupveiculos);
      TGroupveiculos.Name    := 'GROUPVEICULOS'+QR_PistasPISTA.AsString;
      TGroupVeiculos.Caption       := '';
      TGroupVeiculos.CanClose      := False;
      TGroupVeiculos.CaptionHeight := 0;
      TGroupVeiculos.OpenedHeight  := RzGroup5.OpenedHeight;
      TScrolVeiculos              := TScrollBox.Create(Self);
      TScrolVeiculos.Align        := alClient;
      TScrolVeiculos.Parent       := TGroupVeiculos;

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

      QR_Veiculos.ParamByName('realprevisto').Value             := 'R';
      //QR_Veiculos.MacroByName('filtroTipoCarga').Value          := retornaFiltro('TIPOCARGA');
      //QR_Veiculos.MacroByName('filtroTipoCargaTexto').Value     := ''''+retornaFiltro('TIPOCARGA')+'''';
      //QR_Veiculos.MacroByName('filtroTipoProprietario').Value   := retornaFiltro('TIPOPROPRIETARIO');
      //QR_Veiculos.MacroByName('filtroTipoAlertaAlocacao').Value := retornaFiltro('MOTIVOSALERTA');

      QR_Veiculos.Open;

      QR_Veiculos.First;
      listaInformacoesEquipamentos := nil;
      qtdeVeiculos := 0;
      QtdeCol := 0;
      TopImg     := 2;
      LeftImg    := 2;

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


         TVeiculoImagePista.Parent := TScrolVeiculos;

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
{         If (QR_VeiculosPORC_VOLTA.Value = 100) and (QR_VeiculosSITUACAO.Value = 'V') Then
         Begin
            SetLength(listaInformacoesEquipamentos,qtdeVeiculos+1);
            listaInformacoesEquipamentos[qtdeVeiculos] := TInformacaoBalao.Create;
            listaInformacoesEquipamentos[qtdeVeiculos] := TVeiculoImagePista.informacaoBalao;
            Inc(qtdeVeiculos);
         End;}

         //#####################################################################
         //### VERIFICA SE O VEICULO ESTA *** INDO ***                       ###
         //#####################################################################
         // P3 OS VEICULOS EM PARADAS SEMPRE TER�O ALERTAS POR ESSE MOTIVO ESTAO COMTEMPLADOS APENAS PARA OS ALERTAS.

         If QR_VeiculosSITUACAO.Value = 'I' Then
         Begin

//           TVeiculoImagePista.Top   := 2; //38;
//           TVeiculoImagePista.Left  := (round((QR_VeiculosPORC_IDA.AsInteger * Width_Pista_Ida)/100)-32);

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

//           TVeiculoImagePista.Top   := 2;
//           TVeiculoImagePista.Left  := Width_Pista_Volta - round((QR_VeiculosPORC_VOLTA.AsInteger * Width_Pista_Volta)/100);
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
         TVeiculoImagePista.Name        := 'VEICULO_IMG'+ QR_VeiculosCOD_EQUIPAMENTO.AsString;
         TVeiculoImagePista.BringToFront;
         TVeiculoImagePista.Width := 32;
         TVeiculoImagePista.Height := 32;
         TVeiculoImagePista.Visible := True;
         TVeiculoImagePista.Top     := TopImg;
         TVeiculoImagePista.Left    := leftImg;
         TLabelVeiculo              := TLabel.Create(Self);
         TLabelVeiculo.Name         := 'LBVeiculos'+QR_VeiculosCOD_EQUIPAMENTO.AsString;
         TLabelVeiculo.Caption      := QR_VeiculosCOD_EQUIPAMENTO.AsString;
         TLabelVeiculo.Top          := TopImg + 34;
         TLabelVeiculo.Left         := leftImg + 2;
         TLabelVeiculo.Font.Style   := [fsBold];
         TLabelVeiculo.Parent       := TScrolVeiculos;

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

        QtdeCol := QtdeCol + 1;
        LeftImg := LeftImg + 32 + 12;

        if (QtdeCol = 4) then
        begin
           TopImg  := TopImg + 32 + 15;
           LeftImg  := 2;
           QtdeCol := 0;
        end;
         // Le o pr�ximo ve�culo
         QR_Veiculos.Next;
      End;

      TGroupFixos := TRzGroup.Create(Self);
      TInformacoes.AddGroup(TGroupFixos);
      TGroupFixos.Name          := 'GROUPFIXOS'+QR_PistasPISTA.AsString;
      TGroupFixos.Caption       := '';
      TGroupFixos.CanClose      := False;
      TGroupFixos.CaptionHeight := 0;
      TGroupFixos.OpenedHeight  := RzGroup6.OpenedHeight;
      TScrolFixos               := TScrollBox.Create(Self);
      TScrolFixos.Align         := alClient;
      TScrolFixos.Parent        := TGroupFixos;

      QR_Fixos.Close;
      QR_Fixos.ParamByName('cod_grupo').AsFloat    := vGrupo;
      QR_Fixos.ParamByName('cod_regional').AsFloat := vRegional;
      QR_Fixos.ParamByName('cod_unidade').AsFloat  := vUnidade;
      QR_Fixos.ParamByName('cod_safra').AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
      QR_Fixos.ParamByName('cod_frente').AsFloat   := QR_PistasCOD_FRENTE.AsFloat;
      QR_Fixos.ParamByName('cod_fazenda').AsFloat  := QR_PistasCOD_FAZENDA.AsFloat;
      QR_Fixos.Open;
      QR_Fixos.First;

      if QR_FixosFIXOTRAVADO.AsString = 'S' then
         TGroupFixos.Caption := 'Somente Equip. Fixos'
      else
         TGroupFixos.Caption := '';

      QtdeCol := 0;
      TopImg     := 2;
      LeftImg    := 2;
      while not QR_Fixos.Eof do
      begin

        TVeiculoImagePista         := TImageVeiculoPista.Create(Self);
        TVeiculoImagePista.Name    := 'VEICULOSFIXOS'+QR_FixosCOD_EQUIPAMENTO.AsString;
        TVeiculoImagePista.Height  := 32;
        TVeiculoImagePista.Width   := 32;
        TVeiculoImagePista.Top     := TopImg;
        TVeiculoImagePista.Left    := LeftImg;
        TVeiculoImagePista.Parent  := TScrolFixos;
        TVeiculoImagePista.Stretch := True;
        TLabelVeiculo              := TLabel.Create(Self);
        TLabelVeiculo.Name         := 'LBFixos'+QR_FixosCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Caption      := QR_FixosCOD_EQUIPAMENTO.AsString;
        TLabelVeiculo.Top          := TopImg + 34;
        TLabelVeiculo.Left         := leftImg + 2;
        TLabelVeiculo.Font.Style   := [fsBold];
        TLabelVeiculo.Parent       := TScrolFixos;

         TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
         TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

         TVeiculoImagePista.informacaoBalao := TInformacaoBalao.Create;
         TVeiculoImagePista.informacaoBalao.Cod_Equipamento   := QR_FixosCOD_EQUIPAMENTO.AsInteger;
         TVeiculoImagePista.informacaoBalao.Equipamento       := QR_FixosCOD_EQUIPAMENTO.AsString + ' ' + QR_FixosDESC_EQUIPAMENTO.AsString;


         TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.imgPNG_Direita_Vazio.Picture.Graphic;

        TVeiculoImagePista.informacaoBalao                 := TInformacaoBalao.Create;
        TVeiculoImagePista.informacaoBalao.Cod_Equipamento := QR_FixosCOD_EQUIPAMENTO.AsInteger;
        TVeiculoImagePista.informacaoBalao.Equipamento     := QR_FixosCOD_EQUIPAMENTO.AsString + ' ' + QR_FixosDESC_EQUIPAMENTO.AsString;
        TVeiculoImagePista.informacaoBalao.Parado          := 'F';
        TVeiculoImagePista.informacaoBalao.TipoHint        := 'E';
        TVeiculoImagePista.informacaoBalao.Alertas         := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Alarmes         := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Observacoes     := TStringList.Create;
        TVeiculoImagePista.informacaoBalao.Observacoes.Add('Ve�culo Fixo.'
                                                         +#13+'Frente :'+QR_PistasDESC_FRENTE.AsString
                                                         +#13+'Fazenda :'+QR_PistasDESC_FAZENDA.AsString);

         SetLength(TVeiculoImagePista.listaInformacaoBalao,1);
         TVeiculoImagePista.listaInformacaoBalao[0] := TInformacaoBalao.Create;
         TVeiculoImagePista.listaInformacaoBalao[0] := TVeiculoImagePista.informacaoBalao;

        QtdeCol := QtdeCol + 1;
        LeftImg := LeftImg + 32 + 12;

        if (QtdeCol = 4) then
        begin
           TopImg  := TopImg + 32 + 15;
           LeftImg  := 2;
           QtdeCol := 0;
        end;
        QR_Fixos.Next;
      end;

      TInformacoes.Repaint;

      QR_Pistas.Next;
   end;

   //Craindo os veiculos que est�o descarregando na usina

   TScrolDesc := TScrollBox.Create(Self);
   TScrolDesc.Parent := ScrollBox2;
   TScrolDesc.Align := alClient;
   TScrolDesc.Name  := 'SCROLLDESCARREGANDO';

   QR_Descarregando.Close;
   QR_Descarregando.ParamByName('cod_grupo').AsFloat    := vGrupo;
   QR_Descarregando.ParamByName('cod_regional').AsFloat := vRegional;
   QR_Descarregando.ParamByName('cod_unidade').AsFloat  := vUnidade;
   QR_Descarregando.ParamByName('cod_safra').AsFloat    := DM.QR_SafrasCOD_SAFRA.AsFloat;
   QR_Descarregando.ParamByName('cod_frente').AsFloat   := 0;
   QR_Descarregando.ParamByName('cod_fazenda').AsFloat  := 0;
   QR_Descarregando.Open;
   QR_Descarregando.First;

   QtdeCol := 0;
   TopImg     := 2;
   LeftImg    := 2;
   while not QR_Descarregando.Eof do
   begin
     TVeiculoImagePista         := TImageVeiculoPista.Create(Self);
     TVeiculoImagePista.Name    := 'VEICDESCARREGANDO'+QR_DescarregandoCOD_EQUIPAMENTO.AsString;
     TVeiculoImagePista.Height  := 32;
     TVeiculoImagePista.Width   := 32;
     TVeiculoImagePista.Top     := TopImg;
     TVeiculoImagePista.Left    := LeftImg;
     TVeiculoImagePista.Parent  := TScrolDesc;
     TVeiculoImagePista.Stretch := True;
     TLabelVeiculo              := TLabel.Create(Self);
     TLabelVeiculo.Name         := 'LBCarregando'+QR_DescarregandoCOD_EQUIPAMENTO.AsString;
     TLabelVeiculo.Caption      := QR_DescarregandoCOD_EQUIPAMENTO.AsString;
     TLabelVeiculo.Top          := TopImg + 34;
     TLabelVeiculo.Left         := leftImg + 2;
     TLabelVeiculo.Font.Style   := [fsBold];
     TLabelVeiculo.Parent       := TScrolDesc;

     TVeiculoImagePista.onMouseEnter    := TVeiculoImagePista.myOnMouseEnter;
     TVeiculoImagePista.OnMouseLeave    := TVeiculoImagePista.myOnMouseExit;

     if QR_DescarregandoHORAS.AsFloat > 0 then
        vAdiantadoAtrasado := 'Atrasado'
     else
        vAdiantadoAtrasado := 'Adiantado';

     TVeiculoImagePista.informacaoBalao                 := TInformacaoBalao.Create;
     TVeiculoImagePista.informacaoBalao.Cod_Equipamento := QR_DescarregandoCOD_EQUIPAMENTO.AsInteger;
     TVeiculoImagePista.informacaoBalao.Equipamento     := QR_DescarregandoCOD_EQUIPAMENTO.AsString + ' ' + QR_DescarregandoDESC_EQUIPAMENTO.AsString;
     TVeiculoImagePista.informacaoBalao.Parado          := 'F';
     TVeiculoImagePista.informacaoBalao.TipoHint        := 'E';
     TVeiculoImagePista.informacaoBalao.Alertas         := TStringList.Create;
     TVeiculoImagePista.informacaoBalao.Alarmes         := TStringList.Create;
     TVeiculoImagePista.informacaoBalao.Observacoes     := TStringList.Create;
     TVeiculoImagePista.informacaoBalao.Observacoes.Add('Sa�da da Usina    :'+ QR_DescarregandoDATA_SAIDA.AsString
                                                   +#13+'Previs�o Chegada  :' + QR_DescarregandoDATA_PREV_CHEGADA.AsString
                                                   +#13+'Data Hora Chegada :' + QR_DescarregandoDATA_CHEGADA.AsString
                                                   +#13+'Ve�culo '+vAdiantadoAtrasado + ' em '+ FormatFloat('00', QR_DescarregandoHORAS.AsFloat)+':'+FormatFloat('00', QR_DescarregandoMINUTOS.AsFloat)+' Hrs'
                                                   );


         SetLength(TVeiculoImagePista.listaInformacaoBalao,1);
         TVeiculoImagePista.listaInformacaoBalao[0] := TInformacaoBalao.Create;
         TVeiculoImagePista.listaInformacaoBalao[0] := TVeiculoImagePista.informacaoBalao;


     TVeiculoImagePista.Picture.Graphic := F_ImagensMonitoramentoTrafego.imgPNG_Esquerda_Descarregando.Picture.Graphic;

     QtdeCol := QtdeCol + 1;
     LeftImg := LeftImg + 32 + 12;

     if (QtdeCol = 1) then
     begin
        TopImg  := TopImg + 32 + 15;
        LeftImg  := 2;
        QtdeCol := 0;
     end;

     QR_Descarregando.Next;
   end;

   vResize := True;
   vHeigthGroup := 1;
   RzGroupBarCanResize(RzGroupBar1,vHeigthGroup,vHeigthGroup,vResize);
   Panel1.Visible := True;
   Panel1.Repaint;

end;
end.
