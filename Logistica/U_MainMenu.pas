//-------------------------------------------------------------------------------------------------
// Data : 24/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela principal do sistema, menu concentrador da chamada
// de todas as tela
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbon, dxBar, dxRibbonMiniToolbar,
  dxRibbonGallery, cxClasses, dxScreenTip, Vcl.ImgList, dxBarApplicationMenu;

type
  TF_MainMenu = class(TForm)
    ApplicationMenu: TdxBarApplicationMenu;
    ilStatusBarImages: TImageList;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    stGrupo: TdxBarScreenTip;
    stRegional: TdxBarScreenTip;
    stUnidade: TdxBarScreenTip;
    stTiposCana: TdxBarScreenTip;
    stTiposColheita: TdxBarScreenTip;
    stTiposCarga: TdxBarScreenTip;
    stTipoFazenda: TdxBarScreenTip;
    stTipoEquipamento: TdxBarScreenTip;
    stEquipamento: TdxBarScreenTip;
    stTiposPercurso: TdxBarScreenTip;
    stJustificativas: TdxBarScreenTip;
    stRotasFazendas: TdxBarScreenTip;
    stSafras: TdxBarScreenTip;
    stFazendas: TdxBarScreenTip;
    stTalhoes: TdxBarScreenTip;
    stFrentes: TdxBarScreenTip;
    stLogisticaEspacial: TdxBarScreenTip;
    stMonitoramentoTrafego: TdxBarScreenTip;
    stAtivarunidade: TdxBarScreenTip;
    stAtivarSafra: TdxBarScreenTip;
    stTrocarUsuario: TdxBarScreenTip;
    stJanelas: TdxBarScreenTip;
    stLadoaLado: TdxBarScreenTip;
    stCascata: TdxBarScreenTip;
    stSair: TdxBarScreenTip;
    stOrganizar: TdxScreenTip;
    stAlocacao: TdxScreenTip;
    dxBarPopupMenu: TdxRibbonPopupMenu;
    UndoDropDownGallery: TdxRibbonDropDownGallery;
    cxLargeImages: TcxImageList;
    MiniToolbar: TdxRibbonMiniToolbar;
    ppmFontColor: TdxRibbonPopupMenu;
    cxSmallImages: TcxImageList;
    BarManager: TdxBarManager;
    barCadastrosParametros: TdxBar;
    BarManagerBar7: TdxBar;
    BarManagerBar8: TdxBar;
    barCadastrosAuxiliares: TdxBar;
    BarManagerBar9: TdxBar;
    BarManagerBar10: TdxBar;
    BarManagerBar11: TdxBar;
    BarCadastrosBasicos: TdxBar;
    BarManagerBar6: TdxBar;
    BarManagerBar13: TdxBar;
    BarManagerBar3: TdxBar;
    BarManagerBar5: TdxBar;
    ParametosAtivos: TdxBar;
    OpcoesTela: TdxBar;
    QA: TdxBar;
    BarManagerBar1: TdxBar;
    BarManagerBar2: TdxBar;
    cxBtnSair: TdxBarLargeButton;
    dxBtnJanela: TdxBarSubItem;
    dxBtnLadoLado: TdxBarButton;
    dxBtnCascata: TdxBarButton;
    dxBtnOrganizar: TdxBarButton;
    dxBtnFazendas: TdxBarLargeButton;
    dxBtnTiposColheita: TdxBarButton;
    dxBtnSafras: TdxBarLargeButton;
    dxBtnFrentes: TdxBarLargeButton;
    dxBtnTiposFazendas: TdxBarButton;
    dxBtnTipoCana: TdxBarLargeButton;
    dxBtnTipoCarga: TdxBarLargeButton;
    cxBtnTalhoes: TdxBarLargeButton;
    dxBtnTiposPercurso: TdxBarButton;
    dxBtnJustificativas: TdxBarButton;
    dxBtnEquipamentos: TdxBarButton;
    dxBtnTipoEquipamento: TdxBarButton;
    dxBtnParametrosLogistica: TdxBarLargeButton;
    dxBtnParametroMedia: TdxBarLargeButton;
    dxBtnGrupo: TdxBarLargeButton;
    dxBtnRegional: TdxBarLargeButton;
    dxBtnUnidade: TdxBarLargeButton;
    dxBtnRelPosicaoFrentes: TdxBarLargeButton;
    dxBtnRelAlocacoesManuais: TdxBarLargeButton;
    dxComboUnidade: TCustomdxBarCombo;
    dxComboSafraAtiva: TCustomdxBarCombo;
    dxComboUsuario: TCustomdxBarCombo;
    dxBtnAlocacoes: TdxBarLargeButton;
    dxBtnLogisticaEspacial: TdxBarLargeButton;
    dxBtnMonitoramentoTrafego: TdxBarLargeButton;
    dbxBtnRotasFazendas: TdxBarLargeButton;
    dxBtnAtivaUnidade: TdxBarButton;
    dxBtnSelecionarSafra: TdxBarButton;
    dxBtnSelecionarUsuario: TdxBarButton;
    dxBtnUsuarios: TdxBarLargeButton;
    dxBtnPerfil: TdxBarLargeButton;
    dxBtnPermissao: TdxBarLargeButton;
    dxGroupBar: TdxBarGroup;
    RibbonMenu: TdxRibbon;
    tabCadastros: TdxRibbonTab;
    tabFerramentas: TdxRibbonTab;
    tabRelatorios: TdxRibbonTab;
    tabSelection: TdxRibbonTab;
    tabAdministracao: TdxRibbonTab;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxBtnGrupoClick(Sender: TObject);
    procedure dxBtnRegionalClick(Sender: TObject);
    procedure dxBtnUnidadeClick(Sender: TObject);
    procedure dxBtnTipoCanaClick(Sender: TObject);
    procedure dxBtnTipoCargaClick(Sender: TObject);
    procedure dxBtnTiposFazendasClick(Sender: TObject);
    procedure dxBtnTipoEquipamentoClick(Sender: TObject);
    procedure dxBtnEquipamentosClick(Sender: TObject);
    procedure dxBtnJustificativasClick(Sender: TObject);
    procedure dxBtnSafrasClick(Sender: TObject);
    procedure cxBtnTalhoesClick(Sender: TObject);
    procedure dxBtnFazendasClick(Sender: TObject);
    procedure dxBtnFrentesClick(Sender: TObject);
    procedure dxBtnParametrosLogisticaClick(Sender: TObject);
    procedure dxBtnParametroMediaClick(Sender: TObject);
    procedure dxBtnLadoLadoClick(Sender: TObject);
    procedure dxBtnCascataClick(Sender: TObject);
    procedure dxBtnOrganizarClick(Sender: TObject);
    procedure cxBtnSairClick(Sender: TObject);
    procedure dxComboSafraAtivaDropDown(Sender: TObject);
    procedure dxComboUnidadeDropDown(Sender: TObject);
    procedure dxComboUsuarioDropDown(Sender: TObject);
    procedure dxBtnLogisticaEspacialClick(Sender: TObject);
    procedure dxBtnAlocacoesClick(Sender: TObject);
    procedure dxBtnMonitoramentoTrafegoClick(Sender: TObject);
    procedure dbxBtnRotasFazendasClick(Sender: TObject);
    procedure dxBtnUsuariosClick(Sender: TObject);
    procedure dxBtnPerfilClick(Sender: TObject);
    procedure AtualizarStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MainMenu: TF_MainMenu;

