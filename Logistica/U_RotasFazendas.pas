unit U_RotasFazendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_TemplateProcesso, DB, MemDS, DBAccess, Ora, DBCtrls, StdCtrls,
  Buttons, ExtCtrls, RzPanel, Grids, RzButton, Mask, RzEdit,
  RzDBEdit, RzRadChk, RzDBChk,Urlmon, ScktComp, RzTabs, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdTCPServer,
  //CPort,
  RzCmboBx, RzDBCmbo,
  Wwdbgrid, Wwdbigrd, wwdbedit, Wwdotdot, Wwdbcomb,
  //CPortCtl,
  RzRadGrp, ComCtrls, RzSplit;

type
  TF_RotasFazendas = class(TF_TemplateProcesso)
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    QR_RotasPontos: TOraQuery;
    DS_RotasPontos: TOraDataSource;
    QR_RotasPontosCOD_ROTA: TFloatField;
    QR_RotasPontosSEQUENCIA: TIntegerField;
    QR_RotasPontosTEXTO_BORDO: TStringField;
    QR_RotasPontosDESCRICAO_DETALHADA: TStringField;
    Label3: TLabel;
    RzEdit3: TRzDBEdit;
    RzEdit4: TRzDBEdit;
    bPesquisaRotas: TRzBitBtn;
    Label4: TLabel;
    RzEdit1: TRzDBEdit;
    RzEdit2: TRzDBEdit;
    bPesquisaUnidade: TRzBitBtn;
    Label5: TLabel;
    RzEdit5: TRzDBEdit;
    RzEdit6: TRzDBEdit;
    bPesquisaFazenda: TRzBitBtn;
    Label7: TLabel;
    RzEdit7: TRzDBEdit;
    bPesquisaZonas: TRzBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    QR_RotasPontosLATITUDE: TFloatField;
    QR_RotasPontosLONGITUDE: TFloatField;
    QR_RotasPontosCHECKPOINT: TStringField;
    QR_RotasPontosDISTANCIA_MAXIMA_ULT_PONTO: TFloatField;
    QR_RotasPontosTEMPO_MAXIMO_ULT_PONTO: TIntegerField;
    QR_RotasPontosVELOCIDADE_MAXIMO: TFloatField;
    QR_VisualizarPontos: TOraQuery;
    QR_Parametros: TOraQuery;
    QR_ParametrosTEMPO_BLINK_NOTICIAS: TFloatField;
    QR_ParametrosTEMPO_BUSCA_EQUIPAMENTO: TFloatField;
    QR_ParametrosTEMPO_RASTRO: TFloatField;
    QR_ParametrosZOOM_PADRAO: TFloatField;
    QR_ParametrosTEMPO_REFRESH: TFloatField;
    QR_ParametrosTOLERANCIA_VELOCIDADE: TFloatField;
    QR_ParametrosCABECALHO_GOOGLE_MAPS: TBlobField;
    QR_ParametrosRODAPE_GOOGLE_MAPS: TBlobField;
    RzBitBtn2: TRzBitBtn;
    OpenDialog1: TOpenDialog;
    QR_RotasPontosICONE: TStringField;
    QR_VisualizarPontosSEQUENCIA: TIntegerField;
    QR_VisualizarPontosCOMAND: TStringField;
    QR_VisualizarPontosPONTO_LAT_CENTRAL: TFloatField;
    QR_VisualizarPontosPONTO_LONG_CENTRAL: TFloatField;
    QR_VisualizarPontosLATITUDE: TFloatField;
    QR_VisualizarPontosLONGITUDE: TFloatField;
    QR_RotasPontosLATITUDE_DECIMAL: TFloatField;
    QR_RotasPontosLONGITUDE_DECIMAL: TFloatField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Memo1: TMemo;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    RzBitBtn1: TRzBitBtn;
    Label16: TLabel;
    TimeOut: TTimer;
    QR_EnviaRota: TOraQuery;
    QR_EnviaRotaPRIMEIRO_COMANDO: TStringField;
    QR_EnviaRotaCOMANDO: TStringField;
    QR_EnviaRotaQTDE: TFloatField;
    RzBitBtn3: TRzBitBtn;
    Timer1: TTimer;
    QR_EnviaRotaCOMANDO_JULIETAS: TStringField;
    QR_EnviaRotaULTIMO_COMANDO: TStringField;
    QR_RotasPontosTEXTO_BORDO2: TStringField;
    Label17: TLabel;
    Label18: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    Label19: TLabel;
    QR_RotasPontosDISTANCIA_AVISO: TFloatField;
    wwdbgrid1: TwwDBGrid;
    QR_RotasPontosTIPO: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    Label20: TLabel;
    QR_EnviaRotaSEQUENCIA: TIntegerField;
    QR_EnviaRotaTIPO: TStringField;
    QR_RotasPontosLATITUDE_DIGITADA: TFloatField;
    QR_RotasPontosLONGITUDE_DIGITADA: TFloatField;
    Label21: TLabel;
    Label22: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    QR_MainCOD_ROTA: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainCOD_GRUPOEMPRESA: TIntegerField;
    QR_MainCOD_EMPRESA: TIntegerField;
    QR_MainCOD_FILIAL: TIntegerField;
    QR_MainCOD_FAZENDA: TIntegerField;
    QR_MainZONA: TIntegerField;
    QR_MainDATAHORA_INICIO: TDateTimeField;
    QR_MainDATAHORA_FIM: TDateTimeField;
    QR_MainCOR_TRAJETO_IDA: TStringField;
    QR_MainCOR_TRAJETO_VOLTA: TStringField;
    QR_MainOBSERVACAO: TStringField;
    QR_MainATIVO: TStringField;
    QR_MainDESC_FAZENDA: TStringField;
    QR_MainAPELIDO: TStringField;
    procedure ComComboBox1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComPortAfterClose(Sender: TObject);
    procedure ComPortAfterOpen(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DS_RotasPontosStateChange(Sender: TObject);
    procedure RzEdit7Enter(Sender: TObject);
    procedure RzEdit5Enter(Sender: TObject);
    procedure RzEdit4Enter(Sender: TObject);
    procedure RzEdit1Enter(Sender: TObject);
    procedure RzEdit3Enter(Sender: TObject);
    procedure RzDBCheckBox1Enter(Sender: TObject);
    procedure RzDBEdit3Enter(Sender: TObject);
    procedure RzDBEdit5Enter(Sender: TObject);
    procedure RzDBEdit4Enter(Sender: TObject);
    procedure RzDBEdit2Enter(Sender: TObject);
    procedure RzDBEdit1Enter(Sender: TObject);
    procedure wwDBGrid9ColEnter(Sender: TObject);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure wwDBGrid9Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzEdit3Exit(Sender: TObject);
    procedure RzEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPesquisaRotasClick(Sender: TObject);
    procedure RzEdit7Exit(Sender: TObject);
    procedure RzEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPesquisaZonasClick(Sender: TObject);
    procedure RzEdit5Exit(Sender: TObject);
    procedure bPesquisaFazendaClick(Sender: TObject);
    procedure RzEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzEdit1Exit(Sender: TObject);
    procedure bPesquisaUnidadeClick(Sender: TObject);
    procedure QR_RotasPontosNewRecord(DataSet: TDataSet);
    procedure Visualizar_GoogleMaps;
    procedure le_arquivo(Campo: TBlobField; var Arquivo: TStringList);
    function DownloadFile(Source, Dest: string): Boolean;


    procedure EnviaRota_ZigBee;

  private
    { Private declarations }
    vMensagemCom, Mensagem       : String;
    mySocket       : TCustomWinSocket;
    SocketParouLer : Boolean;
    MsgEC          : String;
    myRecOK        : Integer;
    myFlag         : Boolean;
    vCountOF       : Integer;
  public
    { Public declarations }
  end;


Const
   //Para o envio de dados Via ZigBee
   vTempoComando : Integer = 400;
   //---ZibgBee-----------------------

var
  F_RotasFazendas: TF_RotasFazendas;

implementation

uses C_PesquisaGlobal2, funcoes, U_Modulo, U_RotasFazendas_Visualizar;

{$R *.dfm}

procedure TF_RotasFazendas.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_MainCOD_GRUPOEMPRESA.AsFloat := Data_Modulo.QR_FilialCOD_GRUPOEMPRESA.AsFloat;
  QR_MainCOD_FILIAL.AsFloat       := Data_Modulo.QR_FilialCOD_FILIAL.AsFloat;
end;

procedure TF_RotasFazendas.QR_RotasPontosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QR_RotasPontosCOD_ROTA.AsFloat          := QR_MainCOD_ROTA.AsFloat;
  QR_RotasPontosCHECKPOINT.AsString       := 'N';
  QR_RotasPontosDISTANCIA_AVISO.AsInteger := 1; //default 100mts
  QR_RotasPontosICONE.AsString            := 'informacao.png';
end;

procedure TF_RotasFazendas.bPesquisaFazendaClick(Sender: TObject);
Var
Sql : String;
Result : Variant;
begin
  inherited;
  Sql := 'SELECT fa.descricao "Fazenda", fa.cod_fazenda "Código" ' +
         '  FROM agricola.fazenda fa                             ' +
         ' &macro ORDER BY fa.descricao                          ';

  Result := F_PesquisaGlobal2.Fn_Resulta(Sql, 2,'Pesquisa Fazendas');

  if Result <> null then
  begin
    RzEdit5.Text := VarToStr(Result);
    RzEdit5Exit(Sender);
  end;

end;

procedure TF_RotasFazendas.bPesquisaUnidadeClick(Sender: TObject);
Var
Sql : String;
Result : Variant;
begin
  inherited;
  Sql := 'SELECT a.apelido "Empresa", a.cod_empresa "Código" ' +
         '  FROM rh.empresa a                                ' +
         ' WHERE a.cod_grupoempresa = ' + Data_Modulo.QR_EmpresaCOD_GRUPOEMPRESA.AsString +
         ' &macro ORDER BY a.cod_Empresa                     ';

  Result := F_PesquisaGlobal2.Fn_Resulta(Sql, 2,'Pesquisa Unidade de origem');

  if Result <> null then
  begin
    RzEdit1.Text := VarToStr(Result);
    RzEdit1Exit(Sender);
  end;

end;

procedure TF_RotasFazendas.bPesquisaZonasClick(Sender: TObject);
Var
  Sql : String;
  Result : Variant;
begin
  inherited;

  if RzEdit5.Text = '' then
  begin
    Application.MessageBox('É necessário informar a fazenda','Atenção',MB_OK+MB_ICONWARNING);
    RzEdit5.SetFocus;
    Abort;
  end;

  Sql := 'SELECT DISTINCT zona "Zona"                   ' +
         ' FROM agricola.talhao ta             ' +
         'WHERE ta.cod_safra   = ' + Data_Modulo.QR_SafraCOD_SAFRA.AsString +
         '  AND ta.cod_fazenda = ' + RzEdit5.Text  +
         ' &macro                               ' +
         ' ORDER BY zona                         ';

  Result := F_PesquisaGlobal2.Fn_Resulta(Sql, 1,'Pesquisa Zonas');

  if Result <> null then
  begin
    RzEdit7.Text := VarToStr(Result);
    RzEdit7Exit(Sender);
  end;
end;

procedure TF_RotasFazendas.ComComboBox1Change(Sender: TObject);
begin
  inherited;
  //ComPort.Port := ComComboBox2.Text;
  //ComPort.Open;
end;

procedure TF_RotasFazendas.ComPortAfterClose(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Add('Fechou Porta');
end;

procedure TF_RotasFazendas.ComPortAfterOpen(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Add('Abriu Porta');
end;

procedure TF_RotasFazendas.DS_RotasPontosStateChange(Sender: TObject);
begin
  inherited;
  atualiza_botao(DS_RotasPontos);
end;

procedure TF_RotasFazendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Timer1.Enabled  := false;
   TimeOut.Enabled := false;
   //ComPort.Connected := false;
  inherited;
end;

procedure TF_RotasFazendas.FormCreate(Sender: TObject);
begin
  inherited;
  Top  := 1;
  Left := 1;

  QR_Main.Close;
  QR_Main.Open;

  QR_RotasPontos.Close;
  QR_RotasPontos.Open;
end;

procedure TF_RotasFazendas.bPesquisaRotasClick(Sender: TObject);
Var
  Sql : String;
  Result : Variant;
begin
  inherited;

  Sql := '  SELECT rf.cod_rota    "Código Rota",        ' +
         '         rf.descricao   "Descrição",          ' +
         '         rf.cod_empresa "Unidade",            ' +
         '         ep.apelido     "Descrição Unidade",  ' +
         '         rf.cod_fazenda "Cód. Fazenda",       ' +
         '         fa.descricao   "Descrição Fazenda"   ' +
         '    FROM sig.rotas_fazendas rf,               ' +
         '         rh.empresa ep,                       ' +
         '         agricola.fazenda fa                  ' +
         '    WHERE rf.cod_fazenda = fa.cod_fazenda     ' +
         '      AND rf.cod_empresa = ep.cod_empresa     ' +
         '      &Macro                                  ' +         
         '  ORDER BY rf.cod_rota                        ';

  Result := F_PesquisaGlobal2.Fn_Resulta(Sql, 1,'Pesquisa Rotas');

  if Result <> null then
  begin
    RzEdit3.Text := VarToStr(Result);
    RzEdit3Exit(Sender);
  end;

end;

procedure TF_RotasFazendas.RzBitBtn1Click(Sender: TObject);
Var 
  Arquivo : TextFile;
  linha, texto, nome_arquivo : String;
  inicio, fim, i : Integer;
begin
  inherited;

  if QR_Main.IsEmpty  then
  begin
    Application.MessageBox('É preciso cadastrar uma rota','Anteção',MB_OK+MB_ICONWARNING);
    Abort;
  end;

  if QR_RotasPontos.IsEmpty then
  begin
    Application.MessageBox('Não há pontos cadastrados para rota selecionada','Anteção',MB_OK+MB_ICONWARNING);
    Abort;
  end;

  QR_VisualizarPontos.Close;
  QR_VisualizarPontos.Open;

  if QR_VisualizarPontos.IsEmpty then
  begin
    Application.MessageBox('Não há pontos cadastrados com LAT E LONG informados para rota selecionada','Anteção',MB_OK+MB_ICONWARNING);
    Abort;
  end;

  Visualizar_GoogleMaps;

  DeleteFile('c:\windows\temp\googlemaps.htm');
  DownloadFile('http://maps.google.com.br/','c:\windows\temp\googlemaps.htm');

  if FileExists('c:\windows\temp\googlemaps.htm') then
  begin
  
      texto  := 'Autenticação para acesso à Internet';

      if FileExists('c:\windows\temp\googlemaps.htm')then
      begin
        AssignFile(Arquivo,'c:\windows\temp\googlemaps.htm');
        Reset(Arquivo);
        Readln(Arquivo,linha);
        inicio := pos('<title>',Linha) + 7;
        fim    := pos('</title>',Linha);
        texto  := copy(Linha,inicio,fim - inicio);
      end;

      if (texto = 'Autenticação para acesso à Internet') then
      begin
        Application.MessageBox('A visualização do mapa foi cancelada pois não conseguiu conexão com a Internet. Favor autentique a internet para continuar.','Erro ao tentar abrir o aplicativo',MB_ICONWARNING + MB_OK);
        CloseFile(Arquivo);
        Abort;
      end;
  end;




end;

procedure TF_RotasFazendas.RzBitBtn2Click(Sender: TObject);
Var
Arquivo : TStringList;
      i : Integer;
 vFinal : Boolean;
 Str    : String;
begin
  inherited;
  vFinal := false;
  i := 0;

  if QR_Main.IsEmpty then
  begin
    Application.MessageBox('É necessário criar primeiramente a rota para receber os pontos','Atenção',MB_Ok + MB_ICONWARNING);
    Abort;
  end;
  OpenDialog1.Execute;
  if OpenDialog1.FileName <> '' then
  begin

    if Application.MessageBox('Confirma a importação dos pontos ?','Confirmação',MB_YESNOCANCEL + MB_ICONWARNING) = mrYes then
    begin

      Arquivo := TStringList.Create;
      Arquivo.LoadFromFile(OpenDialog1.FileName);

      while (i <= Arquivo.Count - 1) and (vFinal = false) do
      begin

        Str := Trim(Arquivo[i]);
        if Pos(Str,'t,d,') > 0 then
          vFinal := True;

        if Pos(Str,'n,ACTIVE') > 0 then
          vFinal := True;

        if Copy(Str,1,4) = 'w,d,' then
        begin
          //Inserir
          QR_RotasPontos.Insert;
          QR_RotasPontosSEQUENCIA.AsInteger  := StrToInt(Copy(Str,5,3));
          QR_RotasPontosTEXTO_BORDO.AsString := '***INFORMAR TEXTO***';
          QR_RotasPontosTEXTO_BORDO2.AsString := '';
          QR_RotasPontosDESCRICAO_DETALHADA.AsString := 'Temporário - Descrever Corretamente';
          QR_RotasPontosLATITUDE.AsFloat     := StrToFloat(Copy(Str,9,10));
          QR_RotasPontosLONGITUDE.AsFloat    := StrToFloat(Copy(Str,20,10));
          QR_RotasPontos.Post;
        end;


        inc(i);
      end;

      Arquivo.Free;
    end;
    QR_RotasPontos.Close;
    QR_RotasPontos.Open;
  end;

end;

procedure TF_RotasFazendas.RzBitBtn3Click(Sender: TObject);
Var vEnderecoL, vEnderecoH : String;
begin
  inherited;

 //ENVIAR COMANDO AO ZIGBEE
 //if not Comport.Connected then
 //  Comport.Open;

 //ZigBee_Solicita_Enderecos(Comport, Memo1, vEnderecoL, vEnderecoH);

{
 if EnviaComando_ZigBee(Comport,Memo1,'INICIA_COMMAND_MODE','','') = 'OK' then
  begin
    if EnviaComando_ZigBee(Comport,Memo1,'SOLICITA_ID_REDE','','') = 'OK' then
    begin
      vEnderecoL := EnviaComando_ZigBee(Comport,Memo1,'SOLICITA_END_L','','');
      if vEnderecoL <> 'ERR' then
      begin
        vEnderecoH := EnviaComando_ZigBee(Comport,Memo1,'SOLICITA_END_H','','');
        if vEnderecoH <> 'ERR' then
          if EnviaComando_ZigBee(Comport,Memo1,'FIM_COMMAND_MODE','','') = 'OK' then
          begin
            //ShowMessage('inicia os comando Zig3');
            //ComPort.Connected := false;
          end;
      end;
    end;
  end;

 }

  vEnderecoL := '';
  vEnderecoH := '';
  Timer1.Enabled := true;
  //ComPort.Connected := true;

end;

procedure TF_RotasFazendas.RzDBCheckBox1Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);
end;

procedure TF_RotasFazendas.RzDBEdit1Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);
end;

procedure TF_RotasFazendas.RzDBEdit2Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);  
end;

