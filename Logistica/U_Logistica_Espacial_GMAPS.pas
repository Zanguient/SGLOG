unit U_Logistica_Espacial_GMAPS;

//-------------------------------------------------------------------------------------------------
// Data : 07/02/2012
// Desenvolvedor : P1
// Descri��o Fun��o/Procedure/Tela : Logistica espacial, possui a visualiza��o das frentes de colheitas e
// rotas da usina at� a fazendas/frentes, � possivel fazer o monitoramento dos equipamentos que est�o
// envolvidos no processo de colheita de cada frente
///ALTERA��ES --------------------------------------------------------------------------------------
// Data :					Descri��o da mudan�a
//
///-------------------------------------------------------------------------------------------------

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_TemplateConsulta, StdCtrls, Buttons, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ImgList, RzButton, Ora, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, MemDS, DBAccess, RzGroupBar, RzPanel, RzSplit,
  RzTabs, Mask, wwdbedit, OleCtrls, SHDocVw, MSHTML, superobject,
  ActiveX, RzRadGrp, Menus, cxContainer, cxImage, pngimage, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxGDIPlusClasses, cefvcl, ceflib, cefgui;

type
  TF_Logistica_Espacial_GMAPS = class(TF_TemplateConsulta)
    Panel3: TPanel;
    RzGroupBarFerramentas: TRzGroupBar;
    RzGroup1: TRzGroup;
    QR_Frente: TOraQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DS_Frente: TOraDataSource;
    cxGrid1DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_FAZENDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn;
    cxGrid1DBTableView1VISUALIZA: TcxGridDBColumn;
    QR_InformacoesIniciais: TOraQuery;
    QR_InformacoesIniciaisINFORMACOESINICIAISJSON: TMemoField;
    cxGrid1DBTableView1POSSUIROTA: TcxGridDBColumn;
    SP_MontaRotas: TOraStoredProc;
    tmAtualizaEquipamentos: TTimer;
    SP_AtualizaEquipamentos: TOraStoredProc;
    SP_BuscaHTMLRota: TOraStoredProc;
    PopupMenu1: TPopupMenu;
    CentralizarMapa1: TMenuItem;
    QR_TipoCCT: TOraQuery;
    DS_TipoCCT: TOraDataSource;
    QR_TipoCCTSELECIONADO: TStringField;
    QR_TipoCCTTIPO_CCT: TStringField;
    QR_TipoCCTDESCRICAO: TStringField;
    QR_TipoCCTFILTRO_LOGISTICA: TStringField;
    QR_FrenteCOD_SAFRA: TFloatField;
    QR_FrenteCOD_FRENTE: TFloatField;
    QR_FrenteCOD_FAZENDA: TFloatField;
    QR_FrenteDESCRICAO: TStringField;
    QR_FrenteTRANSPORTE_LIBERADO: TStringField;
    QR_FrenteCOD_GRUPO: TFloatField;
    QR_FrenteCOD_REGIONAL: TFloatField;
    QR_FrenteCOD_UNIDADE: TFloatField;
    QR_FrentePOSSUIROTA: TStringField;
    QR_FrenteLATITUDE_FAZENDA: TFloatField;
    QR_FrenteLONGITUDE_FAZENDA: TFloatField;
    QR_FrenteVISUALIZA: TStringField;
    QR_FrentePOSSUIPOLIGONO: TStringField;
    Panel1: TPanel;
    rzPageControlUnidadesMoagem: TRzPageControl;
    RzBitBtnRefresh: TRzBitBtn;
    rzBitbtnLegenda: TRzBitBtn;
    rzBitbtnTela: TRzBitBtn;
    rzBitBtnInfoAutomaticas: TRzBitBtn;
    rzBitbtnStatusAtualizacao: TRzBitBtn;
    RzBitBtnIconeOperacao: TRzBitBtn;
    RzGroup3: TRzGroup;
    RzPanel4: TRzPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1SELECIONADO: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    RzGroup4: TRzGroup;
    rzBitbtnIniciarFerramenta: TRzBitBtn;
    RzBitBtnAtualizarInformacoes: TRzBitBtn;
    Chromium1: TChromium;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid2DBTableView1SELECIONADOPropertiesChange(Sender: TObject);
    procedure QR_TipoCCTAfterPost(DataSet: TDataSet);
    procedure ScrollBox1Resize(Sender: TObject);
    procedure CentralizarMapa1Click(Sender: TObject);
    procedure QR_FrenteBeforeEdit(DataSet: TDataSet);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RzGroup2Items1Click(Sender: TObject);
    procedure RzGroup2Items0Click(Sender: TObject);
    procedure tmAtualizaEquipamentosTimer(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure rzPageControlUnidadesMoagemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atualizaInfoAutomaticas;
    procedure visualizaIconeOperacaoAgricola;
    function retornaObjJSONFiltros: String;
    procedure onTimerAtualizacao(Sender: TObject);
    procedure atualizaStatusIconizado(parado, atualizacao, operacao : boolean);
    function GetElementIdValue(WebBrowser: TWebBrowser;
                               TagName, TagId, TagAttrib: string):string;
    procedure desativaTimer;
    procedure ativaTimer;

    procedure navegaHTML(wb: TWebBrowser; html: String);

    procedure execJSChrome( chrome: TChromium; js : String);
    procedure rzBitbtnLegendaClick(Sender: TObject);
    procedure RzBitBtnRefreshClick(Sender: TObject);
    procedure rzBitbtnTelaClick(Sender: TObject);
    procedure rzBitBtnInfoAutomaticasClick(Sender: TObject);
    procedure RzBitBtnIconeOperacaoClick(Sender: TObject);
    procedure rzBitbtnIniciarFerramentaClick(Sender: TObject);
    procedure RzBitBtnAtualizarInformacoesClick(Sender: TObject);
    procedure Chromium1LoadEnd(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; httpStatusCode: Integer);
    procedure Memo2Change(Sender: TObject);



  private
    { Private declarations }
  objJSON  : ISuperObject;
  public
    { Public declarations }
  protected
    QR_PageControlUnidade : TOraQuery;
    paginaCarregada : boolean;
    rotaGerada      : boolean;
    informacoesAutomaticas : boolean;
    iconeOperacaoAgricola : boolean;
  end;

var
  F_Logistica_Espacial_GMAPS: TF_Logistica_Espacial_GMAPS;
  tmAtualizacao : TTimer;
  minFaltanteRefresh : Integer;

implementation

uses U_FormLegendaLogisticaGMAPS, U_DM,u_recursos;

{$R *.dfm}

procedure TF_Logistica_Espacial_GMAPS.ativaTimer;
begin
  tmAtualizaEquipamentos.Enabled := True;
  RzBitBtnAtualizarInformacoes.Enabled      := True;
  //RzBitBtnRefresh.Enabled         := True;
  RzBitBtnRefresh.ImageIndex := 253;
  atualizaStatusIconizado(false,false,true);  
end;

procedure TF_Logistica_Espacial_GMAPS.atualizaInfoAutomaticas;
begin
  informacoesAutomaticas := not informacoesAutomaticas;

  if informacoesAutomaticas then
    begin
      rzBitBtnInfoAutomaticas.Hint := 'Desativar informa��es autom�ticas dos equipamentos';
      rzBitBtnInfoAutomaticas.ImageIndex := 391;
    end
  else
    begin
      rzBitBtnInfoAutomaticas.Hint := 'Ativar informa��es autom�ticas dos equipamentos';
      rzBitBtnInfoAutomaticas.ImageIndex := 2279;
    end;
end;

procedure TF_Logistica_Espacial_GMAPS.atualizaStatusIconizado(parado,
  atualizacao, operacao: boolean);
begin
  if parado then
    begin
      rzBitbtnStatusAtualizacao.ImageIndex := 2277;
      rzBitbtnStatusAtualizacao.Hint := 'Status Atualiza��o: Parado';
    end
  else if atualizacao then
    begin
      rzBitbtnStatusAtualizacao.ImageIndex := 2275;
      rzBitbtnStatusAtualizacao.Hint := 'Status Atualiza��o: Atualizando Informa��es';
    end
  else if operacao then
    begin
      rzBitbtnStatusAtualizacao.ImageIndex := 2276;
      rzBitbtnStatusAtualizacao.Hint := 'Status Atualiza��o: Opera��o';
    end;
end;

procedure TF_Logistica_Espacial_GMAPS.rzBitbtnIniciarFerramentaClick(
  Sender: TObject);
var
  aux : Integer;
begin
  inherited;

  execJSChrome(Chromium1,'limpaRotas()');
  execJSChrome(Chromium1,'limpaLayersFazendas()');

  desativaTimer;

  aux := 0;

  objJSON := so('{"frentes":[]}');

  QR_Frente.First;
  while not QR_Frente.Eof do
  begin
    if (QR_FrenteVISUALIZA.AsString = 'S') and (QR_FrentePOSSUIROTA.AsString = 'S') then
    begin
      objJSON['frentes['+inttostr(aux)+']'] := SO(['frente',QR_FrenteCOD_FRENTE.asinteger,
                                                   'fazenda',QR_FrenteCOD_FAZENDA.asinteger,
                                                   'grupoempresa',QR_FrenteCOD_GRUPO.AsInteger,
                                                   'empresa',QR_FrenteCOD_REGIONAL.AsInteger,
                                                   'filial',QR_FrenteCOD_UNIDADE.AsInteger,
                                                   'safra',QR_FrenteCOD_SAFRA.AsInteger,
                                                   'numero_rota',0]);
      inc(aux);
    end;
    QR_Frente.Next;
  end;

  if aux = 0 then
  begin
    Application.MessageBox('� necess�rio escolher pelo menos uma frente para gerar as informa��es no mapa.','Aten��o',MB_ICONINFORMATION + MB_OK);
    QR_Frente.First;
    RzBitBtnRefresh.Enabled := false;
    rzBitbtnStatusAtualizacao.Enabled := false;
    Abort;
  end;

  SP_MontaRotas.ParamByName('P_FAZENDAS').AsString           := objJSON.AsString;
  SP_MontaRotas.ParamByName('P_MOSTRAEQUIPAMENTOS').AsString := 'S';
  if informacoesAutomaticas then
    SP_MontaRotas.ParamByName('P_INFO_AUTOMATICO').AsString := 'S'
  else
    SP_MontaRotas.ParamByName('P_INFO_AUTOMATICO').AsString := 'N';
  SP_MontaRotas.ParamByName('P_FILTRO_CAMADAS').AsString := retornaObjJSONFiltros;
  SP_MontaRotas.Execute;

  //execJS(WebBrowser1,'atualizaInformacoesFrentes('+SP_MontaRotas.parambyname('RESULT').AsString+')');
  execJSChrome(Chromium1,'atualizaInformacoesFrentes('+SP_MontaRotas.parambyname('RESULT').AsString+')');

  RzBitBtnRefresh.Enabled := true;
  rzBitbtnStatusAtualizacao.Enabled := True;

  ativaTimer;
end;

procedure TF_Logistica_Espacial_GMAPS.CentralizarMapa1Click(Sender: TObject);
begin
  inherited;
  if QR_FrentePOSSUIPOLIGONO.AsString = 'N' then
  begin
    Application.MessageBox(PChar('A fazenda '+QR_FrenteCOD_FAZENDA.AsString+' n�o possui mapa importado.'),'Aten��o',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  //ExecJS(webBrowser1,'centralizaMapa('+QR_FrenteLATITUDE_FAZENDA.AsString+','+QR_FrenteLONGITUDE_FAZENDA.AsString+')');
  execJSChrome(Chromium1,'centralizaMapa('+QR_FrenteLATITUDE_FAZENDA.AsString+','+QR_FrenteLONGITUDE_FAZENDA.AsString+')');

end;

procedure TF_Logistica_Espacial_GMAPS.Chromium1LoadEnd(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; httpStatusCode: Integer);
begin
  inherited;
  QR_InformacoesIniciais.Close;
  QR_InformacoesIniciais.ParamByName('cod_grupo').AsFloat := QR_PageControlUnidade.FieldByName('cod_grupo').AsFloat;
  QR_InformacoesIniciais.ParamByName('cod_regional').AsFloat := QR_PageControlUnidade.FieldByName('cod_regional').AsFloat;
  QR_InformacoesIniciais.ParamByName('cod_unidade').AsFloat := QR_PageControlUnidade.FieldByName('cod_unidade').AsFloat;
  QR_InformacoesIniciais.ParamByName('produto').AsString := DM.MOD_Prod;
  QR_InformacoesIniciais.Open;
  execJSChrome(Chromium1,'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');

  paginaCarregada := true;
end;

procedure TF_Logistica_Espacial_GMAPS.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  {if cxGrid1DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid1DBTableView1POSSUIROTA.Index] = 'N' then
  begin
    ACanvas.brush.color := clGray;
  end;

  ACanvas.Font.Color := clBlack;}
end;

procedure TF_Logistica_Espacial_GMAPS.cxGrid2DBTableView1SELECIONADOPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if DS_TipoCCT.State in [dsinsert,dsedit] then
    QR_TipoCCT.Post;
end;

procedure TF_Logistica_Espacial_GMAPS.desativaTimer;
begin
  tmAtualizaEquipamentos.Enabled := False;
  RzBitBtnAtualizarInformacoes.Enabled      := False;
  RzBitBtnRefresh.ImageIndex := 255;

  atualizaStatusIconizado(true,false,false);
end;

procedure TF_Logistica_Espacial_GMAPS.execJSChrome(chrome: TChromium;
  js: String);
begin
  chrome.Browser.MainFrame.ExecuteJavaScript(js, '',0);
end;

procedure TF_Logistica_Espacial_GMAPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(F_FormLegendaLogisticaGMAPS) then
  begin
    F_FormLegendaLogisticaGMAPS.Tag := 1;
    F_FormLegendaLogisticaGMAPS.Desativar;
    F_FormLegendaLogisticaGMAPS.Release;
    F_FormLegendaLogisticaGMAPS := nil;
  end;

  inherited;
end;

procedure TF_Logistica_Espacial_GMAPS.FormCreate(Sender: TObject);
var
  url : String;
begin
  Top := 1;
  Left := 1;
  inherited;
   paginaCarregada := false;

  SP_BuscaHTMLRota.Execute;
  //loadHTML(WebBrowser1,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  memo1.Lines.Add(SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  Memo1.Lines.SaveToFile(ExtractFilePath(ParamStr(0))+'mapa.html');

  Chromium1.Browser.MainFrame.LoadUrl(ExtractFilePath(ParamStr(0))+'mapa.html');

  QR_PageControlUnidade := TOraQuery(PageControlUnidades(rzPageControlUnidadesMoagem, True, True, False));
  rzPageControlUnidadesMoagemChange(rzPageControlUnidadesMoagem);
  rotaGerada := False;

  if BorderIcons = [biSystemMenu,biMinimize] then
    begin
      rzBitbtnTela.Hint       := 'Modo Cascata. Clique aqui para ativar modo tela inteira.';
      rzBitbtnTela.ImageIndex := 1346;
    end
  else
    begin
      rzBitbtnTela.Hint       := 'Modo Tela Inteira. Clique aqui para ativar modo cascata.';
      rzBitbtnTela.ImageIndex := 1345;
    end;

  informacoesAutomaticas := True;
  atualizaInfoAutomaticas;

  iconeOperacaoAgricola  := False;
  visualizaIconeOperacaoAgricola;

  if tmAtualizacao = nil then
  begin
    tmAtualizacao := TTimer.Create(Application);
    tmAtualizacao.Interval := 1000;
    tmAtualizacao.Name := 'tmAtualizacao';
    tmAtualizacao.Tag := 60;
    tmAtualizacao.OnTimer := onTimerAtualizacao;
    tmAtualizacao.Enabled := true;
  end;

  minFaltanteRefresh := 60;

  QR_TipoCCT.Close;
  QR_TipoCCT.Open;

end;


procedure TF_Logistica_Espacial_GMAPS.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then showmessage('bot�o direito');
  
end;

//Result := GetElementIdValue(WebBrowser1, 'input', 'result', 'value')
function TF_Logistica_Espacial_GMAPS.GetElementIdValue(WebBrowser: TWebBrowser;
  TagName, TagId, TagAttrib: string):string;
var
  Document: IHTMLDocument2;
  Body: IHTMLElement2;
  Tags: IHTMLElementCollection;
  Tag: IHTMLElement;
  I: Integer;
begin
  Result:='';
  if not Supports(WebBrowser.Document, IHTMLDocument2, Document) then
    raise Exception.Create('Documento html inv�lido');
  if not Supports(Document.body, IHTMLElement2, Body) then
    raise Exception.Create('N�o foi poss�vel encontrar a tag body');
  Tags := Body.getElementsByTagName(UpperCase(TagName));
  for I := 0 to Pred(Tags.length) do begin
    Tag:=Tags.item(I, EmptyParam) as IHTMLElement;
    if Tag.id=TagId then Result := Tag.getAttribute(TagAttrib, 0);
  end;
end;

procedure TF_Logistica_Espacial_GMAPS.Memo2Change(Sender: TObject);
begin
  inherited;

end;

{procedure TF_Monitoramento_Trafego_GMAPS.loadHTML(const HTMLCode: String);
var
   aPersistStreamInit: IPersistStreamInit;
   sl: TStringList;
   ms: TMemoryStream;
begin
   webBrowser1.Navigate('about:blank');

   // pretend we're at localhost, so google doesn't complain about the API key
   (webBrowser1.Document as IHTMLDocument2).URL := 'http://localhost';

   while webBrowser1.ReadyState < READYSTATE_INTERACTIVE do
      Forms.Application.ProcessMessages;

   sl := TStringList.Create;
   try
      ms := TMemoryStream.Create;
      try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms);
         ms.Seek(0, 0);

         if Supports(webBrowser1.Document, IPersistStreamInit, aPersistStreamInit) then
         begin
            if Succeeded(aPersistStreamInit.InitNew) then           /// without calling InitNew, I was getting intermittent error windows
               aPersistStreamInit.Load(TStreamAdapter.Create(ms));  ///   popping up, complaining something about Objects not existing in
         end;                                                       ///   for some windows dns error file
      finally
         ms.Free;
      end;
   finally
      sl.Free;
   end;
end;}

