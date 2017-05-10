// Clealco Açúcar e Álcool S/A - C.I.
// Data Criação/Documentação: 17/06/2003 15:38 TER
// Propósito do Formulário  : Usado para reenviar a mensagem da alocacao do logistica para
//                            o painel eletronico, ou enviar um mensagem qualquer.
//
// Funcionário     Data                 Observações
// --------------- -------------------- -------------------------------------------
// Silvio          17/06/2003 15:38 ter - Criação
// Silvio          29/09/2004 16:36 qua - Passar a data prevista chegada como parametro

unit U_Painel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Mask, wwdbedit;

type
  TF_Painel = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit5: TwwDBEdit;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     v_cod_frente : String;
     v_cod_fazenda : String;
     v_descFazenda : String;
     v_cod_veiculo : String;
  end;

var
  F_Painel: TF_Painel;

implementation

uses  U_AlocacaoEquipamento;

{$R *.DFM}

procedure TF_Painel.SpeedButton1Click(Sender: TObject);
begin
  // Chama a Procedure de envio de mensagem
 { TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_SAFRA#').Value         := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_GRUPOEMPRESA#').Value  := TF_Alocacao(owner).QR_MainCOD_GRUPOEMPRESA.Value;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_EQUIPAMENTO#').Value   := TF_Alocacao(owner).QR_MainCOD_EQUIPAMENTO.Value;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_FRENTE#').Value        := TF_Alocacao(owner).QR_MainCOD_FRENTE.Value;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_FAZENDA#').Value       := TF_Alocacao(owner).QR_MainCOD_FAZENDA.Value;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VMENSAGEM#').Value          := Edit1.Text;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_PAINEL#').Value        := 0;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VDATA_PREV_CHEGADA#').Value := TF_Alocacao(owner).QR_MainDATA_PREV_CHEGADA.Value;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_GRUPOEMPRESA_PAINEL#').Value := Data_Modulo.QR_Filial.FieldByName('cod_grupoempresa').asInteger;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_EMPRESA_PAINEL#').Value := Data_Modulo.QR_Filial.FieldByName('cod_empresa').asInteger;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.ParamByName('VCOD_FILIAL_PAINEL#').Value := Data_Modulo.QR_Filial.FieldByName('cod_filial').asInteger;
  TF_Alocacao(owner).PR_ENVIA_MENSAGEM.Execute;}
  F_Painel.Close;
end;

procedure TF_Painel.FormShow(Sender: TObject);
begin
   wwDBEdit5.Text := v_cod_veiculo;
   wwDBEdit1.Text := v_cod_frente;
   wwDBEdit3.Text := v_cod_fazenda;
   wwDBEdit4.Text := v_descFazenda;
   Edit1.SetFocus;
end;

end.
