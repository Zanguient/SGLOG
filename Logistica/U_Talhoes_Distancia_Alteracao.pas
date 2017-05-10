//-------------------------------------------------------------------------------------------------
// Data : 25/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela utilizada para atualizar as distancias dos
// talhões de forma prática e em blocos, é possivel atualizar as distancias para todos
// os talhoes da fazenda, da zona ou apenas do talhão indicado.
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Talhoes_Distancia_Alteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Ora, MemDS, DBAccess,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,  RzTabs, RzPanel,
  cxRadioGroup, DBCtrls, cxButtonEdit, RzButton, RzRadGrp, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  U_TemplateConsulta, RzSplit;

type
  TF_Talhoes_Distancia_Alteracao = class(TForm)
    RzPageControl1: TRzPageControl;
    tsAlteracaoDistancias: TRzTabSheet;
    pnNavegacao: TPanel;
    Panel4: TPanel;
    PNGBtnProximo: TRzBitbtn;
    Panel5: TPanel;
    PNGBtnAnterior: TRzBitbtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QR_DistanciaPercursoTMP: TOraQuery;
    DS_DistanciaTalhao_TMP: TOraDataSource;
    cxGrid1DBTableView1COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGrid1DBTableView1INDO_VOLTANDO: TcxGridDBColumn;
    cxGrid1DBTableView1DISTANCIA: TcxGridDBColumn;
    cxGrid1DBTableView1SEQUENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    RzPanel1: TRzPanel;
    Panel6: TPanel;
    Label1: TLabel;
    lbZona: TLabel;
    Label3: TLabel;
    lbTalhao: TLabel;
    Label2: TLabel;
    lbEmpresa: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    lbDataInicio: TLabel;
    lbDataTermino: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    lbHoraInicial: TLabel;
    lbHoraFinal: TLabel;
    tsAplicacaoDistancias: TRzTabSheet;
    RzPanel2: TRzPanel;
    tsResumo: TRzTabSheet;
    RzPanel4: TRzPanel;
    RzRadioGroupAplicacao: TRzRadioGroup;
    RzGroupBox1: TRzGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel7: TPanel;
    RzBitBtn2: TRzBitBtn;
    Label6: TLabel;
    SP_CriarPercurso: TOraStoredProc;
    QR_DistanciaPercursoTMPCOD_SAFRA: TFloatField;
    QR_DistanciaPercursoTMPCOD_FAZENDA: TFloatField;
    QR_DistanciaPercursoTMPZONA: TFloatField;
    QR_DistanciaPercursoTMPCOD_TALHAO: TFloatField;
    QR_DistanciaPercursoTMPCOD_GRUPO: TFloatField;
    QR_DistanciaPercursoTMPCOD_REGIONAL: TFloatField;
    QR_DistanciaPercursoTMPCOD_UNIDADE: TFloatField;
    QR_DistanciaPercursoTMPDATA_INICIAL: TDateTimeField;
    QR_DistanciaPercursoTMPHORA_INICIAL: TStringField;
    QR_DistanciaPercursoTMPCOD_TIPOPERCURSO: TFloatField;
    QR_DistanciaPercursoTMPINDO_VOLTANDO: TStringField;
    QR_DistanciaPercursoTMPDISTANCIA: TFloatField;
    QR_DistanciaPercursoTMPSEQUENCIA: TFloatField;
    QR_DistanciaPercursoTMPDESCRICAO: TStringField;
    RzSplitterTemplate: TRzSplitter;
    pnOpcoes: TPanel;
    RzBitBtnSair: TRzBitBtn;
    pnSeparador: TPanel;
    pnComponentes: TPanel;
    RzBitBtnGravar: TRzBitBtn;
    RzBitBtnNovo: TRzBitBtn;
    RzBitBtnExcluir: TRzBitBtn;
    RzBitBtnPesquisar: TRzBitBtn;
    DBNavigator: TDBNavigator;
    pnSeparador2: TPanel;
    RzBitBtnCancelar: TRzBitBtn;
    pnSeparador1: TPanel;
    pnSeparador3: TPanel;
    RzBitBtnImprimir: TRzBitBtn;
    Panel3: TPanel;
    RzGroupBox2: TRzGroupBox;
    lbAplicarPara_Resumo: TLabel;
    procedure QR_DistanciaPercursoTMPAfterPost(DataSet: TDataSet);
    procedure tsResumoEnter(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure QR_DistanciaPercursoTMPNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure PNGBtnAnteriorClick(Sender: TObject);
    procedure PNGBtnProximoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure atualizaInformacoesIniciais(oraQuery_DistanciaTalhao: TDataset; oraQuery_DistanciaTalhaoPercurso: TDataSet);
    procedure navegaEtapas(proximaAnterior: String);
    procedure atualizaPainelNavegacao;
    procedure RzBitBtnSairClick(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure RzBitBtnGravarClick(Sender: TObject);
    procedure RzBitBtnExcluirClick(Sender: TObject);
    procedure RzBitBtnCancelarClick(Sender: TObject);
    procedure pnOpcoesResize(Sender: TObject);
    procedure DS_DistanciaTalhao_TMPStateChange(Sender: TObject);
    procedure atualiza_botao(Source: TOraDataSource);
    procedure atualiza_foco(Query: TOraQuery; DSource: TOraDataSource);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    bookMark : TBookmark;
    indo_voltando : String;
  public
    { Public declarations }
  end;

var
  F_Talhoes_Distancia_Alteracao: TF_Talhoes_Distancia_Alteracao;
  MainQuery:TOraQuery;
  MainSource:TOraDataSource;
  objeto_ativo: TWinControl;

implementation

uses U_DM, u_recursos, U_BuscaAvancada;

{$R *.dfm}

procedure TF_Talhoes_Distancia_Alteracao.atualizaPainelNavegacao;
begin
  if RzPageControl1.ActivePageIndex = 0 then
    begin
      PNGBtnAnterior.Enabled     := False;
      PNGBtnAnterior.Hint        := 'Etapa Anterior';
      PNGBtnAnterior.ShowHint    := True;
    end
  else
    begin
      PNGBtnAnterior.Enabled     := True;
      PNGBtnAnterior.Hint        := 'Etapa anterior';
      PNGBtnAnterior.ShowHint    := True;
    end;

  if RzPageControl1.ActivePageIndex+1 = RzPageControl1.PageCount then
    begin
      PNGBtnProximo.Enabled     := False;
      PNGBtnProximo.Hint        := 'Próxima etapa';
      PNGBtnProximo.ShowHint    := True;
    end
  else
    begin
      PNGBtnProximo.Enabled     := True;
      PNGBtnProximo.Hint        := 'Proxima etapa';
      PNGBtnProximo.ShowHint    := True;
    end;

  pnNavegacao.Caption   := 'Passo '+IntToStr(RzPageControl1.ActivePageIndex+1)+' de '+inttostr(RzPageControl1.PageCount);
end;

procedure TF_Talhoes_Distancia_Alteracao.atualizaInformacoesIniciais(oraQuery_DistanciaTalhao: TDataset; oraQuery_DistanciaTalhaoPercurso: TDataSet);
begin
  QR_DistanciaPercursoTMP.Close;
  QR_DistanciaPercursoTMP.ParamByName('cod_safra').AsFloat        := oraQuery_DistanciaTalhao.FieldByName('COD_SAFRA').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('cod_fazenda').AsFloat      := oraQuery_DistanciaTalhao.FieldByName('COD_FAZENDA').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('zona').AsFloat             := oraQuery_DistanciaTalhao.FieldByName('ZONA').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('cod_talhao').AsFloat       := oraQuery_DistanciaTalhao.FieldByName('COD_TALHAO').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('cod_grupo').AsFloat        := oraQuery_DistanciaTalhao.FieldByName('COD_GRUPO').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('cod_regional').AsFloat     := oraQuery_DistanciaTalhao.FieldByName('COD_REGIONAL').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('cod_unidade').AsFloat      := oraQuery_DistanciaTalhao.FieldByName('COD_UNIDADE').AsFloat;
  QR_DistanciaPercursoTMP.ParamByName('data_inicial').AsDateTime  := oraQuery_DistanciaTalhao.FieldByName('DATAHORA_INI').AsDateTime;
  QR_DistanciaPercursoTMP.ParamByName('hora_inicial').AsString    := oraQuery_DistanciaTalhao.FieldByName('HORA_INICIAL').AsString;
  QR_DistanciaPercursoTMP.Open;

  with TOraQuery.Create(self) do
  begin
    Session := QR_DistanciaPercursoTMP.Session;
    SQL.Add('DELETE FROM talhao_distancia_atualiza_tmp');
    Execute;
    Free;
  end;

  oraQuery_DistanciaTalhaoPercurso.First;
  while not oraQuery_DistanciaTalhaoPercurso.Eof do
  begin
    QR_DistanciaPercursoTMP.Insert;
    QR_DistanciaPercursoTMPINDO_VOLTANDO.AsString   := oraQuery_DistanciaTalhaoPercurso.FieldByName('INDO_VOLTANDO').AsString;
    QR_DistanciaPercursoTMPSEQUENCIA.AsFloat        := oraQuery_DistanciaTalhaoPercurso.FieldByName('SEQUENCIA').AsFloat;
    QR_DistanciaPercursoTMPCOD_TIPOPERCURSO.AsFloat := oraQuery_DistanciaTalhaoPercurso.FieldByName('COD_TIPOPERCURSO').AsFloat;
    QR_DistanciaPercursoTMPDESCRICAO.AsString       := oraQuery_DistanciaTalhaoPercurso.FieldByName('DESCRICAO').AsString;
    QR_DistanciaPercursoTMPDISTANCIA.AsFloat        := oraQuery_DistanciaTalhaoPercurso.FieldByName('DISTANCIA').AsFloat;
    QR_DistanciaPercursoTMP.Post;

    oraQuery_DistanciaTalhaoPercurso.Next;
  end;


  lbZona.Caption        := oraQuery_DistanciaTalhao.FieldByName('ZONA').AsString;
  lbTalhao.Caption      := oraQuery_DistanciaTalhao.FieldByName('COD_TALHAO').AsString;
  lbEmpresa.Caption     := oraQuery_DistanciaTalhao.FieldByName('COD_UNIDADE').AsString;
  lbDataInicio.Caption  := oraQuery_DistanciaTalhao.FieldByName('DATAHORA_INI').AsString;
  lbDataTermino.Caption := oraQuery_DistanciaTalhao.FieldByName('DATAHORA_FIM').AsString;
  lbHoraInicial.Caption := oraQuery_DistanciaTalhao.FieldByName('HORA_INICIAL').AsString;
  lbHoraFinal.Caption   := oraQuery_DistanciaTalhao.FieldByName('HORA_FINAL').AsString;

  QR_DistanciaPercursoTMP.Tag := 1;

end;

procedure TF_Talhoes_Distancia_Alteracao.cxGrid1DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin

  RzBitBtnPesquisar.Enabled := (AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO);
  if AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO then
    begin
      cxGrid1.hint := 'Aperte F9 para pesquisar os Tipos de Percurso';
      cxGrid1.ShowHint := True;
    end
  else
    begin
      cxGrid1.hint := '';
      cxGrid1.ShowHint := False;
    end;

//  cxGrid1DBTableView1.NavigatorButtons.Filter.Enabled := AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO;
  if QR_DistanciaPercursoTMP.State in [dsEdit, dsInsert] then
  begin

    if APrevFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO then
    begin
      if QR_DistanciaPercursoTMPCOD_TIPOPERCURSO.AsString = '' then
        QR_DistanciaPercursoTMPDESCRICAO.Clear
      else
        begin
          QR_DistanciaPercursoTMPDESCRICAO.AsString := VarToStr(Buscar_Descricao('tipos_percurso',
                                                                                'descricao',
                                                                                'cod_tipopercurso','',
                                                                               QR_DistanciaPercursoTMPCOD_TIPOPERCURSO.AsFloat));
          if QR_DistanciaPercursoTMPDESCRICAO.AsString = '' then
          begin
            Application.MessageBox('Tipo de Percurso não cadastrado.','Atenção',MB_ICONINFORMATION + MB_OK);
            QR_DistanciaPercursoTMPCOD_TIPOPERCURSO.Clear;
            cxGrid1DBTableView1COD_TIPOPERCURSO.FocusWithSelection;
          end;
        end;
    end

    else

    if AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO then
      begin
        cxGrid1.Hint := 'F9 para buscar Tipos de Percurso';
        cxGrid1.ShowHint := True;
      end
    else
      cxGrid1.ShowHint := False;
  end;
end;

procedure TF_Talhoes_Distancia_Alteracao.cxGrid1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F9 then
    cxGrid1DBTableView1.NavigatorButtons.Filter.Click;
end;

procedure TF_Talhoes_Distancia_Alteracao.DS_DistanciaTalhao_TMPStateChange(
  Sender: TObject);
begin
  If MainSource = DS_DistanciaTalhao_TMP then
     atualiza_botao(DS_DistanciaTalhao_TMP);
end;

procedure TF_Talhoes_Distancia_Alteracao.FormActivate(Sender: TObject);
begin
  If MainQuery = NIL then
     MainQuery := QR_DistanciaPercursoTMP;

  If MainSource = NIL then
     MainSource := DS_DistanciaTalhao_TMP;

  If MainSource.State in [dsBrowse, dsInactive] then begin
     If objeto_ativo <> NIL then
     begin
        Try
          objeto_ativo.SetFocus
        Except
          ActiveControl := NIL;
        End;
     end
     else begin
        ActiveControl := NIL;
     end;
  End;

end;

procedure TF_Talhoes_Distancia_Alteracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= CaFree;
end;

procedure TF_Talhoes_Distancia_Alteracao.FormCreate(Sender: TObject);
begin
  MainQuery := QR_DistanciaPercursoTMP;
  MainSource := DS_DistanciaTalhao_TMP;
  DBNavigator.DataSource := MainSource;

  RzPageControl1.ActivePage := tsAlteracaoDistancias;
  atualizaPainelNavegacao;
  indo_voltando := 'I';
end;

procedure TF_Talhoes_Distancia_Alteracao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then
begin
  Key := #0;
  Perform(WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TF_Talhoes_Distancia_Alteracao.navegaEtapas(proximaAnterior: String);
begin
  if proximaAnterior = 'anterior' then
    begin
      if RzPageControl1.ActivePageIndex = 0 then
      begin
        Application.MessageBox('Não existem etapas anteriores ao atual.','Atenção',MB_ICONINFORMATION + MB_OK);
        Abort;
      end;

      RzPageControl1.ActivePageIndex := RzPageControl1.ActivePageIndex - 1;
    end

  else if proximaAnterior = 'proxima' then
    begin
      if RzPageControl1.ActivePageIndex+1 = RzPageControl1.PageCount then
      begin
        Application.MessageBox('Não existem etapas posteriores ao atual.','Atenção',MB_ICONINFORMATION + MB_OK);
        Abort;
      end;
      RzPageControl1.ActivePageIndex := RzPageControl1.ActivePageIndex + 1;
    end
  else
    begin
      Application.MessageBox(PChar('Situação "'+proximaAnterior+'" não aceito pela função de navegação.'),'Atenção',MB_ICONERROR + MB_OK);
      Abort;
    end;

  atualizaPainelNavegacao;
end;
procedure TF_Talhoes_Distancia_Alteracao.PNGBtnAnteriorClick(Sender: TObject);
begin
  navegaEtapas('anterior');
end;

procedure TF_Talhoes_Distancia_Alteracao.PNGBtnProximoClick(Sender: TObject);
begin
  navegaEtapas('proxima');
end;

procedure TF_Talhoes_Distancia_Alteracao.pnOpcoesResize(Sender: TObject);
begin
  RzBitBtnSair.Width := RzBitBtnSair.Height;
end;

procedure TF_Talhoes_Distancia_Alteracao.QR_DistanciaPercursoTMPAfterPost(
  DataSet: TDataSet);
begin
  indo_voltando := QR_DistanciaPercursoTMPINDO_VOLTANDO.AsString;
end;

procedure TF_Talhoes_Distancia_Alteracao.QR_DistanciaPercursoTMPNewRecord(
  DataSet: TDataSet);
begin
  QR_DistanciaPercursoTMPCOD_SAFRA.AsFloat        := QR_DistanciaPercursoTMP.ParamByName('cod_safra').AsFloat;
  QR_DistanciaPercursoTMPCOD_FAZENDA.AsFloat      := QR_DistanciaPercursoTMP.ParamByName('cod_fazenda').AsFloat;
  QR_DistanciaPercursoTMPZONA.AsFloat             := QR_DistanciaPercursoTMP.ParamByName('zona').AsFloat;
  QR_DistanciaPercursoTMPCOD_TALHAO.AsFloat       := QR_DistanciaPercursoTMP.ParamByName('cod_talhao').AsFloat;
  QR_DistanciaPercursoTMPCOD_GRUPO.AsFloat        := QR_DistanciaPercursoTMP.ParamByName('cod_grupo').AsFloat;
  QR_DistanciaPercursoTMPCOD_REGIONAL.AsFloat     := QR_DistanciaPercursoTMP.ParamByName('cod_regional').AsFloat;
  QR_DistanciaPercursoTMPCOD_UNIDADE.AsFloat      := QR_DistanciaPercursoTMP.ParamByName('cod_unidade').AsFloat;
  QR_DistanciaPercursoTMPDATA_INICIAL.AsDateTime  := QR_DistanciaPercursoTMP.ParamByName('data_inicial').AsDateTime;
  QR_DistanciaPercursoTMPHORA_INICIAL.AsString    := QR_DistanciaPercursoTMP.ParamByName('hora_inicial').AsString;
  QR_DistanciaPercursoTMPINDO_VOLTANDO.AsString   := indo_voltando;

  QR_DistanciaPercursoTMPSEQUENCIA.AsFloat := Buscar_Descricao('talhao_distancia_atualiza_tmp a',
                                                              'NVL(MAX(a.sequencia),0) + 1 sequencia',
                                                              'cod_safra',
                                                              '',
                                                              QR_DistanciaPercursoTMPCOD_SAFRA.AsFloat);
  cxGridDBColumn3.FocusWithSelection;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtn2Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja atualizar o percurso ?','Confirmação',MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = mrYes then
  begin
    SP_CriarPercurso.ParamByName('P_SAFRA').AsFloat          := QR_DistanciaPercursoTMP.ParamByName('cod_safra').AsFloat;
    SP_CriarPercurso.ParamByName('P_FAZENDA').AsFloat        := QR_DistanciaPercursoTMP.ParamByName('cod_fazenda').AsFloat;
    SP_CriarPercurso.ParamByName('P_ZONA').AsFloat           := QR_DistanciaPercursoTMP.ParamByName('zona').AsFloat;
    SP_CriarPercurso.ParamByName('P_TALHAO').AsFloat         := QR_DistanciaPercursoTMP.ParamByName('cod_talhao').AsFloat;
    SP_CriarPercurso.ParamByName('P_COD_GRUPO').AsFloat          := QR_DistanciaPercursoTMP.ParamByName('cod_grupo').AsFloat;
    SP_CriarPercurso.ParamByName('P_COD_REGIONAL').AsFloat       := QR_DistanciaPercursoTMP.ParamByName('cod_regional').AsFloat;
    SP_CriarPercurso.ParamByName('P_COD_UNIDADE').AsFloat    := QR_DistanciaPercursoTMP.ParamByName('cod_unidade').AsFloat;
    SP_CriarPercurso.ParamByName('P_DATAHORAINI').AsDateTime := QR_DistanciaPercursoTMP.ParamByName('data_inicial').AsDateTime;
    SP_CriarPercurso.ParamByName('P_HORAINICIAL').AsString   := QR_DistanciaPercursoTMP.ParamByName('hora_inicial').AsString;
    case RzRadioGroupAplicacao.ItemIndex of
      0: SP_CriarPercurso.ParamByName('P_TIPO_ALTERACAO').AsString := 'FAZENDA';
      1: SP_CriarPercurso.ParamByName('P_TIPO_ALTERACAO').AsString := 'ZONA';
    end;
    SP_CriarPercurso.Execute;

    Application.MessageBox('Percurso atualizado com êxito.','Informação',MB_ICONINFORMATION + MB_OK);

    Close;
  end;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtnCancelarClick(Sender: TObject);
begin
  If Application.MessageBox('Deseja cancelar as alterações?','Confirmação',MB_ICONQUESTION + MB_YESNO) = mrYes then
    MainQuery.Cancel;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtnExcluirClick(Sender: TObject);
begin
   if ( (Application.MessageBox('Deseja excluir o registro?' ,'Confirmação', mb_YesNo + MB_ICONQUESTION)= mrYes) and
        (not MainQuery.IsEmpty) ) then
     MainQuery.Delete;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtnGravarClick(Sender: TObject);
begin
   if ( (Application.MessageBox('Deseja gravar o registro ?' ,'Confirmação', mb_YesNo + MB_ICONQUESTION)= mrYes) and
        (MainQuery.Modified) ) then
     MainQuery.Post;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtnNovoClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja incluir um novo registro?' ,'Confirmação', mb_YesNo + MB_ICONQUESTION)= mrYes then
    MainQuery.Append;

  cxGrid1.SetFocus;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtnPesquisarClick(
  Sender: TObject);
Var Resultado : Variant;
    Sql : String;
begin
  if RzBitBtnPesquisar.Enabled then
  begin
    //Busca tipos de percurso
    if cxGrid1DBTableView1COD_TIPOPERCURSO.Focused then
    begin
      Sql := 'SELECT a.cod_tipopercurso "Código",   ' +
             '       a.descricao "Descrição"        ' +
             '  FROM tipos_percurso a       ' +
             ' &Macro                               ' +
             'ORDER BY cod_tipopercurso             ' ;
      Resultado := F_BuscaAvancada.Buscar(Sql,1,'Buscar tipos de percurso');
      if Resultado <> null then
      begin
        if DS_DistanciaTalhao_TMP.State = dsBrowse then
          QR_DistanciaPercursoTMP.Edit;
        QR_DistanciaPercursoTMPCOD_TIPOPERCURSO.AsFloat := Resultado;

        cxGrid1DBTableView1FocusedItemChanged(cxGrid1DBTableView1,
                                             cxGrid1DBTableView1COD_TIPOPERCURSO,
                                             cxGrid1DBTableView1COD_TIPOPERCURSO);
        cxGrid1DBTableView1DISTANCIA.FocusWithSelection;
      end;
    end;
  end;
end;

procedure TF_Talhoes_Distancia_Alteracao.RzBitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Talhoes_Distancia_Alteracao.tsResumoEnter(Sender: TObject);
begin
  QR_DistanciaPercursoTMP.Refresh;

  lbAplicarPara_Resumo.Caption := RzRadioGroupAplicacao.Items.Strings[RzRadioGroupAplicacao.ItemIndex];

end;

procedure TF_Talhoes_Distancia_Alteracao.atualiza_foco(Query: TOraQuery; DSource: TOraDataSource);
begin
  If (Query <> NIL) and (MainQuery <> Query) then begin
     If (MainQuery <> NIL) and (MainQuery.State in [dsEdit, dsInsert]) then
         Try
            MainQuery.Post;
         Except
            MainQuery.Cancel;
         End;
     MainQuery := Query;
  End;

  If (DSource <> NIL) and (MainSource <> DSource) then
      MainSource := DSource;

  DBNavigator.DataSource := MainSource;

  If (Query = NIL) and (DSource = NIL) then begin
     If (MainQuery <> NIL) and (MainQuery.State in [dsEdit, dsInsert]) then
         Try
           MainQuery.Post;
         Except
           MainQuery.Cancel;
         End;
     MainQuery := Query;
     MainSource := DSource;

     RzBitBtnGravar.Enabled   := False;
     RzBitBtnCancelar.Enabled := False;
     RzBitBtnNovo.Enabled     := True;
     RzBitBtnExcluir.Enabled  := True;
     RzBitBtnSair.Enabled     := True;
  End;

  atualiza_botao(MainSource);
end;

procedure TF_Talhoes_Distancia_Alteracao.atualiza_botao(Source: TOraDataSource);
begin
   If (MainQuery <> NIL) and (MainSource <> NIL) then
   begin
      If Source.state in [DSEdit,DSInsert] then
      begin
         RzBitBtnGravar.enabled    := true ;
         RzBitBtnCancelar.enabled  := true ;
         RzBitBtnNovo.enabled     := false ;
         RzBitBtnExcluir.enabled   := false ;
         RzBitBtnSair.enabled     := false ;
         DBNavigator.enabled  := false ;
      End;

      If Source.state in [DSBrowse] then
      begin
         RzBitBtnGravar.enabled    := false ;
         RzBitBtnCancelar.enabled  := false ;
         RzBitBtnNovo.enabled     := true ;
         RzBitBtnExcluir.enabled   := true ;
         RzBitBtnSair.enabled     := true ;
         DBNavigator.enabled  := true ;
      End;

      If not MainQuery.Active then
      begin
         RzBitBtnGravar.enabled      := false ;
         RzBitBtnCancelar.enabled    := false ;
         RzBitBtnNovo.enabled       := false ;
         RzBitBtnExcluir.enabled     := false ;
         RzBitBtnSair.enabled       := true ;
         DBNavigator.enabled    := false ;
      End;
   End
   Else
   Begin
      RzBitBtnGravar.enabled      := false ;
      RzBitBtnCancelar.enabled    := false ;
      RzBitBtnNovo.enabled       := false ;
      RzBitBtnExcluir.enabled     := false ;
      RzBitBtnSair.enabled       := true ;
      RzBitBtnPesquisar.enabled := false ;
      DBNavigator.enabled    := false ;
   End;
end;

end.
