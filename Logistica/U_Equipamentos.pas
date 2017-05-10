//-------------------------------------------------------------------------------------------------
// Data : 01/02/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para cadastrar os equipamentos por grupo de empresas
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Equipamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, Data.DB, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit,
  Vcl.StdCtrls, Vcl.Mask, wwdbedit, Vcl.Buttons, RzCmboBx, RzDBCmbo, RzRadChk,
  RzDBChk;

type
  TF_Equipamentos = class(TF_TemplateProcesso)
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_EQUIPAMENTO: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainCOD_TIPOEQUIPAMENTO: TFloatField;
    QR_MainDESC_TIPOEQUIPAMENTO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnPesquisa_Equipamentos: TSpeedButton;
    btnPesquisa_Tipos: TSpeedButton;
    edtCod_Tipo: TwwDBEdit;
    edtDescricao: TwwDBEdit;
    edtDesc_Tipo: TwwDBEdit;
    edtCod_Equipamento: TwwDBEdit;
    Label4: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    QR_MainATIVO: TStringField;
    QR_MainTIPO_PROPRIETARIO: TStringField;
    RzDBCheckBox1: TRzDBCheckBox;
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure btnPesquisa_EquipamentosClick(Sender: TObject);
    procedure edtCod_EquipamentoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCod_EquipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisa_TiposClick(Sender: TObject);
    procedure edtCod_TipoExit(Sender: TObject);
    procedure edtCod_TipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Equipamentos: TF_Equipamentos;

implementation

{$R *.dfm}

uses U_DM, U_BuscaAvancada, u_recursos;

procedure TF_Equipamentos.btnPesquisa_EquipamentosClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;

  Sql :=       'SELECT SUBSTR(eq.descricao,1,80) "Descrição", eq.cod_equipamento "Cód. Equipamento"';
  Sql := Sql + '  FROM equipamento eq ';
  Sql := Sql + ' WHERE eq.cod_grupo    = ' + DM.QR_UnidadeCOD_GRUPO.AsString;
  Sql := Sql + ' &Macro ';
  Sql := Sql + ' ORDER BY eq.cod_equipamento ';

  Resultado := F_BuscaAvancada.Buscar(sql,2,'Busca de equipamentos');
  if Resultado <> null then
  begin
    edtCod_Equipamento.Text := VarToStr(Resultado);
    edtCod_Equipamento.SetFocus;
    edtCod_EquipamentoExit(Sender);
  end;
end;

procedure TF_Equipamentos.btnPesquisa_TiposClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;

  Sql :=       'SELECT SUBSTR(te.descricao,1,80) "Descrição tipo", te.cod_tipoequipamento "Cód. Tipo"';
  Sql := Sql + '  FROM tipo_equipamento te ';
  Sql := Sql + ' &Macro ';
  Sql := Sql + ' ORDER BY te.cod_tipoequipamento ';

  Resultado := F_BuscaAvancada.Buscar(sql,2,'Busca de Tipos de equipamento');
  if Resultado <> null then
  begin
    if not (QR_Main.State in [dsEdit,dsInsert]) then
      QR_Main.Edit;
    QR_MainCOD_TIPOEQUIPAMENTO.AsFloat := Resultado;
    edtCod_Tipo.SetFocus;
    edtCod_TipoExit(Sender);
  end;
end;

procedure TF_Equipamentos.edtCod_EquipamentoExit(Sender: TObject);
Var Resultado : Variant;
    vCod_equipamento : Real;
begin
  inherited;
  if edtCod_equipamento.Text <>  '' then
  begin
    vCod_Equipamento := StrToFloat(edtCod_Equipamento.Text);
    Resultado := Buscar_Descricao('equipamento','cod_equipamento','cod_equipamento','',edtCod_equipamento.Text);
    if Resultado <> null then
    begin
      QR_Main.Close;
      QR_Main.ParamByName('cod_equipamento').AsFloat := Resultado;
      QR_Main.Open;
    end
    else
    begin
      QR_Main.Close;
      QR_Main.ParamByName('cod_equipamento').AsFloat := vCod_equipamento;
      QR_Main.Open;
      QR_Main.Append;
      QR_MainCOD_equipamento.AsFloat := vCod_equipamento;
      edtDescricao.setfocus;
    end;
  end;

end;

procedure TF_Equipamentos.edtCod_EquipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key= VK_F9 then
    btnPesquisa_EquipamentosClick(Sender);
end;

procedure TF_Equipamentos.edtCod_TipoExit(Sender: TObject);
Var Resultado : Variant;
begin
  inherited;
  if not QR_MainCOD_TIPOEQUIPAMENTO.IsNull then
  begin
    Resultado := Buscar_Descricao('tipo_equipamento','descricao','cod_tipoequipamento','',QR_MainCOD_TIPOEQUIPAMENTO.AsString);
    if (Resultado <> null) then
    begin
      if QR_Main.State = dsBrowse then
        QR_Main.Edit;
      QR_MainDESC_TIPOEQUIPAMENTO.AsString := VarToStr(Resultado)
    end
    else
    begin
      Application.MessageBox('Tipo de equipamento não encontrado','Atenção',MB_OK + MB_ICONWARNING);
      edtCod_Tipo.SetFocus;
      QR_MainDESC_TIPOEQUIPAMENTO.Clear;
    end;
    end
    else
      QR_MainDESC_TIPOEQUIPAMENTO.Clear;
end;

procedure TF_Equipamentos.edtCod_TipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    btnPesquisa_TiposClick(Sender);
end;

procedure TF_Equipamentos.FormActivate(Sender: TObject);
begin
//  inherited;
 edtCod_Equipamento.SetFocus;

end;

procedure TF_Equipamentos.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;

  inherited;
  DBNavigatorAtivo := False;
  QR_Main.Close;
  QR_Main.ParamByName('cod_grupo').AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Main.Open;
end;

procedure TF_Equipamentos.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat := DM.QR_GrupoCOD_GRUPO.AsFloat;
  QR_MainATIVO.AsString := 'S';
  QR_MainTIPO_PROPRIETARIO.AsString := 'P';
end;

procedure TF_Equipamentos.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  edtCod_Equipamento.SetFocus;
end;

end.
