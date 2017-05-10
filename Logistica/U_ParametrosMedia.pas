unit U_ParametrosMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TF_ParametrosMedia = class(TF_TemplateProcesso)
    cxGridParametrosTempos: TcxGrid;
    cxGridParametrosTemposDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1DESCRICAO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TONELADA_VIAGEM: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1DENSIDADE_CARGA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_DESCARGA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_VAZIO_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_VAZIO_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_VAZIO_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_CARRE_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_CARRE_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1TEMP_CARRE_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_VAZIO_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_VAZIO_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_VAZIO_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_CARRE_ASFALTO: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_CARRE_TERRA: TcxGridDBBandedColumn;
    cxGridParametrosTemposDBBandedTableView1VELOCMAX_CARRE_CARREADOR: TcxGridDBBandedColumn;
    cxGridParametrosTemposLevel1: TcxGridLevel;
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainCOD_TIPOCARGA: TFloatField;
    QR_MainTONELADA_VIAGEM: TFloatField;
    QR_MainTEMP_VAZIO_ASFALTO: TFloatField;
    QR_MainTEMP_VAZIO_TERRA: TFloatField;
    QR_MainTEMP_VAZIO_CARREADOR: TFloatField;
    QR_MainTEMP_CARRE_ASFALTO: TFloatField;
    QR_MainTEMP_CARRE_TERRA: TFloatField;
    QR_MainTEMP_CARRE_CARREADOR: TFloatField;
    QR_MainTEMP_DESCARGA: TFloatField;
    QR_MainDENSIDADE_CARGA: TFloatField;
    QR_MainVELOCMAX_VAZIO_ASFALTO: TFloatField;
    QR_MainVELOCMAX_VAZIO_TERRA: TFloatField;
    QR_MainVELOCMAX_VAZIO_CARREADOR: TFloatField;
    QR_MainVELOCMAX_CARRE_ASFALTO: TFloatField;
    QR_MainVELOCMAX_CARRE_TERRA: TFloatField;
    QR_MainVELOCMAX_CARRE_CARREADOR: TFloatField;
    QR_MainDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxGridParametrosTemposDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QR_MainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ParametrosMedia: TF_ParametrosMedia;

implementation

{$R *.dfm}

uses u_recursos, U_BuscaAvancada, U_DM;

procedure TF_ParametrosMedia.cxGridParametrosTemposDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
Var Retorno : Variant;
begin
  inherited;

  if AFocusedItem = cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA then
  begin
      cxGridParametrosTempos.Hint := 'Aperte F9 para pesquisar o Tipos de carga';
      cxGridParametrosTempos.ShowHint := True;
  end;

   RzBitBtnPesquisar.Enabled := (AFocusedItem = cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA);

  if QR_Main.State in [dsEdit, dsInsert] then
  begin
    //Busca a descrição do tipo de carga
    if (APrevFocusedItem = cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA) then
    begin
      if not QR_MainCOD_TIPOCARGA.IsNull then
      begin
        Retorno := Buscar_Descricao('tipo_carga','descricao','cod_tipocarga','',QR_MainCOD_TIPOCARGA.AsString);
        if Retorno <> null then
          QR_MainDESCRICAO.AsString := VarToStr(Retorno)
        else
        begin
          Application.MessageBox('Tipo de carga não encontrado','Atenção',MB_OK + MB_ICONWARNING);
          cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA.FocusWithSelection;
          QR_MainDESCRICAO.Clear;
        end;
      end
      else
         if QR_MainDESCRICAO.AsString <> '' then
            QR_MainDESCRICAO.Clear;
    end;
  end;
end;

procedure TF_ParametrosMedia.FormCreate(Sender: TObject);
begin
  inherited;

  QR_Main.Close;
  QR_Main.ParamByName('cod_grupo').AsString := DM.QR_GrupoCOD_GRUPO.AsString;
  QR_Main.ParamByName('cod_regional').AsString := dm.QR_UnidadeCOD_REGIONAL.AsString;
  QR_Main.ParamByName('cod_unidade').AsString := dm.QR_UnidadeCOD_UNIDADE.AsString;
  QR_Main.Open;

  cxGridParametrosTemposDBBandedTableView1FocusedItemChanged(cxGridParametrosTemposDBBandedTableView1,
                                                             cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA,
                                                             cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA);

end;

procedure TF_ParametrosMedia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f9 then
    RzBitBtnPesquisarClick(Sender);
end;

procedure TF_ParametrosMedia.FormShow(Sender: TObject);
begin
  inherited;
  cxGridParametrosTempos.SetFocus;
end;

procedure TF_ParametrosMedia.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat    := DM.QR_GrupoCOD_GRUPO.AsFloat;
  QR_MainCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_MainCOD_UNIDADE.AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
end;

procedure TF_ParametrosMedia.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGridParametrosTempos.SetFocus;
end;

procedure TF_ParametrosMedia.RzBitBtnPesquisarClick(Sender: TObject);
Var Sql : String;
    Resultado : Variant;
begin
  inherited;
  if RzBitBtnPesquisar.Enabled then
  begin
    //Pesquisa de grupo
    if cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA.Focused then
    begin
      Sql := 'SELECT cod_tipocarga "Cod. tipo carga", descricao "Descrição" from tipo_carga &Macro';
      Resultado := F_BuscaAvancada.Buscar(Sql,1,'Pesquisa tipos de carga');
      if Resultado <> null then
      begin
        if QR_Main.State = dsBrowse then
          QR_Main.Edit;

        QR_MainCOD_TIPOCARGA.AsFloat := Resultado;


        cxGridParametrosTemposDBBandedTableView1FocusedItemChanged(cxGridParametrosTemposDBBandedTableView1,
                                                                   cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA,
                                                                   cxGridParametrosTemposDBBandedTableView1COD_TIPOCARGA);
        cxGridParametrosTemposDBBandedTableView1DENSIDADE_CARGA.FocusWithSelection;
      end;
    end;
  end;
end;

end.
