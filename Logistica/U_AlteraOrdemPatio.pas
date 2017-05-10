unit U_AlteraOrdemPatio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Ora, MemDS;

type
  TF_AlteraOrdemPatio = class(TForm)
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QR_VeiculosPatio: TOraQuery;
    DS_VeiculosPatio: TOraDataSource;
    QR_VeiculosPatioCOD_GRUPO: TFloatField;
    QR_VeiculosPatioCOD_REGIONAL: TFloatField;
    QR_VeiculosPatioCOD_UNIDADE: TFloatField;
    QR_VeiculosPatioCOD_EQUIPAMENTO: TFloatField;
    QR_VeiculosPatioCOD_TIPOCARGA: TFloatField;
    QR_VeiculosPatioDATA: TDateTimeField;
    QR_VeiculosPatioMENSAGEM_PAINEL: TStringField;
    QR_VeiculosPatioSEQUENCIA: TFloatField;
    QR_VeiculosPatioDESCRICAO: TStringField;
    QR_VeiculosPatioTIPOCARGA: TStringField;
    cxGrid1DBTableView1COD_EQUIPAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1COD_TIPOCARGA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1SEQUENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCARGA: TcxGridDBColumn;
    PR_AtualizaOrdemPatio: TOraStoredProc;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtnSairClick(Sender: TObject);
    procedure QR_VeiculosPatioAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QR_VeiculosPatioBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vLeft, vTop : Integer;
  end;

var
  F_AlteraOrdemPatio: TF_AlteraOrdemPatio;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_AlteraOrdemPatio.FormCreate(Sender: TObject);
begin
   QR_VeiculosPatio.Close;
   QR_VeiculosPatio.ParamByName('cod_grupo').AsFloat := DM.QR_UnidadeCOD_GRUPO.AsFloat;
   QR_VeiculosPatio.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
   QR_VeiculosPatio.ParamByName('cod_unidade').AsFloat := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
   QR_VeiculosPatio.Open;
end;

procedure TF_AlteraOrdemPatio.FormShow(Sender: TObject);
begin
   Left := vLeft-trunc(Self.Width/2);
   Top := vTop-trunc(Self.Height/2);
end;

procedure TF_AlteraOrdemPatio.QR_VeiculosPatioAfterPost(DataSet: TDataSet);
 var bookmark : TBookmark;
begin
   bookmark := QR_VeiculosPatio.GetBookmark;

   QR_VeiculosPatio.Refresh;
   QR_VeiculosPatio.GotoBookmark(bookmark);
end;

procedure TF_AlteraOrdemPatio.QR_VeiculosPatioBeforePost(DataSet: TDataSet);
begin
   PR_AtualizaOrdemPatio.ParamByName('pcod_grupo').AsFloat := QR_VeiculosPatioCOD_GRUPO.AsFloat;
   PR_AtualizaOrdemPatio.ParamByName('pcod_regional').AsFloat := QR_VeiculosPatioCOD_REGIONAL.AsFloat;
   PR_AtualizaOrdemPatio.ParamByName('pcod_unidade').AsFloat := QR_VeiculosPatioCOD_UNIDADE.AsFloat;
   PR_AtualizaOrdemPatio.ParamByName('pcod_equipamento').AsFloat := QR_VeiculosPatioCOD_EQUIPAMENTO.AsFloat;
   PR_AtualizaOrdemPatio.ParamByName('psequencia_new').Value := QR_VeiculosPatioSEQUENCIA.NewValue;
   PR_AtualizaOrdemPatio.ParamByName('psequencia_old').Value := QR_VeiculosPatioSEQUENCIA.OldValue;
   PR_AtualizaOrdemPatio.Execute;

end;

procedure TF_AlteraOrdemPatio.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TF_AlteraOrdemPatio.RzBitBtnSairClick(Sender: TObject);
begin
  Close;
end;

end.
