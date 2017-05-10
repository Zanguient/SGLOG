//-------------------------------------------------------------------------------------------------
// Data : 24/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela principal do sistema, menu concentrador da chamada
// de todas as tela
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbon, dxRibbonGallery, dxScreenTip,
  dxBar, dxRibbonMiniToolbar, Vcl.ImgList, dxBarApplicationMenu, dxBarExtItems,
  cxClasses, dxSkinsdxStatusBarPainter, RzDBStat, RzStatus, Vcl.ExtCtrls,
  RzPanel, dxStatusBar, cxDBExtLookupComboBox, cxDropDownEdit,
  dxSkinChooserGallery, cxBarEditItem, cxPC, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxTabbedMDI, Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon;

type
  TfMenu = class(TForm)
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
    dxBtnGrupo: TdxBarLargeButton;
    dxBtnRegional: TdxBarLargeButton;
    dxBtnUnidade: TdxBarLargeButton;
    dxBtnFazendas: TdxBarLargeButton;
    dxBtnTipoCarga: TdxBarLargeButton;
    dxBtnTipoCana: TdxBarLargeButton;
    cxBtnTalhoes: TdxBarLargeButton;
    dxBtnLogisticaEspacial: TdxBarLargeButton;
    dxBtnMonitoramentoTrafego: TdxBarLargeButton;
    dxGroupBar: TdxBarGroup;
    dxBarPopupMenu: TdxRibbonPopupMenu;
    ApplicationMenu: TdxBarApplicationMenu;
    ilStatusBarImages: TImageList;
    cxSmallImages: TcxImageList;
    cxLargeImages: TcxImageList;
    MiniToolbar: TdxRibbonMiniToolbar;
    ppmFontColor: TdxRibbonPopupMenu;
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
    UndoDropDownGallery: TdxRibbonDropDownGallery;
    dxBtnTiposColheita: TdxBarButton;
    dxBtnSafras: TdxBarLargeButton;
    dxBtnFrentes: TdxBarLargeButton;
    dxBtnTiposFazendas: TdxBarButton;
    BarManagerBar3: TdxBar;
    dxBtnAlocacoes: TdxBarLargeButton;
    BarManagerBar5: TdxBar;
    dxBtnRelPosicaoFrentes: TdxBarLargeButton;
    dxBtnRelAlocacoesManuais: TdxBarLargeButton;
    dxBtnTipoEquipamento: TdxBarButton;
    ParametosAtivos: TdxBar;
    dxComboUnidade: TCustomdxBarCombo;
    dxComboSafraAtiva: TCustomdxBarCombo;
    cxBtnSair: TdxBarLargeButton;
    dxComboUsuario: TCustomdxBarCombo;
    OpcoesTela: TdxBar;
    dxBtnJanela: TdxBarSubItem;
    dxBtnLadoLado: TdxBarButton;
    dxBtnCascata: TdxBarButton;
    dxBtnOrganizar: TdxBarButton;
    QA: TdxBar;
    dxBtnAtivaUnidade: TdxBarButton;
    dxBtnSelecionarSafra: TdxBarButton;
    dxBtnSelecionarUsuario: TdxBarButton;
    dxBtnTiposPercurso: TdxBarButton;
    dxBtnJustificativas: TdxBarButton;
    dxBtnEquipamentos: TdxBarButton;
    stOrganizar: TdxScreenTip;
    stAlocacao: TdxScreenTip;
    dbxBtnRotasFazendas: TdxBarLargeButton;
    dxBtnParametrosLogistica: TdxBarLargeButton;
    dxBtnParametroMedia: TdxBarLargeButton;
    BarManagerBar1: TdxBar;
    BarManagerBar2: TdxBar;
    dxBtnUsuarios: TdxBarLargeButton;
    dxBtnPerfil: TdxBarLargeButton;
    dxBtnPermissao: TdxBarLargeButton;
    RibbonMenu: TdxRibbon;
    tabCadastros: TdxRibbonTab;
    tabFerramentas: TdxRibbonTab;
    tabRelatorios: TdxRibbonTab;
    tabSelection: TdxRibbonTab;
    tabAdministracao: TdxRibbonTab;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBtnSafrasClick(Sender: TObject);
    procedure dxBtnGrupoClick(Sender: TObject);
    procedure dxBtnRegionalClick(Sender: TObject);
    procedure dxBtnUnidadeClick(Sender: TObject);
    procedure dxBtnTipoCanaClick(Sender: TObject);
    procedure dxBtnTiposColheitaClick(Sender: TObject);
    procedure dxBtnTiposFazendasClick(Sender: TObject);
    procedure dxBtnFrentesClick(Sender: TObject);
    procedure dxBtnFazendasClick(Sender: TObject);
    procedure cxBtnTalhoesClick(Sender: TObject);
    procedure dxBtnAlocacoesClick(Sender: TObject);
    procedure dxBtnTipoEquipamentoClick(Sender: TObject);
    procedure cxBtnSairClick(Sender: TObject);
    procedure dxComboRegionalDropDown(Sender: TObject);
    procedure dxComboUnidadeDropDown(Sender: TObject);
    procedure dxComboSafraAtivaDropDown(Sender: TObject);
    procedure dxComboGrupoDropDown(Sender: TObject);
    procedure AtualizarStatusBar;
    procedure dxBtnLadoLadoClick(Sender: TObject);
    procedure dxBtnCascataClick(Sender: TObject);
    procedure dxBtnOrganizarClick(Sender: TObject);
    procedure dxBtnLogisticaEspacialClick(Sender: TObject);
    procedure dxBtnMonitoramentoTrafegoClick(Sender: TObject);
    procedure dxBtnTiposPercursoClick(Sender: TObject);
    procedure dxComboUsuarioDropDown(Sender: TObject);
    procedure dxBtnJustificativasClick(Sender: TObject);
    procedure dxBtnEquipamentosClick(Sender: TObject);
    procedure dxBtnTipoCargaClick(Sender: TObject);
    procedure dbxBtnRotasFazendasClick(Sender: TObject);
    procedure dxBtnParametrosLogisticaClick(Sender: TObject);
    procedure dxBtnParametroMediaClick(Sender: TObject);
    procedure dxBtnUsuariosClick(Sender: TObject);
    procedure dxBtnPerfilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

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

