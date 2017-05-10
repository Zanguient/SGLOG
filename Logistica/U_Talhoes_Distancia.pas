//----------------------------------------------------------------------------------------------
// Data : 25/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela utilizada para gerenciar as distancias dos
// talhões, tendo facilidades de programar a mudança das distancias por horários,
// fazer alterações em blocos ou pontuais.
// os talhoes da fazenda, da zona ou apenas do talhão indicado.
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Talhoes_Distancia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Mask, wwdbedit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTimeEdit, cxCalendar, cxMemo,
  cxRadioGroup, cxButtonEdit, cxCheckBox, cxGridDBTableView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, RzTabs,
  RzGroupBar;

type
  TF_Talhoes_Distancia = class(TF_TemplateProcesso)
    ImageList1: TImageList;
    RzPageControl1: TRzPageControl;
    tsInformacoesDistancia: TRzTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    RzPanel2: TRzPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView1INDO_VOLTANDO: TcxGridDBColumn;
    cxGridDBTableView1COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1DISTANCIA: TcxGridDBColumn;
    cxGridDBTableView1DISTANCIA_TOTAL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tsGerarDistancia: TRzTabSheet;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2Level2: TcxGridLevel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2SEQUENCIA: TcxGridDBColumn;
    cxGridDBTableView2INDO_VOLTANDO: TcxGridDBColumn;
    cxGridDBTableView2COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGridDBTableView2DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView2DISTANCIA: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    QR_MainCOD_FAZENDA: TFloatField;
    QR_MainCOD_SAFRA: TFloatField;
    QR_MainZONA: TFloatField;
    QR_MainCOD_TALHAO: TFloatField;
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainHORA_INICIAL: TStringField;
    QR_MainHORA_FINAL: TStringField;
    QR_MainDATAHORA_INI: TDateTimeField;
    QR_MainDATAHORA_FIM: TDateTimeField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ZONA: TcxGridDBColumn;
    cxGrid1DBTableView1COD_TALHAO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_INICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_FINAL: TcxGridDBColumn;
    cxGrid1DBTableView1DATAHORA_INI: TcxGridDBColumn;
    cxGrid1DBTableView1DATAHORA_FIM: TcxGridDBColumn;
    QR_MainDESCRICAO: TStringField;
    QR_Historico_Distancia: TOraQuery;
    DS_Historico_Distancia: TOraDataSource;
    QR_Talhao_Distancias_Percurso: TOraQuery;
    DS_Talhao_Distancias_Percurso: TOraDataSource;
    QR_Talhao_Distancias_PercursoCOD_SAFRA: TFloatField;
    QR_Talhao_Distancias_PercursoCOD_FAZENDA: TFloatField;
    QR_Talhao_Distancias_PercursoZONA: TFloatField;
    QR_Talhao_Distancias_PercursoCOD_TALHAO: TFloatField;
    QR_Talhao_Distancias_PercursoCOD_GRUPO: TFloatField;
    QR_Talhao_Distancias_PercursoCOD_REGIONAL: TFloatField;
    QR_Talhao_Distancias_PercursoCOD_UNIDADE: TFloatField;
    QR_Talhao_Distancias_PercursoDATAHORA_INI: TDateTimeField;
    QR_Talhao_Distancias_PercursoHORA_INICIAL: TStringField;
    QR_Talhao_Distancias_PercursoSEQUENCIA: TFloatField;
    QR_Talhao_Distancias_PercursoINDO_VOLTANDO: TStringField;
    QR_Talhao_Distancias_PercursoCOD_TIPOPERCURSO: TFloatField;
    QR_Talhao_Distancias_PercursoDISTANCIA: TFloatField;
    QR_Talhao_Distancias_PercursoDESCRICAO: TStringField;
    QR_Talhao_Distancias_PercursoDISTANCIA_TOTAL: TFloatField;
    RzGroupBar2: TRzGroupBar;
    RzGroup1: TRzGroup;
    QR_ChecarConsistencia_novaDistancia: TOraQuery;
    QR_ChecarConsistencia_novaDistanciaQTDEREGISTROS: TFloatField;
    QR_Historico_DistanciaCOD_FAZENDA: TFloatField;
    QR_Historico_DistanciaDESCRICAO: TStringField;
    QR_Historico_DistanciaCOD_SAFRA: TFloatField;
    QR_Historico_DistanciaZONA: TFloatField;
    QR_Historico_DistanciaCOD_TALHAO: TFloatField;
    QR_Historico_DistanciaCOD_GRUPO: TFloatField;
    QR_Historico_DistanciaCOD_REGIONAL: TFloatField;
    QR_Historico_DistanciaCOD_UNIDADE: TFloatField;
    QR_Historico_DistanciaHORA_INICIAL: TStringField;
    QR_Historico_DistanciaHORA_FINAL: TStringField;
    QR_Historico_DistanciaDATAHORA_INI: TDateTimeField;
    QR_Historico_DistanciaDATAHORA_FIM: TDateTimeField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2ZONA: TcxGridDBColumn;
    cxGrid1DBTableView2COD_TALHAO: TcxGridDBColumn;
    cxGrid1DBTableView2HORA_INICIAL: TcxGridDBColumn;
    cxGrid1DBTableView2HORA_FINAL: TcxGridDBColumn;
    cxGrid1DBTableView2DATAHORA_INI: TcxGridDBColumn;
    cxGrid1DBTableView2DATAHORA_FIM: TcxGridDBColumn;
    SP_EncerraHistoricoDistancia: TOraStoredProc;
    QR_Talhao_Distancia_TMP: TOraQuery;
    DS_Talhao_Distancia_TMP: TOraDataSource;
    QR_Talhao_Distancia_TMPCOD_SAFRA: TFloatField;
    QR_Talhao_Distancia_TMPCOD_FAZENDA: TFloatField;
    QR_Talhao_Distancia_TMPZONA: TFloatField;
    QR_Talhao_Distancia_TMPCOD_GRUPO: TFloatField;
    QR_Talhao_Distancia_TMPCOD_REGIONAL: TFloatField;
    QR_Talhao_Distancia_TMPCOD_UNIDADE: TFloatField;
    QR_Talhao_Distancia_TMPGERA_POR_HORARIO: TStringField;
    QR_Talhao_Distancia_TMPHORA_INICIAL: TStringField;
    QR_Talhao_Distancia_TMPHORA_FINAL: TStringField;
    QR_Talhao_Distancia_TMPDATA_INICIAL: TDateTimeField;
    QR_Talhao_Distancia_TMPDATA_FINAL: TDateTimeField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ZONA: TcxGridDBColumn;
    cxGrid2DBTableView1GERA_POR_HORARIO: TcxGridDBColumn;
    cxGrid2DBTableView1HORA_INICIAL: TcxGridDBColumn;
    cxGrid2DBTableView1HORA_FINAL: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_INICIAL: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_FINAL: TcxGridDBColumn;
    pnFazenda: TRzPanel;
    QR_Talhao: TOraQuery;
    DS_Talhao: TOraDataSource;
    QR_TalhaoCOD_SAFRA: TFloatField;
    QR_TalhaoCOD_FAZENDA: TFloatField;
    QR_TalhaoDESCRICAO: TStringField;
    QR_TalhaoDESCRICAOFAZENDA: TStringField;
    RzPanel1: TRzPanel;
    RzBitBtnGerarProgramacao: TRzBitBtn;
    QR_Talhao_Distancias_Percurso_TMP: TOraQuery;
    DS_Talhao_Distancias_Percurso_TMP: TOraDataSource;
    QR_Talhao_Distancias_Percurso_TMPCOD_SAFRA: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPCOD_FAZENDA: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPZONA: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPCOD_GRUPO: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPCOD_REGIONAL: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPCOD_UNIDADE: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPDATA_INICIAL: TDateTimeField;
    QR_Talhao_Distancias_Percurso_TMPHORA_INICIAL: TStringField;
    QR_Talhao_Distancias_Percurso_TMPCOD_TIPOPERCURSO: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPINDO_VOLTANDO: TStringField;
    QR_Talhao_Distancias_Percurso_TMPDISTANCIA: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPSEQUENCIA: TFloatField;
    QR_Talhao_Distancias_Percurso_TMPDESCRICAO: TStringField;
    SP_ProgramarDistanciaTalhao: TOraStoredProc;
    QR_TalhaoCOD_GRUPO: TFloatField;
    QR_TalhaoCOD_REGIONAL: TFloatField;
    QR_TalhaoCOD_UNIDADE: TFloatField;
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1FocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure QR_Talhao_Distancias_PercursoNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QR_MainAfterScroll(DataSet: TDataSet);
    procedure QR_MainBeforePost(DataSet: TDataSet);
    procedure QR_Historico_DistanciaAfterScroll(DataSet: TDataSet);
    procedure QR_Historico_DistanciaBeforePost(DataSet: TDataSet);
    procedure QR_Historico_DistanciaNewRecord(DataSet: TDataSet);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure cxGrid2DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure QR_Talhao_Distancia_TMPAfterDelete(DataSet: TDataSet);
    procedure QR_Talhao_Distancia_TMPAfterScroll(DataSet: TDataSet);
    procedure QR_Talhao_Distancia_TMPBeforePost(DataSet: TDataSet);
    procedure QR_Talhao_Distancia_TMPAfterPost(DataSet: TDataSet);
    procedure QR_Talhao_Distancia_TMPNewRecord(DataSet: TDataSet);
    procedure QR_Talhao_Distancias_Percurso_TMPAfterPost(DataSet: TDataSet);
    procedure QR_Talhao_Distancias_Percurso_TMPNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
    procedure RzPageControl1PageChange(Sender: TObject);
    procedure cxGridDBTableView2COD_TIPOPERCURSOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure RzBitBtnGerarProgramacaoClick(Sender: TObject);
  private
    { Private declarations }
    indo_voltando : String;
  public
    { Public declarations }
  end;

