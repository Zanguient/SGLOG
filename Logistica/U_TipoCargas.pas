unit U_TipoCargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_TemplateProcesso, DB, Grids, Wwdbigrd, Wwdbgrid, MemDS, DBAccess,
  Ora, DBCtrls, StdCtrls, Buttons, ExtCtrls, RzButton, RzPanel, RzSplit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCheckBox;

type
  TF_TipoCargas = class(TF_TemplateProcesso)
    QR_MainCOD_TIPOCARGA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainTEMPO_CARREGAMENTO_CONJ: TFloatField;
    QR_MainATIVO: TStringField;
    QR_MainQDE_CARREGAMENTO: TFloatField;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Descricao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Qtde_Carregamento: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Ativo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Tempo_Carregamento_Conj: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TipoCargas: TF_TipoCargas;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_TipoCargas.FormCreate(Sender: TObject);
begin
  inherited;
  QR_Main.Close;
  QR_Main.Open;
end;

procedure TF_TipoCargas.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainATIVO.AsString := 'N';
end;

end.
