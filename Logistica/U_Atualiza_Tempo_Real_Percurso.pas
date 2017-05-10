unit U_Atualiza_Tempo_Real_Percurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls,
  RzPanel, RzSplit, Ora, DB, DBAccess, MemDS, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxRadioGroup, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls;

type
  TF_Atualiza_Tempo_Real_Percurso = class(TForm)
    RzSplitterTemplate: TRzSplitter;
    pnOpcoes: TPanel;
    RzBitBtnSair: TRzBitBtn;
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
    pnSeparador: TPanel;
    pnComponentes: TPanel;
    MainQuery: TOraQuery;
    MainSource: TOraDataSource;
    Panel6: TPanel;
    Label1: TLabel;
    lbFrente: TLabel;
    Label3: TLabel;
    lbFazenda: TLabel;
    Label5: TLabel;
    lbTipoCarga: TLabel;
    RzPanel3: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SEQUENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1INDO_VOLTANDO: TcxGridDBColumn;
    cxGrid1DBTableView1COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DISTANCIA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel2: TRzPanel;
    Label2: TLabel;
    lbIda: TLabel;
    lbVolta: TLabel;
    Label6: TLabel;
    lbTotal: TLabel;
    Label8: TLabel;
    MainQueryCOD_GRUPO: TFloatField;
    MainQueryCOD_REGIONAL: TFloatField;
    MainQueryCOD_UNIDADE: TFloatField;
    MainQueryCOD_SAFRA: TFloatField;
    MainQueryCOD_FRENTE: TFloatField;
    MainQueryCOD_TIPOCARGA: TFloatField;
    MainQueryCOD_FAZENDA: TFloatField;
    MainQueryCOD_TIPOPERCURSO: TFloatField;
    MainQueryINDO_VOLTANDO: TStringField;
    MainQuerySEQUENCIA: TFloatField;
    MainQueryMINUTOS: TFloatField;
    MainQueryDESCRICAO: TStringField;
    MainQueryIDA: TFloatField;
    MainQueryVOLTA: TFloatField;
    MainQueryTOTAL: TFloatField;
    MainQueryTOTALIDA: TFloatField;
    MainQueryTOTALVOLTA: TFloatField;
    procedure RzBitBtnSairClick(Sender: TObject);
    procedure atualiza_botao(Source: TOraDataSource);
    procedure atualiza_foco(Query: TOraQuery; DSource: TOraDataSource);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure RzBitBtnExcluirClick(Sender: TObject);
    procedure RzBitBtnCancelarClick(Sender: TObject);
    procedure RzBitBtnGravarClick(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
    procedure MainQueryNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure MainQueryBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MainQueryAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MainQueryAfterScroll(DataSet: TDataSet);
    procedure MainSourceStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    v_IndoVoltando : String;
  public
    { Public declarations }
    v_cod_frente, v_cod_fazenda, v_cod_tipocarga : Integer;
    v_desc_frente, v_desc_fazenda, v_desc_tipocarga : String;
    v_top, v_left : Integer;
  end;

var
  F_Atualiza_Tempo_Real_Percurso: TF_Atualiza_Tempo_Real_Percurso;

implementation

{$R *.dfm}

uses u_recursos, U_BuscaAvancada, U_DM;


procedure TF_Atualiza_Tempo_Real_Percurso.RzBitBtnSairClick(Sender: TObject);
begin
  Close;
end;


procedure TF_Atualiza_Tempo_Real_Percurso.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja incluir um novo registro?' ,'Confirmação', mb_YesNo + MB_ICONQUESTION)= mrYes then
    MainQuery.Append;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.RzBitBtnPesquisarClick(
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
        if MainQuery.State = dsBrowse then
          MainQuery.Edit;
        MainQueryCOD_TIPOPERCURSO.AsFloat := Resultado;

        cxGrid1DBTableView1FocusedItemChanged(cxGrid1DBTableView1,
                                             cxGrid1DBTableView1COD_TIPOPERCURSO,
                                             cxGrid1DBTableView1COD_TIPOPERCURSO);
        cxGrid1DBTableView1DISTANCIA.FocusWithSelection;
      end;
    end;
  end;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.RzBitBtnExcluirClick(Sender: TObject);
begin
  inherited;
   if ( (Application.MessageBox('Deseja excluir o registro?' ,'Confirmação', mb_YesNo + MB_ICONQUESTION)= mrYes) and
        (not MainQuery.IsEmpty) ) then
     MainQuery.Delete;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.RzBitBtnCancelarClick(Sender: TObject);
begin
  inherited;
  If Application.MessageBox('Deseja cancelar as alterações?','Confirmação',MB_ICONQUESTION + MB_YESNO) = mrYes then
    MainQuery.Cancel;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.RzBitBtnGravarClick(Sender: TObject);
begin
  inherited;
   if ( (Application.MessageBox('Deseja gravar o registro ?' ,'Confirmação', mb_YesNo + MB_ICONQUESTION)= mrYes) and
        (MainQuery.Modified) ) then
     MainQuery.Post;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.atualiza_foco(Query: TOraQuery; DSource: TOraDataSource);
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

procedure TF_Atualiza_Tempo_Real_Percurso.cxGrid1DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  RzBitBtnPesquisar.Enabled := (AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO);

//  cxGrid1DBTableView1.NavigatorButtons.Filter.Enabled := AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO;
  if MainQuery.State in [dsEdit, dsInsert] then
  begin

    if APrevFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO then
    begin
      if MainQueryCOD_TIPOPERCURSO.AsString = '' then
        MainQueryDESCRICAO.Clear
      else
        begin
          MainQueryDESCRICAO.AsString := VarToStr(Buscar_Descricao('tipos_percurso',
                                                                                'descricao',
                                                                                'cod_tipopercurso','',
                                                                               MainQueryCOD_TIPOPERCURSO.AsFloat));
          if MainQueryDESCRICAO.AsString = '' then
          begin
            Application.MessageBox('Tipo de Percurso não cadastrado.','Atenção',MB_ICONINFORMATION + MB_OK);
            MainQueryCOD_TIPOPERCURSO.Clear;
            cxGrid1DBTableView1COD_TIPOPERCURSO.FocusWithSelection;
          end;
        end;
    end;

    if AFocusedItem = cxGrid1DBTableView1COD_TIPOPERCURSO then
      begin
        cxGrid1.Hint := 'F9 para buscar Tipos de Percurso';
        cxGrid1.ShowHint := True;
      end
    else
      cxGrid1.ShowHint := False;
  end;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.cxGrid1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F9 then
    if cxGrid1DBTableView1COD_TIPOPERCURSO.Focused then
      RzBitBtnPesquisar.Click;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.FormActivate(Sender: TObject);
begin
     lbFrente.Caption := IntToStr(v_cod_frente) + ' - '+ v_desc_frente;
     lbFazenda.Caption := IntToStr(v_cod_fazenda) + ' - '+ v_desc_fazenda;
     lbTipoCarga.Caption := IntToStr(v_cod_tipocarga) + ' - '+ v_desc_tipocarga;

     MainQuery.Close;
     MainQuery.ParamByName('cod_grupo').AsFloat := dm.QR_UnidadeCOD_GRUPO.AsFloat;
     MainQuery.ParamByName('cod_regional').AsFloat := dm.QR_UnidadeCOD_REGIONAL.AsFloat;
     MainQuery.ParamByName('cod_unidade').AsFloat := dm.QR_UnidadeCOD_UNIDADE.AsFloat;
     MainQuery.ParamByName('cod_frente').AsFloat := v_cod_frente;
     MainQuery.ParamByName('cod_fazenda').AsFloat := v_cod_fazenda;
     MainQuery.ParamByName('cod_tipocarga').AsFloat := v_cod_tipocarga;
     MainQuery.ParamByName('cod_safra').AsFloat := dm.QR_SafrasCOD_SAFRA.AsFloat;
     MainQuery.Open;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.FormCreate(Sender: TObject);
begin
  top := 1;
  left := 1;
  v_IndoVoltando := 'I';
end;

procedure TF_Atualiza_Tempo_Real_Percurso.FormShow(Sender: TObject);
begin
  Top := v_Top - trunc(Height/2);
  Left := v_left - trunc(Width/2);
end;

procedure TF_Atualiza_Tempo_Real_Percurso.MainQueryAfterPost(DataSet: TDataSet);
 var v_item : Integer;
     v_sequencia : Double;
begin
  v_sequencia := MainQuerySEQUENCIA.AsFloat;
  DataSet.Refresh;
  DataSet.Locate('SEQUENCIA',v_sequencia,[]);
end;

procedure TF_Atualiza_Tempo_Real_Percurso.MainQueryAfterScroll(
  DataSet: TDataSet);
begin

  if MainSource.State = dsBrowse then
  begin
    lbIda.Caption := FormatFloat('###,###,##0.00',MainQueryTOTALIDA.AsFloat);
    lbVolta.Caption := FormatFloat('###,###,##0.00',MainQueryTOTALVOLTA.AsFloat);
    lbTotal.Caption := FormatFloat('###,###,##0.00',MainQueryTOTAL.AsFloat);
  end;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.MainQueryBeforePost(
  DataSet: TDataSet);
begin
  v_IndoVoltando := MainQueryINDO_VOLTANDO.AsString;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.MainQueryNewRecord(DataSet: TDataSet);
begin
    MainQueryCOD_GRUPO.AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
    MainQueryCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
    MainQueryCOD_UNIDADE.AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
    MainQueryCOD_SAFRA.AsFloat := DM.QR_SafrasCOD_SAFRA.AsFloat;
    MainQueryCOD_FAZENDA.AsInteger := v_cod_fazenda;
    MainQueryCOD_FRENTE.AsInteger := v_cod_frente;
    MainQueryCOD_TIPOCARGA.AsInteger := v_cod_tipocarga;
    MainQueryINDO_VOLTANDO.AsString := v_IndoVoltando;

    MainQuerySEQUENCIA.AsFloat := Buscar_Proximo_Codigo('parametro_tempo_real_percurso a',
                                                        'a.sequencia',
                                                        'a.cod_grupo = ' + MainQueryCOD_GRUPO.AsString +
                                                        '   AND a.cod_regional = ' + MainQueryCOD_REGIONAL.AsString +
                                                        '   AND a.cod_unidade = ' + MainQueryCOD_UNIDADE.AsString +
                                                        '   AND a.cod_safra = ' + MainQueryCOD_SAFRA.AsString +
                                                        '   AND a.cod_frente = ' + MainQueryCOD_FRENTE.AsString +
                                                        '   AND a.cod_fazenda = ' + MainQueryCOD_FAZENDA.AsString +
                                                        '   AND a.cod_tipocarga = ' + MainQueryCOD_TIPOCARGA.AsString);

    cxGrid1DBTableView1COD_TIPOPERCURSO.FocusWithSelection;
end;

procedure TF_Atualiza_Tempo_Real_Percurso.MainSourceStateChange(
  Sender: TObject);
begin
  atualiza_botao(MainSource);
end;

procedure TF_Atualiza_Tempo_Real_Percurso.atualiza_botao(Source: TOraDataSource);
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