var
  F_Talhoes_Distancia: TF_Talhoes_Distancia;

implementation

{$R *.dfm}

uses U_DM, u_recursos, U_Talhoes_Distancia_Alteracao, U_BuscaAvancada;

procedure TF_Talhoes_Distancia.cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
  inherited;
  if ALevel = cxGrid1Level2 then
    begin
      atualiza_foco(QR_Main,DS_Main);
      atualiza_botao(DS_Main);
      QR_Main.Refresh;
    end
  else if ALevel = cxGrid1Level3 then
    begin
      atualiza_foco(QR_Historico_Distancia,DS_Historico_Distancia);
      atualiza_botao(DS_Historico_Distancia);
      QR_Historico_Distancia.Refresh;
    end;

end;

procedure TF_Talhoes_Distancia.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if cxGrid1.ActiveView = cxGrid1DBTableView1 then
    cxGrid1.OnFocusedViewChanged(cxGrid1,cxGrid1DBTableView1,cxGrid1DBTableView1);
  if cxGrid1.ActiveView = cxGrid1DBTableView2 then
    cxGrid1.OnFocusedViewChanged(cxGrid2,cxGrid1DBTableView2,cxGrid1DBTableView2);
end;

procedure TF_Talhoes_Distancia.cxGrid1FocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
  inherited;
  if AFocusedView = cxGrid1DBTableView1 then
    atualiza_foco(QR_Main,DS_Main)
  else
    atualiza_foco(QR_Historico_Distancia,DS_Historico_Distancia);
