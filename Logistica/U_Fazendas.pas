//-------------------------------------------------------------------------------------------------
// Data : 18/01/2012
// Desenvolvedor : P1
// Descri��o Fun��o/Procedure/Tela : Tela para cadastrar as fazendas, por grupo/regiona/unidade
// as fazendas possuem codifica��o corporativa, unica em todo o grupo, chava cod_fazenda
///ALTERA��ES --------------------------------------------------------------------------------------
// Data :					Descri��o da mudan�a
//
///-------------------------------------------------------------------------------------------------
unit U_Fazendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, Data.DB, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, Vcl.StdCtrls, Vcl.Mask, wwdbedit, Vcl.Buttons;

type
  TF_Fazendas = class(TF_TemplateProcesso)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNome_Fazenda: TwwDBEdit;
    edtNome_Grupo: TwwDBEdit;
    edtNome_Regional: TwwDBEdit;
    edtNome_Unidade: TwwDBEdit;
    edtDesc_TipoFazenda: TwwDBEdit;
    QR_MainCOD_FAZENDA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainCOD_TIPOFAZENDA: TFloatField;
    QR_MainCOD_PROPRIETARIO: TFloatField;
    QR_MainNOME_GRUPO: TStringField;
    QR_MainNOME_REGIONAL: TStringField;
    QR_MainNOME_UNIDADE: TStringField;
    btnPesquisa_Fazendas: TSpeedButton;
    edtCod_Fazenda: TwwDBEdit;
    edtCod_Grupo  : TwwDBEdit;
    edtCod_Regional : TwwDBEdit;
    edtCod_Unidade  : TwwDBEdit;
    edtCod_TipoFazenda  : TwwDBEdit;
    btnPesquisa_Grupos: TSpeedButton;
    btnPesquisa_Regionais: TSpeedButton;
    btnPesquisa_Unidades: TSpeedButton;
    btnPesquisa_TipoFazendas: TSpeedButton;
    QR_MainDESC_TIPO_FAZENDA: TStringField;
    edtApelido: TwwDBEdit;
    Label7: TLabel;
    QR_MainAPELIDO: TStringField;

    procedure btnPesquisa_FazendasClick(Sender: TObject);
    procedure edtCod_FazendaExit(Sender: TObject);
    procedure edtCod_FazendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure btnPesquisa_GruposClick(Sender: TObject);
    procedure edtCod_GrupoExit(Sender: TObject);
    procedure edtCod_GrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisa_RegionaisClick(Sender: TObject);
    procedure edtCod_RegionalExit(Sender: TObject);
    procedure edtCod_RegionalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisa_UnidadesClick(Sender: TObject);
    procedure edtCod_UnidadeExit(Sender: TObject);
    procedure edtCod_UnidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisa_TipoFazendasClick(Sender: TObject);
    procedure edtCod_TipoFazendaExit(Sender: TObject);
    procedure edtCod_TipoFazendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Fazendas: TF_Fazendas;

implementation

{$R *.dfm}

uses u_recursos, U_BuscaAvancada, U_DM;

