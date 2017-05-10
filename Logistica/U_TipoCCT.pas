unit U_TipoCCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DB,
  cxCheckBox;

type
  TF_TipoCCT = class(TF_TemplateProcesso)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QR_MainTIPO_CCT: TStringField;
    QR_MainDESCRICAO: TStringField;
    QR_MainFILTRO_LOGISTICA: TStringField;
    cxGrid1DBTableView1TIPO_CCT: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1FILTRO_LOGISTICA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TipoCCT: TF_TipoCCT;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_TipoCCT.FormCreate(Sender: TObject);
begin
  inherited;
  QR_Main.Open;
end;

procedure TF_TipoCCT.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainFILTRO_LOGISTICA.AsString := 'N';
end;

procedure TF_TipoCCT.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