procedure TF_RotasFazendas.RzDBEdit3Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);  
end;

procedure TF_RotasFazendas.RzDBEdit4Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);  
end;

procedure TF_RotasFazendas.RzDBEdit5Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);  
end;

procedure TF_RotasFazendas.RzEdit1Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_Main,DS_Main);
end;

procedure TF_RotasFazendas.RzEdit1Exit(Sender: TObject);
Var
  Descricao : Variant;
begin
  inherited;
  if RzEdit1.Text <> '' then
  begin
    Descricao := pesquisa_descricao('rh.empresa','apelido','cod_empresa','cod_grupoempresa = '+ Data_Modulo.QR_EmpresaCOD_GRUPOEMPRESA.AsString,RzEdit1.Text);
    if Descricao <> null then
      RzEdit2.Text := VarToStr(Descricao)
    else
    begin
      Application.MessageBox('Unidade de origem não cadastrada','Atenção',MB_Ok + MB_ICONWARNING);
      RzEdit2.Text := '';
      RzEdit1.SetFocus;
    end;
  end
  else
    RzEdit2.Text := '';
end;

procedure TF_RotasFazendas.RzEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    bPesquisaUnidadeClick(Sender);
end;

procedure TF_RotasFazendas.RzEdit3Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_Main,DS_Main);
end;

