unit U_TipoEquipamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit;

type
  TF_TipoEquipamento = class(TF_TemplateProcesso)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QR_MainCOD_TIPOEQUIPAMENTO: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainTIPO_CCT: TStringField;
    QR_MainTIPOCCT: TStringField;
    cxGrid1DBTableView1COD_TIPOEQUIPAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_CCT: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCCT: TcxGridDBColumn;
    procedure cxGrid1DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QR_MainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TipoEquipamento: TF_TipoEquipamento;

implementation

{$R *.dfm}

uses u_recursos, U_DM, U_BuscaAvancada;

procedure TF_TipoEquipamento.cxGrid1DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  retorno : Variant;
begin
  inherited;
  if AFocusedItem = cxGrid1DBTableView1TIPO_CCT then
    begin
      cxGrid1.Hint              := 'Aperte F9 para buscar os tipos de CCT';
      cxGrid1.ShowHint          := True;
      RzBitBtnPesquisar.Enabled := True;
    end
  else
    begin
      cxGrid1.Hint              := '';
      cxGrid1.ShowHint          := False;
      RzBitBtnPesquisar.Enabled := False;
    end;

  if DS_Main.State in [dsInsert,dsEdit] then
  begin
    if APrevFocusedItem = cxGrid1DBTableView1TIPO_CCT then
    begin
      if QR_MainTIPO_CCT.AsString = '' then
      begin
        if QR_MainTIPOCCT.AsString <> '' then
          QR_MainTIPOCCT.Clear;
      end
      else
        begin
          retorno := Buscar_Descricao('tipo_cct','descricao','tipo_cct','',QR_MainTIPO_CCT.AsString);
          if retorno <> null then
            QR_MainTIPOCCT.AsString := VarToStr(retorno)
          else
          begin
            Application.MessageBox('Tipo de CCT não encontrado.','Aviso',MB_OK+MB_ICONWARNING);
            QR_MainTIPOCCT.Clear;
            Abort;
          end;
        end;
    end;
  end;
end;

procedure TF_TipoEquipamento.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then RzBitBtnPesquisar.Click;

end;

procedure TF_TipoEquipamento.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;
  inherited;
  QR_Main.Open;
end;

procedure TF_TipoEquipamento.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_TIPOEQUIPAMENTO.AsFloat := Buscar_Proximo_Codigo('tipo_equipamento','cod_tipoequipamento','');
  cxGrid1DBTableView1DESCRICAO.FocusWithSelection;
end;

procedure TF_TipoEquipamento.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TF_TipoEquipamento.RzBitBtnPesquisarClick(Sender: TObject);
var
  Sql : String;
  resultado : Variant;
begin
  inherited;
  Sql := 'SELECT a.tipo_cct "Tipo",                 ' +
         '       a.descricao "Descrição"            ' +
         '  FROM tipo_cct a                         ' +
         ' &Macro                                   ' +
         'ORDER BY a.tipo_cct                       ' ;
  resultado := F_BuscaAvancada.Buscar(sql,1,'Pesquisa Tipo CCT');
  if resultado <> null then
  begin
    if DS_Main.State = dsBrowse then QR_Main.Edit;
    QR_MainTIPO_CCT.AsString := VarToStr(resultado);
    cxGrid1DBTableView1FocusedItemChanged(cxGrid1DBTableView1,cxGrid1DBTableView1TIPO_CCT,cxGrid1DBTableView1TIPO_CCT);
    cxGrid1DBTableView1TIPOCCT.FocusWithSelection;
  end;
end;

end.