implementation

{$R *.dfm}

uses U_DM, u_recursos, U_Safras, U_Grupo, U_Regional, U_Unidade, U_Tipo_Cana,
  U_Modalidade_Colheita, U_TipoCargas, U_Tipos_Fazendas, U_Fazendas,
  U_Frentes, U_Talhoes, U_AlocacaoEquipamento,
  U_TipoEquipamento, U_SelecionarSafra, U_AtivarUnidade, U_Traducao_Dev,
  U_Monitoramento_Trafego_Estatico,
  U_Tipos_Percurso, U_Justificativas,
  U_Equipamentos, U_RotasFazenda_Mapas,U_Logistica_Espacial_GMAPS, U_Login,
  U_ParametrosLogistica, U_ParametrosMedia, U_Usuarios, U_PerfilUsuario;

procedure TF_MainMenu.cxBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_MainMenu.cxBtnTalhoesClick(Sender: TObject);
begin
  Criar_Formulario(TF_Talhoes,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dbxBtnRotasFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_RotasFazenda_Mapas,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnAlocacoesClick(Sender: TObject);
begin
  Criar_Formulario(TF_AlocacaoEquipamento,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnCascataClick(Sender: TObject);
begin
  Cascade;
end;

procedure TF_MainMenu.dxBtnEquipamentosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Equipamentos,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Fazendas,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnFrentesClick(Sender: TObject);
begin
  Criar_Formulario(TF_Frentes,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnGrupoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Grupo,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnJustificativasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Justificativas,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnLadoLadoClick(Sender: TObject);
begin
  Tile;
end;

procedure TF_MainMenu.dxBtnLogisticaEspacialClick(Sender: TObject);
begin
  Criar_Formulario(TF_Logistica_Espacial_GMAPS,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnMonitoramentoTrafegoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Monitoramento_Trafego_Estatico,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnOrganizarClick(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TF_MainMenu.dxBtnParametroMediaClick(Sender: TObject);
begin
  Criar_Formulario(TF_ParametrosMedia,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnParametrosLogisticaClick(Sender: TObject);
begin
  Criar_Formulario(TF_ParametrosLogistica,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnPerfilClick(Sender: TObject);
begin
  Criar_Formulario(TF_PerfilUsuario,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnRegionalClick(Sender: TObject);
begin
  Criar_Formulario(TF_Regional,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnSafrasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Safras,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnTipoCanaClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipo_Cana,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnTipoCargaClick(Sender: TObject);
begin
  Criar_Formulario(TF_TipoCargas,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnTipoEquipamentoClick(Sender: TObject);
begin
  Criar_Formulario(TF_TipoEquipamento,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnTiposFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipos_Fazendas,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnUnidadeClick(Sender: TObject);
begin
  Criar_Formulario(TF_Unidade,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxBtnUsuariosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Usuarios,TdxBarItem(Sender).Caption,false);
end;

procedure TF_MainMenu.dxComboSafraAtivaDropDown(Sender: TObject);
begin
   Criar_Formulario(TF_SelecionarSafra,'Selecionar safra',false);
   AtualizarStatusBar;
end;

procedure TF_MainMenu.dxComboUnidadeDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TF_MainMenu.dxComboUsuarioDropDown(Sender: TObject);
begin
  Application.CreateForm(TF_Login,F_Login);
  F_Login.ShowModal;
  F_Login.Free;
  AtualizarStatusBar;
  AtivarMenu_Ribbon(BarManager,DM.QR_Modulos.FieldByName('cod_modulo').AsInteger);
end;

procedure TF_MainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja sair do sistema ?','Confirmação',MB_YESNO + MB_ICONQUESTION) = mrYes then
    Action := caFree
  else
    Abort;
end;

procedure TF_MainMenu.FormCreate(Sender: TObject);
Var vSafraAtual : Boolean;
begin

  DM.QR_Modulos.Open;
  DM.QR_Usuarios.Open;
  //----------------------------------------------------------------------------
  //P1 Faz o login do usuario no sistema
  LoginUsuario;

  DM.QR_Grupo.Open;
  DM.QR_Regional.Open;
  DM.QR_Unidade.Open;

  DM.QR_Safras.Open;

  vSafraAtual := False ;
  while (not vSafraAtual) do
  begin
     if (DM.QR_SafrasDATA_TERMINO.AsString = '') or (DM.QR_Safras.eof) then
       vSafraAtual := True
     else
       DM.QR_Safras.Next;
  end;
   if not DM.QR_Safras.isEmpty then
   begin
       Registrar_Safra(DM.QR_SafrasCOD_SAFRA.AsFloat,
                       DM.QR_SafrasDESCRICAO.AsFloat);
   end;

  AtualizarStatusBar;


  AtivarMenu_Ribbon(BarManager,DM.QR_Modulos.FieldByName('cod_modulo').AsInteger);
  //Traduz os componentes do DEv para portugues
  SetResorcePortugues;
end;

procedure TF_MainMenu.AtualizarStatusBar;
begin
  DM.QR_SafraSelecionada.Close;
  DM.QR_SafraSelecionada.Open;

  Caption := 'LogExplorer';
  Caption := Caption + '                        ' + ' Safra atual ' +  '   '  + (DM.QR_SafraSelecionadaDESCRICAO_SAFRA .AsString);

  dxComboUnidade.Text    := 'Unidade  ' + DM.QR_UnidadeNOME.AsString;
  dxComboSafraAtiva.Text := 'Safra    ' + Zeros_Esquerda(DM.QR_SafraSelecionadaCOD_SAFRA.AsString,3) + ' - ' + DM.QR_SafraSelecionadaDESCRICAO_SAFRA.AsString;
  dxComboUsuario.Text    := DM.QR_UsuariosUSUARIO.AsString;
  dxComboUnidade.Width    := 180;
  dxComboSafraAtiva.Width := 180;
  dxComboUsuario.Width    := 180;
end;

end.
