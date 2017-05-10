// Clealco Açúcar e Álcool S/A - C.I.
// Data Criação/Documentação:
// Propósito do Formulário  : Alocar veiculos
//
// Funcionário     Data                 Observações
// --------------- -------------------- -------------------------------------------
// Andre                                - Criação
// Silvio          25/07/2003 10:39 sex - Alerado para nao pedir mais o motivo do atraso nesta tela
// Silvio          11/08/2004 11:20 qua - Alterado para guardar o codigo Frente/fazenda sugerido pelo sistema

unit U_Alocar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  //wwrichedspell,
  ComCtrls, wwriched, Mask, wwdbedit, Db, MemDS, DBAccess, Ora, Variants,
  OraSmart, RzPanel;

type
  TF_Alocar = class(TForm)
    Panel2: TPanel;
    QR_PesquisaVeiculo: TOraQuery;
    QR_InsereParada: TOraQuery;
    BitBtn1: TBitBtn;
    PR_ENVIA_MENSAGEM: TOraStoredProc;
    QR_Balanca_Parametros: TSmartQuery;
    QR_Balanca_ParametrosIP_COMPUTADOR: TStringField;
    QR_Balanca_ParametrosCOD_BALANCA_BRUTO: TFloatField;
    QR_Balanca_ParametrosCOD_BALANCA_TARA: TFloatField;
    QR_Balanca_ParametrosCOD_PAINEL_BRUTO: TFloatField;
    QR_Balanca_ParametrosCOD_TIPO_MENSAGEM_BRUTO: TIntegerField;
    QR_Balanca_ParametrosCOD_PAINEL_TARA: TFloatField;
    QR_Balanca_ParametrosCOD_TIPO_MENSAGEM_TARA: TIntegerField;
    QR_Balanca_ParametrosTEMPO_MENSAGEM_BRUTO: TFloatField;
    QR_Balanca_ParametrosTEMPO_MENSAGEM_TARA: TFloatField;
    QR_Balanca_ParametrosPORTA_COM_CBA_BRUTO: TFloatField;
    QR_Balanca_ParametrosCOMUNICACAO_CBA_BRUTO: TStringField;
    QR_Balanca_ParametrosPORTA_COM_CBA_TARA: TFloatField;
    QR_Balanca_ParametrosCOMUNICACAO_CBA_TARA: TStringField;
    QR_Parametro: TOraQuery;
    QR_ParametroCOD_PAINEL: TFloatField;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    Label4: TLabel;
    pesquisa_veiculo: TSpeedButton;
    b_tipocarga: TSpeedButton;
    Label6: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    CheckBox3: TCheckBox;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    b_pesquisa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    b_parada: TBitBtn;
    b_alocar: TBitBtn;
    QR_PesquisaVeiculoCodigo: TFloatField;
    QR_PesquisaVeiculoVeiculo: TStringField;
    RzPanel20: TRzPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure b_pesquisaClick(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure b_paradaClick(Sender: TObject);
    procedure pesquisa_veiculoClick(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure b_tipocargaClick(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure desabilita_alocacao(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure fecha_tela;
    procedure abre_tela;
    procedure atualiza_dados(Sender: TObject; Abasteceu :Char; Bituca :Char);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure b_alocarClick(Sender: TObject);
    procedure alocarmanual(Sender: TObject);
  private
    { Private declarations }
    modal : Integer;
    old_frente : String;
  public
    { Public declarations }
    FrequenciaPrevista : Real;
    FrequenciaRealizada : Real;
  end;

var
  F_Alocar: TF_Alocar;

implementation

uses U_Mensagem, U_AlocacaoEquipamento, u_recursos, U_DM, U_BuscaAvancada;

{$R *.DFM}
  
procedure TF_Alocar.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not (ActiveControl is TwwDBGrid) and not (ActiveControl is TwwDBRichEdit) then begin
Key := #0;
Perform(WM_NEXTDLGCTL, 0, 0);
end;

end;

procedure TF_Alocar.alocarmanual(Sender: TObject);
begin

    if wwDBEdit5.Text = '' then
    begin
      Application.MessageBox('Codigo do equipamento n?o informado.','Erro',mb_ok+mb_iconerror);
      Abort;
    end;

    with TOraQuery.Create(Self)do
    begin
      Session := dm.Sessao;
      Close;
      SQL.Text := 'SELECT COUNT(1) REG FROM ALOCACAO WHERE VIAGEM_FINALIZADA = ''N'' AND COD_EQUIPAMENTO = '+ wwDBEdit5.Text;
      Open;
      if FieldByName('REG').AsFloat > 0 then
      begin
        Application.MessageBox('Equipamento já está alocado.','Erro',mb_ok+mb_iconerror);
        Free;
        Abort;
      end;
      Free;
    end;

    if wwDBEdit7.Text = '' then
    begin
      Application.MessageBox('Codigo do tipo de carga n?o informado.','Erro',mb_ok+mb_iconerror);
      Abort;
    end;
    if wwDBEdit1.Text = '' then
    begin
      Application.MessageBox('Codigo da frente n?o informado.','Erro',mb_ok+mb_iconerror);
      Abort;
    end;
    if (wwDBEdit3.Text = '') or (wwDBEdit4.Text = '') then
    begin
      Application.MessageBox('Codigo da fazenda n?o informado.','Erro',mb_ok+mb_iconerror);
      Abort;
    end;

    wwDBEdit5Exit(Self);
    wwDBEdit7Exit(Self);
    wwDBEdit1Exit(Self);
    wwDBEdit3Exit(Self);

    with TOraQuery.Create(Self) do
    begin
       Session := DM.Sessao;
       SQL.Text := 'INSERT INTO alocacao (cod_grupo,       '+
                   '             cod_regional,    '+
                   '             cod_unidade,     '+
                   '             cod_safra,       '+
                   '             cod_frente,      '+
                   '             cod_fazenda,     '+
                   '             cod_equipamento, '+
                   '             data_saida)      '+
                   '    VALUES (:cod_grupo,       '+
                   '            :cod_regional,    '+
                   '            :cod_unidade,     '+
                   '            :cod_safra,       '+
                   '            :cod_frente,      '+
                   '            :cod_fazenda,     '+
                   '            :cod_equipamento, '+
                   '            :data_saida)      ';
       ParamByName('cod_grupo').AsFloat        := dm.QR_UnidadeCOD_GRUPO.AsFloat;
       ParamByName('cod_regional').AsFloat     := dm.QR_UnidadeCOD_REGIONAL.AsFloat;
       ParamByName('cod_unidade').AsFloat      := dm.QR_UnidadeCOD_UNIDADE.AsFloat;
       ParamByName('cod_fazenda').AsString     := wwDBEdit3.Text;
       ParamByName('cod_safra').AsFloat        := dm.QR_SafrasCOD_SAFRA.AsFloat;
       ParamByName('cod_frente').AsString      := wwDBEdit1.Text;
       ParamByName('cod_equipamento').AsString := wwDBEdit5.Text;
       ParamByName('data_saida').AsDateTime    := StrToDateTime(wwDBEdit11.Text);
       ExecSQL;
       Free;
    end;

    DM.Sessao.Commit;
    Close;
end;


procedure TF_Alocar.FormShow(Sender: TObject);
begin
  Top := 50;
  F_Alocar.Left := Application.MainForm.Left +  129;
//  Left := 142;
  modal := 1;//serve para não deixar a tela ser coberta por outra (função de um showmodal)

  //verificar como será a alocação
{  If (TF_AlocacaoEquipamento(owner).tipo_alocacao = 'A') and (TF_AlocacaoEquipamento(owner).QR_AlocacaoTIPO_ALOCACAO.AsString = 'A') then
  begin
    TF_AlocacaoEquipamento(owner).TM_Alocacao.Interval := TF_AlocacaoEquipamento(owner).QR_AlocacaoTEMPO_AUTOMATICO.AsInteger * 1000;
    TF_AlocacaoEquipamento(owner).TM_Alocacao.Enabled := True;
  End;}

{Henrique 02/06/2010 - independente de ser automatica a alocação é necessário que o
 operador clique em escolher fazenda 
  If TF_AlocacaoEquipamento(owner).tipo_alocacao = 'A' then
      wwDBEdit7.SetFocus
  else
      wwDBEdit1.SetFocus;
}
end;


procedure TF_Alocar.b_pesquisaClick(Sender: TObject);
Var valor:Variant;
    SQL:String;
begin
   desabilita_alocacao(Sender);
   SQL := '         SELECT DISTINCT b.descricao "Frente", a.cod_frente "Código" ';
   SQL := SQL + '     FROM fazendas_liberadas a, frente b     ';
   SQL := SQL + '    WHERE a.cod_frente = b.cod_frente                          ';
   SQL := SQL + '      AND a.cod_safra = ' + DM.QR_SafrasCOD_SAFRA.AsString ;
   SQL := SQL + '      AND b.cod_safra = a.cod_safra                            ';
   SQL := SQL + '          &Macro                                               ';
   SQL := SQL + ' ORDER BY b.descricao                                          ';
   valor := F_BuscaAvancada.Buscar(sql,2,'Busca de Frentes');;
   If valor <> null then begin
      wwDBEdit1.Text := VarToStr(valor);
      wwDBEdit1Exit(Sender);
   end;

end;

procedure TF_Alocar.wwDBEdit1Exit(Sender: TObject);
Var frente : Variant;
begin
   If wwDBEdit1.Text <> '' then
   begin
      If old_frente <> wwDBEdit1.Text then begin
         With TOraQuery.Create(Self) do
         begin
           Session := DM.Sessao;
           Sql.Add(' SELECT DISTINCT b.descricao                                              ');
           Sql.Add('            FROM fazendas_liberadas a, frente b         ');
           Sql.Add('           WHERE a.cod_frente = b.cod_frente                              ');
           Sql.Add('             AND a.cod_safra = ' + DM.QR_SafrasCOD_SAFRA.AsString  );
           Sql.Add('             AND b.cod_safra = a.cod_safra                                ');
           Sql.Add('             AND a.cod_frente = ' + wwDBEdit1.Text                         );
           Open;
           if not IsEmpty then
           begin
             wwDBEdit2.Text := FieldByName('descricao').asString;
           end
           else
           begin
              wwDBEdit2.Clear;
              wwDBEdit3.Clear;
              wwDBEdit4.Clear;
           end;
{
           else
             Application.MessageBox(pchar('Cod_frente: '+ (copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,1,2)) + ' Frente: '+ wwDBEdit2.Text),'Atenção', MB_ICONINFORMATION + MB_OK);
 }
           Free;
         end;
//         frente := F_PesquisaGlobal.pesquisa_descricao('AGRICOLA.Fazendas_Liberadas','Distinct Cod_Frente','Cod_Frente','Cod_Safra = '+Data_Modulo.QR_SafraCOD_SAFRA.AsString,wwDBEdit1.Text);
//         wwDBEdit2.Text := VarToStr(F_PesquisaGlobal.pesquisa_descricao('AGRICOLA.Frente','Descricao','Cod_Frente','',frente));
         if (wwDBEdit2.Text='') {and (F_Alocar.Active)} then
         begin
            Application.MessageBox('Frente Inválida !', 'Informação', MB_ICONINFORMATION + MB_OK);
            wwDBEdit3.Clear;
            wwDBEdit4.Clear;
            wwDBEdit1.SetFocus;
            desabilita_alocacao(sender);
            Abort;
         end;
//         wwDBEdit3.Clear;
         wwDBEdit4.Clear;
      End;
//  Application.MessageBox(pchar('Cod_frente: '+ (copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,1,2)) + ' Frente: '+ wwDBEdit2.Text),'Atenção', MB_ICONINFORMATION + MB_OK);
   End
   Else
   begin
      wwDBEdit2.Clear;
      wwDBEdit3.Clear;
      wwDBEdit4.Clear;
   end;
end;

procedure TF_Alocar.wwDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F3 then b_pesquisa.Click;
end;

procedure TF_Alocar.SpeedButton1Click(Sender: TObject);
Var valor:Variant;
    SQL:String;
begin
   desabilita_alocacao(Sender);
   If wwDBEdit1.Text <> '' then begin
      SQL := '         SELECT b.descricao "Fazenda", a.cod_fazenda "Código"     ';
      SQL := SQL + '     FROM fazendas_liberadas a, fazenda b ';
      SQL := SQL + '    WHERE a.cod_fazenda = b.cod_fazenda                     ';
      SQL := SQL + '      AND a.cod_frente = ' + wwDBEdit1.Text;
      SQL := SQL + '      AND a.cod_safra = ' + DM.QR_SafrasCOD_SAFRA.AsString ;
      SQL := SQL + '          &Macro                                            ';
      SQL := SQL + ' ORDER BY b.descricao                                       ';
      valor := F_BuscaAvancada.Buscar(sql,2,'Busca de Fazenda');;
      If valor <> null then begin
         wwDBEdit3.Text := VarToStr(valor);
         wwDBEdit3Exit(Sender);
      end;
   End
   Else Begin
      Application.MessageBox('Favor selecionar uma frente primeiro !', 'Informação', MB_ICONINFORMATION + MB_OK);
      wwDBEdit2.Clear;
      wwDBEdit3.Clear;
      wwDBEdit4.Clear;
      wwDBEdit1.SetFocus;
      Abort;
   End;

end;

procedure TF_Alocar.wwDBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F3 then SpeedButton1.Click;
end;

procedure TF_Alocar.wwDBEdit3Exit(Sender: TObject);
Var fazenda : Variant;
begin
   If (wwDBEdit1.Text = '') and (wwDBEdit3.Text <> '') then begin
      Application.MessageBox('Favor selecionar uma frente primeiro !', 'Informação', MB_ICONINFORMATION + MB_OK);
      wwDBEdit2.Clear;
      wwDBEdit3.Clear;
      wwDBEdit4.Clear;
      wwDBEdit1.SetFocus;
      Abort;
   End;

   If (wwDBEdit3.Text <> '') then begin
 //     fazenda := F_PesquisaGlobal.pesquisa_descricao('AGRICOLA.Fazendas_Liberadas','Cod_Fazenda','Cod_Fazenda','Cod_Safra = '+Data_Modulo.QR_SafraCOD_SAFRA.AsString+' And Cod_Frente = '+wwDBEdit1.Text,wwDBEdit3.Text);
//      wwDBEdit4.Text := VarToStr(F_PesquisaGlobal.pesquisa_descricao('AGRICOLA.Fazenda','Descricao','Cod_Fazenda','',fazenda));

         With TOraQuery.Create(Self) do
         begin
           Session := DM.Sessao;
           Sql.Add(' SELECT DISTINCT b.descricao                                              ');
           Sql.Add('            FROM fazendas_liberadas a, fazenda b         ');
           Sql.Add('           WHERE a.cod_fazenda = b.cod_fazenda                              ');
           Sql.Add('             AND a.cod_safra = ' + DM.QR_SafrasCOD_SAFRA.AsString  );
           Sql.Add('             AND b.cod_fazenda = ' + wwDBEdit3.Text);
           Sql.Add('             AND a.cod_frente  = ' + wwDBEdit1.Text                         );
           Open;
           if not IsEmpty then
           begin
             wwDBEdit4.Text := FieldByName('descricao').asString;
           end
           else
           begin
              wwDBEdit3.Clear;
              wwDBEdit4.Clear;
           end;
           Free;
         end;

      If (wwDBEdit4.Text='') {and (F_Alocar.Active)} then begin
         Application.MessageBox('Fazenda inválida !', 'Informação', MB_ICONINFORMATION + MB_OK);
         wwDBEdit4.Clear;
         wwDBEdit3.SetFocus;
         desabilita_alocacao(sender);
         Abort;
      End;
   End
   Else Begin
      wwDBEdit4.Clear;
   End;

end;

procedure TF_Alocar.b_paradaClick(Sender: TObject);
 var cod_entradacana : real;
     Mensagem : String;
     QR_Acesso : TOraQuery;
begin
  QR_Acesso := TOraQuery.Create(Self);
  QR_Acesso.Session := DM.Sessao;
  QR_Acesso.Sql.Add(' SELECT rh.c (''IP_MAQUINA_LOGISTICA'') clementina, ');
  QR_Acesso.Sql.Add('        rh.c (''IP_MAQ_LOG_QUEIROZ'') queiroz       ');
  QR_Acesso.Sql.Add('   FROM DUAL                                        ');
  QR_Acesso.Open;
  if (QR_Acesso.isEmpty) or ((Trim(QR_Acesso.FieldByName('clementina').AsString) = '') and (Trim(QR_Acesso.FieldByName('queiroz').AsString) = '')) then
  begin
    Application.MessageBox('Não foi Possível encontrar as Parametrizações dos IPs da logística de Clementina e Queiroz', 'Parametrização não Encontrada!', MB_ICONERROR + MB_OK);
  end
  else
  begin
//Henrique 10/05/2010 alterações DHCP  
//    if (BuscaIP <> QR_Acesso.FieldByName('clementina').asString) and (BuscaIP <> QR_Acesso.FieldByName('queiroz').asString) then
//    if (Nome_Computador <> QR_Acesso.FieldByName('clementina').asString) and
//       (Nome_Computador <> QR_Acesso.FieldByName('queiroz').asString)    then
    if 1 <> 2 then

    begin
      Application.MessageBox('Somente o Computador da Logística está autorizado a Gerar Paradas e Alocações!', 'Acesso não Autorizado!', MB_ICONERROR + MB_OK);
    end
    else
    begin
      desabilita_alocacao(Sender);
      //inserir uma parada, antes preciso saber se tenho todos os campos
      if (Trim(wwDBEdit5.Text) = '') or (Trim(wwDBEdit5.Text) = '0') then
      begin
        Application.MessageBox('Você deve Informar um Equipamento!', 'Equipamento não Informado!', MB_ICONERROR + MB_OK);
        wwDBEdit5.SetFocus;
      end
      else
      begin
        DM.Sessao.StartTransaction;

        //gravou a alocação, já posso excluir da tabela alocacao_pendente
        cod_entradacana := 0;
        if cod_entradacana > 0 then
        begin
          with TOraQuery.Create(self) do
          begin
            Session := DM.Sessao;
            SQL.Add('DELETE FROM AGRICOLA.ALOCACAO_PENDENTE    ');
            SQL.Add(' WHERE COD_ENTRADACANA = :COD_ENTRADACANA ');
            ParamByName('COD_ENTRADACANA').AsFloat := cod_entradacana;
            Execute;
            Free;
          end;
        end
        else
        begin
          with TOraQuery.Create(self) do
          begin
            Session := DM.Sessao;
            SQL.Add('DELETE FROM AGRICOLA.ALOCACAO_PENDENTE    ');
            SQL.Add(' WHERE COD_EQUIPAMENTO = :COD_EQUIPAMENTO ');
            ParamByName('COD_EQUIPAMENTO').asInteger := StrToInt(Trim(wwDBEdit5.Text));
            Execute;
            Free;
          end;
        end;

        if CheckBox3.Checked then
        begin
          if Application.MessageBox('Deseja Informar o Motivo da Parada para o Motorista no Painel?', 'Informar Parada?', MB_ICONERROR + MB_YESNO + MB_DEFBUTTON2) = 6 then
          begin
            Mensagem := InputBox('Informe o Motivo','O que for digitado aqui sairá no painel de saída da balança para a visualização do Motorista como Justificativa de Parada!','');
            Mensagem := 'CAMINHAO EM PARADA! MOTIVO: ' + UpperCase(Mensagem) + '. PODE SEGUIR!';
          end
          else
          begin
            Mensagem := 'CAMINHAO EM PARADA! PODE SEGUIR!';
          end;
        end;


        QR_InsereParada.ParamByName('cod_safra').AsFloat        := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
        QR_InsereParada.ParamByName('cod_grupoempresa').AsFloat := Data_Modulo.qr_grupoempresaCOD_GRUPOEMPRESA.AsFloat;
        QR_InsereParada.ParamByName('cod_equipamento').AsFloat  := StrToFloat(wwDBEdit5.Text);
        QR_InsereParada.ParamByName('cod_motivo').AsFloat       := 1; //StrToFloat(C('COD_MOTIVO_PARADA'));
        QR_InsereParada.ParamByName('inicio_parada').AsDateTime := now;
        QR_InsereParada.ExecSQL;

        QR_Parametro.Close;
        QR_Parametro.ParamByName('cod_grupoempresa').asInteger := Data_Modulo.QR_Filial.FieldByName('cod_grupoempresa').asInteger;
        QR_Parametro.ParamByName('cod_empresa').asInteger := Data_Modulo.QR_Filial.FieldByName('cod_empresa').asInteger;
        QR_Parametro.ParamByName('cod_filial').asInteger := Data_Modulo.QR_Filial.FieldByName('cod_filial').asInteger;
        QR_Parametro.Open;

        if CheckBox3.Checked then
        begin
          // Busca os parametros da tabela BALANCA_PARAMETRO de acordo com o IP do computador
          QR_Balanca_Parametros.Close;
//Henrique 10/05/2010 alterador DHCP          
//          QR_Balanca_Parametros.ParamByName('IP').asString := BuscaIP;
//          QR_Balanca_Parametros.ParamByName('IP').asString := Nome_Computador;
          QR_Balanca_Parametros.ParamByName('IP').asString := 'U01WS016';
          QR_Balanca_Parametros.Open;

          PR_ENVIA_MENSAGEM.ParamByName('V_MENSAGEM#').AsString           := Mensagem;
          PR_ENVIA_MENSAGEM.ParamByName('V_TIPO_MENSAGEM#').AsInteger     := QR_Balanca_Parametros.FieldByName('cod_tipo_mensagem_tara').AsInteger;
          PR_ENVIA_MENSAGEM.ParamByName('V_COD_PAINEL#').AsInteger        := QR_Parametro.FieldByName('cod_painel').asInteger;
          PR_ENVIA_MENSAGEM.ParamByName('V_SEGUNDOS_MENSAGEM#').AsInteger := QR_Balanca_Parametros.FieldByName('tempo_mensagem_tara').AsInteger;
          PR_ENVIA_MENSAGEM.Execute;
        end;

        DM.Sessao.Commit;
        Close;
      end;
    end;
  end;
  QR_Acesso.Free;
end;

procedure TF_Alocar.pesquisa_veiculoClick(Sender: TObject);
Var valor:Variant;
    SQL:String;
begin
   desabilita_alocacao(Sender);
//   SQL := QR_PesquisaVeiculo.SQL.Text;
//   SQL := ReplStr(SQL,':cod_safra',Data_Modulo.QR_SafraCOD_SAFRA.AsString);

  Sql := '         SELECT equipamento.cod_equipamento "Código", equipamento.descricao "Veículo" ';
  Sql := Sql + '     FROM equipamento, tipo_equipamento                                          ';
  Sql := Sql + '    WHERE equipamento.cod_tipoequipamento = tipo_equipamento.cod_tipoequipamento ';
  Sql := Sql + '      AND tipo_equipamento.tipo_cct = ''C''                                      ';
  Sql := Sql + '          &Macro                                                                ';
  Sql := Sql + ' ORDER BY equipamento.descricao                                                 ';

   SQL := ReplStr(SQL,':cod_equipamento','0');
   valor := F_BuscaAvancada.Buscar(sql,1,'Busca de Equipamentos');
   If valor <> null then begin
      wwDBEdit5.Text := VarToStr(valor);
      wwDBEdit5Exit(Sender);
   end;

end;

procedure TF_Alocar.wwDBEdit5Exit(Sender: TObject);
begin
   If wwDBEdit5.Text <> '' then
   begin
      QR_PesquisaVeiculo.Close;
//      QR_PesquisaVeiculo.ParamByName('cod_safra').AsFloat := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
      QR_PesquisaVeiculo.ParamByName('cod_equipamento').AsFloat := StrToFloat(wwDBEdit5.Text);
      QR_PesquisaVeiculo.ParamByName('WordSearch').AsString := '%%';
      QR_PesquisaVeiculo.Open;
      if QR_PesquisaVeiculo.IsEmpty {and (F_Alocar.Active)} then
      begin
         Application.MessageBox('Veículo inválido', 'Informação', MB_ICONINFORMATION + MB_OK);
         wwDBEdit6.Clear;
         wwDBEdit5.SetFocus;
         desabilita_alocacao(sender);
         Abort;
      end;
      wwDBEdit6.Text := QR_PesquisaVeiculoVeiculo.AsString;
   end
   else
   begin
      wwDBEdit6.Clear;
   end;
end;

procedure TF_Alocar.b_tipocargaClick(Sender: TObject);
Var valor:Variant;
    SQL:String;
begin
   desabilita_alocacao(Sender);
   If wwDBEdit1.Text='' then//pego de todas as frentes
   begin
      SQL := '         SELECT DISTINCT b.descricao "Tipo de Carga", b.cod_tipocarga "Código" ';
      SQL := SQL + '     FROM parametro_frente_faz_tipocarga a, tipo_carga b ';
      SQL := SQL + '    WHERE a.cod_safra = ' + DM.QR_SafrasCOD_SAFRA.AsString ;
      SQL := SQL + '      AND a.cod_tipocarga = b.cod_tipocarga                  ';
      SQL := SQL + '          &Macro                                             ';
      SQL := SQL + ' ORDER BY b.descricao                                        ';
   end
   else//apenas da frente especificada
   begin
      SQL := '         SELECT DISTINCT b.descricao "Tipo de Carga",              ';
      SQL := SQL + '          b.cod_tipocarga "Código"                           ';
      SQL := SQL + '     FROM parametro_frente_faz_tipocarga a, tipo_carga b ';
      SQL := SQL + '    WHERE a.cod_safra = ' + DM.QR_SafrasCOD_SAFRA.AsString ;
      SQL := SQL + '      AND a.cod_frente = ' + wwDBEdit1.Text ;
      SQL := SQL + '      AND a.cod_tipocarga = b.cod_tipocarga ';
      SQL := SQL + '          &Macro                            ';
      SQL := SQL + ' ORDER BY b.descricao                       ';
   end;

   valor := F_BuscaAvancada.Buscar(sql,2,'Busca de Tipo de Carga');;
   If valor <> null then begin
      wwDBEdit7.Text := VarToStr(valor);
      wwDBEdit7Exit(Sender);
   end;

end;

procedure TF_Alocar.wwDBEdit7Exit(Sender: TObject);
 var tipo_carga:Variant;
begin
  if Trim(wwDBEdit7.Text) = '' then
  begin
    wwDBEdit8.Text := '';
  end
  else
  begin
    if Trim(wwDBEdit1.Text) = '' then
    begin
      with TOraQuery.Create(Self) do
      begin
        Session := DM.Sessao;
        Sql.Add(' SELECT DISTINCT b.descricao                                ');
        Sql.Add('            FROM parametro_frente_faz_tipocarga a, ');
        Sql.Add('                 tipo_carga b                       ');
        Sql.Add('           WHERE a.cod_tipocarga = b.cod_tipocarga          ');
        Sql.Add('             AND a.cod_safra = :cod_safra                   ');
        Sql.Add('             AND a.cod_tipocarga = :cod_tipocarga           ');
        ParamByName('cod_safra').asInteger := DM.QR_Safras.FieldByName('cod_safra').asInteger;
        ParamByName('cod_tipocarga').asInteger := StrToInt(Trim(wwDBEdit7.Text));
        Open;
        if isEmpty then
        begin
          wwDBEdit8.Text := '';
        end
        else
        begin
          wwDBEdit8.Text := FieldByName('descricao').asString;
        end;
        Free;
      end;
    end
    else
    begin
      with TOraQuery.Create(Self) do
      begin
        Session := DM.Sessao;
        Sql.Add(' SELECT DISTINCT b.descricao                                ');
        Sql.Add('            FROM parametro_frente_faz_tipocarga a, ');
        Sql.Add('                 tipo_carga b                       ');
        Sql.Add('           WHERE a.cod_tipocarga = b.cod_tipocarga          ');
        Sql.Add('             AND a.cod_safra = :cod_safra                   ');
        Sql.Add('             AND a.cod_frente = :cod_frente                 ');
        Sql.Add('             AND a.cod_tipocarga = :cod_tipocarga           ');
        ParamByName('cod_safra').asInteger := DM.QR_Safras.FieldByName('cod_safra').asInteger;
        ParamByName('cod_tipocarga').asInteger := StrToInt(Trim(wwDBEdit7.Text));
        ParamByName('cod_frente').asInteger := StrToInt(Trim(wwDBEdit1.Text));
        Open;
        if isEmpty then
        begin
          wwDBEdit8.Text := '';
        end
        else
        begin
          wwDBEdit8.Text := FieldByName('descricao').asString;
        end;
        Free;
      end;
    end;
  end;
end;

procedure TF_Alocar.wwDBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F3 then pesquisa_veiculo.Click;
end;

procedure TF_Alocar.wwDBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F3 then b_tipocarga.Click;
end;

procedure TF_Alocar.desabilita_alocacao(Sender: TObject);
begin
   //preciso desabilitar o timer da alocação
//   TF_AlocacaoEquipamento(owner).TM_Alocacao.Enabled := False;
end;

procedure TF_Alocar.CheckBox1Click(Sender: TObject);
begin
  desabilita_alocacao(Sender);
  If CheckBox1.Checked then begin
     If not CheckBox2.Checked then
        atualiza_dados(Sender,'S','N');
  end
  else begin
     If not CheckBox2.Checked then
        atualiza_dados(Sender,'N','N');
  end;
end;

procedure TF_Alocar.CheckBox2Click(Sender: TObject);
begin
  desabilita_alocacao(Sender);
  If CheckBox2.Checked then begin
     If TF_Alocacao(owner).tipo_alocacao = 'A' then begin
        wwDBEdit1.Clear;
        wwDBEdit2.Clear;
        wwDBEdit3.Clear;
        wwDBEdit4.Clear;
     End;
     wwDBEdit1.SetFocus;     
  end
  else begin
     If CheckBox1.Checked then
        atualiza_dados(Sender,'S','N')
     else
        atualiza_dados(Sender,'N','N');
  end;

end;

procedure TF_Alocar.fecha_tela;
begin
    F_Alocar.Close;
//    SetForegroundWindow(FindWindow(nil,PChar('2.6.12 - Alocação')));
end;


procedure TF_Alocar.abre_tela;
begin
  F_Alocar.Show;
end;


procedure TF_Alocar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Para todos os timers da tela
//  TF_AlocacaoEquipamento(owner).alteraStatusTodosTimers(False);
  //TF_AlocacaoEquipamento(owner).v_fazenda_escolhida := '';
  modal := 0;
end;

procedure TF_Alocar.FormDeactivate(Sender: TObject);
begin
{  If modal > 0 then
  begin
    Self.SetFocus;
  end
  else
  begin
    TF_AlocacaoEquipamento(owner).tipo_alocacao := 'A';//automático
    If Data_Modulo.Orasession1.InTransaction then
      Data_Modulo.Orasession1.Rollback;

//    TF_AlocacaoEquipamento(owner).QR_Main.Refresh;
 //   TF_AlocacaoEquipamento(owner).QR_Parado.Refresh;
  //  TF_AlocacaoEquipamento(owner).TM_AlocarPendencia.Enabled := True;
  end;   }
end;

procedure TF_Alocar.atualiza_dados(Sender: TObject; Abasteceu :Char; Bituca :Char);
begin
  If TF_Alocacao(owner).tipo_alocacao = 'A' then begin
     //chamo a função que me retorna a fazenda
{     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('COD_SAFRA#').Value     := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('COD_TIPOCARGA#').Value := StrToFloat(wwDBEdit7.Text);
     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('ABASTECEU#').Value     := Abasteceu;
     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.Execute;
     TF_AlocacaoEquipamento(owner).v_fazenda_escolhida := TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('RESULT').AsString;}
     //
     wwDBEdit1.Text := copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,1,2);
     wwDBEdit1Exit(Sender);
     wwDBEdit3.Text := copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,3,8);
     wwDBEdit3Exit(Sender);
  End;
end;

procedure TF_Alocar.wwDBEdit1Enter(Sender: TObject);
begin
  old_frente := wwDBEdit1.Text;
end;

procedure TF_Alocar.BitBtn1Click(Sender: TObject);
   var
      v_abasteceu : string;
begin
{   if CheckBox1.Checked then
     v_abasteceu := 'S'
   else
     v_abasteceu := 'N';

   if (wwDBEdit5.Text='') then
   begin
      Application.MessageBox('Informe o Veículo para Escolher a Fazenda','Atenção',MB_OK+MB_ICONWARNING);
      Abort;
   end;

   if (wwDBEdit7.Text='') then
   begin
      Application.MessageBox('Informe o Tipo de Carga para Escolher a fazenda','Atenção',MB_OK+MB_ICONWARNING);
      Abort;
   end;
   //chamo a função que me retorna a fazenda
   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('COD_SAFRA#').Value        := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('COD_TIPOCARGA#').Value    := StrToFloat(wwDBEdit7.Text);
   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('ABASTECEU#').Value        := v_Abasteceu;

{
   If TF_AlocacaoEquipamento(owner).tipo_alocacao = 'A' then
   begin
     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_GRUPOEMPRESA').Value := TF_AlocacaoEquipamento(owner).QR_AlocacaoPendente.FieldByName('cod_grupoempresa_LOGISTICA').asInteger;
     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_EMPRESA').Value      := TF_AlocacaoEquipamento(owner).QR_AlocacaoPendente.FieldByName('cod_empresa_LOGISTICA').asInteger;
     TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_FILIAL').Value       := TF_AlocacaoEquipamento(owner).QR_AlocacaoPendente.FieldByName('cod_filial_LOGISTICA').asInteger;
   end;

   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_GRUPOEMPRESA').Value := Data_Modulo.QR_Filial.FieldByName('cod_grupoempresa').asInteger;
   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_EMPRESA').Value      := Data_Modulo.QR_Filial.FieldByName('cod_empresa').asInteger;
   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_FILIAL').Value       := Data_Modulo.QR_Filial.FieldByName('cod_filial').asInteger;


   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_GRUPOEMPRESA_EQUIP').Value := Data_Modulo.QR_GrupoEmpresa.FieldByName('cod_grupoempresa').Value;
   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('vCOD_EQUIPAMENTO').Value := StrToInt(Trim(wwDBEdit5.Text));

   TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.Execute;
   TF_AlocacaoEquipamento(owner).v_fazenda_escolhida := TF_AlocacaoEquipamento(owner).PR_FAZENDA_ESCOLHIDA.ParamByName('RESULT').AsString;
}
   //Henrique 01/06/2010
   //Irá habilitar o botão para alocar somente se o sistema escolher uma fazenda

   wwDBEdit1.Text := '1' ;//copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,1,2);
   wwDBEdit1Exit(Sender);
   wwDBEdit3.Text := '1';//copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,3,8);
   wwDBEdit3Exit(Sender);
//   panel4.Caption := TF_AlocacaoEquipamento(Owner).v_fazenda_escolhida;
{   if (TF_AlocacaoEquipamento(owner).tipo_alocacao = 'M') then
     if (TF_AlocacaoEquipamento(owner).v_fazenda_escolhida <> '') then
       b_alocar.Enabled := true
     else
       b_alocar.Enabled := false;}

end;

procedure TF_Alocar.FormActivate(Sender: TObject);
begin
//  CheckBox1.Enabled := True;
//  CheckBox1.Checked := False;
//  CheckBox2.Enabled := True;
///  CheckBox2.Checked := False;
//  panel4.Caption := TF_AlocacaoEquipamento(Owner).v_fazenda_escolhida;
end;

procedure TF_Alocar.b_alocarClick(Sender: TObject);
Var cod_entradacana, v_cod_frente, v_cod_fazenda : Real;
    alocacao : String;
    QR_Acesso : TOraQuery;
    EnviarMensagem : String;
    QR_AlocacaoExistente : TOraQuery;
    vEnd_H, vEnd_L : String;
begin
  QR_Acesso := TOraQuery.Create(Self);
  QR_Acesso.Session := Data_Modulo.OraSession1;
  QR_Acesso.Sql.Add(' SELECT rh.c (''IP_MAQUINA_LOGISTICA'') clementina, ');
  QR_Acesso.Sql.Add('        rh.c (''IP_MAQ_LOG_QUEIROZ'') queiroz,      ');
  QR_Acesso.Sql.Add('        rh.c (''IP_MAQ_LOG_MANUTENCA'') manutencao  ');
  QR_Acesso.Sql.Add('   FROM DUAL                                        ');
  QR_Acesso.Open;
  if (QR_Acesso.isEmpty) or ((Trim(QR_Acesso.FieldByName('clementina').AsString) = '') and (Trim(QR_Acesso.FieldByName('queiroz').AsString) = '')) then
  begin
    Application.MessageBox('Não foi Possível encontrar as Parametrizações dos IPs da logística de Clementina e Queiroz', 'Parametrização não Encontrada!', MB_ICONERROR + MB_OK);
  end
  else
  begin
{    if (BuscaIP <> QR_Acesso.FieldByName('clementina').asString) and
       (BuscaIP <> QR_Acesso.FieldByName('queiroz').asString) and
       (BuscaIP <> QR_Acesso.FieldByName('manutencao').asString)
}
    if (Nome_Computador = QR_Acesso.FieldByName('clementina').asString) and
       (Nome_Computador = QR_Acesso.FieldByName('queiroz').asString) and
       (Nome_Computador = QR_Acesso.FieldByName('manutencao').asString)
    then
    begin
      Application.MessageBox('Somente o Computador da Logística está autorizado a Gerar Paradas e Alocações!', 'Acesso não Autorizado!', MB_ICONERROR + MB_OK);
    end
    else
    begin
      if (Trim(wwDBEdit2.Text) = '') or (Trim(wwDBEdit4.Text) = '') then
      begin
        Application.MessageBox('Você precisa Selecionar uma Frente e Fazenda!', 'Frente ou Fazenda não Selecionada!', MB_ICONERROR + MB_OK);
      end
      else
      begin
        if (Trim(wwDBEdit5.Text) = '') or (Trim(wwDBEdit7.Text) = '') then
        begin
          Application.MessageBox('Você precisa Selecionar um Equipamento e o seu Tipo de Carga!', 'Equipamento ou Tipo de Carga não Selecionado!', MB_ICONERROR + MB_OK);
        end
        else
        begin
          QR_AlocacaoExistente := TOraQuery.Create(Self);
          QR_AlocacaoExistente.Session := DM.Sessao;
          QR_AlocacaoExistente.Sql.Add(' SELECT COUNT (*) quantidade                 ');
          QR_AlocacaoExistente.Sql.Add('   FROM agricola.alocacao                    ');
          QR_AlocacaoExistente.Sql.Add('  WHERE cod_grupoempresa = :cod_grupoempresa ');
          QR_AlocacaoExistente.Sql.Add('    AND cod_equipamento = :cod_equipamento   ');
          QR_AlocacaoExistente.Sql.Add('    AND data_chegada IS NULL                 ');
          QR_AlocacaoExistente.ParamByName('cod_grupoempresa').asInteger := Data_Modulo.QR_GrupoEmpresa.FieldByName('cod_grupoempresa').asInteger;
          QR_AlocacaoExistente.ParamByName('cod_equipamento').asInteger := StrToInt(Trim(wwDBEdit5.Text));
          QR_AlocacaoExistente.Open;
          if QR_AlocacaoExistente.isEmpty then
          begin
            Application.MessageBox('Não foi Possível Identificar se o Equipamento já possui alguma Alocação!', 'Equipamento não Encontrado!', MB_ICONERROR + MB_OK);
            Abort;
          end
          else
          begin
            if QR_AlocacaoExistente.FieldByName('quantidade').asInteger > 0 then
            begin
              Application.MessageBox('Você não pode Alocar esse Equipamento pois ele já está Alocado!', 'Equipamento Alocado!', MB_ICONERROR + MB_OK);
            end
            else
            begin
              desabilita_alocacao(Sender);
              alocacao := TF_Alocacao(owner).tipo_alocacao;
              try
                 v_cod_frente  := StrToFloat(copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,1,2));
                 v_cod_fazenda := StrToFloat(copy(TF_AlocacaoEquipamento(owner).v_fazenda_escolhida,3,8));
              except
                 v_cod_frente  := 0;
                 v_cod_fazenda := 0;
              end;
              if Data_Modulo.Orasession1.InTransaction then
                 Data_Modulo.Orasession1.Rollback;
              DM.Sessao.StartTransaction;

              If alocacao = 'A' then
              begin
                 cod_entradacana := 0;
                 vEnd_H := '999';
                 vEnd_L := '999';
                 //gravou a alocação, já posso excluir da tabela alocacao_pendente
                 With TOraQuery.Create(self) do begin
                      Session := DM.Sessao;
                      SQL.Add('DELETE FROM AGRICOLA.ALOCACAO_PENDENTE');
                      SQL.Add('WHERE COD_ENTRADACANA = :COD_ENTRADACANA');
                      ParamByName('COD_ENTRADACANA').AsFloat := cod_entradacana;
                      Execute;
                      Free;
                 End;
              End
              else
              begin
                 With TOraQuery.Create(self) do
                 begin
                      Session := DM.Sessao;
                      SQL.Add('DELETE FROM AGRICOLA.ALOCACAO_PENDENTE');
                      SQL.Add('WHERE COD_EQUIPAMENTO = :COD_EQUIPAMENTO');
                      ParamByName('COD_EQUIPAMENTO').asInteger := StrToInt(Trim(wwDBEdit5.Text));
                      Execute;
                      Free;
                 End;
              end;

              //gerar a alocação
              With TOraQuery.Create(self) do begin
                   Session := DM.Sessao;
                   SQL.Add('INSERT INTO AGRICOLA.ALOCACAO(');
                   SQL.Add('COD_SAFRA, COD_FRENTE, COD_FAZENDA, COD_GRUPOEMPRESA,');
                   SQL.Add('COD_EQUIPAMENTO, DATA_SAIDA, ABASTECEU, BITUCA,COD_TIPOCARGA, COD_FRENTE_SUGERIDA, COD_FAZENDA_SUGERIDA, ');
                   SQL.Add('COD_GRUPOEMPRESA_LOGISTICA, COD_EMPRESA_LOGISTICA, COD_FILIAL_LOGISTICA, MENSAGEM_PAINEL, FREQUENCIA_CAMPO_PREVISTA, FREQUENCIA_CAMPO_REALIZADA, ORIGEM_ALOCACAO, ENDERECO_H_ZIGBEE, ENDERECO_L_ZIGBEE)');
                   SQL.Add('VALUES (');
                   SQL.Add(':COD_SAFRA, :COD_FRENTE, :COD_FAZENDA, :COD_GRUPOEMPRESA,');
                   SQL.Add(':COD_EQUIPAMENTO, :DATA_SAIDA, :ABASTECEU, :BITUCA, :COD_TIPOCARGA, :COD_FRENTE_SUGERIDA, :COD_FAZENDA_SUGERIDA, ');
                   SQL.Add(':COD_GRUPOEMPRESA_LOGISTICA, :COD_EMPRESA_LOGISTICA, :COD_FILIAL_LOGISTICA, :MENSAGEM_PAINEL, :FREQUENCIA_CAMPO_PREVISTA, :FREQUENCIA_CAMPO_REALIZADA, :ORIGEM_ALOCACAO, :ENDERECO_H_ZIGBEE, :ENDERECO_L_ZIGBEE )');
                   ParamByName('COD_SAFRA').AsFloat           := Data_Modulo.QR_SafraCOD_SAFRA.AsFloat;
                   ParamByName('COD_FRENTE').AsFloat          := StrToFloat(wwDBEdit1.Text);
                   ParamByName('COD_FAZENDA').AsFloat         := StrToFloat(wwDBEdit3.Text);
                   ParamByName('COD_GRUPOEMPRESA').AsFloat    := Data_Modulo.qr_grupoempresaCOD_GRUPOEMPRESA.AsFloat;
                   ParamByName('COD_EQUIPAMENTO').AsFloat     := StrToFloat(wwDBEdit5.Text);
                   ParamByName('DATA_SAIDA').AsDateTime       := StrToDateTime(wwDBEdit11.Text);
                   ParamByName('COD_FRENTE_SUGERIDA').AsFloat := v_cod_frente;
                   ParamByName('COD_FAZENDA_SUGERIDA').AsFloat:= v_cod_fazenda;
                   ParamByName('COD_GRUPOEMPRESA_LOGISTICA').AsInteger := Data_Modulo.QR_Filial.FieldByName('cod_grupoempresa').asInteger;
                   ParamByName('COD_EMPRESA_LOGISTICA').AsInteger := Data_Modulo.QR_Filial.FieldByName('cod_empresa').asInteger;
                   ParamByName('COD_FILIAL_LOGISTICA').AsInteger := Data_Modulo.QR_Filial.FieldByName('cod_filial').asInteger;

                   ParamByName('ENDERECO_H_ZIGBEE').AsString := vEnd_H;
                   ParamByName('ENDERECO_L_ZIGBEE').AsString := vEnd_L;

                   ParamByName('FREQUENCIA_CAMPO_PREVISTA').asFloat := FrequenciaPrevista;
                   ParamByName('FREQUENCIA_CAMPO_REALIZADA').asFloat := FrequenciaRealizada;

                   if alocacao = 'A' then
                     ParamByName('ORIGEM_ALOCACAO').AsString := 'EC'
                   else
                     ParamByName('ORIGEM_ALOCACAO').AsString := 'AL';
                     
{
                   ParamByName('FREQUENCIA_CAMPO_PREVISTA').asFloat := F_Alocacao.QR_Fazenda.FieldByName('FREQUENCIA_CAMPO').asFloat;
                   ParamByName('FREQUENCIA_CAMPO_REALIZADA').asFloat := F_Alocacao.QR_Fazenda.FieldByName('TEMPO_RESTANTE').asFloat;
}
                   If CheckBox1.Checked then
                      ParamByName('ABASTECEU').AsString       := 'S'
                   else
                      ParamByName('ABASTECEU').AsString       := 'N';

                   If CheckBox2.Checked then
                      ParamByName('BITUCA').AsString          := 'S'
                   else
                      ParamByName('BITUCA').AsString          := 'N';

                   ParamByName('COD_TIPOCARGA').AsFloat       := StrToFloat(wwDBEdit7.Text);
                   if CheckBox3.Checked then EnviarMensagem := 'S' else EnviarMensagem := 'N';
                   ParamByName('MENSAGEM_PAINEL').asString    := EnviarMensagem;
                   Execute;
                   Free;
              End;

              DM.Sessao.Commit;
              Close;
            end;
          end;
        end;
      end;
    end;
  end;
  QR_Acesso.Free;
end;


end.
