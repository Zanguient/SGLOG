//-------------------------------------------------------------------------------------------------
// Data : 31/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para cadastrar as JUSTIFICATIVAS de atraso, parada, alocações
// manuais etc
//
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Justificativas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit,
  cxCheckGroup, cxCheckBox, cxDBLookupComboBox;

type
  TF_Justificativas = class(TF_TemplateProcesso)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QR_MainCOD_MOTIVO: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainATIVO: TStringField;
    cxGrid1DBTableView1COD_MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_DESC: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    QR_MainTIPO_DESC: TStringField;
    QR_MainTIPO: TStringField;
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Justificativas: TF_Justificativas;

implementation

{$R *.dfm}

uses u_recursos, U_BuscaAvancada;

procedure TF_Justificativas.cxGrid1DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  retorno : Variant;
begin
  inherited;
  if AFocusedItem = cxGrid1DBTableView1TIPO_DESC  then
    begin
      cxGrid1.Hint              := 'Aperte F9 para buscar os tipos de justificativa';
      cxGrid1.ShowHint          := True;
      RzBitBtnPesquisar.Enabled := True;
    end
  else
    begin
      cxGrid1.Hint              := '';
      cxGrid1.ShowHint          := False;
      RzBitBtnPesquisar.Enabled := False;
    end;
end;

procedure TF_Justificativas.FormCreate(Sender: TObject);
begin
  Top :=1;
  Left :=1;
  inherited;
  QR_Main.Open;

end;

procedure TF_Justificativas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then RzBitBtnPesquisar.Click;
end;

procedure TF_Justificativas.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TF_Justificativas.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_MOTIVO.AsFloat := Buscar_Proximo_Codigo('motivos','cod_motivo','');
  QR_MainATIVO.AsString := 'S';
  cxGrid1DBTableView1DESCRICAO.FocusWithSelection;
end;

procedure TF_Justificativas.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TF_Justificativas.RzBitBtnPesquisarClick(Sender: TObject);
var
  Sql : String;
  resultado : Variant;
begin
  inherited;
  if RzBitBtnPesquisar.Enabled then
  begin
    if DS_Main.State = dsBrowse then
      QR_Main.Edit;
    Sql := 'SELECT descricao "Tipo" FROM ( '+
           ' SELECT ''ATRASO'' descricao FROM dual ' +
           ' UNION           ' +
           ' SELECT ''PARADA'' descricao FROM dual '+
           ' UNION '+
           ' SELECT ''ALOCAÇÃO MANUAL'' descricao FROM dual '+
           ' UNION '+
           ' SELECT ''MANUTENÇÃO'' descricao FROM dual' +
           ' ) &Macro';
    resultado := F_BuscaAvancada.Buscar(sql,1,'Busca tipos justificativa');
    if resultado <> null then
    begin
      QR_MainTIPO_DESC.AsString := VarToStr(resultado);

      if DS_Main.State = dsBrowse then QR_Main.Edit;
      if Resultado = 'ATRASO' then
        QR_MainTIPO.AsString := 'AT'
      else if Resultado = 'PARADA' then
        QR_MainTIPO.AsString := 'PA'
      else if Resultado = 'ALOCAÇÃO MANUAL' then
        QR_MainTIPO.AsString := 'AM'
      else if Resultado = 'MANUTENÇÃO' then
        QR_MainTIPO.AsString := 'MT';

      cxGrid1.SetFocus;
      cxGrid1DBTableView1FocusedItemChanged(cxGrid1DBTableView1,cxGrid1DBTableView1TIPO_DESC,cxGrid1DBTableView1TIPO_DESC);
      cxGrid1DBTableView1TIPO_DESC.FocusWithSelection;
    end;
  end;
end;

end.
