unit U_Compartimento_Carga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox;

type
  TF_Compartimento_Carga = class(TF_TemplateProcesso)
    QR_MainCOD_COMPARTIMENTOCARGA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainATIVO: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1COD_COMPARTIMENTOCARGA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Compartimento_Carga: TF_Compartimento_Carga;

implementation

{$R *.dfm}

uses u_recursos;

procedure TF_Compartimento_Carga.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left :=1;
  inherited;
  QR_Main.Open;

end;

procedure TF_Compartimento_Carga.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_COMPARTIMENTOCARGA.AsFloat := Buscar_Proximo_Codigo('compartimento_carga','cod_compartimentocarga','');
  QR_MainATIVO.AsString := 'S';
end;

procedure TF_Compartimento_Carga.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
