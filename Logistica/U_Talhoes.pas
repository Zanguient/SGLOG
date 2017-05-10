//-------------------------------------------------------------------------------------------------
// Data : 18/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para cadastrar os talhões
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Talhoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit,
  Vcl.StdCtrls, Vcl.Mask, wwdbedit, Vcl.Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TF_Talhoes = class(TF_TemplateProcesso)
    pnFazenda: TPanel;
    pnTalhao: TPanel;
    edtCod_Fazenda: TwwDBEdit;
    edtNome_Fazenda: TwwDBEdit;
    Label1: TLabel;
    btnPesquisa_Fazendas: TSpeedButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QR_MainCOD_FAZENDA: TFloatField;
    QR_MainZONA: TFloatField;
    QR_MainCOD_TALHAO: TFloatField;
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainCOD_SAFRA: TFloatField;
    QR_MainDATA_ENCERRAMENTO: TDateTimeField;
    QR_MainENCERRADO: TStringField;
    QR_MainAREAPRODUCAO: TFloatField;
    QR_MainPRODUCAOESTIMADA: TFloatField;
    QR_MainNOME_FAZENDA: TStringField;
    cxGrid1DBTableView1ZONA: TcxGridDBColumn;
    cxGrid1DBTableView1COD_TALHAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_ENCERRAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1ENCERRADO: TcxGridDBColumn;
    cxGrid1DBTableView1AREAPRODUCAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCAOESTIMADA: TcxGridDBColumn;
    pnSeparador10: TPanel;
    RzBitBtnDistancias: TRzBitBtn;
    procedure btnPesquisa_FazendasClick(Sender: TObject);
    procedure edtCod_FazendaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCod_FazendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure RzBitBtnDistanciasClick(Sender: TObject);
    procedure QR_MainAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Talhoes: TF_Talhoes;

implementation

{$R *.dfm}

uses u_recursos, U_BuscaAvancada, U_DM,
  U_Talhoes_Distancia, U_SelecionarSafra;

