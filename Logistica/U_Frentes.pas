//-------------------------------------------------------------------------------------------------
// Data : 18/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para cadastrar as FRENTES de trabalhos
// a codificação das frentes é por grupo/regional/unidade e safra
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Frentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox;

type
  TF_Frentes = class(TF_TemplateProcesso)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainCOD_SAFRA: TFloatField;
    QR_MainCOD_FRENTE: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainQUOTA_TON_DIA: TFloatField;
    QR_MainATIVO: TStringField;
    cxGrid1DBTableView1COD_FRENTE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1QUOTA_TON_DIA: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    QR_MainPATIO: TStringField;
    QR_MainSOBRECARGA: TStringField;
    cxGrid1DBTableView1PATIO: TcxGridDBColumn;
    cxGrid1DBTableView1SOBRECARGA: TcxGridDBColumn;
    QR_MainFIXA: TStringField;
    QR_MainPERC_RED_VAZAO: TFloatField;
    cxGrid1DBTableView1FIXA: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_RED_VAZAO: TcxGridDBColumn;
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Frentes: TF_Frentes;

implementation

{$R *.dfm}

uses U_DM, u_recursos, U_SelecionarSafra;

procedure TF_Frentes.FormCreate(Sender: TObject);
begin
  Top := 1;
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

procedure TF_Frentes.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TF_Frentes.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat      := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_MainCOD_REGIONAL.AsFloat   := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_MainCOD_UNIDADE.AsFloat    := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_MainCOD_SAFRA.AsFloat      := DM.QR_SafraSelecionadaCOD_SAFRA.AsFloat;
  QR_MainATIVO.AsString         := 'N';
  QR_MainSOBRECARGA.AsString    := 'S';
  QR_MainPATIO.AsString         := 'N';
  QR_MainFIXA.AsString          := 'N';
  QR_MainPERC_RED_VAZAO.AsFloat := 0;
end;

procedure TF_Frentes.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
