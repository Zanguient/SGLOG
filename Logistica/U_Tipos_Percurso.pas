unit U_Tipos_Percurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TF_Tipos_Percurso = class(TF_TemplateProcesso)
    QR_MainCOD_TIPOPERCURSO: TFloatField;
    QR_MainDESCRICAO: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1COD_TIPOPERCURSO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Tipos_Percurso: TF_Tipos_Percurso;

implementation

{$R *.dfm}

uses u_recursos;

procedure TF_Tipos_Percurso.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;
  inherited;
  QR_Main.Open;

end;

procedure TF_Tipos_Percurso.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_TIPOPERCURSO.AsFloat := Buscar_Proximo_Codigo('tipos_percurso','cod_tipopercurso','');
end;

procedure TF_Tipos_Percurso.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
