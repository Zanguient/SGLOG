//-------------------------------------------------------------------------------------------------
// Data : 18/01/2012
// Desenvolvedor : P1
// Descrição Função/Procedure/Tela : Tela para cadastrar os tipos de cana
// crua manual, queimada manual, crua mecanizada, queimada mecanizada etc
///ALTERAÇÕES --------------------------------------------------------------------------------------
// Data :					Descrição da mudança
//
///-------------------------------------------------------------------------------------------------
unit U_Tipo_Cana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckComboBox, cxRadioGroup, cxCheckBox;

type
  TF_Tipo_Cana = class(TF_TemplateProcesso)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QR_MainCOD_TIPOCANA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainCANA_QUEIMADA: TStringField;
    QR_MainMECANIZADA: TStringField;
    cxGrid1DBTableView1COD_TIPOCANA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CANA_QUEIMADA: TcxGridDBColumn;
    cxGrid1DBTableView1MECANIZADA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Tipo_Cana: TF_Tipo_Cana;

implementation

{$R *.dfm}

uses u_recursos;

procedure TF_Tipo_Cana.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;
  inherited;
  QR_Main.Close;
  QR_Main.Open;
end;

procedure TF_Tipo_Cana.FormShow(Sender: TObject);
begin
  inherited;
     cxGrid1.SetFocus;
end;

procedure TF_Tipo_Cana.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCANA_QUEIMADA.AsString := 'N';
  QR_MainMECANIZADA.AsString    := 'N';
  QR_MainCOD_TIPOCANA.AsFloat := Buscar_Proximo_Codigo('tipo_cana','cod_tipocana','');
  cxGrid1DBTableView1DESCRICAO.FocusWithSelection;
end;

procedure TF_Tipo_Cana.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