procedure TF_RotasFazendas.RzEdit3Exit(Sender: TObject);
Var
  Descricao : Variant;
  vCod_Rota : Integer;
begin
  inherited;
  vCod_Rota := 0;
  if RzEdit3.Text <> '' then
  begin
    Descricao := pesquisa_descricao('sig.rotas_fazendas','descricao','cod_rota','',RzEdit3.Text);
    if Descricao <> null then
    begin
      RzEdit4.Text := VarToStr(Descricao);
      vCod_Rota := StrToInt(RzEdit3.Text);
      QR_Main.Cancel;
      QR_Main.Close;
      QR_Main.ParamByName('cod_rota').AsInteger := vCod_Rota;
      QR_Main.Open;
    end
    else
    begin
      //Application.MessageBox('Rota não cadastrada','Atenção',MB_Ok + MB_ICONWARNING);
      //RzEdit4.Text := '';
      //RzEdit3.SetFocus;
      //QR_Main.Append;
    end;
  end
  else
    RzEdit4.Text := '';
end;

procedure TF_RotasFazendas.RzEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    bPesquisaRotasClick(Sender);
end;

procedure TF_RotasFazendas.RzEdit4Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_Main,DS_Main);
end;

procedure TF_RotasFazendas.RzEdit5Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_Main,DS_Main);
end;