end;

procedure TF_Talhoes_Distancia.cxGrid2DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  aux : Double;
begin
  inherited;
  RzBitBtnPesquisar.Enabled :=  APrevFocusedItem = cxGrid2DBTableView1ZONA;
  if (DS_Talhao_Distancia_TMP.State in [dsinsert,dsedit]) then
  begin

    if APrevFocusedItem = cxGrid2DBTableView1ZONA then
      begin
        if QR_Talhao_Distancia_TMPZONA.AsString <> '' then
        begin
          aux := Buscar_descricao('talhao',
                                    'count(1) qtde',
                                    'zona',
                                    ' cod_fazenda =   '+ QR_TalhaoCOD_FAZENDA.AsString+
                                    ' AND cod_safra = '+ QR_TalhaoCOD_SAFRA.AsString,
                                    QR_Talhao_Distancia_TMPZONA.AsFloat);
          if aux = 0 then
          begin
            Application.MessageBox('Zona não cadastrada.','Atenção',MB_ICONINFORMATION + MB_OK);
            QR_Talhao_Distancia_TMPZONA.Clear;
            APrevFocusedItem.FocusWithSelection;
            Abort;
          end;
        end;
      end
    else if APrevFocusedItem = cxGrid2DBTableView1GERA_POR_HORARIO then
      begin
        if QR_Talhao_Distancia_TMPGERA_POR_HORARIO.AsString = 'S' then
        begin
          cxGrid2DBTableView1HORA_INICIAL.Options.Focusing := True;
          cxGrid2DBTableView1HORA_FINAL.Options.Focusing   := True;
          cxGrid2DBTableView1HORA_INICIAL.FocusWithSelection;
          Abort;
        end
      else
        begin
          cxGrid2DBTableView1HORA_INICIAL.Options.Focusing := False;
          cxGrid2DBTableView1HORA_FINAL.Options.Focusing   := False;
          QR_Talhao_Distancia_TMPHORA_INICIAL.Clear;
          QR_Talhao_Distancia_TMPHORA_FINAL.Clear;
          cxGrid2DBTableView1DATA_INICIAL.FocusWithSelection;
        end;
      end
    else if APrevFocusedItem = cxGrid2DBTableView1HORA_INICIAL then
      begin
        if QR_Talhao_Distancia_TMPHORA_INICIAL.AsString <> '' then
          if not Validar_DataHora(QR_Talhao_Distancia_TMPHORA_INICIAL.AsString) then
          begin
            Application.MessageBox('Informe a hora inicial válida.','Atenção',MB_ICONINFORMATION + MB_OK);
            QR_Talhao_Distancia_TMPHORA_INICIAL.Clear;
            APrevFocusedItem.FocusWithSelection;
            Abort;
          end;
      end
    else if APrevFocusedItem = cxGrid2DBTableView1HORA_FINAL then
      begin
        if QR_Talhao_Distancia_TMPHORA_FINAL.AsString <> '' then
          if not Validar_DataHora(QR_Talhao_Distancia_TMPHORA_FINAL.AsString) then
          begin
            Application.MessageBox('Informe a hora final válida.','Atenção',MB_ICONINFORMATION + MB_OK);
            QR_Talhao_Distancia_TMPHORA_FINAL.Clear;
            APrevFocusedItem.FocusWithSelection;
            Abort;
          end;
      end;

  end;

end;

procedure TF_Talhoes_Distancia.cxGridDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if DS_Talhao_Distancias_Percurso.State in [dsinsert,dsedit] then
  begin
    if APrevFocusedItem = cxGridDBTableView1COD_TIPOPERCURSO then
    begin
      if QR_Talhao_Distancias_PercursoCOD_TIPOPERCURSO.AsString = '' then
        QR_Talhao_Distancias_PercursoDESCRICAO.Clear
      else
        begin
          QR_Talhao_Distancias_PercursoDESCRICAO.AsString := VarToStr(Buscar_Descricao('tipo_percurso',
                                                                                        'descricao',
                                                                                        'cod_tipopercurso','',
                                                                                         QR_Talhao_Distancias_PercursoCOD_TIPOPERCURSO.AsFloat));
          if QR_Talhao_Distancias_PercursoDESCRICAO.AsString = '' then
          begin
            Application.MessageBox('Tipo de Percurso não cadastrado.','Atenção',MB_ICONINFORMATION + MB_OK);
            QR_Talhao_Distancias_PercursoCOD_TIPOPERCURSO.Clear;
            cxGridDBTableView1COD_TIPOPERCURSO.FocusWithSelection;
          end;
        end;
    end;
  end;
end;

