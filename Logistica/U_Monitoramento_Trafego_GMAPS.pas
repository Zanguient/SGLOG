unit U_Monitoramento_Trafego_GMAPS;

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
  dxGDIPlusClasses;

type
  TF_Monitoramento_Trafego_GMAPS = class(TF_TemplateConsulta)
    rzPageControlUnidadesMoagem: TRzPageControl;
    Panel3: TPanel;
    RzGroupBarFerramentas: TRzGroupBar;
    RzGroup1: TRzGroup;
    QR_Frente: TOraQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DS_Frente: TOraDataSource;
    RzGroup2: TRzGroup;
    ImageList1: TImageList;
    cxGrid1DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_FAZENDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSPORTE_LIBERADO: TcxGridDBColumn;
    cxGrid1DBTableView1VISUALIZA: TcxGridDBColumn;
    QR_FrenteCOD_SAFRA: TIntegerField;
    QR_FrenteCOD_FRENTE: TIntegerField;
    QR_FrenteCOD_FAZENDA: TIntegerField;
    QR_FrenteDESCRICAO: TStringField;
    QR_FrenteTRANSPORTE_LIBERADO: TStringField;
    QR_FrenteVISUALIZA: TStringField;
    QR_FrentePOSSUIROTA: TStringField;
    QR_InformacoesIniciais: TOraQuery;
    QR_InformacoesIniciaisINFORMACOESINICIAISJSON: TMemoField;
    cxGrid1DBTableView1POSSUIROTA: TcxGridDBColumn;
    SP_MontaRotas: TOraStoredProc;
    Panel7: TPanel;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    QR_FrenteCOD_GRUPOEMPRESA: TFloatField;
    QR_FrenteCOD_EMPRESA: TFloatField;
    QR_FrenteCOD_FILIAL: TFloatField;
    tmAtualizaEquipamentos: TTimer;
    SP_AtualizaEquipamentos: TOraStoredProc;
    rzPanelRefresh: TRzPanel;
    SP_BuscaHTMLRota: TOraStoredProc;
    RzSizePanel1: TRzSizePanel;
    RzGroupBar2: TRzGroupBar;
    RzGroup3: TRzGroup;
    RzGroup7: TRzGroup;
    RzGroup5: TRzGroup;
    QR_FrenteLATITUDE_FAZENDA: TFloatField;
    QR_FrenteLONGITUDE_FAZENDA: TFloatField;
    QR_FrentePOSSUIPOLIGONO: TStringField;
    PopupMenu1: TPopupMenu;
    CentralizarMapa1: TMenuItem;
    QR_TipoCCT: TOraQuery;
    DS_TipoCCT: TOraDataSource;
    QR_TipoCCTSELECIONADO: TStringField;
    QR_TipoCCTTIPO_CCT: TStringField;
    QR_TipoCCTDESCRICAO: TStringField;
    QR_TipoCCTFILTRO_LOGISTICA: TStringField;
    RzPanelDistanciaTotal: TRzPanel;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1SELECIONADO: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    imgAtualizacao: TImage;
    RzPanel3: TRzPanel;
    imgParado: TImage;
    imgAtualizandoInformacoes: TImage;
    imgOperacao: TImage;
    imgDesativado: TImage;
    imgRefreshAtivado: TImage;
    imgRefreshDesativado: TImage;
    RzPanel4: TRzPanel;
    Image1: TImage;
    RzPanel2: TRzPanel;
    imgStatusParado: TImage;
    imgStatusAtualizandoInformacoes: TImage;
    imgStatusOperacao: TImage;
    cbAtualizaEquipamentos: TCheckBox;
    WebBrowser1: TWebBrowser;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzPanel4Click(Sender: TObject);
    procedure cxGrid2DBTableView1SELECIONADOPropertiesChange(Sender: TObject);
    procedure QR_TipoCCTAfterPost(DataSet: TDataSet);
    procedure ScrollBox1Resize(Sender: TObject);
    procedure RzGroup7Items1Click(Sender: TObject);
    procedure CentralizarMapa1Click(Sender: TObject);
    procedure QR_FrenteBeforeEdit(DataSet: TDataSet);
    procedure RzGroup7Items0Click(Sender: TObject);
    procedure RzGroup3Items0Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbAtualizaEquipamentosClick(Sender: TObject);
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

    //Funções específica do TWebBrowser
    procedure executaJavaScript(funcao: String);
    function GetElementIdValue(WebBrowser: TWebBrowser;
                               TagName, TagId, TagAttrib: string):string;
    procedure desativaTimer;
    procedure ativaTimer;

    procedure navegaHTML(wb: TWebBrowser; html: String);

    //Funções específicas do tWebBrowser Delphi Xe2
    //procedure loadHTML(const HTMLCode: String);
    //procedure ExecJS(const javascript: String);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);



  private
    { Private declarations }
  objJSON  : ISuperObject;
  public
    { Public declarations }
  protected
    QR_PageControlEmpresa : TOraQuery;
    paginaCarregada : boolean;
    rotaGerada      : boolean;
    informacoesAutomaticas : boolean;
    iconeOperacaoAgricola : boolean;
  end;

