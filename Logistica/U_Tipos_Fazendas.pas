//-------------------------------------------------------------------------------------------------
// Data : 18/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para cadastrar os tipos de fazendas,
// PRÓPRIA, ACIONISTA, TERCEIRO, FORNECEDOR, ARRENDADA ETC
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Tipos_Fazendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TF_Tipos_Fazendas = class(TF_TemplateProcesso)
    QR_MainCOD_TIPOFAZENDA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1COD_TIPOFAZENDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Tipos_Fazendas: TF_Tipos_Fazendas;

implementation

{$R *.dfm}

procedure TF_Tipos_Fazendas.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;
  inherited;
  QR_Main.Close;
  QR_Main.Open;
end;

procedure TF_Tipos_Fazendas.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