procedure TF_RotasFazendas.RzEdit5Exit(Sender: TObject);
Var
  Descricao : Variant;
begin
  inherited;
  if RzEdit5.Text <> '' then
  begin
    Descricao := pesquisa_descricao('agricola.fazenda','descricao','cod_fazenda','',RzEdit5.Text);
    if Descricao <> null then
      RzEdit6.Text := VarToStr(Descricao)
    else
    begin
      Application.MessageBox('Fazenda destino não cadastrada','Atenção',MB_Ok + MB_ICONWARNING);
      RzEdit6.Text := '';
      RzEdit5.SetFocus;
    end;
  end
  else
    RzEdit6.Text := '';
end;

procedure TF_RotasFazendas.RzEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    bPesquisaFazendaClick(Sender);
end;

procedure TF_RotasFazendas.RzEdit7Enter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_Main,DS_Main);
end;

procedure TF_RotasFazendas.RzEdit7Exit(Sender: TObject);
Var
  Descricao : Variant;
begin
  inherited;

  if RzEdit5.Text = '' then
  begin
    Application.MessageBox('É necessário informar a fazenda','Atenção',MB_OK+MB_ICONWARNING);
    RzEdit5.SetFocus;
    Abort;
  end;

  if RzEdit7.Text <> '' then
  begin
    Descricao := pesquisa_descricao('agricola.talhao','zona','zona','cod_fazenda = ' + rzEdit5.Text + ' and cod_safra = ' +Data_Modulo.QR_SafraCOD_SAFRA.AsString ,RzEdit7.Text);
    if Descricao <> null then
      RzEdit7.Text := VarToStr(Descricao)
    else
    begin
      Application.MessageBox('Zona não cadastrada','Atenção',MB_Ok + MB_ICONWARNING);
      RzEdit7.SetFocus;
    end;
  end
  else
    RzEdit7.Text := '';