var
  F_Monitoramento_Trafego_GMAPS: TF_Monitoramento_Trafego_GMAPS;
  tmAtualizacao : TTimer;
  minFaltanteRefresh : Integer;

implementation

uses U_Modulo, funcoes, U_MensagemEspera, U_FormLegendaLogisticaGMAPS, U_DM;

{$R *.dfm}

procedure TF_Monitoramento_Trafego_GMAPS.ativaTimer;
begin
  tmAtualizaEquipamentos.Enabled := True;
  RzGroup2.Items[1].Enabled      := True;
  rzPanelRefresh.Enabled         := True;
  imgAtualizacao.Picture         := imgRefreshAtivado.Picture;

  atualizaStatusIconizado(false,false,true);  
end;

procedure TF_Monitoramento_Trafego_GMAPS.atualizaInfoAutomaticas;
begin
  informacoesAutomaticas := not informacoesAutomaticas;

  if informacoesAutomaticas then
    begin
      RzGroup7.Items[0].Caption   := 'Informações Automáticas (Sim)';
      RzGroup7.Items[0].FontStyle := [fsbold];
    end
  else
    begin
      RzGroup7.Items[0].Caption   := 'Informações Automáticas (Não)';
      RzGroup7.Items[0].FontStyle := [];
    end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.atualizaStatusIconizado(parado,
  atualizacao, operacao: boolean);
begin
  imgStatusParado.Picture                 := imgDesativado.Picture;
  imgStatusAtualizandoInformacoes.Picture := imgDesativado.Picture;
  imgStatusOperacao.Picture               := imgDesativado.Picture;

  if parado then
    imgStatusParado.Picture := imgParado.Picture
  else if atualizacao then
    imgStatusAtualizandoInformacoes.Picture := imgAtualizandoInformacoes.Picture
  else if operacao then
    imgStatusOperacao.Picture := imgOperacao.Picture;
end;

procedure TF_Monitoramento_Trafego_GMAPS.cbAtualizaEquipamentosClick(
  Sender: TObject);
begin
  inherited;
  if TCheckBox(Sender).Checked then
    ativaTimer
  else
   desativaTimer;
end;

procedure TF_Monitoramento_Trafego_GMAPS.CentralizarMapa1Click(Sender: TObject);
begin
  inherited;
  if QR_FrentePOSSUIPOLIGONO.AsString = 'N' then
  begin
    Application.MessageBox(PChar('A fazenda '+QR_FrenteCOD_FAZENDA.AsString+' não possui mapa importado.'),'Atenção',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  ExecJS(webBrowser1,'centralizaMapa('+QR_FrenteLATITUDE_FAZENDA.AsString+','
                                     +QR_FrenteLONGITUDE_FAZENDA.AsString+')');

end;

procedure TF_Monitoramento_Trafego_GMAPS.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid1DBTableView1POSSUIROTA.Index] = 'N' then
  begin
    ACanvas.brush.color := clGray;
  end;

  ACanvas.Font.Color := clBlack;
end;

procedure TF_Monitoramento_Trafego_GMAPS.cxGrid2DBTableView1SELECIONADOPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if DS_TipoCCT.State in [dsinsert,dsedit] then
    QR_TipoCCT.Post;
end;

procedure TF_Monitoramento_Trafego_GMAPS.desativaTimer;
begin
  tmAtualizaEquipamentos.Enabled := False;
  RzGroup2.Items[1].Enabled      := False;
  rzPanelRefresh.Enabled         := False;
  imgAtualizacao.Picture         := imgRefreshDesativado.Picture;

  atualizaStatusIconizado(true,false,false);
end;

