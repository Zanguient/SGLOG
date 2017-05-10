unit U_InformacoesPistaMonitoramento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzGroupBar, ExtCtrls, RzPanel, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Ora, MemDS,
  DBAccess, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  pngimage, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxGDIPlusClasses,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Data.Bind.Components, RzButton;

type
  TInformacoesTipoCarga = class
    tipoVeiculo: String;
    tempoPrevisto: String;
    tempoRealizado: String;
    densidadeMedia: Double;
    qtdeVeiculos: Integer;
end;

type
  TInformacoesPista = class
    frente: Double;
    fazenda: Double;
    distanciaAsfaltoIda: Double;
    distanciaTerraIda: Double;
    distanciaCarreadorIda: Double;
    distanciaAsfaltoVolta: Double;
    distanciaTerraVolta: Double;
    distanciaCarreadorVolta: Double;
    unidadeMoagem: String;
    tempoIdaPrevisto: Double;
    tempoVoltaPrevisto: Double;
    tempoCarregamentoPrevisto: Double;
    tempoTotalRealizado: Double;
    tempoIdaEspacial: Double;
    tempoVoltaEspacial: Double;
    tempoCarregamentoEspacial: Double;
    qtdeViagensEspacial: Integer;
    densidadePista: Double;
    qtdeIndo: Integer;
    qtdeCarregando: Integer;
    qtdeVoltando: Integer;
    qtdeDescarregando: Integer;
    informacoesTipoCarga: array of TInformacoesTipoCarga;
end;

type
  TF_InformacoesPistaMonitoramento = class(TForm)
    RzGroupBar1: TRzGroupBar;
    RzGroupInformacoesPista: TRzGroup;
    RzGroupDistancias: TRzGroup;
    RzGroupTempos: TRzGroup;
    rzPanelIndustria: TRzPanel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanelDistanciaRodoviaTotal: TRzPanel;
    RzPanelDistanciaTerraTotal: TRzPanel;
    RzPanelDistanciaCarregadorTotal: TRzPanel;
    RzPanel6: TRzPanel;
    RzPanelDistanciaTotal: TRzPanel;
    RzPanel8: TRzPanel;
    RzPanel10: TRzPanel;
    RzPanelTempoIda: TRzPanel;
    RzPanelTempoVolta: TRzPanel;
    RzGroupVeiculos: TRzGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QR_InformacoesVeiculos: TOraQuery;
    DS_InformacoesVeiculos: TOraDataSource;
    QR_InformacoesVeiculosTipoVeculo: TStringField;
    QR_InformacoesVeiculosPrevisto: TStringField;
    QR_InformacoesVeiculosRealizado: TStringField;
    cxGrid1DBTableView1TipoVeculo: TcxGridDBColumn;
    cxGrid1DBTableView1Previsto: TcxGridDBColumn;
    cxGrid1DBTableView1Realizado: TcxGridDBColumn;
    QR_InformacoesVeiculosDensidadeMdia: TFloatField;
    cxGrid1DBTableView1DensidadeMdia: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    RzPanelTempoCarregamento: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanelTempoTotal: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanelTempoTotalRealizado: TRzPanel;
    RzPanel12: TRzPanel;
    RzPanel13: TRzPanel;
    RzPanelTempoIdaEspacial: TRzPanel;
    RzPanelTempoCarregamentoEspacial: TRzPanel;
    RzPanelTempoVoltaEspacial: TRzPanel;
    RzPanelTempoTotalEspacial: TRzPanel;
    cxGrid1DBTableView1QtdeVeculos: TcxGridDBColumn;
    RzPanelQtdeViagensAnalisadasEspacial: TRzPanel;
    QR_InformacoesVeiculosQtdeVeculos: TFloatField;
    RzPanelDistanciaRodoviaIda: TRzPanel;
    rzPanelSituacao: TRzPanel;
    RzPanel18: TRzPanel;
    RzPanelDistanciaRodoviaVolta: TRzPanel;
    RzPanelSituacaoIda: TRzPanel;
    RzPanelSituacaoVolta: TRzPanel;
    RzPanelDistanciaTerraIda: TRzPanel;
    RzPanelDistanciaTerraVolta: TRzPanel;
    RzPanelDistanciaCarreadorIda: TRzPanel;
    RzPanelDistanciaCarreadorVolta: TRzPanel;
    Image6: TImage;
    Image7: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    imgBandeiraTotal: TImage;
    RzPanelDistanciaTotalIda: TRzPanel;
    RzPanelDistanciaTotalVolta: TRzPanel;
    RzPanelDescarregando: TRzPanel;
    Image5: TImage;
    RzPanelIndo: TRzPanel;
    Image4: TImage;
    RzPanelVoltando: TRzPanel;
    Image3: TImage;
    RzPanelCarregando: TRzPanel;
    Image2: TImage;
    RzPanel7: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BindingsList1: TBindingsList;
    BindExpressionRzStringGrid11: TBindExpression;
    QR_DetalhePercurso: TOraQuery;
    DS_DetalhePercurso: TOraDataSource;
    QR_DetalhePercursoSequência: TFloatField;
    QR_DetalhePercursoCodigo: TFloatField;
    QR_DetalhePercursoTipoPercurso: TStringField;
    QR_DetalhePercursoIdaVolta: TStringField;
    QR_DetalhePercursoKMMédiaTalhões: TFloatField;
    cxGridDetalhePercursoDBTableView1: TcxGridDBTableView;
    cxGridDetalhePercursoLevel1: TcxGridLevel;
    cxGridDetalhePercurso: TcxGrid;
    cxGridDetalhePercursoDBTableView1Sequncia: TcxGridDBColumn;
    cxGridDetalhePercursoDBTableView1Codigo: TcxGridDBColumn;
    cxGridDetalhePercursoDBTableView1TipoPercurso: TcxGridDBColumn;
    cxGridDetalhePercursoDBTableView1IdaVolta: TcxGridDBColumn;
    cxGridDetalhePercursoDBTableView1KMMdiaTalhes: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Ativar(Sender: TObject; Ponto: TPoint; InformacoesPista: TInformacoesPista);
    procedure Desativar;
  end;