procedure TF_Talhoes.btnPesquisa_FazendasClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;

  Sql :=       'SELECT SUBSTR(fa.descricao,1,80) "Nome fazenda", fa.cod_fazenda "Cód. Fazenda",';
  Sql := Sql + '       0 "Cód. Proprietario", '''' "Nome proprietario" ';
  Sql := Sql + '  FROM fazenda fa ';
  Sql := Sql + ' WHERE fa.cod_grupo    = ' + DM.QR_UnidadeCOD_GRUPO.AsString;
  Sql := Sql + '   AND fa.cod_regional = ' + DM.QR_UnidadeCOD_REGIONAL.AsString;
  Sql := Sql + '   AND fa.cod_unidade  = ' + DM.QR_UnidadeCOD_UNIDADE.AsString;
  Sql := Sql + ' &Macro ';
  Sql := Sql + ' ORDER BY fa.cod_fazenda ';

  Resultado := F_BuscaAvancada.Buscar(sql,2,'Busca de fazendas');
  if Resultado <> null then
  begin
    edtCod_Fazenda.Text := VarToStr(Resultado);
    edtCod_Fazenda.SetFocus;
    edtCod_FazendaExit(Sender);
  end;
end;

procedure TF_Talhoes.edtCod_FazendaExit(Sender: TObject);
Var Resultado : Variant;
begin
  inherited;
  if edtCod_Fazenda.Text <>  '' then
  begin
    Resultado := Buscar_Descricao('fazenda','descricao','cod_fazenda','',edtCod_Fazenda.Text);
    if Resultado <> null then
    begin
      edtNome_Fazenda.Text := VarToStr(Resultado);
      QR_Main.Close;
      QR_Main.ParamByName('cod_fazenda').AsFloat := StrToFloat(edtCod_Fazenda.Text);
      QR_Main.Open;
    end
    else
    begin
      Application.MessageBox('Fazenda não eoncontrada','Atenção',MB_ICONWARNING+MB_OK);
      edtNome_Fazenda.Clear;
      edtCod_Fazenda.setfocus;
    end;
  end
  else
    edtNome_Fazenda.Clear;
end;

procedure TF_Talhoes.edtCod_FazendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    btnPesquisa_FazendasClick(Sender);
end;

procedure TF_Talhoes.FormActivate(Sender: TObject);
begin
  //inherited;

end;

procedure TF_Talhoes.FormCreate(Sender: TObject);
begin
  Top  := 1;
  Left := 1;

  inherited;
  //Verificando se existe safras cadastradas
  if DM.QR_Safras.IsEmpty then
  begin
    Application.MessageBox('É preciso cadastrar primeiro uma safra para cadastrar/modificar as frentes','Atenção',MB_ICONWARNING+MB_OK);
    Close;
  end;

  //Verificando se existe safra selecionada, caso não tenha chama-se a tela de
  //Ativação da safra
  if DM.QR_SafraSelecionada.IsEmpty then
  begin
    Application.MessageBox('É preciso selecionar uma safra para cadastrar/modificar as frentes','Atenção',MB_ICONWARNING+MB_OK);
    Criar_Formulario(TF_SelecionarSafra,'Selecionar Safra',false);
  end;
  QR_Main.Close;
  QR_Main.ParamByName('cod_grupo').AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Main.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Main.ParamByName('cod_unidade').AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Main.ParamByName('cod_safra').AsFloat    := DM.QR_SafraSelecionadaCOD_SAFRA.AsFloat;
  QR_Main.Open;
end;

procedure TF_Talhoes.QR_MainAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RzBitBtnDistancias.Enabled := not DataSet.IsEmpty;
end;

procedure TF_Talhoes.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat    := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_MainCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_MainCOD_UNIDADE.AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_MainCOD_SAFRA.AsFloat    := DM.QR_SafraSelecionadaCOD_SAFRA.AsFloat;
  QR_MainCOD_FAZENDA.AsFloat  := StrToFloat(edtCod_Fazenda.Text);
  QR_MainENCERRADO.AsString   := 'N';
end;

procedure TF_Talhoes.RzBitBtnDistanciasClick(Sender: TObject);
begin
  inherited;
  if QR_Main.IsEmpty then
  begin
    Application.MessageBox('Selecione um talhão para inserir as distâncias.','Atenção',MB_ICONINFORMATION + MB_OK);
    Abort;
  end;

  F_Talhoes_Distancia := TF_Talhoes_Distancia.Create(Self);

  F_Talhoes_Distancia.QR_Talhao.Close;
  F_Talhoes_Distancia.QR_Talhao.ParamByName('cod_fazenda').AsFloat  := QR_MainCOD_FAZENDA.AsFloat;
  F_Talhoes_Distancia.QR_Talhao.ParamByName('cod_safra').AsFloat    := QR_MainCOD_SAFRA.AsFloat;
  F_Talhoes_Distancia.QR_Talhao.ParamByName('cod_grupo').AsFloat    := QR_MainCOD_GRUPO.AsFloat;
  F_Talhoes_Distancia.QR_Talhao.ParamByName('cod_regional').AsFloat := QR_MainCOD_REGIONAL.AsFloat;
  F_Talhoes_Distancia.QR_Talhao.ParamByName('cod_unidade').AsFloat  := QR_MainCOD_UNIDADE.AsFloat;
  F_Talhoes_Distancia.QR_Talhao.Open;

  F_Talhoes_Distancia.QR_Main.Close;
  F_Talhoes_Distancia.QR_Main.ParamByName('cod_fazenda').AsFloat  := QR_MainCOD_FAZENDA.AsFloat;
  F_Talhoes_Distancia.QR_Main.ParamByName('cod_safra').AsFloat    := QR_MainCOD_SAFRA.AsFloat;
  F_Talhoes_Distancia.QR_Main.ParamByName('cod_grupo').AsFloat    := QR_MainCOD_GRUPO.AsFloat;
  F_Talhoes_Distancia.QR_Main.ParamByName('cod_regional').AsFloat := QR_MainCOD_REGIONAL.AsFloat;
  F_Talhoes_Distancia.QR_Main.ParamByName('cod_unidade').AsFloat  := QR_MainCOD_UNIDADE.AsFloat;
  F_Talhoes_Distancia.QR_Main.ParamByName('nome_fazenda').AsString := QR_MainNOME_FAZENDA.AsString;
  F_Talhoes_Distancia.QR_Main.Open;

  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.Close;
  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.ParamByName('cod_fazenda').AsFloat  := QR_MainCOD_FAZENDA.AsFloat;
  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.ParamByName('cod_safra').AsFloat    := QR_MainCOD_SAFRA.AsFloat;
  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.ParamByName('cod_grupo').AsFloat    := QR_MainCOD_GRUPO.AsFloat;
  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.ParamByName('cod_regional').AsFloat := QR_MainCOD_REGIONAL.AsFloat;
  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.ParamByName('cod_unidade').AsFloat  := QR_MainCOD_UNIDADE.AsFloat;
  F_Talhoes_Distancia.QR_Talhao_Distancia_TMP.Open;

  F_Talhoes_Distancia.QR_Historico_Distancia.Close;
  F_Talhoes_Distancia.QR_Historico_Distancia.ParamByName('cod_fazenda').AsFloat  := QR_MainCOD_FAZENDA.AsFloat;
  F_Talhoes_Distancia.QR_Historico_Distancia.ParamByName('cod_safra').AsFloat    := QR_MainCOD_SAFRA.AsFloat;
  F_Talhoes_Distancia.QR_Historico_Distancia.ParamByName('cod_grupo').AsFloat    := QR_MainCOD_GRUPO.AsFloat;
  F_Talhoes_Distancia.QR_Historico_Distancia.ParamByName('cod_regional').AsFloat := QR_MainCOD_REGIONAL.AsFloat;
  F_Talhoes_Distancia.QR_Historico_Distancia.ParamByName('cod_unidade').AsFloat  := QR_MainCOD_UNIDADE.AsFloat;
  F_Talhoes_Distancia.QR_Historico_Distancia.ParamByName('nome_fazenda').AsString := QR_MainNOME_FAZENDA.AsString;
  F_Talhoes_Distancia.QR_Historico_Distancia.Open;

  F_Talhoes_Distancia.pnFazenda.Caption := '  ' + edtCod_Fazenda.Text + ' - ' +edtNome_Fazenda.Text;
  F_Talhoes_Distancia.Show;
end;

procedure TF_Talhoes.RzBitBtnNovoClick(Sender: TObject);
begin
  if edtCod_Fazenda.Text = '' then
  begin
    Application.MessageBox('É preciso informar primeiramente uma fazenda','Atenção',MB_ICONWARNING+MB_OK);
    edtCod_Fazenda.SetFocus;
    Abort;

  end;
  inherited;
  cxGrid1.SetFocus;
end;

end.
