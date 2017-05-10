unit U_PerfilPermissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzButton,
  Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, wwdbedit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, DBAccess, Ora, MemDS;

type
  TF_PerfilPermissao = class(TF_TemplateConsulta)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Panel1: TPanel;
    edtCod_perfil: TwwDBEdit;
    btnPesquisa_Perfil: TSpeedButton;
    edtNome_perfil: TwwDBEdit;
    Label3: TLabel;
    QR_ArvoreAcesso: TOraQuery;
    DS_ArvoreAcesso: TOraDataSource;
    QR_ArvoreAcessoCOD_MODULO: TFloatField;
    QR_ArvoreAcessoDESCMODULO: TStringField;
    QR_ArvoreAcessoCOD_MENU: TFloatField;
    QR_ArvoreAcessoDESCMENU: TStringField;
    QR_ArvoreAcessoCOD_TELA: TFloatField;
    QR_ArvoreAcessoNOME: TStringField;
    cxGrid1DBBandedTableView1COD_MODULO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DESCMODULO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COD_MENU: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DESCMENU: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COD_TELA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NOME: TcxGridDBBandedColumn;
    QR_ArvoreAcessoPOSSUIAUTORIZACAO: TFloatField;
    QR_ArvoreAcessoINFOAUTORIZACAO: TStringField;
    cxGrid1DBBandedTableView1POSSUIAUTORIZACAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1INFOAUTORIZACAO: TcxGridDBBandedColumn;
    btnAtualizar: TRzBitBtn;
    SP_AUTORIZA_REVOGA_FORMULARIO: TOraStoredProc;
    procedure btnPesquisa_PerfilClick(Sender: TObject);
    procedure edtCod_perfilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCod_perfilExit(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QR_ArvoreAcessoBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QR_ArvoreAcessoBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PerfilPermissao: TF_PerfilPermissao;

implementation

{$R *.dfm}

uses U_DM, U_BuscaAvancada, u_recursos;

procedure TF_PerfilPermissao.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  if edtCod_perfil.Text = '' then
  begin
    Application.MessageBox('Selecione um perfil para iniciar a parametrização de acesso.','Atenção',MB_ICONINFORMATION + MB_OK);
    edtCod_perfil.SetFocus;
    Abort;
  end;

  QR_ArvoreAcesso.Close;
  QR_ArvoreAcesso.ParamByName('cod_perfil').AsFloat := StrToFloat(edtCod_perfil.Text);
  QR_ArvoreAcesso.Open;

end;

procedure TF_PerfilPermissao.btnPesquisa_PerfilClick(Sender: TObject);
Var
Sql : String;
Resultado : Variant;
begin
  inherited;
  Sql := 'SELECT cod_perfil "Cód. Perfil",descricao "Descrição"  FROM perfil_usuario &Macro '+
         ' ORDER BY cod_perfil';
  Resultado := F_BuscaAvancada.Buscar(Sql,1,'Busca perfis de usuários');

  if Resultado <> Null then
  begin
    edtCod_PErfil.Text := VarToStr(Resultado);
    edtCod_perfilExit(Sender);
  end;
end;

procedure TF_PerfilPermissao.edtCod_perfilExit(Sender: TObject);
Var
  Resultado : Variant;
begin
  inherited;
  if edtCod_Perfil.text <> '' then
  begin
     Resultado := Buscar_Descricao('perfil_usuario','descricao','cod_perfil','',edtCod_Perfil.Text);
     if Resultado <> Null then
     begin
       edtNome_perfil.Text := VarToStr(Resultado);
     end
     else
     begin
       edtNome_perfil.Clear;
       edtCod_perfil.SetFocus;
       Application.MessageBox('Perfil não encontrado','Atenção',MB_OK+MB_ICONWARNING);
       Abort;
     end;
  end
  else
  begin
    edtNome_perfil.Clear;
  end;
end;

procedure TF_PerfilPermissao.edtCod_perfilKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then btnPesquisa_PerfilClick(Sender);
end;

procedure TF_PerfilPermissao.FormCreate(Sender: TObject);
begin
  inherited;
  QR_ArvoreAcesso.Close;
end;

procedure TF_PerfilPermissao.FormShow(Sender: TObject);
begin
  inherited;
  Top := 1;
  Left:= 1;
end;

procedure TF_PerfilPermissao.QR_ArvoreAcessoBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if edtCod_perfil.Text = '' then
  begin
    Application.MessageBox('Perfil não selecionado.','Atenção',MB_ICONINFORMATION + MB_OK);
    edtCod_perfil.SetFocus;
    QR_ArvoreAcesso.Cancel;
    Abort;
  end;

end;

procedure TF_PerfilPermissao.QR_ArvoreAcessoBeforePost(DataSet: TDataSet);
begin
  inherited;

  SP_AUTORIZA_REVOGA_FORMULARIO.ParamByName('P_PERFIL').AsFloat := StrToFloat(edtCod_perfil.Text);
  SP_AUTORIZA_REVOGA_FORMULARIO.ParamByName('P_MODULO').AsFloat := QR_ArvoreAcessoCOD_MODULO.AsFloat;
  SP_AUTORIZA_REVOGA_FORMULARIO.ParamByName('P_FORMULARIO').AsFloat := QR_ArvoreAcessoCOD_TELA.AsFloat;
  if QR_ArvoreAcessoPOSSUIAUTORIZACAO.AsFloat = 0 then
    begin
      SP_AUTORIZA_REVOGA_FORMULARIO.ParamByName('P_ACAO').AsString := 'REVOGA';
      QR_ArvoreAcessoINFOAUTORIZACAO.Clear;
    end
  ELSE
    begin
      SP_AUTORIZA_REVOGA_FORMULARIO.ParamByName('P_ACAO').AsString := 'AUTORIZA';

    end;
  SP_AUTORIZA_REVOGA_FORMULARIO.ExecProc;

end;

end.
