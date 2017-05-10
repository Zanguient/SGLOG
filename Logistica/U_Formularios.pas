unit U_Formularios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid,  DB;

type
  TF_Formularios = class(TF_TemplateProcesso)
    QR_MainCOD_MODULO: TFloatField;
    QR_MainCOD_TELA: TFloatField;
    QR_MainNOME: TStringField;
    QR_MainCOD_MENU: TFloatField;
    QR_MainDESCMENU: TStringField;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2COD_TELA: TcxGridDBColumn;
    cxGridDBTableView2NOME: TcxGridDBColumn;
    cxGridDBTableView2COD_MENU: TcxGridDBColumn;
    cxGridDBTableView2DESCMENU: TcxGridDBColumn;
    QR_ProximoCodigo: TOraQuery;
    QR_ProximoCodigoCOD_FORMULARIO: TFloatField;
    procedure cxGridDBTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure RzBitBtnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Formularios: TF_Formularios;

implementation

{$R *.dfm}

uses U_DM, u_recursos, U_BuscaAvancada;

procedure TF_Formularios.cxGridDBTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
Var Retorno : Variant;
begin
  inherited;

  if AFocusedItem = cxGridDBTableView2COD_MENU then
  begin
     cxGrid3.Hint := 'Aperte F9 para pesquisar o Grupo';
     cxGrid3.ShowHint := True;
  end
  else
  begin
     cxGrid3.Hint := '';
     cxGrid3.ShowHint := False;
  end;

   RzBitBtnPesquisar.Enabled := (AFocusedItem = cxGridDBTableView2COD_MENU);

  if QR_Main.State in [dsEdit, dsInsert] then
  begin
    if (APrevFocusedItem = cxGridDBTableView2COD_MENU) then
    begin
      if not QR_MainCOD_MENU.IsNull then
      begin
        Retorno := Buscar_Descricao('menu','descricao','cod_menu','',QR_MainCOD_MENU.AsString);
        if Retorno <> null then
          QR_MainDESCMENU.AsString := VarToStr(Retorno)
        else
          begin
            Application.MessageBox('Menu n�o encontrado','Aten��o',MB_OK + MB_ICONWARNING);
            QR_MainDESCMENU.Clear;
          end;
      end
        else
          if QR_MainDESCMENU.AsString <> '' then
             QR_MainDESCMENU.Clear;
    end;
  end;
end;

procedure TF_Formularios.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;
  inherited;

  QR_Main.Close;
  QR_Main.ParamByName('cod_modulo').AsFloat := DM.QR_ModulosCOD_MODULO.AsFloat;
  QR_Main.Open;
end;

procedure TF_Formularios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f9 then
    RzBitBtnPesquisarClick(Sender);
end;

procedure TF_Formularios.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid3.SetFocus;
end;

procedure TF_Formularios.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_MODULO.AsFloat := DM.QR_ModulosCOD_MODULO.AsFloat;

  QR_ProximoCodigo.Close;
  QR_ProximoCodigo.ParamByName('cod_modulo').AsFloat := QR_MainCOD_MODULO.AsFloat;
  QR_ProximoCodigo.Open;
  QR_MainCOD_TELA.AsFloat := QR_ProximoCodigoCOD_FORMULARIO.AsFloat;
  QR_ProximoCodigo.Close;

end;

procedure TF_Formularios.RzBitBtnPesquisarClick(Sender: TObject);
Var Sql : String;
    Resultado : Variant;
begin
  inherited;
  if RzBitBtnPesquisar.Enabled then
  begin

    Sql := 'SELECT a.cod_menu "C�d. Menu", a.descricao "Nome"     ' +
           '  FROM adm.menu a                                     ' +
           ' WHERE a.cod_modulo = ' + DM.QR_ModulosCOD_MODULO.AsString +
           '  &Macro                                              ' +
           ' ORDER BY a.cod_menu                                  ' ;

    Resultado := F_BuscaAvancada.Buscar(Sql,1,'Pesquisa Menus');
    if Resultado <> null then
    begin
      if QR_Main.State = dsBrowse then
        QR_Main.Edit;

      QR_MainCOD_MENU.AsFloat := Resultado;

      cxGridDBTableView2FocusedItemChanged(cxGridDBTableView2,
                                           cxGridDBTableView2COD_MENU,
                                           cxGridDBTableView2COD_MENU);

      cxGrid3.SetFocus;
      cxGridDBTableView2COD_TELA.FocusWithSelection;
    end;
  end;
end;

end.