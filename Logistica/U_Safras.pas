unit U_Safras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DB;

type
  TF_Safras = class(TF_TemplateProcesso)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1COD_SAFRA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_INICIO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_TERMINO: TcxGridDBColumn;
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainCOD_SAFRA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainDATA_INICIO: TDateTimeField;
    QR_MainDATA_TERMINO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure RzBitBtnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Safras: TF_Safras;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_Safras.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;
  //Se não tiver grupo/regional ou unidade selecionada é preciso selecionar, pois
  //as safras são dependentes da unidade atual
  if DM.QR_Unidade.IsEmpty then
  begin
    Application.MessageBox('É preciso selecionar primeiro o Grupo/Regional e Unidade','Atenção',MB_ICONWARNING+MB_OK);
    Close;
  end;
  inherited;
  QR_Main.Close;
  QR_Main.ParamByName('cod_grupo').AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Main.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Main.ParamByName('cod_unidade').AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Main.Open;
end;

procedure TF_Safras.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TF_Safras.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_Main.FieldByName('cod_grupo').AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Main.FieldByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Main.FieldByName('cod_unidade').AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;

end;

procedure TF_Safras.RzBitBtnNovoClick(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

end.