procedure TfMenu.cxBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfMenu.cxBtnTalhoesClick(Sender: TObject);
begin
  Criar_Formulario(TF_Talhoes,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dbxBtnRotasFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_RotasFazenda_Mapas,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnUsuariosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Usuarios,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnAlocacoesClick(Sender: TObject);
begin
  Criar_Formulario(TF_AlocacaoEquipamento,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnCascataClick(Sender: TObject);
begin
  Cascade;
end;

procedure TfMenu.dxBtnEquipamentosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Equipamentos,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Fazendas,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnFrentesClick(Sender: TObject);
begin
  Criar_Formulario(TF_Frentes,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnGrupoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Grupo,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnJustificativasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Justificativas,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnLadoLadoClick(Sender: TObject);
begin
  Tile;
end;

procedure TfMenu.dxBtnOrganizarClick(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TfMenu.dxBtnParametroMediaClick(Sender: TObject);
begin
  Criar_Formulario(TF_ParametrosMedia,TdxBarItem(Sender).Caption,true);
end;

procedure TfMenu.dxBtnParametrosLogisticaClick(Sender: TObject);
begin
  Criar_Formulario(TF_ParametrosLogistica,TdxBarItem(Sender).Caption,true);
end;

procedure TfMenu.dxBtnPerfilClick(Sender: TObject);
begin
  Criar_Formulario(TF_PerfilUsuario,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnLogisticaEspacialClick(Sender: TObject);
begin
  Criar_Formulario(TF_Logistica_Espacial_GMAPS ,TdxBarItem(Sender).Caption,true);
end;

procedure TfMenu.dxBtnMonitoramentoTrafegoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Monitoramento_Trafego_Estatico,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnRegionalClick(Sender: TObject);
begin
  Criar_Formulario(TF_Regional,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnSafrasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Safras,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnTipoCanaClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipo_Cana,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnTipoCargaClick(Sender: TObject);
begin
  Criar_Formulario(TF_TipoCargas,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnTipoEquipamentoClick(Sender: TObject);
begin
  Criar_Formulario(TF_TipoEquipamento,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnTiposColheitaClick(Sender: TObject);
begin
  Criar_Formulario(TF_Modalidade_Colheita,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnTiposFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipos_Fazendas,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnTiposPercursoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipos_Percurso,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxBtnUnidadeClick(Sender: TObject);
begin
  Criar_Formulario(TF_Unidade,TdxBarItem(Sender).Caption,false);
end;

procedure TfMenu.dxComboGrupoDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TfMenu.dxComboRegionalDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TfMenu.dxComboSafraAtivaDropDown(Sender: TObject);
begin
   Criar_Formulario(TF_SelecionarSafra,'Selecionar safra',false);
   AtualizarStatusBar;
end;

procedure TfMenu.dxComboUnidadeDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TfMenu.dxComboUsuarioDropDown(Sender: TObject);
begin
  Application.CreateForm(TF_Login,F_Login);
  F_Login.ShowModal;
  F_Login.Free;
  AtualizarStatusBar;
  AtivarMenu_Ribbon(BarManager,DM.QR_Modulos.FieldByName('cod_modulo').AsInteger);
end;

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja sair do sistema ?','Confirmação',MB_YESNO + MB_ICONQUESTION) = mrYes then
    Action := caFree
  else
    Abort;
end;

procedure TfMenu.FormCreate(Sender: TObject);
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

procedure TfMenu.AtualizarStatusBar;
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