procedure TF_Logistica_Espacial_GMAPS.navegaHTML(wb: TWebBrowser;
  html: String);
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
end;

procedure TF_Logistica_Espacial_GMAPS.onTimerAtualizacao(Sender: TObject);
begin
  dec(minFaltanteRefresh);
  if minFaltanteRefresh <= 0 then
  begin
    minFaltanteRefresh := 60;
  end;
end;

procedure TF_Logistica_Espacial_GMAPS.QR_FrenteBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if QR_FrentePOSSUIROTA.AsString = 'N' then
  begin
    Application.MessageBox('Essa fazenda n�o pode ser visualizada no mapa pois n�o possui rota ativa.','Aten��o',MB_ICONWARNING + MB_OK);
    QR_Frente.Cancel;
    QR_Frente.Refresh;
  end;
end;

procedure TF_Logistica_Espacial_GMAPS.QR_TipoCCTAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not QR_Frente.IsEmpty then
    rzBitbtnIniciarFerramenta.Click;
end;

function TF_Logistica_Espacial_GMAPS.retornaObjJSONFiltros: String;
var
  camadaJSON : ISuperObject;
  i : Integer;
begin

  //Camadas dos tipos de equipamento
  camadaJSON := so('{"camadas":[]}');

  i := 0;

  QR_TipoCCT.First;

  while not QR_TipoCCT.Eof do
  begin
    camadaJSON['camadas['+inttostr(i)+']'] := SO(['camada',QR_TipoCCTTIPO_CCT.AsString,
                                                  'ativo',QR_TipoCCTSELECIONADO.AsString]);
    Inc(i);
    QR_TipoCCT.Next;
  end;


  //Informa��es autom�ticas
  if informacoesAutomaticas then
    camadaJSON.S['informacoesAutomaticas'] := 'S'
  else
    camadaJSON.S['informacoesAutomaticas'] := 'N';

  //Visualiza �cones opera��o
  if iconeOperacaoAgricola then
    camadaJSON.S['visualizaIconeOperacaoAgricola'] := 'S'
  else
    camadaJSON.S['visualizaIconeOperacaoAgricola'] := 'N';


  result := camadaJSON.AsString;
