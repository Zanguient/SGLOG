//-------------------------------------------------------------------------------------------------
// Data : 26/12/2011
// Desenvolvedor : P1
// Descri��o Fun��o/Procedure/Tela : Reposit�rio Dados e recursos compatilhados
// Queryes, Estilhos, imagens etc
//
///ALTERA��ES --------------------------------------------------------------------------------------
// Data :			Descri��o da mudan�a
//
///-------------------------------------------------------------------------------------------------

unit U_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Ora,
  cxGridBandedTableView, cxGridTableView, cxStyles, cxCustomPivotGrid,
  cxClasses, Vcl.ImgList, Vcl.Controls, cxGraphics, DAScript, OraScript;

type
  TDM = class(TDataModule)
    Sessao: TOraSession;
    QR_Modulos: TOraQuery;
    QR_Usuarios: TOraQuery;
    QR_ModulosCOD_MODULO: TFloatField;
    QR_ModulosNOME: TStringField;
    QR_UsuariosUSUARIO: TStringField;
    QR_UsuariosSENHA: TStringField;
    DS_Modulos: TOraDataSource;
    DS_Usuarios: TOraDataSource;
    QR_Safras: TOraQuery;
    DS_Safras: TOraDataSource;
    QR_SafrasCOD_GRUPO: TFloatField;
    QR_SafrasCOD_REGIONAL: TFloatField;
    QR_SafrasCOD_UNIDADE: TFloatField;
    QR_SafrasCOD_SAFRA: TFloatField;
    QR_SafrasDESCRICAO: TStringField;
    QR_SafrasDATA_INICIO: TDateTimeField;
    QR_SafrasDATA_TERMINO: TDateTimeField;
    QR_SafraSelecionada: TOraQuery;
    QR_SafraSelecionadaCOD_SAFRA: TFloatField;
    QR_SafraSelecionadaDESCRICAO_SAFRA: TFloatField;
    QR_Permissao: TOraQuery;
    QR_Grupo: TOraQuery;
    DS_Grupo: TOraDataSource;
    QR_Regional: TOraQuery;
    DS_Regional: TOraDataSource;
    QR_Unidade: TOraQuery;
    DS_Unidade: TOraDataSource;
    QR_GrupoCOD_GRUPO: TFloatField;
    QR_GrupoNOME: TStringField;
    QR_RegionalCOD_GRUPO: TFloatField;
    QR_RegionalCOD_REGIONAL: TFloatField;
    QR_RegionalNOME: TStringField;
    QR_UnidadeCOD_GRUPO: TFloatField;
    QR_UnidadeCOD_REGIONAL: TFloatField;
    QR_UnidadeCOD_UNIDADE: TFloatField;
    QR_UnidadeNOME: TStringField;
    imageList_Modulo: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    PivotGridStyleSheetDevExpress: TcxPivotGridStyleSheet;
    GridTableViewStyleSheetUserFormat4: TcxGridTableViewStyleSheet;
    GridBandedTableViewStyleSheetUserFormat4: TcxGridBandedTableViewStyleSheet;
    cxImageList32x32: TcxImageList;
    cxImageList16x16: TcxImageList;
    QR_UnidadeLOCALIZACAO: TStringField;
    QR_UnidadeLATITUDE: TFloatField;
    QR_UnidadeLONGITUDE: TFloatField;
    imgListMenu16x16: TcxImageList;
    imgListMenu32x32: TcxImageList;
    QR_PermissaoUSUARIO: TStringField;
    QR_PermissaoCOD_MODULO: TFloatField;
    QR_PermissaoNOME: TStringField;
    QR_UsuariosNOME: TStringField;
    QR_UsuariosCOD_PERFIL: TFloatField;
    QR_UsuariosADMINISTRADOR: TStringField;
    QR_Parametros: TOraQuery;
    QR_ParametrosCOD_GRUPO: TFloatField;
    QR_ParametrosCOD_REGIONAL: TFloatField;
    QR_ParametrosCOD_UNIDADE: TFloatField;
    QR_ParametrosQDE_VIAGENS_MEDIA: TFloatField;
    QR_ParametrosHORA_INICIO_DIA: TStringField;
    QR_ParametrosMINUTOS_ABASTECIMENTO: TFloatField;
    QR_ParametrosMINUTOS_BITUCA: TFloatField;
    QR_ParametrosPERC_SOBRECARGA_FRENTE: TFloatField;
    QR_ParametrosTRAVA_ALOCACAO_PATIO: TStringField;
    QR_ParametrosTEMPO_ALOCACAO_AUTOMATICA: TFloatField;
    QR_ParametrosTON_HORA_CARREGADEIRA: TFloatField;
    QR_ParametrosENVIAR_MENSAGEM_VEICULO: TStringField;
    QR_ParametrosDISTANCIA_DESVIO_TRAJETO: TFloatField;
    QR_ParametrosPARADA_AUTOMATICA: TStringField;
    cxStyle63Vermelho: TcxStyle;
    cxStyle64Verde: TcxStyle;
    cxStyle65Amarelo: TcxStyle;
    cxStyle66AmareloClaro: TcxStyle;
    OraScript1: TOraScript;
    QR_ParametrosMINUTOS_VALIDADE_INFOBORDO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Const
     //Cada sistema ter� seu c�digo de id de produto
     ID_Prod : String = '1';
     MOD_Prod : String = 'ENTERPRISE';
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses u_recursos;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  retorna_senha_oracle(Sessao);
  Sessao.Connected := True;
end;

end.
