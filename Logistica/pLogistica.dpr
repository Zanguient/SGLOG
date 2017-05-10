program pLogistica;



uses
  Forms,
  U_Login in '..\..\Recursos\U_Login.pas' {F_Login},
  U_Mensagem in '..\..\Geral\U_Mensagem.pas' {F_Mensagem},
  U_TemplateProcesso in '..\..\Template\U_TemplateProcesso.pas' {F_TemplateProcesso},
  U_Memo in '..\ProducaoAgricola\U_Memo.pas' {F_Memo},
  U_MensagemEspera in '..\..\modelo_clealco\U_MensagemEspera.pas' {F_MensagemEspera},
  U_InformacoesPistaMonitoramento in 'U_InformacoesPistaMonitoramento.pas' {F_InformacoesPistaMonitoramento},
  superobject in '..\..\JSON\superobjectv1.2.4\superobject.pas',
  U_LegendaLogisticaGMAPS in 'U_LegendaLogisticaGMAPS.pas' {F_LegendaLogisticaGMAPS},
  U_FormLegendaLogisticaGMAPS in 'U_FormLegendaLogisticaGMAPS.pas' {F_FormLegendaLogisticaGMAPS},
  U_Template in '..\..\Template\U_Template.pas' {F_Template},
  Vcl.Themes,
  Vcl.Styles,
  U_TemplateConsulta in '..\..\Template\U_TemplateConsulta.pas' {F_TemplateConsulta},
  U_TemplateRelatorios in '..\..\Template\U_TemplateRelatorios.pas' {F_TemplateRelatorios},
  U_TemplateRelatorio in '..\..\Template\U_TemplateRelatorio.pas' {F_TemplateRelatorio},
  u_recursos in '..\..\Recursos\u_recursos.pas',
  U_Grupo in '..\..\Recursos\U_Grupo.pas' {F_Grupo},
  U_Regional in '..\..\Recursos\U_Regional.pas' {F_Regional},
  U_AlocacaoEquipamento in 'U_AlocacaoEquipamento.pas' {F_AlocacaoEquipamento},
  U_BuscaAvancada in '..\..\Recursos\U_BuscaAvancada.pas' {F_BuscaAvancada},
  U_Unidade in '..\..\Recursos\U_Unidade.pas' {F_Unidade},
  U_Safras in 'U_Safras.pas' {F_Safras},
  U_Frentes in 'U_Frentes.pas' {F_Frentes},
  U_Tipo_Cana in 'U_Tipo_Cana.pas' {F_Tipo_Cana},
  U_Modalidade_Colheita in 'U_Modalidade_Colheita.pas' {F_Modalidade_Colheita},
  U_Tipos_Fazendas in 'U_Tipos_Fazendas.pas' {F_Tipos_Fazendas},
  U_Fazendas in 'U_Fazendas.pas' {F_Fazendas},
  U_Talhoes in 'U_Talhoes.pas' {F_Talhoes},
  U_SelecionarSafra in 'U_SelecionarSafra.pas' {F_SelecionarSafra},
  U_AtivarUnidade in '..\..\Recursos\U_AtivarUnidade.pas' {F_AtivarUnidade},
  U_TipoEquipamento in 'U_TipoEquipamento.pas' {F_TipoEquipamento},
  U_Traducao_Dev in '..\..\Geral\U_Traducao_Dev.pas',
  U_Talhoes_Distancia in 'U_Talhoes_Distancia.pas' {F_Talhoes_Distancia},
  U_Monitoramento_Trafego_Estatico in 'U_Monitoramento_Trafego_Estatico.pas' {F_Monitoramento_Trafego_Estatico},
  U_ImagensMonitoramentoTrafego in 'U_ImagensMonitoramentoTrafego.pas' {F_ImagensMonitoramentoTrafego},
  U_Talhoes_Distancia_Alteracao in 'U_Talhoes_Distancia_Alteracao.pas' {F_Talhoes_Distancia_Alteracao},
  U_Tipos_Percurso in 'U_Tipos_Percurso.pas' {F_Tipos_Percurso},
  U_Justificativas in 'U_Justificativas.pas' {F_Justificativas},
  U_TipoCargas in 'U_TipoCargas.pas' {F_TipoCargas},
  U_GravarAlocacao in 'U_GravarAlocacao.pas' {F_GravarAlocacao},
  U_Equipamentos in 'U_Equipamentos.pas' {F_Equipamentos},
  U_ParametrosLogistica in 'U_ParametrosLogistica.pas' {F_ParametrosLogistica},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_Logistica_Espacial_GMAPS in 'U_Logistica_Espacial_GMAPS.pas' {F_Logistica_Espacial_GMAPS},
  UMain_Logistica in 'UMain_Logistica.pas' {FMainLogistica},
  U_RotasFazenda_Mapas in 'U_RotasFazenda_Mapas.pas' {F_RotasFazenda_Mapas},
  U_BalaoMensagemEquipamento in 'U_BalaoMensagemEquipamento.pas' {F_BalaoMensagemEquipamento},
  U_Atualiza_Tempo_Real_Percurso in 'U_Atualiza_Tempo_Real_Percurso.pas' {F_Atualiza_Tempo_Real_Percurso},
  U_AlteraOrdemPatio in 'U_AlteraOrdemPatio.pas' {F_AlteraOrdemPatio},
  U_ParametrosMedia in 'U_ParametrosMedia.pas' {F_ParametrosMedia},
  U_Usuarios in '..\..\Recursos\U_Usuarios.pas' {F_Usuarios},
  U_PerfilUsuario in '..\..\Recursos\U_PerfilUsuario.pas' {F_PerfilUsuario},
  U_PermissoesPerfil in '..\..\Recursos\U_PermissoesPerfil.pas' {F_PermissoesPerfil},
  U_Painel in 'U_Painel.pas' {F_Painel};

{$R *.RES}

begin
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMainLogistica, FMainLogistica);
  Application.CreateForm(TF_ImagensMonitoramentoTrafego, F_ImagensMonitoramentoTrafego);
  Application.CreateForm(TF_BuscaAvancada, F_BuscaAvancada);
  Application.Initialize;
  Application.Title := 'Logística Transporte Cana';
  Application.Run;
  end.