end;

procedure TF_Logistica_Espacial_GMAPS.RzBitBtnAtualizarInformacoesClick(Sender: TObject);
begin
  atualizaStatusIconizado(false,true,false);
  SP_AtualizaEquipamentos.ParamByName('P_FAZENDAS').AsString            := objJSON.AsString;
  SP_AtualizaEquipamentos.ParamByName('P_SOMENTE_ATUALIZACAO').AsString := 'S';
  if informacoesAutomaticas then
    SP_AtualizaEquipamentos.ParamByName('P_INFO_AUTOMATICO').AsString := 'S'
  else
    SP_AtualizaEquipamentos.ParamByName('P_INFO_AUTOMATICO').AsString := 'N';
  SP_AtualizaEquipamentos.ParamByName('P_FILTRO_CAMADAS').AsString := retornaObjJSONFiltros; //camadaJSON.AsString;
  SP_AtualizaEquipamentos.Execute;

  //ExecJS(WebBrowser1,'atualizaEquipamentos('+SP_AtualizaEquipamentos.ParamByName('RESULT').AsString+')');
  execJSChrome(Chromium1,'atualizaEquipamentos('+SP_AtualizaEquipamentos.ParamByName('RESULT').AsString+')');
  //Memo2.Lines.Add(SP_AtualizaEquipamentos.ParamByName('RESULT').AsString);
  tmAtualizaEquipamentos.Tag := 60;
  atualizaStatusIconizado(false,false,true);