end;

procedure TF_RotasFazendas.RzEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    bPesquisaZonasClick(Sender);
end;

procedure TF_RotasFazendas.Timer1Timer(Sender: TObject);
Var vEnd_L, vEnd_H, vRec : String;
    Linha : TStringList;
    myBuffer : String;
    myMsg    : String;
begin
  inherited;

  {if ComPort.Connected = true then
  begin
    Timer1.Enabled := false;
    ComPort.ReadStr(myBuffer,20000);

    vMensagemCom := vMensagemCom + myBuffer;

    if (Pos(Chr(13)+Chr(10),vMensagemCom) > 0) then
    begin
      if (Pos(Chr(13), vMensagemCom) = Length(vMensagemCom) - 1) and
         (Pos(Chr(10), vMensagemCom) = Length(vMensagemCom)) then
      begin
        myMsg := vMensagemCom;
        vMensagemCom := '';
        //Analisar o pacote Zigbee
        //Na entrada só analisa comandos que são de pedido de rota
        if (Pos('ZIG35',myMsg)  >  0) or
           (Pos('OK',myMsg) >  0)  then
        begin
           Memo1.Lines.Add(Trim(vRec));
           Linha:= TStringList.Create;
           Linha.Delimiter:= ',';
           Linha.DelimitedText:= myMsg;
           if Linha.Strings[0] = 'ZIG35' then
           begin
             myFlag := false;
             vEnd_H := Linha.Strings[2];
             vEnd_L := Linha.Strings[3];

             if ZigBee_Config_Unicast(Comport, Memo1, vEnd_H, vEnd_L) = 'OK' then
               EnviaRota_ZigBee;
           end;
           Linha.Free;
        end;
      end
      else
      begin
        myMsg := Copy(vMensagemCom, 1, Pos(Chr(10), vMensagemCom));
        vMensagemCom := Copy(vMensagemCom,Pos(Chr(10), vMensagemCom) + 1, Length(vMensagemCom));
      end;
    end;
    Timer1.Enabled := true;
  end;}
