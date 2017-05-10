//-------------------------------------------------------------------------------------------------
// Data : 27/12/2011
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para selecionar a safra que irá trabalhar
// no sistema
//
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------

unit U_SelecionarSafra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzButton,DB,
  Vcl.ExtCtrls, RzPanel, RzSplit, wwdblook, Vcl.StdCtrls, Vcl.Mask, wwdbedit,
  Vcl.Buttons;

type
  TF_SelecionarSafra = class(TF_TemplateConsulta)
    B_OK: TRzBitBtn;
    B_Cancela: TRzBitBtn;
    Label3: TLabel;
    edtCod_Safra: TwwDBEdit;
    btnPesquisa_Safras: TSpeedButton;
    edtDesc_Safra: TwwDBEdit;
    procedure RzBitBtnSairClick(Sender: TObject);
    procedure B_OKClick(Sender: TObject);
    procedure edtCod_SafraExit(Sender: TObject);
    procedure comboSafraCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormShow(Sender: TObject);
    procedure B_CancelaClick(Sender: TObject);
    procedure btnPesquisa_SafrasClick(Sender: TObject);
    procedure edtCod_SafraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SelecionarSafra: TF_SelecionarSafra;
  vAno_SafraInicial,vCod_SafraInicial: Integer;


implementation

{$R *.dfm}

uses U_DM, u_recursos, U_BuscaAvancada, UMain_Logistica;

procedure TF_SelecionarSafra.btnPesquisa_SafrasClick(Sender: TObject);
Var Sql : String;
   Resultado : Variant;
begin
  inherited;

  Sql :=       'SELECT SUBSTR(sa.descricao,1,50) "Safra", sa.cod_safra "Cód. Safra"';
  Sql := Sql + '  FROM safra sa ';
  Sql := Sql + ' &Macro ';
  Sql := Sql + ' ORDER BY sa.cod_safra ';

  Resultado := F_BuscaAvancada.Buscar(sql,2,'Busca de Safras');
  if Resultado <> null then
  begin
    edtCod_Safra.Text := VarToStr(Resultado);
    edtCod_Safra.SetFocus;
    edtCod_SafraExit(Sender);
  end;

end;

procedure TF_SelecionarSafra.B_CancelaClick(Sender: TObject);
begin
  inherited;
   //Cancelando a seleção da safra
   Registrar_Safra(vCod_SafraInicial,vAno_SafraInicial);
   DM.QR_SafraSelecionada.Close;
   DM.QR_SafraSelecionada.Open;
   Close;
end;

procedure TF_SelecionarSafra.B_OKClick(Sender: TObject);
begin
  inherited;
   //Confirmando a seleção da safra
   Registrar_Safra(DM.QR_SafrasCOD_SAFRA.AsFloat,DM.QR_SafrasDESCRICAO.AsFloat);
   DM.QR_SafraSelecionada.Close;
   DM.QR_SafraSelecionada.Open;
   FMainLogistica.AtualizarStatusBar;
   Close;
end;

procedure TF_SelecionarSafra.comboSafraCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  inherited;
  edtCod_Safra.Text := FloatTostr(DM.QR_SafrasCod_Safra.value) ;
end;

procedure TF_SelecionarSafra.edtCod_SafraExit(Sender: TObject);
begin
  inherited;

  if (edtCod_Safra.Text <> '') and (ActiveControl <> B_Cancela) then
  begin
    if not DM.QR_Safras.Locate('cod_Safra',edtCod_Safra.text,[LoCaseInsensitive]) then
    begin
      Application.MessageBox('Safra não encontrada !','Verificar',mb_Ok + MB_ICONWARNING);
      edtDesc_Safra.Clear;
      edtCod_Safra.SetFocus ;
   end
   else
     edtDesc_Safra.Text := DM.QR_SafrasDescricao.Value;
   end
   else
    edtDesc_Safra.Clear;
end;

procedure TF_SelecionarSafra.edtCod_SafraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if  key = vk_F9 then
    btnPesquisa_SafrasClick(Sender);
end;

procedure TF_SelecionarSafra.FormActivate(Sender: TObject);
begin
//  inherited;

end;

procedure TF_SelecionarSafra.FormShow(Sender: TObject);
begin
  inherited;
   if DM.QR_SafraSelecionadaCOD_SAFRA.IsNull then
   begin
      DM.QR_Safras.Locate('cod_Safra',DM.QR_SafrasCOD_SAFRA.AsString,[LoCaseInsensitive]);
      edtCod_Safra.Text  := DM.QR_SafrasCOD_SAFRA.AsString;
      edtDesc_Safra.Text := DM.QR_SafrasDESCRICAO.AsString;
      vCod_SafraInicial  := DM.QR_SafrasCOD_SAFRA.AsInteger;
      vAno_SafraInicial := DM.QR_SafrasDESCRICAO.AsInteger;
   end
   else
   begin
      DM.QR_Safras.Locate('cod_Safra',DM.QR_SafraSelecionadaCOD_SAFRA.AsString,[LoCaseInsensitive]);
      edtCod_Safra.Text  := DM.QR_SafraSelecionadaCOD_SAFRA.AsString;
      edtDesc_Safra.Text := DM.QR_SafraSelecionadaDESCRICAO_SAFRA.AsString;
      vCod_SafraInicial  := DM.QR_SafraSelecionadaCOD_SAFRA.AsInteger;
      vAno_SafraInicial := DM.QR_SafraSelecionadaDESCRICAO_SAFRA.AsInteger;
   End;


end;

procedure TF_SelecionarSafra.RzBitBtnSairClick(Sender: TObject);
begin
//  inherited;

end;

end.