{procedure TF_Monitoramento_Trafego_GMAPS.ExecJS(const javascript: String);
var
   aHTMLDocument2: IHTMLDocument2;
begin
   if Supports(webBrowser1.Document, IHTMLDocument2, aHTMLDocument2) then
      aHTMLDocument2.parentWindow.execScript(javascript, 'JavaScript');
end; }

procedure TF_Monitoramento_Trafego_GMAPS.executaJavaScript(funcao: String);
var
  Doc: IHTMLDocument2;        //Documento HTML
  HTMLWindow: IHTMLWindow2;   //Componente principal do documento HTML
  JavaScriptFunction: string; //Nome da função javaScript
begin
  inherited;
  // Get reference to current document
  Doc := WebBrowser1.Document as IHTMLDocument2;
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

procedure TF_Monitoramento_Trafego_GMAPS.FormClose(Sender: TObject;
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

procedure TF_Monitoramento_Trafego_GMAPS.FormCreate(Sender: TObject);
var
  url : String;
begin
  inherited;
   paginaCarregada := false;

  SP_BuscaHTMLRota.Execute;
  //navegaHTML(WebBrowser1,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);
  loadHTML(WebBrowser1,SP_BuscaHTMLRota.ParamByName('RESULT').AsString);

  //url := 'C:\Sistemas\logisticaGMAPS.htm';
  //WebBrowser1.Navigate(url);

  QR_PageControlEmpresa := TOraQuery(PageControlEmpresas(rzPageControlUnidadesMoagem, True, True, False));
  rzPageControlUnidadesMoagemChange(rzPageControlUnidadesMoagem);
  rotaGerada := False;

  if BorderIcons = [biSystemMenu,biMinimize] then
    RzGroup3.Items[0].Caption := 'Maximiza Tela (Não)'
  else
    RzGroup3.Items[0].Caption := 'Maximiza Tela (Sim)';

  informacoesAutomaticas := False;
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


procedure TF_Monitoramento_Trafego_GMAPS.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then showmessage('botão direito');
  
end;

//Result := GetElementIdValue(WebBrowser1, 'input', 'result', 'value')
function TF_Monitoramento_Trafego_GMAPS.GetElementIdValue(WebBrowser: TWebBrowser;
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
    raise Exception.Create('Documento html inválido');
  if not Supports(Document.body, IHTMLElement2, Body) then
    raise Exception.Create('Não foi possível encontrar a tag body');
  Tags := Body.getElementsByTagName(UpperCase(TagName));
  for I := 0 to Pred(Tags.length) do begin
    Tag:=Tags.item(I, EmptyParam) as IHTMLElement;
    if Tag.id=TagId then Result := Tag.getAttribute(TagAttrib, 0);
  end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.Image1Click(Sender: TObject);
 var Ponto : TPoint;
begin
  inherited;
  GetCursorPos(Ponto);
  if not Assigned(F_FormLegendaLogisticaGMAPS) then
    F_FormLegendaLogisticaGMAPS := TF_FormLegendaLogisticaGMAPS.Create(Application);

  F_FormLegendaLogisticaGMAPS.Ativar(F_FormLegendaLogisticaGMAPS,Ponto);
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

procedure TF_Monitoramento_Trafego_GMAPS.navegaHTML(wb: TWebBrowser;
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

procedure TF_Monitoramento_Trafego_GMAPS.onTimerAtualizacao(Sender: TObject);
begin
  dec(minFaltanteRefresh);
  if minFaltanteRefresh <= 0 then
  begin
    minFaltanteRefresh := 60;
  end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.QR_FrenteBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if QR_FrentePOSSUIROTA.AsString = 'N' then
  begin
    Application.MessageBox('Essa fazenda não pode ser visualizada no mapa pois não possui rota ativa.','Atenção',MB_ICONWARNING + MB_OK);
    QR_Frente.Cancel;
    QR_Frente.Refresh;
  end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.QR_TipoCCTAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not QR_Frente.IsEmpty then
    RzGroup2Items0Click(RzGroup2.Items[0]);
end;

function TF_Monitoramento_Trafego_GMAPS.retornaObjJSONFiltros: String;
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


  //Informações automáticas
  if informacoesAutomaticas then
    camadaJSON.S['informacoesAutomaticas'] := 'S'
  else
    camadaJSON.S['informacoesAutomaticas'] := 'N';

  //Visualiza ícones operação
  if iconeOperacaoAgricola then
    camadaJSON.S['visualizaIconeOperacaoAgricola'] := 'S'
  else
    camadaJSON.S['visualizaIconeOperacaoAgricola'] := 'N';


  result := camadaJSON.AsString;
end;

procedure TF_Monitoramento_Trafego_GMAPS.RzGroup2Items0Click(Sender: TObject);
var
  aux : Integer;
begin
  inherited;
  //ativa_Mensagem('Aguarde...','Sistema gerando informações.',0);
  tmAtualizaEquipamentos.Enabled := False;
  desativaTimer;
  try
    aux := 0;

    objJSON := so('{"frentes":[]}');

    QR_Frente.First;
    while not QR_Frente.Eof do
    begin
      if (QR_FrenteVISUALIZA.AsString = 'S') and (QR_FrentePOSSUIROTA.AsString = 'S') then
      begin
        objJSON['frentes['+inttostr(aux)+']'] := SO(['frente',QR_FrenteCOD_FRENTE.asinteger,
                                                     'fazenda',QR_FrenteCOD_FAZENDA.asinteger,
                                                     'grupoempresa',QR_FrenteCOD_GRUPOEMPRESA.AsInteger,
                                                     'empresa',QR_FrenteCOD_EMPRESA.AsInteger,
                                                     'filial',QR_FrenteCOD_FILIAL.AsInteger,
                                                     'safra',QR_FrenteCOD_SAFRA.AsInteger,
                                                     'numero_rota',0]);
        inc(aux);
      end;
      QR_Frente.Next;
    end;

    if aux = 0 then
    begin
      Application.MessageBox('É necessário escolher pelo menos uma frente para gerar as informações no mapa.','Atenção',MB_ICONINFORMATION + MB_OK);
      QR_Frente.First;
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

    //executaJavaScript('atualizaRotas('+SP_GeraRotas.parambyname('RESULT').AsString+')');
    ExecJS(WebBrowser1,'atualizaInformacoesFrentes('+SP_MontaRotas.parambyname('RESULT').AsString+')');
    ativaTimer;
    cbAtualizaEquipamentos.Enabled := True;
  finally
  //  desativa_Mensagem;
  end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.RzGroup2Items1Click(Sender: TObject);
begin
  inherited;
  //ativa_Mensagem('Aguarde...','Sistema gerando informações.',0);
  atualizaStatusIconizado(false,true,false);
  SP_AtualizaEquipamentos.ParamByName('P_FAZENDAS').AsString            := objJSON.AsString;
  SP_AtualizaEquipamentos.ParamByName('P_SOMENTE_ATUALIZACAO').AsString := 'S';
  if informacoesAutomaticas then
    SP_AtualizaEquipamentos.ParamByName('P_INFO_AUTOMATICO').AsString := 'S'
  else
    SP_AtualizaEquipamentos.ParamByName('P_INFO_AUTOMATICO').AsString := 'N';
  SP_AtualizaEquipamentos.ParamByName('P_FILTRO_CAMADAS').AsString := retornaObjJSONFiltros; //camadaJSON.AsString;
  SP_AtualizaEquipamentos.Execute;

  ExecJS(WebBrowser1,'atualizaEquipamentos('+SP_AtualizaEquipamentos.ParamByName('RESULT').AsString+')');
  tmAtualizaEquipamentos.Tag := 60;
  atualizaStatusIconizado(false,false,true);
  //desativa_Mensagem;
  //'Retorno Carregado:'+ GetElementIdValue(WebBrowser1, 'input', 'statusMapa', 'value');
end;

procedure TF_Monitoramento_Trafego_GMAPS.RzGroup3Items0Click(Sender: TObject);
begin
  inherited;
  if BorderIcons = [biSystemMenu, biMinimize] then
    begin
      BorderIcons := [biSystemMenu, biMaximize, biMinimize];
      RzGroup3.Items[0].Caption      := 'Maximiza Tela (Sim)';
      TRzGroupItem(Sender).FontStyle := [fsBold];
    end
  else
    begin
      BorderIcons := [biSystemMenu, biMinimize];
      RzGroup3.Items[0].Caption      := 'Maximiza Tela (Não)';
      TRzGroupItem(Sender).FontStyle := [];
    end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.RzGroup7Items0Click(Sender: TObject);
begin
  inherited;
  atualizaInfoAutomaticas;
  if not QR_Frente.IsEmpty then
    RzGroup2Items0Click(RzGroup2.Items[0]);
end;

procedure TF_Monitoramento_Trafego_GMAPS.RzGroup7Items1Click(Sender: TObject);
begin
  inherited;
  visualizaIconeOperacaoAgricola;

  if not QR_Frente.IsEmpty then
    RzGroup2Items0Click(RzGroup2.Items[1]);
end;

procedure TF_Monitoramento_Trafego_GMAPS.rzPageControlUnidadesMoagemChange(
  Sender: TObject);
begin
  inherited;
  if PageControlChange(rzPageControlUnidadesMoagem, QR_PageControlEmpresa) then
  begin
    QR_Frente.Close;
    QR_Frente.ParamByName('cod_safra').AsFloat := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
    QR_Frente.ParamByName('cod_grupoempresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupoempresa').AsFloat;
    QR_Frente.ParamByName('cod_empresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat;
    QR_Frente.ParamByName('cod_filial').AsFloat := QR_PageControlEmpresa.FieldByName('cod_filial').AsFloat;
    QR_Frente.Open;

    if (paginaCarregada) and
       (QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat <> 0) then
      ExecJS(WebBrowser1,'centralizaMapa('+QR_PageControlEmpresa.FieldByName('latitude').AsString+','
                                         +QR_PageControlEmpresa.FieldByName('longitude').AsString+')');
    TRzBitBtn(Sender).Enabled := True;
  end;
end;

procedure TF_Monitoramento_Trafego_GMAPS.RzPanel4Click(Sender: TObject);
 var Ponto : TPoint;
begin
  inherited;
  GetCursorPos(Ponto);
  if not Assigned(F_FormLegendaLogisticaGMAPS) then
    F_FormLegendaLogisticaGMAPS := TF_FormLegendaLogisticaGMAPS.Create(Application);

  F_FormLegendaLogisticaGMAPS.Ativar(F_FormLegendaLogisticaGMAPS,Ponto);
end;

procedure TF_Monitoramento_Trafego_GMAPS.ScrollBox1Resize(Sender: TObject);
begin
  inherited;
  showmessage('oi');
end;

procedure TF_Monitoramento_Trafego_GMAPS.tmAtualizaEquipamentosTimer(
  Sender: TObject);
begin
  inherited;

  //TTimer(Sender).Tag := TTimer(Sender).Tag - 1;
  TTimer(Sender).Tag := minFaltanteRefresh;
  if TTimer(Sender).Tag <= 1 then
  begin
    desativaTimer;
    atualizaStatusIconizado(false,true,false);
    RzGroup2.Items[1].Click;
    ativaTimer;
    //TTimer(Sender).Tag := 60;
  end;

  RzGroup2.Items[1].Enabled := True;
  rzPanelRefresh.Enabled    := True;
  imgAtualizacao.Picture    := imgRefreshAtivado.Picture;

  rzPanelRefresh.Caption := 'Refresh: '+IntToStr(TTimer(Sender).Tag)+' s';
end;

procedure TF_Monitoramento_Trafego_GMAPS.visualizaIconeOperacaoAgricola;
begin
  iconeOperacaoAgricola := not iconeOperacaoAgricola;

  if iconeOperacaoAgricola then
    begin
      RzGroup7.Items[1].Caption   := 'Visualiza Ícone Operação (Sim)';
      RzGroup7.Items[1].FontStyle := [fsBold];
    end
  else
    begin
      RzGroup7.Items[1].Caption   := 'Visualiza Ícone Operação (Não)';
      RzGroup7.Items[1].FontStyle := [];
    end;
end;


procedure TF_Monitoramento_Trafego_GMAPS.WebBrowser1DocumentComplete(
  ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
begin
  inherited;
  QR_InformacoesIniciais.Close;
  QR_InformacoesIniciais.ParamByName('cod_grupoempresa').AsFloat := QR_PageControlEmpresa.FieldByName('cod_grupoempresa').AsFloat;
  QR_InformacoesIniciais.ParamByName('cod_empresa').AsFloat      := QR_PageControlEmpresa.FieldByName('cod_empresa').AsFloat;
  QR_InformacoesIniciais.ParamByName('cod_filial').AsFloat       := QR_PageControlEmpresa.FieldByName('cod_filial').AsFloat;
  QR_InformacoesIniciais.Open;
  ExecJS(WebBrowser1,'carregaInformacoesIniciais('+QR_InformacoesIniciaisINFORMACOESINICIAISJSON.AsString+')');

  paginaCarregada := true;
end;

end.
