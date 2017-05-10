unit U_ParadaReboqueCarreg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, ExtCtrls, StdCtrls, DBCtrls, RzDBEdit, Mask,
  RzEdit, RzCmboBx, DB, MemDS, DBAccess, Ora, RzRadGrp, Vcl.Buttons;

type
  TF_ParadaReboqueCarreg = class(TForm)
    Panel1: TPanel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    Panel4: TPanel;
    RzMemo1: TRzMemo;
    RzPanel3: TRzPanel;
    RzRadioGroup1: TRzRadioGroup;
    RzEdit3: TRzEdit;
    Label1: TLabel;
    btnPesquisa_Justificativa: TSpeedButton;
    RzPanel4: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RzEdit1Exit(Sender: TObject);
    procedure RzEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisa_JustificativaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Escolha(var Local, OrdemServico, Obs : String; var Motivo : Integer) : String;
  end;

var
  F_ParadaReboqueCarreg: TF_ParadaReboqueCarreg;

implementation


{$R *.dfm}

uses U_DM, U_BuscaAvancada;

{ TF_ParadaReboqueCarreg }

procedure TF_ParadaReboqueCarreg.btnPesquisa_JustificativaClick(
  Sender: TObject);
var
  Sql : String;
	Result : Variant;
begin
  Sql := '        SELECT cod_motivo "C�digo",   ';
  Sql := Sql + '         descricao "Descri��o", ';
  Sql := Sql + '         Tipo "Manuten��o" ';
  Sql := Sql + '    FROM motivos      ';
  Sql := Sql + '   WHERE ativo = ''S''         ';
  Sql := Sql + '         &Macro                ';
  Sql := Sql + 'ORDER BY cod_motivo            ';

  Result := F_BuscaAvancada.Buscar(Sql, 1, 'Pesquisa de Justificativas');

  if Result <> Null then
  begin
    RzEdit1.Text := varToStr(Result);
    RzEdit1Exit(Sender);
  end;
end;

function TF_ParadaReboqueCarreg.Escolha(var Local, OrdemServico, Obs: String;
  var Motivo: Integer): String;
begin
  if (Local = 'C') or (Local = '') then rzradiogroup1.ItemIndex := 0 else rzradiogroup1.ItemIndex := 1;
  RzEdit1.Text := IntToStr(Motivo);
  RzEdit1Exit(Nil);
  rzMemo1.Text := obs;

  if ShowModal = mrOk then
  begin
      if rzradiogroup1.itemindex = 0 then Local := 'C' else Local := 'O';
      Obs := Trim(RzMemo1.Lines.Text);
      Motivo := StrToInt(Trim(RzEdit1.Text));
      OrdemServico := RzEdit3.Text;
      Result := 'S';
  end
  else
  begin
    Local := '';
    Obs := '';
    Motivo := 0;
    OrdemServico := '';
    Result := 'N';
  end;  
end;

procedure TF_ParadaReboqueCarreg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TDBMemo) and not (ActiveControl is TDBRichEdit) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TF_ParadaReboqueCarreg.RzEdit1Exit(Sender: TObject);
begin
  if (Trim(RzEdit1.Text) = '') OR (Trim(RzEdit1.Text) = '0') then
  begin
    RzEdit1.Text := '';
    RzEdit2.Text := '';
  end
  else
  begin
    with TOraQuery.Create(Self) do
    begin
      Session := dm.sessao;
      Sql.Add(' SELECT descricao    ');
      Sql.Add('   FROM motivos         ');
      Sql.Add('  WHERE ativo = ''S''            ');
      Sql.Add('    AND cod_motivo = :cod_motivo ');
      ParamByName('cod_motivo').asInteger := StrToInt(Trim(RzEdit1.Text));
      Open;
      if isEmpty then
      begin
        RzEdit2.Text := '';
      end
      else
      begin
        RzEdit2.Text := FieldByName('descricao').asString;
      end;
      Free;
    end;
  end;
end;

procedure TF_ParadaReboqueCarreg.RzEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F9 then btnPesquisa_Justificativa.Click;
end;

end.