procedure TF_Talhoes_Distancia.cxGridDBTableView2COD_TIPOPERCURSOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Sql : String;
  Resultado : Variant;
begin
  inherited;
  Sql := 'SELECT tp.cod_tipopercurso "Código",                ' +
         '       tp.descricao "Descrição"                     ' +
         '  FROM tipos_percurso tp                    ' +
         ' &Macro                                             ' +
         'ORDER BY tp.cod_tipopercurso                        ' ;
  Resultado := F_BuscaAvancada.Buscar(Sql,1,'Buscar Tipo Percurso');
  if Resultado <> null then
  begin
    if QR_Talhao_Distancias_Percurso_TMP.State = dsBrowse then
      QR_Talhao_Distancias_Percurso_TMP.Edit;

    QR_Talhao_Distancias_Percurso_TMPCOD_TIPOPERCURSO.AsFloat := Resultado;

    cxGridDBTableView2DISTANCIA.FocusWithSelection;
  end;
end;

procedure TF_Talhoes_Distancia.cxGridDBTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if DS_Talhao_Distancias_Percurso_TMP.State in [dsinsert,dsedit] then
  begin
    if APrevFocusedItem = cxGridDBTableView2COD_TIPOPERCURSO then
    begin
      if QR_Talhao_Distancias_Percurso_TMPCOD_TIPOPERCURSO.AsString = '' then
        QR_Talhao_Distancias_Percurso_TMPDESCRICAO.Clear
      else
        begin
          QR_Talhao_Distancias_Percurso_TMPDESCRICAO.AsString := VarToStr(Buscar_Descricao('tipos_percurso',
                                                                                         'descricao',
                                                                                         'cod_tipopercurso','',
                                                                                         QR_Talhao_Distancias_Percurso_TMPCOD_TIPOPERCURSO.AsFloat));
          if QR_Talhao_Distancias_Percurso_TMPDESCRICAO.AsString = '' then
          begin
            Application.MessageBox('Tipo de Percurso não cadastrado.','Atenção',MB_ICONINFORMATION + MB_OK);
            QR_Talhao_Distancias_Percurso_TMPCOD_TIPOPERCURSO.Clear;
            cxGridDBTableView2COD_TIPOPERCURSO.FocusWithSelection;
          end;
        end;
    end;
  end;
end;

procedure TF_Talhoes_Distancia.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left :=1;
  inherited;
  QR_Main.Open;
  QR_Historico_Distancia.Open;
  QR_Talhao_Distancias_Percurso.Open;
//  QR_Talhao_Distancia_TMP.Refresh;
end;

procedure TF_Talhoes_Distancia.QR_Historico_DistanciaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if cxGrid1.ActiveView = cxGrid1DBTableView2 then
  begin
    QR_Talhao_Distancias_Percurso.Close;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_safra').AsFloat        := QR_Historico_DistanciaCOD_SAFRA.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_fazenda').AsFloat      := QR_Historico_DistanciaCOD_FAZENDA.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('zona').AsFloat             := QR_Historico_DistanciaZONA.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_talhao').AsFloat       := QR_Historico_DistanciaCOD_TALHAO.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_grupo').AsFloat        := QR_Historico_DistanciaCOD_GRUPO.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_regional').AsFloat     := QR_Historico_DistanciaCOD_REGIONAL.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_unidade').AsFloat      := QR_Historico_DistanciaCOD_UNIDADE.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('datahora_ini').AsDateTime  := QR_Historico_DistanciaDATAHORA_INI.AsDateTime;
    QR_Talhao_Distancias_Percurso.ParamByName('hora_inicial').AsString    := QR_Historico_DistanciaHORA_INICIAL.AsString;
    QR_Talhao_Distancias_Percurso.Open;
  end;
end;

procedure TF_Talhoes_Distancia.QR_Historico_DistanciaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if QR_Historico_DistanciaHORA_INICIAL.AsString = '' then
    QR_Historico_DistanciaHORA_INICIAL.AsString := '00:00:00';

  if QR_Historico_DistanciaHORA_FINAL.AsString = '' then
    QR_Historico_DistanciaHORA_FINAL.AsString := '00:00:00';
end;

procedure TF_Talhoes_Distancia.QR_Historico_DistanciaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QR_Historico_DistanciaCOD_GRUPO.AsFloat    := QR_Main.ParamByName('cod_grupo').AsFloat;
  QR_Historico_DistanciaCOD_REGIONAL.AsFloat := QR_Main.ParamByName('cod_regional').AsFloat;
  QR_Historico_DistanciaCOD_UNIDADE.AsFloat  := QR_Main.ParamByName('cod_unidade').AsFloat;
  QR_Historico_DistanciaCOD_FAZENDA.AsFloat  := QR_Main.ParamByName('cod_fazenda').AsFloat;
  QR_Historico_DistanciaDESCRICAO.AsString   := QR_Main.ParamByName('nome_fazenda').AsString;
  QR_Historico_DistanciaCOD_SAFRA.AsFloat    := QR_Main.ParamByName('cod_safra').AsFloat;
end;