end;

procedure TF_Logistica_Espacial_GMAPS.RzBitBtnIconeOperacaoClick(
  Sender: TObject);
begin
  inherited;
  visualizaIconeOperacaoAgricola;

  if not QR_Frente.IsEmpty then
    RzBitBtnAtualizarInformacoes.Click;
end;

procedure TF_Logistica_Espacial_GMAPS.rzBitBtnInfoAutomaticasClick(
  Sender: TObject);
begin
  inherited;
  atualizaInfoAutomaticas;
  if not QR_Frente.IsEmpty then
    rzBitbtnIniciarFerramenta.Click;;
end;

procedure TF_Logistica_Espacial_GMAPS.rzBitbtnLegendaClick(Sender: TObject);
var Ponto : TPoint;
begin
  inherited;
  GetCursorPos(Ponto);
  if not Assigned(F_FormLegendaLogisticaGMAPS) then
    F_FormLegendaLogisticaGMAPS := TF_FormLegendaLogisticaGMAPS.Create(Application);
  F_FormLegendaLogisticaGMAPS.Ativar(F_FormLegendaLogisticaGMAPS,Ponto);
end;

procedure TF_Logistica_Espacial_GMAPS.RzBitBtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not tmAtualizaEquipamentos.Enabled then
    ativaTimer
  else
    desativaTimer;