end;

procedure TF_RotasFazendas.wwDBGrid9ColEnter(Sender: TObject);
begin
  inherited;
  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
end;

procedure TF_RotasFazendas.wwDBGrid9Enter(Sender: TObject);
begin
  inherited;
  if QR_Main.State in [dsEdit, dsInsert] then
    QR_Main.Post;

  atualiza_foco(QR_RotasPontos,DS_RotasPontos);
  atualiza_botao(DS_RotasPontos);
end;

//Cria Visualização de pontos no Google Maps
procedure TF_RotasFazendas.Visualizar_GoogleMaps;
Var
  Arq_Html, Arq_Aux : TStringList;
  vTrilha : String;
begin
  vTrilha := '';
  QR_Parametros.Close;
  QR_Parametros.Open;
  QR_VisualizarPontos.First;

  Arq_Aux := TStringList.Create;
  Le_Arquivo(QR_ParametrosCABECALHO_GOOGLE_MAPS,Arq_Aux);

  Arq_Html := TStringList.Create;

  Arq_Html.Add(SubstituiString(SubstituiString(Arq_Aux.Text,'vParamLat',QR_VisualizarPontosPONTO_LAT_CENTRAL.AsString),'vParamLong',QR_VisualizarPontosPONTO_LONG_CENTRAL.AsString));

  Arq_Aux.Free;

  while not QR_VisualizarPontos.Eof do
  begin
    Arq_Html.Add(QR_VisualizarPontosCOMAND.AsString);
    vTrilha := vTrilha + 'new GLatLng('+QR_VisualizarPontosLATITUDE.AsString+','+QR_VisualizarPontosLONGITUDE.AsString+'),';
    QR_VisualizarPontos.Next;
  end;

  vTrilha :=  'var polyline = new GPolyline([' + vTrilha +
              '], "#ff0000", 10); map.addOverlay(polyline);';
  Arq_Html.Add(vTrilha);
  Arq_Aux := TStringList.Create;
  Le_Arquivo(QR_ParametrosRODAPE_GOOGLE_MAPS,Arq_Aux);
  Arq_Html.Add(Arq_Aux.Text);
  Arq_Aux.Free;

  Arq_Html.SaveToFile('c:\sistemas\gmaps.html');

  Arq_Html.Free;

  F_RotasFazendas_Visualizar := TF_RotasFazendas_Visualizar.Create(Self);
  F_RotasFazendas_Visualizar.web.navigate('c:\sistemas\gmaps.html');
  F_RotasFazendas_Visualizar.ShowModal;
  F_RotasFazendas_Visualizar.Free;


