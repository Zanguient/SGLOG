unit U_ParametrosLogistica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateProcesso, Data.DB, DBAccess,
  Ora, MemDS, Vcl.DBCtrls, RzButton, Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxDBEdit, Vcl.Mask, RzEdit, RzDBEdit, RzDBSpin,
  RzRadChk, RzDBChk, RzGroupBar, RzDBRGrp, RzDBCmbo, IdBaseComponent,
  IdZLibCompressorBase, IdCompressorZLib;

type
  TF_ParametrosLogistica = class(TF_TemplateProcesso)
    QR_MainCOD_GRUPO: TFloatField;
    QR_MainCOD_REGIONAL: TFloatField;
    QR_MainCOD_UNIDADE: TFloatField;
    QR_MainQDE_VIAGENS_MEDIA: TFloatField;
    QR_MainHORA_INICIO_DIA: TStringField;
    QR_MainMINUTOS_ABASTECIMENTO: TFloatField;
    QR_MainMINUTOS_BITUCA: TFloatField;
    QR_MainPERC_SOBRECARGA_FRENTE: TFloatField;
    QR_MainTRAVA_ALOCACAO_PATIO: TStringField;
    QR_MainTEMPO_ALOCACAO_AUTOMATICA: TFloatField;
    QR_MainTON_HORA_CARREGADEIRA: TFloatField;
    QR_MainENVIAR_MENSAGEM_VEICULO: TStringField;
    QR_MainHORA_FIM_DIA: TDateTimeField;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    Label1: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label3: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Label4: TLabel;
    RzDBSpinEdit2: TcxDBSpinEdit;
    Label5: TLabel;
    RzDBSpinEdit3: TcxDBSpinEdit;
    Label6: TLabel;
    RzDBSpinEdit4: TcxDBSpinEdit;
    Label8: TLabel;
    RzDBSpinEdit6: TcxDBSpinEdit;
    Label9: TLabel;
    RzDBSpinEdit7: TcxDBSpinEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    Label2: TLabel;
    RzDBSpinEdit1: TcxDBSpinEdit;
    QR_MainDISTANCIA_DESVIO_TRAJETO: TFloatField;
    QR_MainPARADA_AUTOMATICA: TStringField;
    QR_MainMINUTOS_VALIDADE_INFOBORDO: TFloatField;
    QR_MainATUALIZA_TEMPOS_PADRAO: TStringField;
    QR_MainATUALIZA_TEMPO_IDA: TStringField;
    QR_MainATUALIZA_TEMPO_VOLTA: TStringField;
    QR_MainATUALIZA_TEMPO_CARREGAMENTO: TStringField;
    IdCompressorZLib1: TIdCompressorZLib;
    QR_AtualizaList: TOraQuery;
    QR_AtualizaListHINT: TStringField;
    QR_AtualizaListKEYS: TStringField;
    DS_AtualizaList: TOraDataSource;
    RzFlowPanel1: TRzFlowPanel;
    RzDBCheckBoxGroup1: TRzDBCheckBoxGroup;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ParametrosLogistica: TF_ParametrosLogistica;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_ParametrosLogistica.FormCreate(Sender: TObject);
begin
  inherited;
  DBNavigatorAtivo := False;
  QR_Main.Close;
  QR_Main.ParamByName('cod_grupo').AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_Main.ParamByName('cod_regional').AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_Main.ParamByName('cod_unidade').AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_Main.Open;
end;

procedure TF_ParametrosLogistica.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPO.AsFloat    := DM.QR_UnidadeCOD_GRUPO.AsFloat;
  QR_MainCOD_REGIONAL.AsFloat := DM.QR_UnidadeCOD_REGIONAL.AsFloat;
  QR_MainCOD_UNIDADE.AsFloat  := DM.QR_UnidadeCOD_UNIDADE.AsFloat;
  QR_MainENVIAR_MENSAGEM_VEICULO.AsString := 'N';
  QR_MainTRAVA_ALOCACAO_PATIO.AsString    := 'S';
end;

end.