end;

procedure TF_Logistica_Espacial_GMAPS.rzBitbtnTelaClick(Sender: TObject);
begin
  inherited;
  if BorderIcons = [biSystemMenu, biMinimize] then
    begin
      BorderIcons := [biSystemMenu, biMaximize, biMinimize];
      TRzBitBtn(Sender).Hint := 'Modo Tela Inteira. Clique aqui para ativar modo cascata.';
      TRzBitBtn(Sender).ImageIndex := 1345;
    end
  else
    begin
      F_Logistica_Espacial_GMAPS.Perform(WM_SIZE, SIZE_RESTORED, 0);
      BorderIcons := [biSystemMenu, biMinimize];
      TRzBitBtn(Sender).Hint := 'Modo Cascata. Clique aqui para ativar modo tela inteira.';
      TRzBitBtn(Sender).ImageIndex := 1346;
    end;

end;

procedure TF_Logistica_Espacial_GMAPS.RzGroup2Items0Click(Sender: TObject);
var
  aux : Integer;
begin
  inherited;

  //execJS(WebBrowser1,'limpaRotas()');
  //execJS(WebBrowser1,'limpaLayersFazendas()');
  execJSChrome(Chromium1,'limpaRotas()');
  execJSChrome(Chromium1,'limpaLayersFazendas()');

  desativaTimer;

  aux := 0;

  objJSON := so('{"frentes":[]}');

  QR_Frente.First;
  while not QR_Frente.Eof do
  begin
    if (QR_FrenteVISUALIZA.AsString = 'S') and (QR_FrentePOSSUIROTA.AsString = 'S') then
    begin
      objJSON['frentes['+inttostr(aux)+']'] := SO(['frente',QR_FrenteCOD_FRENTE.asinteger,
                                                   'fazenda',QR_FrenteCOD_FAZENDA.asinteger,
                                                   'grupoempresa',QR_FrenteCOD_GRUPO.AsInteger,
                                                   'empresa',QR_FrenteCOD_REGIONAL.AsInteger,
                                                   'filial',QR_FrenteCOD_UNIDADE.AsInteger,
                                                   'safra',QR_FrenteCOD_SAFRA.AsInteger,
                                                   'numero_rota',0]);
      inc(aux);
    end;
    QR_Frente.Next;
  end;

  if aux = 0 then
  begin
    Application.MessageBox('� necess�rio escolher pelo menos uma frente para gerar as informa��es no mapa.','Aten��o',MB_ICONINFORMATION + MB_OK);
    QR_Frente.First;
    RzBitBtnRefresh.Enabled := false;
    rzBitbtnStatusAtualizacao.Enabled := false;
    Abort;
  end;

  SP_MontaRotas.ParamByName('P_FAZENDAS').AsString           := objJSON.AsString;
  SP_MontaRotas.ParamByName('P_MOSTRAEQUIPAMENTOS').AsString := 'S';
  if informacoesAutomaticas then
    SP_MontaRotas.ParamByName('P_INFO_AUTOMATICO').AsString := 'S'
  else
    SP_MontaRotas.ParamByName('P_INFO_AUTOMATICO').AsString := 'N';
  SP_MontaRotas.ParamByName('P_FILTRO_CAMADAS').AsString := retornaObjJSONFiltros;
  SP_MontaRotas.Execute;

  //execJS(WebBrowser1,'atualizaInformacoesFrentes('+SP_MontaRotas.parambyname('RESULT').AsString+')');
  execJSChrome(Chromium1,'atualizaInformacoesFrentes('+SP_MontaRotas.parambyname('RESULT').AsString+')');

  RzBitBtnRefresh.Enabled := true;
  rzBitbtnStatusAtualizacao.Enabled := True;

  ativaTimer;