end;

procedure TF_RotasFazendas.Le_Arquivo(Campo: TBlobField; var Arquivo: TStringList);
var BS: TBlobStream;
    meu_arquivo : TMEmoryStream;
Begin
   if Campo.AsString <> '' Then
   begin
      BS := TBlobStream.Create((Campo as TBlobField), BMREAD);
      Arquivo.LoadFromStream(bs);
      BS.Free;
   end
   else
      Arquivo.Text := '';
end;

function TF_RotasFazendas.DownloadFile(Source, Dest: string): Boolean;
begin
  try
    Result:= UrlDownloadToFile(nil, PChar(source),PChar(Dest), 0, nil) = 0;
  except
    Result:= False;
  end;
end;





procedure TF_RotasFazendas.EnviaRota_ZigBee;
 var myBuffer : String;
        myMsg, myMsg2 : String;
        i     : Integer;
  vErro, vMsgEnviada : Boolean;
 vTmp: Integer;
  vVoltaEnviada : Boolean;

begin
      //vTmp := StrToInt(edit1.Text);
      vVoltaEnviada := false;
      vTmp := vTempoComando;
      Memo1.Lines.Add('################ ENVIANDO ROTA POR ZIGBEE ###############');
      //EnviaPontosRota
      //************************************************************************
      vErro := false;

      QR_EnviaRota.Close;
      QR_EnviaRota.ParamByName('cod_rota').AsInteger := QR_MainCOD_ROTA.AsInteger;
      QR_EnviaRota.Open;

      if QR_EnviaRota.IsEmpty then
      begin
        Application.MessageBox(PChar('Não foram encontrados os pontos para a rota '+ QR_MainCOD_ROTA.AsString),'Atenção',MB_Ok + MB_ICONWARNING);
        Abort;
      end;

      QR_EnviaRota.First;
      myMsg := QR_EnviaRotaPRIMEIRO_COMANDO.AsString+#$D#$A;
      //ComPort.WriteStr(myMsg);
      Sleep(vTmp);
      Memo1.Lines.Add(myMsg);

      while not QR_EnviaRota.Eof do
      begin

        //Se for a rota de volta então envia o primeiro comando da rota de volta
        if (QR_EnviaRotaTIPO.AsString = 'V') and (vVoltaEnviada = false) then
        begin
          vVoltaEnviada := true;
          myMsg := QR_EnviaRotaPRIMEIRO_COMANDO.AsString+#$D#$A;
          //ComPort.WriteStr(myMsg);
          Sleep(vTmp);
          Memo1.Lines.Add(myMsg);
        end;

        myMsg := QR_EnviaRotaCOMANDO.AsString+#$D#$A;
        //ComPort.WriteStr(myMsg);
        Sleep(vTmp);
        Memo1.Lines.Add(myMsg);
        QR_EnviaRota.Next;
      end;
      myMsg := QR_EnviaRotaCOMANDO_JULIETAS.AsString +#$D#$A;
      Memo1.Lines.Add(myMsg);
      //ComPort.WriteStr(myMsg);
      Sleep(vtmp);
      myMsg := QR_EnviaRotaULTIMO_COMANDO.AsString +#$D#$A;
      //ComPort.WriteStr(myMsg);
      Memo1.Lines.Add('*Enviado FINALIZAÇÃO DA ROTA');
      Memo1.Lines.Add(myMsg);
      Sleep(1000);

      //ComPort.ReadStr(myMsg2,20000);
      Memo1.Lines.Add(myMsg2);

end;


end.