var
  F_InformacoesPistaMonitoramento: TF_InformacoesPistaMonitoramento;

implementation

uses U_ImagensMonitoramentoTrafego, U_DM;

{$R *.dfm}

{ TF_InformacoesPistaMonitoramento }

procedure TF_InformacoesPistaMonitoramento.Ativar(Sender: TObject;
  Ponto: TPoint; InformacoesPista: TInformacoesPista);
var
  i : Integer;
begin
  if (Ponto.X+Width > Screen.Width) then
    Left := Ponto.X - Width
  else
    Left := Ponto.X;

  if (Ponto.Y+Height > Screen.Height) then
    Top := Ponto.Y - Height
  else
    Top := Ponto.Y;

  Image10.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Asfalto.Picture.Graphic;
  Image11.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Terra.Picture.Graphic;
  Image12.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_Carreador.Picture.Graphic;
  imgBandeiraTotal.Picture.Graphic := F_ImagensMonitoramentoTrafego.Img_industria.Picture.Graphic;

  RzGroupInformacoesPista.Caption         := 'Informações Pista - Frente '+ FloatToStr(InformacoesPista.frente)+' - Faz. '+FloatToStr(InformacoesPista.fazenda);

  RzPanelDistanciaRodoviaIda.Caption      := FormatFloat('###,###,###0.00',InformacoesPista.distanciaAsfaltoIda)+' Km';
  RzPanelDistanciaTerraIda.Caption        := FormatFloat('###,###,###0.00',InformacoesPista.distanciaTerraIda)+' Km';
  RzPanelDistanciaCarreadorIda.Caption    := FormatFloat('###,###,###0.00',InformacoesPista.distanciaCarreadorIda)+' Km';
  RzPanelDistanciaTotalIda.Caption        := FormatFloat('###,###,###0.00',InformacoesPista.distanciaCarreadorIda+InformacoesPista.distanciaTerraIda+InformacoesPista.distanciaAsfaltoIda)+' Km';

  RzPanelDistanciaRodoviaVolta.Caption      := FormatFloat('###,###,###0.00',InformacoesPista.distanciaAsfaltoVolta)+' Km';
  RzPanelDistanciaTerraVolta.Caption        := FormatFloat('###,###,###0.00',InformacoesPista.distanciaTerraVolta)+' Km';
  RzPanelDistanciaCarreadorVolta.Caption    := FormatFloat('###,###,###0.00',InformacoesPista.distanciaCarreadorVolta)+' Km';
  RzPanelDistanciaTotalVolta.Caption        := FormatFloat('###,###,###0.00',InformacoesPista.distanciaCarreadorVolta+InformacoesPista.distanciaTerraVolta+InformacoesPista.distanciaAsfaltoVolta)+' Km';

  RzPanelDistanciaRodoviaTotal.Caption    := FormatFloat('###,###,###0.00',InformacoesPista.distanciaAsfaltoIda+InformacoesPista.distanciaAsfaltoVolta)+' Km';
  RzPanelDistanciaTerraTotal.Caption      := FormatFloat('###,###,###0.00',InformacoesPista.distanciaTerraIda+InformacoesPista.distanciaTerraVolta)+' Km';
  RzPanelDistanciaCarregadorTotal.Caption := FormatFloat('###,###,###0.00',InformacoesPista.distanciaCarreadorIda+InformacoesPista.distanciaCarreadorVolta)+' Km';
  RzPanelDistanciaTotal.Caption           := FormatFloat('###,###,###0.00',InformacoesPista.distanciaAsfaltoIda + InformacoesPista.distanciaAsfaltoVolta +
                                                                      InformacoesPista.distanciaTerraIda + InformacoesPista.distanciaTerraVolta +
                                                                      InformacoesPista.distanciaCarreadorIda + InformacoesPista.distanciaCarreadorVolta)+' Km';

  RzPanelDescarregando.Caption       := 'Descarregando '+FloatToStr(InformacoesPista.qtdeDescarregando)+' ';
  RzPanelIndo.Caption                := 'Indo '+FloatToStr(InformacoesPista.qtdeIndo);
  RzPanelCarregando.Caption          := 'Carregando '+FloatToStr(InformacoesPista.qtdeCarregando);
  RzPanelVoltando.Caption            := 'Voltando '+FloatToStr(InformacoesPista.qtdeVoltando);

  RzPanelTempoIda.Caption            := FloatToStr(InformacoesPista.tempoIdaPrevisto)+ ' Min';
  RzPanelTempoVolta.Caption          := FloatToStr(InformacoesPista.tempoVoltaPrevisto)+ ' Min';
  RzPanelTempoCarregamento.Caption   := FloatToStr(InformacoesPista.tempoCarregamentoPrevisto)+ ' Min';
  RzPanelTempoTotal.Caption          := FloatToStr(InformacoesPista.tempoIdaPrevisto +
                                                   InformacoesPista.tempoVoltaPrevisto +
                                                   InformacoesPista.tempoCarregamentoPrevisto)+ ' Min';
  RzPanelTempoTotalRealizado.Caption := FloatToStr(InformacoesPista.tempoTotalRealizado)+ ' Min';

  RzPanelTempoIdaEspacial.Font.Color := clBlack;
  if InformacoesPista.tempoIdaEspacial = null then
    RzPanelTempoIdaEspacial.Caption := '--- Min.'
  else
    begin
      RzPanelTempoIdaEspacial.Caption    := FloatToStr(InformacoesPista.tempoIdaEspacial)+' Min';
      if Abs(InformacoesPista.tempoIdaPrevisto - InformacoesPista.tempoIdaEspacial) > 10 then
        RzPanelTempoIdaEspacial.Font.Color := clRed;
    end;

  RzPanelTempoCarregamentoEspacial.Font.Color := clBlack;
  if InformacoesPista.tempoCarregamentoEspacial = null then
    RzPanelTempoCarregamentoEspacial.Caption := '--- Min'
  else
    begin
      RzPanelTempoCarregamentoEspacial.Caption := FloatToStr(InformacoesPista.tempoCarregamentoEspacial)+' Min';
      if Abs(InformacoesPista.tempoCarregamentoPrevisto - InformacoesPista.tempoCarregamentoEspacial) > 10 then
        RzPanelTempoCarregamentoEspacial.Font.Color := clred;
    end;

  RzPanelTempoVoltaEspacial.Font.Color := clBlack;
  if InformacoesPista.tempoVoltaEspacial = null then
    RzPanelTempoVoltaEspacial.Caption := '--- Min'
  else
    begin
      RzPanelTempoVoltaEspacial.Caption := FloatToStr(InformacoesPista.tempoVoltaEspacial)+ ' Min';
      if Abs(InformacoesPista.tempoVoltaPrevisto - InformacoesPista.tempoVoltaEspacial) > 10 then
        RzPanelTempoVoltaEspacial.Font.Color := clRed;
    end;

  RzPanelTempoTotalEspacial.Font.Color := clBlack;
  if (InformacoesPista.tempoIdaEspacial + InformacoesPista.tempoCarregamentoEspacial + InformacoesPista.tempoVoltaEspacial) = null then
    RzPanelTempoTotalEspacial.Caption := '--- Min'
  else
    begin
      RzPanelTempoTotalEspacial.Caption := FloatToStr(InformacoesPista.tempoIdaEspacial +
                                                      InformacoesPista.tempoCarregamentoEspacial +
                                                      InformacoesPista.tempoVoltaEspacial)+ ' Min';
      if Abs((InformacoesPista.tempoIdaPrevisto+InformacoesPista.tempoCarregamentoPrevisto+InformacoesPista.tempoVoltaPrevisto) -
             (InformacoesPista.tempoIdaEspacial+InformacoesPista.tempoCarregamentoEspacial+InformacoesPista.tempoVoltaEspacial)) > 10 then
        RzPanelTempoTotalEspacial.Font.Color := clRed;
    end;

  QR_DetalhePercurso.Close;
  QR_DetalhePercurso.ParamByName('cod_fazenda').AsFloat := InformacoesPista.fazenda;
  QR_DetalhePercurso.ParamByName('cod_grupo').AsFloat := dm.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_DetalhePercurso.ParamByName('cod_regional').AsFloat := dm.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_DetalhePercurso.ParamByName('cod_unidade').AsFloat := dm.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_DetalhePercurso.Open;
  cxGridDetalhePercurso.Left := 500;

  RzPanelQtdeViagensAnalisadasEspacial.Caption := 'Viagens Espacial Analisadas: '+IntToStr(InformacoesPista.qtdeViagensEspacial);

  QR_InformacoesVeiculos.Close;
  QR_InformacoesVeiculos.SQL.Clear;

  for i := 0 to Length(InformacoesPista.informacoesTipoCarga) - 1 do
  begin
    if i > 0 then
    begin
      QR_InformacoesVeiculos.SQL.Add(' UNION ALL');
    end;

    QR_InformacoesVeiculos.SQL.Add(' SELECT ');
    QR_InformacoesVeiculos.SQL.Add(' '''+InformacoesPista.informacoesTipoCarga[i].tipoVeiculo             +''' '+'"Tipo Veículo",');
    QR_InformacoesVeiculos.SQL.Add(' '''+InformacoesPista.informacoesTipoCarga[i].tempoPrevisto           +''' '+'"Previsto",');
    QR_InformacoesVeiculos.SQL.Add(' '''+InformacoesPista.informacoesTipoCarga[i].tempoRealizado          +''' '+'"Realizado",');
    QR_InformacoesVeiculos.SQL.Add(FormatFloat('',InformacoesPista.informacoesTipoCarga[i].densidadeMedia)+'"Densidade Média",');
    QR_InformacoesVeiculos.SQL.Add(IntToStr(InformacoesPista.informacoesTipoCarga[i].qtdeVeiculos)        +'"Qtde Veículos"');
    QR_InformacoesVeiculos.SQL.Add(' FROM DUAL ');
  end;

  if QR_InformacoesVeiculos.SQL.Text = '' then
    QR_InformacoesVeiculos.SQL.Add('SELECT '''' "Tipo Veículo", '''' "Previsto", '''' "Realizado", 0.0 "Densidade Média", 0 "Qtde Veículos" FROM DUAL');

  QR_InformacoesVeiculos.Open;

  Show;

end;

procedure TF_InformacoesPistaMonitoramento.Desativar;
begin
  Close;
end;

procedure TF_InformacoesPistaMonitoramento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Tag = 1 then
    Action := caFree;
end;

procedure TF_InformacoesPistaMonitoramento.RzBitBtn1Click(Sender: TObject);
begin
   if not QR_DetalhePercurso.IsEmpty then
   begin
      if cxGridDetalhePercurso.Left > 0 then
      begin
         cxGridDetalhePercurso.Left := 0
      end
      else cxGridDetalhePercurso.Left := 500;
   end
   else
     application.MessageBox('Detalhamento de percursos não localizado.','Aviso',MB_OK+MB_ICONINFORMATION);
end;

end.