end;

procedure TF_Logistica_Espacial_GMAPS.RzGroup2Items1Click(Sender: TObject);
begin
  inherited;
  //ativa_Mensagem('Aguarde...','Sistema gerando informa��es.',0);
  atualizaStatusIconizado(false,true,false);
  SP_AtualizaEquipamentos.ParamByName('P_FAZENDAS').AsString            := objJSON.AsString;
  SP_AtualizaEquipamentos.ParamByName('P_SOMENTE_ATUALIZACAO').AsString := 'S';
  if informacoesAutomaticas then
    SP_AtualizaEquipamentos.ParamByName('P_INFO_AUTOMATICO').AsString := 'S'
  else
    SP_AtualizaEquipamentos.ParamByName('P_INFO_AUTOMATICO').AsString := 'N';
  SP_AtualizaEquipamentos.ParamByName('P_FILTRO_CAMADAS').AsString := retornaObjJSONFiltros; //camadaJSON.AsString;
  SP_AtualizaEquipamentos.Execute;

  //ExecJS(WebBrowser1,'atualizaEquipamentos('+SP_AtualizaEquipamentos.ParamByName('RESULT').AsString+')');
  execJSChrome(Chromium1,'atualizaEquipamentos('+SP_AtualizaEquipamentos.ParamByName('RESULT').AsString+')');
  tmAtualizaEquipamentos.Tag := 60;
  atualizaStatusIconizado(false,false,true);
  //desativa_Mensagem;
  //'Retorno Carregado:'+ GetElementIdValue(WebBrowser1, 'input', 'statusMapa', 'value');