procedure TF_Talhoes_Distancia.QR_MainAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cxGrid1.ActiveView = cxGrid1DBTableView1 then
  begin
    QR_Talhao_Distancias_Percurso.Close;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_safra').AsFloat        := QR_MainCOD_SAFRA.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_fazenda').AsFloat      := QR_MainCOD_FAZENDA.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('zona').AsFloat             := QR_MainZONA.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_talhao').AsFloat       := QR_MainCOD_TALHAO.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_grupo').AsFloat        := QR_MainCOD_GRUPO.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_regional').AsFloat     := QR_MainCOD_REGIONAL.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('cod_unidade').AsFloat      := QR_MainCOD_UNIDADE.AsFloat;
    QR_Talhao_Distancias_Percurso.ParamByName('datahora_ini').AsDateTime  := QR_MainDATAHORA_INI.AsDateTime;
    QR_Talhao_Distancias_Percurso.ParamByName('hora_inicial').AsString    := QR_MainHORA_INICIAL.AsString;
    QR_Talhao_Distancias_Percurso.Open;
  end;


end;

procedure TF_Talhoes_Distancia.QR_MainBeforePost(DataSet: TDataSet);

begin
  inherited;

  if QR_Main.Tag = 0 then
  begin
    if QR_MainHORA_INICIAL.AsString = '' then
      QR_MainHORA_INICIAL.AsString := '00:00:00';

    if QR_MainHORA_FINAL.AsString = '' then
      QR_MainHORA_INICIAL.AsString := '00:00:00';
  end;

  QR_ChecarConsistencia_novaDistancia.Close;
  QR_ChecarConsistencia_novaDistancia.ParamByName('cod_safra').AsFloat   := QR_MainCOD_SAFRA.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('cod_fazenda').AsFloat := QR_MainCOD_FAZENDA.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('zona').AsFloat        := QR_MainZONA.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('cod_talhao').AsFloat  := QR_MainCOD_TALHAO.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('cod_grupo').AsFloat   := QR_MainCOD_GRUPO.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('cod_regional').AsFloat:= QR_MainCOD_REGIONAL.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('cod_unidade').AsFloat := QR_MainCOD_UNIDADE.AsFloat;
  QR_ChecarConsistencia_novaDistancia.ParamByName('datahora_ini').AsDateTime := QR_MainDATAHORA_INI.AsDateTime;
  QR_ChecarConsistencia_novaDistancia.ParamByName('dataIni').AsDateTime := QR_MainDATAHORA_INI.AsDateTime;
  if QR_MainDATAHORA_FIM.AsString = '' then
    QR_ChecarConsistencia_novaDistancia.ParamByName('dataFim').AsDateTime := Sysdate_Banco + 1000
  else
    QR_ChecarConsistencia_novaDistancia.ParamByName('dataFim').AsDateTime := QR_MainDATAHORA_FIM.AsDateTime;
  QR_ChecarConsistencia_novaDistancia.ParamByName('hora_inicial').AsString := QR_MainHORA_INICIAL.AsString;
  QR_ChecarConsistencia_novaDistancia.ParamByName('hora_final').AsString := QR_MainHORA_FINAL.AsString;
  QR_ChecarConsistencia_novaDistancia.Open;

  if QR_ChecarConsistencia_novaDistanciaQTDEREGISTROS.AsFloat > 1 then
  begin
    Application.MessageBox('Foi localizada uma distância com intersecção de período para esta fazenda, zona e talhão.! '+ #13 +  'Verifique o período de validade das distância desse talhão.','Atenção',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  QR_Main.Tag := 0;
end;

procedure TF_Talhoes_Distancia.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat    := QR_Main.ParamByName('cod_grupo').AsFloat;
  QR_MainCOD_REGIONAL.AsFloat := QR_Main.ParamByName('cod_regional').AsFloat;
  QR_MainCOD_UNIDADE.AsFloat  := QR_Main.ParamByName('cod_unidade').AsFloat;
  QR_MainCOD_FAZENDA.AsFloat  := QR_Main.ParamByName('cod_fazenda').AsFloat;
  QR_MainDESCRICAO.AsString   := QR_Main.ParamByName('nome_fazenda').ASString;
  QR_MainCOD_SAFRA.AsFloat    := QR_Main.ParamByName('cod_safra').AsFloat;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancias_PercursoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QR_Talhao_Distancias_PercursoCOD_SAFRA.AsFloat        := QR_MainCOD_SAFRA.AsFloat;
  QR_Talhao_Distancias_PercursoCOD_FAZENDA.AsFloat      := QR_MainCOD_FAZENDA.AsFloat;
  QR_Talhao_Distancias_PercursoZONA.AsFloat             := QR_MainZONA.AsFloat;
  QR_Talhao_Distancias_PercursoCOD_TALHAO.AsFloat       := QR_MainCOD_TALHAO.AsFloat;
  QR_Talhao_Distancias_PercursoCOD_GRUPO.AsFloat        := QR_MainCOD_GRUPO.AsFloat;
  QR_Talhao_Distancias_PercursoCOD_REGIONAL.AsFloat     := QR_MainCOD_REGIONAL.AsFloat;
  QR_Talhao_Distancias_PercursoCOD_UNIDADE.AsFloat      := QR_MainCOD_UNIDADE.AsFloat;
  QR_Talhao_Distancias_PercursoDATAHORA_INI.AsDateTime  := QR_MainDATAHORA_INI.AsDateTime;
  QR_Talhao_Distancias_PercursoHORA_INICIAL.AsString    := QR_MainHORA_INICIAL.AsString;
  QR_Talhao_Distancias_PercursoINDO_VOLTANDO.AsString   := 'I';
  WITH TOraQuery.Create(Self) do
  begin
    Session := DM.Sessao;
    SQL.Add('SELECT NVL(max(tp.sequencia),0) + 1 sequencia       ' +
            '  FROM talhao_distancia_percurso tp       ' +
            ' WHERE tp.cod_safra        = :cod_safra             ' +
            '   AND tp.cod_fazenda      = :cod_fazenda           ' +
            '   AND tp.zona             = :zona                  ' +
            '   AND tp.cod_talhao       = :cod_talhao            ' +
            '   AND tp.cod_grupo        = :cod_grupo             ' +
            '   AND tp.cod_regional     = :cod_regional          ' +
            '   AND tp.cod_unidade      = :cod_unidade           ' +
            '   AND tp.datahora_ini     = :datahora_ini          ' +
            '   AND tp.hora_inicial     = :hora_inicial          ');
    ParamByName('cod_safra').AsFloat        := QR_Talhao_Distancias_PercursoCOD_SAFRA.AsFloat;
    ParamByName('cod_fazenda').AsFloat      := QR_Talhao_Distancias_PercursoCOD_FAZENDA.AsFloat;
    ParamByName('zona').AsFloat             := QR_Talhao_Distancias_PercursoZONA.AsFloat;
    ParamByName('cod_talhao').AsFloat       := QR_Talhao_Distancias_PercursoCOD_TALHAO.AsFloat;
    ParamByName('cod_grupo').AsFloat        := QR_Talhao_Distancias_PercursoCOD_GRUPO.AsFloat;
    ParamByName('cod_regional').AsFloat     := QR_Talhao_Distancias_PercursoCOD_REGIONAL.AsFloat;
    ParamByName('cod_unidade').AsFloat      := QR_Talhao_Distancias_PercursoCOD_UNIDADE.AsFloat;
    ParamByName('datahora_ini').AsDateTime  := QR_Talhao_Distancias_PercursoDATAHORA_INI.AsDateTime;
    ParamByName('hora_inicial').AsString    := QR_Talhao_Distancias_PercursoHORA_INICIAL.AsString;
    Open;
    QR_Talhao_Distancias_PercursoSEQUENCIA.AsFloat := FieldByName('sequencia').AsFloat;
    Free;
  end;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancias_Percurso_TMPAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  indo_voltando := QR_Talhao_Distancias_Percurso_TMPINDO_VOLTANDO.AsString;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancias_Percurso_TMPNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if QR_Talhao_Distancia_TMP.IsEmpty then
  begin
    Application.MessageBox('Selecione uma zona para inserir o percurso.','Atenção',MB_ICONINFORMATION + MB_OK);
    DataSet.Cancel;
    Abort;
  end;

  QR_Talhao_Distancias_Percurso_TMPCOD_SAFRA.AsFloat        := QR_Talhao_Distancia_TMPCOD_SAFRA.AsFloat;
  QR_Talhao_Distancias_Percurso_TMPCOD_FAZENDA.AsFloat      := QR_Talhao_Distancia_TMPCOD_FAZENDA.AsFloat;
  QR_Talhao_Distancias_Percurso_TMPZONA.AsFloat             := QR_Talhao_Distancia_TMPZONA.AsFloat;
  QR_Talhao_Distancias_Percurso_TMPCOD_GRUPO.AsFloat        := QR_Talhao_Distancia_TMPCOD_GRUPO.AsFloat;
  QR_Talhao_Distancias_Percurso_TMPCOD_REGIONAL.AsFloat     := QR_Talhao_Distancia_TMPCOD_REGIONAL.AsFloat;
  QR_Talhao_Distancias_Percurso_TMPCOD_UNIDADE.AsFloat      := QR_Talhao_Distancia_TMPCOD_UNIDADE.AsFloat;
  QR_Talhao_Distancias_Percurso_TMPDATA_INICIAL.AsDateTime  := QR_Talhao_Distancia_TMPDATA_INICIAL.AsDateTime;
  QR_Talhao_Distancias_Percurso_TMPHORA_INICIAL.AsString    := QR_Talhao_Distancia_TMPHORA_INICIAL.AsString;
  QR_Talhao_Distancias_Percurso_TMPINDO_VOLTANDO.AsString   := indo_voltando;

  QR_Talhao_Distancias_Percurso_TMPSEQUENCIA.AsFloat := Buscar_Descricao('talhao_distancia_percurso_tmp a',
                                                                           'NVL(MAX(a.sequencia),0) + 1 sequencia',
                                                                           'cod_safra',
                                                                           ' a.cod_fazenda = ' + QR_Talhao_Distancias_Percurso_TMPCOD_FAZENDA.AsString+
                                                                           ' AND a.zona = ' + QR_Talhao_Distancias_Percurso_TMPZONA.AsString+
                                                                           ' AND a.cod_grupo    = ' + QR_Talhao_Distancias_Percurso_TMPCOD_GRUPO.AsString+
                                                                           ' AND a.cod_regional = ' + QR_Talhao_Distancias_Percurso_TMPCOD_REGIONAL.AsString+
                                                                           ' AND a.cod_unidade  = ' + QR_Talhao_Distancias_Percurso_TMPCOD_UNIDADE.AsString+
                                                                           ' AND a.data_inicial = TO_DATE('''+QR_Talhao_Distancias_Percurso_TMPDATA_INICIAL.AsString +''',''DD/MM/RRRR HH24:MI:SS'') ' +
                                                                           ' AND a.hora_inicial = '''+QR_Talhao_Distancias_Percurso_TMPHORA_INICIAL.AsString+'''',
                                                                           QR_Talhao_Distancias_Percurso_TMPCOD_SAFRA.AsFloat);

  cxGridDBTableView2COD_TIPOPERCURSO.FocusWithSelection;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancia_TMPAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  RzBitBtnGerarProgramacao.Enabled := not DataSet.IsEmpty;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancia_TMPAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  RzBitBtnGerarProgramacao.Enabled := not DataSet.IsEmpty;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancia_TMPAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  RzBitBtnGerarProgramacao.Enabled := not DataSet.IsEmpty;

  QR_Talhao_Distancias_Percurso_TMP.Close;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('cod_safra').AsFloat        := QR_Talhao_Distancia_TMPCOD_SAFRA.AsFloat;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('cod_fazenda').AsFloat      := QR_Talhao_Distancia_TMPCOD_FAZENDA.AsFloat;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('zona').AsFloat             := QR_Talhao_Distancia_TMPZONA.AsFloat;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('cod_grupo').AsFloat        := QR_Talhao_Distancia_TMPCOD_GRUPO.AsFloat;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('cod_regional').AsFloat      := QR_Talhao_Distancia_TMPCOD_REGIONAL.AsFloat;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('cod_unidade').AsFloat       := QR_Talhao_Distancia_TMPCOD_UNIDADE.AsFloat;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('data_inicial').AsDateTime  := QR_Talhao_Distancia_TMPDATA_INICIAL.AsDateTime;
  QR_Talhao_Distancias_Percurso_TMP.ParamByName('hora_inicial').AsString    := QR_Talhao_Distancia_TMPHORA_INICIAL.AsString;
  QR_Talhao_Distancias_Percurso_TMP.Open;
end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancia_TMPBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if QR_Talhao_Distancia_TMPHORA_INICIAL.AsString = '' then
    QR_Talhao_Distancia_TMPHORA_INICIAL.AsString := '00:00:00';
  if QR_Talhao_Distancia_TMPHORA_FINAL.AsString = '' then
    QR_Talhao_Distancia_TMPHORA_FINAL.AsString := '23:59:59';

end;

procedure TF_Talhoes_Distancia.QR_Talhao_Distancia_TMPNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QR_Talhao_Distancia_TMPCOD_GRUPO.AsFloat    := QR_TalhaoCOD_GRUPO.AsFloat;
  QR_Talhao_Distancia_TMPCOD_REGIONAL.AsFloat := QR_TalhaoCOD_REGIONAL.AsFloat;
  QR_Talhao_Distancia_TMPCOD_UNIDADE.AsFloat  := QR_TalhaoCOD_UNIDADE.AsFloat;
  QR_Talhao_Distancia_TMPCOD_SAFRA.AsFloat                 := QR_TalhaoCOD_SAFRA.AsFloat;
  QR_Talhao_Distancia_TMPCOD_FAZENDA.AsFloat               := QR_TalhaoCOD_FAZENDA.AsFloat;
  QR_Talhao_Distancia_TMPGERA_POR_HORARIO.AsString         := 'N';
  QR_Talhao_Distancia_TMPHORA_INICIAL.AsString             := '00:00:00';
  QR_Talhao_Distancia_TMPHORA_FINAL.AsString               := '23:59:59';

  indo_voltando := 'I';
end;

procedure TF_Talhoes_Distancia.RzBitBtnGerarProgramacaoClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(PChar('Gerar programação das distâncias dos talhões para a fazenda '+QR_TalhaoCOD_FAZENDA.AsString+' ?'),'Confirmação',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    SP_ProgramarDistanciaTalhao.Execute;

    Application.MessageBox('Informações geradas com êxito.','Informação',MB_ICONINFORMATION + MB_OK);

    QR_Main.Refresh;
    QR_Historico_Distancia.Refresh;
    QR_Talhao_Distancia_TMP.Refresh;
  end;
end;

procedure TF_Talhoes_Distancia.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = tsInformacoesDistancia then
    cxGrid1.SetFocus
  else if RzPageControl1.ActivePage = tsGerarDistancia then
    cxGrid2.SetFocus;


end;

procedure TF_Talhoes_Distancia.RzBitBtnPesquisarClick(Sender: TObject);
Var Resultado : Variant;
    Sql : String;
begin
  if RzBitBtnPesquisar.Enabled then
  begin
    //Busca tipos de percurso
    if cxGrid1DBTableView1ZONA.Focused then
    begin
      sql := 'SELECT DISTINCT t.zona "Zona"                ' +
             '  FROM talhao t                     ' +
             ' WHERE t.cod_fazenda  = ' + QR_TalhaoCOD_FAZENDA.AsString +
             '   AND t.cod_safra    = ' + QR_TalhaoCOD_SAFRA.AsString +
             '   AND t.cod_grupo    = ' + QR_TalhaoCOD_GRUPO.AsString +
             '   AND t.cod_regional = ' + QR_TalhaoCOD_REGIONAL.AsString +
             '   AND t.cod_unidade  = ' + QR_TalhaoCOD_UNIDADE.AsString +
             ' &Macro                                      ' +
             'ORDER BY zona                                ' ;
      Resultado := F_BuscaAvancada.Buscar(sql,1,'Buscar Zonas');
      if Resultado <> null then
      begin
        if QR_Talhao_Distancia_TMP.State = dsBrowse then
          QR_Talhao_Distancia_TMP.Edit;
        QR_Talhao_Distancia_TMPZONA.AsFloat := Resultado;
        cxGridDBTableView1FocusedItemChanged(cxGridDBTableView1,
                                             cxGrid1DBTableView1ZONA,
                                             cxGrid1DBTableView1ZONA);
        cxGrid1DBTableView1ZONA.FocusWithSelection;
      end;
    end;
  end;
end;

procedure TF_Talhoes_Distancia.RzGroup1Items0Click(Sender: TObject);
var
  dataEncerramento : TDateTime;
  unidadeEncerramento : Integer;
  zonaEncerramento : Integer;
begin
  inherited;
  if Application.MessageBox(PChar('Deseja encerrar o histório das distâncias ?'),'Confirmação',MB_YESNO+MB_ICONQUESTION) = mryes then
  begin
    try
      dataEncerramento := StrToDateTime(InputBox('Data Encerramento','Informe a data de encerramento',DateTimeToStr(Sysdate_Banco)));
    except
      Application.MessageBox('Processo Cancelado! Informe uma data válida.','Atenção',MB_ICONERROR + MB_OK);
      Abort;
    end;

    unidadeEncerramento := QR_MainCOD_UNIDADE.AsInteger;

    try
      zonaEncerramento := StrToInt(InputBox('Zona','Informe a zona de encerramento',''));
    except
      Application.MessageBox('Processo Cancelado! Informe um código de zona válido.','Atenção',MB_ICONERROR + MB_OK);
      Abort;
    end;

    if Application.MessageBox(PChar('Deseja encerrar o histórico de todos os talhões da zona '+IntToStr(zonaEncerramento)+
                                    ' da unidade '+IntToStr(unidadeEncerramento)+' ?'),
                                    'Confirmação',MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = mrYes then
    begin
      SP_EncerraHistoricoDistancia.ParamByName('P_SAFRA').AsFloat               := QR_MainCOD_SAFRA.AsFloat;
      SP_EncerraHistoricoDistancia.ParamByName('P_FAZENDA').AsFloat             := QR_MainCOD_FAZENDA.AsFloat;
      SP_EncerraHistoricoDistancia.ParamByName('P_ZONA').AsFloat                := QR_MainZONA.AsFloat;
      SP_EncerraHistoricoDistancia.ParamByName('P_COD_GRUPO').AsFloat        := QR_MainCOD_GRUPO.AsFloat;
      SP_EncerraHistoricoDistancia.ParamByName('P_COD_REGIONAL').AsFloat             := unidadeEncerramento;
      SP_EncerraHistoricoDistancia.ParamByName('P_COD_UNIDADE').AsFloat              := QR_MainCOD_UNIDADE.AsFloat;
      SP_EncerraHistoricoDistancia.ParamByName('P_DATAENCERRAMENTO').AsDateTime := dataEncerramento;
      SP_EncerraHistoricoDistancia.ExecProc;

      QR_Main.Refresh;
    end;

  end;
end;

procedure TF_Talhoes_Distancia.RzGroup1Items1Click(Sender: TObject);
var
  bookMarkPrincipal, bookMarkHistorico : TBookMark;
  forcaErro : Integer;
begin
  inherited;

  bookMarkPrincipal := QR_Main.GetBookmark;
  bookMarkHistorico := QR_Historico_Distancia.GetBookmark;

  F_Talhoes_Distancia_alteracao := TF_Talhoes_Distancia_Alteracao.Create(Application);
  try
    try
      if cxGrid1.ActiveView = cxGrid1DBTableView1 then
        F_Talhoes_Distancia_alteracao.atualizaInformacoesIniciais(QR_Main,
                                                                  QR_Talhao_Distancias_Percurso)
      else if cxGrid1.ActiveView = cxGrid1DBTableView2 then
        F_Talhoes_Distancia_alteracao.atualizaInformacoesIniciais(QR_Historico_Distancia,
                                                                  QR_Talhao_Distancias_Percurso)
        else
          forcaErro := StrToInt('a');

      F_Talhoes_Distancia_alteracao.QR_DistanciaPercursoTMP.Refresh;

      F_Talhoes_Distancia_alteracao.ShowModal;
    except
      Application.MessageBox('Erro ao tentar abrir tela de alteração de distância do percurso. Tente novamente.','Atenção',MB_ICONINFORMATION + MB_OK);
      RAise;
    end;
  finally

    F_Talhoes_Distancia_alteracao.Release;
    F_Talhoes_Distancia_alteracao := nil;

    QR_Main.Refresh;
    QR_Main.GotoBookmark(bookMarkPrincipal);
    QR_Historico_Distancia.Refresh;
    QR_Historico_Distancia.GotoBookmark(bookMarkHistorico);
  end;
end;


procedure TF_Talhoes_Distancia.RzPageControl1PageChange(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = tsInformacoesDistancia then
  begin
    atualiza_foco(QR_Main,DS_Main);
    atualiza_botao(DS_Main);
    QR_Main.Refresh;
  end
  else
  if RzPageControl1.ActivePage = tsGerarDistancia then
  begin
    atualiza_foco(QR_Talhao_Distancia_TMP,DS_Talhao_Distancia_TMP);
    atualiza_botao(DS_Talhao_Distancia_TMP);
    QR_Talhao_Distancia_TMP.Refresh;
  end;

end;

end.