procedure TF_Fazendas.btnPesquisa_FazendasClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;

  Sql :=       'SELECT SUBSTR(fa.descricao,1,80) "Nome fazenda", fa.cod_fazenda "C�d. Fazenda",';
  Sql := Sql + '       0 "C�d. Proprietario", '''' "Nome proprietario" ';
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

procedure TF_Fazendas.btnPesquisa_GruposClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;

  Sql :=       'SELECT SUBSTR(gr.nome,1,80) "Nome Grupo", gr.cod_grupo "C�d. Grupo"';
  Sql := Sql + '  FROM grupo gr ';
  Sql := Sql + ' &Macro ';
  Sql := Sql + ' ORDER BY gr.cod_grupo ';

  Resultado := F_BuscaAvancada.Buscar(sql,2,'Busca de Grupos');
  if Resultado <> null then
  begin
    if not (QR_Main.State in [dsEdit,dsInsert]) then
      QR_Main.Edit;
    QR_MainCOD_GRUPO.AsFloat := Resultado;
    edtCod_GrupoExit(Sender);
    edtCod_Regional.SetFocus;
  end;
end;

procedure TF_Fazendas.btnPesquisa_RegionaisClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;
      if QR_MainCOD_GRUPO.IsNull then
      begin
        Application.MessageBox('� preciso informar primeiro o Grupo','Aten��o',MB_ICONWARNING+MB_OK);
        edtCod_Grupo.SetFocus;
        Abort;
      end;

      Sql :=       'SELECT cod_regional "Cod. Regional", nome "Nome" from regional ';
      Sql := Sql + ' WHERE cod_grupo = ' + QR_MainCOD_GRUPO.AsString;
      Sql := Sql + ' &Macro order by cod_grupo';
      Resultado := F_BuscaAvancada.Buscar(Sql,1,'Busca Regional');
      if Resultado <> null then
      begin
        if QR_Main.State = dsBrowse then
          QR_Main.Edit;

        QR_MainCOD_REGIONAL.AsFloat := Resultado;
        edtCod_RegionalExit(Sender);
        edtCod_Unidade.SetFocus;
      end;
end;

procedure TF_Fazendas.btnPesquisa_TipoFazendasClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;
  Sql :=       'SELECT cod_tipofazenda "C�d. Tipo Fazenda", descricao "Tipo Fazenda"';
  Sql := Sql + '  FROM tipo_fazenda';
  Sql := Sql + ' &Macro order by cod_tipofazenda';
  Resultado := F_BuscaAvancada.Buscar(Sql,1,'Busca Tipos de Fazendas');
  if Resultado <> null then
  begin
    if QR_Main.State = dsBrowse then
      QR_Main.Edit;

    QR_MainCOD_TIPOFAZENDA.AsFloat := Resultado;
    edtCod_TipoFazendaExit(Sender);
  end;
end;

procedure TF_Fazendas.btnPesquisa_UnidadesClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;
      if QR_MainCOD_REGIONAL.IsNull then
      begin
        Application.MessageBox('� preciso informar primeiro a Regional','Aten��o',MB_ICONWARNING+MB_OK);
        edtCod_Regional.SetFocus;
        Abort;
      end;

      Sql :=       'SELECT cod_unidade "Cod. Unidade", nome "Nome" from unidade ';
      Sql := Sql + ' WHERE cod_grupo    = ' + QR_MainCOD_GRUPO.AsString;
      Sql := Sql + '   AND cod_regional = ' + QR_MainCOD_REGIONAL.AsString;
      Sql := Sql + ' &Macro order by cod_grupo, cod_regional';
      Resultado := F_BuscaAvancada.Buscar(Sql,1,'Busca Unidade');
      if Resultado <> null then
      begin
        if QR_Main.State = dsBrowse then
          QR_Main.Edit;

        QR_MainCOD_UNIDADE.AsFloat := Resultado;
        edtCod_UnidadeExit(Sender);
        edtCod_TipoFazenda.SetFocus;
      end;
end;

procedure TF_Fazendas.edtCod_FazendaExit(Sender: TObject);
Var Resultado : Variant;
    vCod_fazenda : Real;
begin
  inherited;
  if edtCod_Fazenda.Text <>  '' then
  begin
    vCod_Fazenda := StrToFloat(edtCod_Fazenda.Text);
    Resultado := Buscar_Descricao('fazenda','cod_fazenda','cod_fazenda','',edtCod_Fazenda.Text);
    if Resultado <> null then
    begin
      QR_Main.Close;
      QR_Main.ParamByName('cod_fazenda').AsFloat := Resultado;
      QR_Main.Open;
    end
    else
    begin
      QR_Main.Close;
      QR_Main.ParamByName('cod_fazenda').AsFloat := vCod_Fazenda;
      QR_Main.Open;
      QR_Main.Append;
      QR_MainCOD_FAZENDA.AsFloat := vCod_fazenda;
      edtNome_Fazenda.setfocus;
    end;
  end;

end;

procedure TF_Fazendas.edtCod_FazendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f9 then
    btnPesquisa_FazendasClick(Sender);
end;

procedure TF_Fazendas.edtCod_GrupoExit(Sender: TObject);
Var Resultado : Variant;
begin
  inherited;
  if not QR_MainCod_Grupo.IsNull then
  begin
    Resultado := Buscar_Descricao('grupo','nome','cod_grupo','',QR_MainCod_Grupo.AsString);
    if (Resultado <> null) then
    begin
      if QR_Main.State = dsBrowse then
        QR_Main.Edit;
      QR_MainNOME_GRUPO.AsString := VarToStr(Resultado)
    end
    else
    begin
      Application.MessageBox('Grupo n�o encontrado','Aten��o',MB_OK + MB_ICONWARNING);
      edtCod_Grupo.SetFocus;
      QR_MainNOME_GRUPO.Clear;
    end;
    end
    else
      QR_MainNOME_GRUPO.Clear;
end;

procedure TF_Fazendas.edtCod_GrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F9 then
    btnPesquisa_GruposClick(Sender);
end;

procedure TF_Fazendas.edtCod_RegionalExit(Sender: TObject);
Var Resultado : Variant;

begin
  inherited;
  //Busca o nome da regional
    if QR_MainCOD_GRUPO.IsNull then
    begin
      Application.MessageBox('� preciso informar primeiro o Grupo','Aten��o',MB_ICONWARNING+MB_OK);
      edtCod_Grupo.SetFocus;
      Abort;
    end;
    if not QR_MainCOD_REGIONAL.IsNull then
    begin
      Resultado := Buscar_Descricao('regional','nome','cod_regional','cod_grupo = ' + QR_MainCOD_GRUPO.AsString,QR_MainCOD_REGIONAL.AsString);
    if (Resultado <> null) then
    begin
      if QR_Main.State = dsBrowse then
        QR_Main.Edit;
        QR_MainNOME_REGIONAL.AsString := VarToStr(Resultado)
    end
      else
      begin
        Application.MessageBox('Regional n�o encontrada','Aten��o',MB_OK + MB_ICONWARNING);
        edtCod_Regional.SetFocus;
        QR_MainNOME_REGIONAL.Clear;
      end;
    end
    else
      QR_MainNOME_REGIONAL.Clear;

end;

procedure TF_Fazendas.edtCod_RegionalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f9 then
    btnPesquisa_Regionais.Click;
end;

procedure TF_Fazendas.edtCod_TipoFazendaExit(Sender: TObject);
Var Resultado : Variant;

begin
  inherited;
  //Busca a descri�a� do tipo de fazenda
  if not QR_MainCOD_TIPOFAZENDA.IsNull then
  begin
    Resultado := Buscar_Descricao('tipo_fazenda','descricao','cod_tipofazenda','',QR_MainCOD_TIPOFAZENDA.AsString);
    if (Resultado <> null) then
    begin
      if QR_Main.State = dsBrowse then
        QR_Main.Edit;
      QR_MainDESC_TIPO_FAZENDA.AsString := VarToStr(Resultado)
    end
    else
    begin
      Application.MessageBox('Tipo de fazenda n�o encontrado','Aten��o',MB_OK + MB_ICONWARNING);
      edtCod_TipoFazenda.SetFocus;
      QR_MainDESC_TIPO_FAZENDA.Clear;
    end;
  end
  else
    QR_MainDESC_TIPO_FAZENDA.Clear;
end;

procedure TF_Fazendas.edtCod_TipoFazendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    btnPesquisa_TipoFazendas.Click;
end;

procedure TF_Fazendas.edtCod_UnidadeExit(Sender: TObject);
Var Resultado : Variant;

begin
  inherited;
  //Busca o nome da unidade
    if QR_MainCOD_REGIONAL.IsNull then
    begin
      Application.MessageBox('� preciso informar primeiro a Regional','Aten��o',MB_ICONWARNING+MB_OK);
      edtCod_Regional.SetFocus;
      Abort;
    end;
    if not QR_MainCOD_UNIDADE.IsNull then
    begin
      Resultado := Buscar_Descricao('unidade','nome','cod_unidade',' cod_grupo = ' + QR_MainCOD_GRUPO.AsString+ ' AND cod_regional = ' + QR_MainCOD_REGIONAL.AsString,QR_MainCOD_UNIDADE.AsString);
      if (Resultado <> null) then
      begin
        if QR_Main.State = dsBrowse then
          QR_Main.Edit;
        QR_MainNOME_UNIDADE.AsString := VarToStr(Resultado)
      end
      else
      begin
        Application.MessageBox('Unidade n�o encontrada','Aten��o',MB_OK + MB_ICONWARNING);
        edtCod_Unidade.SetFocus;
        QR_MainNOME_UNIDADE.Clear;
      end;
    end
    else
      QR_MainNOME_UNIDADE.Clear;
end;

procedure TF_Fazendas.edtCod_UnidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    btnPesquisa_Unidades.Click;
end;

procedure TF_Fazendas.FormActivate(Sender: TObject);
begin
//  inherited;
  edtCod_Fazenda.SetFocus;

end;

procedure TF_Fazendas.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;

  inherited;
  DBNavigatorAtivo := False;

  QR_Main.Close;
  QR_Main.ParamByName('cod_grupo').AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Main.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Main.ParamByName('cod_unidade').AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Main.Open;
end;

procedure TF_Fazendas.FormShow(Sender: TObject);
begin
  inherited;
  edtCod_Fazenda.SetFocus;
end;

procedure TF_Fazendas.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat      := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_MainNOME_GRUPO.AsString    := DM.QR_GrupoNOME.AsString;
  QR_MainCOD_REGIONAL.AsFloat   := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_MainNOME_REGIONAL.AsString := DM.QR_RegionalNOME.AsString;
  QR_MainCOD_UNIDADE.AsFloat    := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_MainNOME_UNIDADE.AsString  := DM.QR_UnidadeNOME.AsString;
end;

procedure TF_Fazendas.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  edtCod_Fazenda.SetFocus;
end;

end.