end;

procedure TF_Logistica_Espacial_GMAPS.rzPageControlUnidadesMoagemChange(
  Sender: TObject);
begin
  inherited;
  if PageControlChange(rzPageControlUnidadesMoagem, QR_PageControlUnidade) then
  begin
    QR_Frente.Close;
    QR_Frente.ParamByName('cod_safra').AsFloat := DM.QR_SafraSelecionadaCOD_SAFRA.AsFloat;
    QR_Frente.ParamByName('cod_grupo').AsFloat := QR_PageControlUnidade.FieldByName('cod_grupo').AsFloat;
    QR_Frente.ParamByName('cod_regional').AsFloat := QR_PageControlUnidade.FieldByName('cod_regional').AsFloat;
    QR_Frente.ParamByName('cod_unidade').AsFloat := QR_PageControlUnidade.FieldByName('cod_unidade').AsFloat;
    QR_Frente.Open;

    if (paginaCarregada) and
       (QR_PageControlUnidade.FieldByName('cod_unidade').AsFloat <> 0) then
      execJSChrome(Chromium1,'centralizaMapa('+QR_PageControlUnidade.FieldByName('latitude').AsString+','
                                         +QR_PageControlUnidade.FieldByName('longitude').AsString+')');

    TRzBitBtn(Sender).Enabled := True;
  end;
end;

procedure TF_Logistica_Espacial_GMAPS.ScrollBox1Resize(Sender: TObject);
begin
  inherited;
  showmessage('oi');
end;

procedure TF_Logistica_Espacial_GMAPS.tmAtualizaEquipamentosTimer(
  Sender: TObject);
begin
  inherited;
  //TTimer(Sender).Tag := TTimer(Sender).Tag - 1;
  TTimer(Sender).Tag := minFaltanteRefresh;
  if TTimer(Sender).Tag <= 1 then
  begin
    desativaTimer;
    atualizaStatusIconizado(false,true,false);
    RzBitBtnAtualizarInformacoes.Click;
    ativaTimer;
    //TTimer(Sender).Tag := 60;
  end;

  RzBitBtnAtualizarInformacoes.Enabled := True;
  rzBitBtnRefresh.Enabled    := True;

  rzBitBtnRefresh.Caption := 'Atualizar: '+IntToStr(TTimer(Sender).Tag)+' seg.';
end;

procedure TF_Logistica_Espacial_GMAPS.visualizaIconeOperacaoAgricola;
begin
  iconeOperacaoAgricola := not iconeOperacaoAgricola;

  if iconeOperacaoAgricola then
    begin
      RzBitBtnIconeOperacao.Hint := 'Desativar �cone Opera��o Agr�cola';
      RzBitBtnIconeOperacao.ImageIndex := 988;
    end
  else
    begin
      RzBitBtnIconeOperacao.Hint := 'Ativar �cone Opera��o Agricola';
      RzBitBtnIconeOperacao.ImageIndex := 2278;
    end;
end;


end.
