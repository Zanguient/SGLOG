unit U_LegendaLogisticaGMAPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_TemplateProcesso, DB, MemDS, DBAccess, Ora, DBCtrls, StdCtrls,
  Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, RzPanel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxImage, RzButton, ExtDlgs,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, RzSplit;

type
  TF_LegendaLogisticaGMAPS = class(TF_TemplateProcesso)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    btnCarregar: TRzBitBtn;
    btnExcluir: TRzBitBtn;
    cxImage1: TcxImage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_LEGENDA_GMAPS: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    QR_MainCOD_LEGENDA_GMAPS: TFloatField;
    QR_MainDESCRICAO: TStringField;
    QR_MainICONE_PNG: TBlobField;
    procedure DS_MainStateChange(Sender: TObject);
    procedure QR_MainAfterScroll(DataSet: TDataSet);
    procedure QR_MainNewRecord(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_LegendaLogisticaGMAPS: TF_LegendaLogisticaGMAPS;

implementation

uses u_DM;

{$R *.dfm}

procedure TF_LegendaLogisticaGMAPS.DS_MainStateChange(Sender: TObject);
begin
  inherited;
  btnCarregar.Enabled := DS_Main.State = dsBrowse;
end;

procedure TF_LegendaLogisticaGMAPS.FormCreate(Sender: TObject);
begin
  inherited;
  QR_Main.Close;
  QR_Main.Open;
end;

procedure TF_LegendaLogisticaGMAPS.QR_MainAfterScroll(DataSet: TDataSet);
var
  BlobStream : TBlobStream;
  FileStream : TFileStream;
begin
   if QR_MainICONE_PNG.AsString = '' then
     begin
       cxImage1.Clear;
       btnExcluir.Enabled := False;
     end
   else
     begin
       BlobStream := TBlobStream.Create((QR_MainICONE_PNG as TBlobField), BMREAD);
       FileStream := TFileStream.Create('iconeLegenda.png', fmCreate or fmOpenWrite);

       FileStream.CopyFrom(BlobStream, 0);

       FileStream.Free;
       BlobStream.Free;

       cxImage1.Picture.LoadFromFile('iconeLegenda.png');

       if FileExists('iconeLegenda.png') then
         DeleteFile('iconeLegenda.png');
       

       btnExcluir.Enabled := True;
     end;
end;

procedure TF_LegendaLogisticaGMAPS.QR_MainNewRecord(DataSet: TDataSet);
begin
  inherited;
//P1  QR_MainCOD_LEGENDA_GMAPS.AsFloat := pesquisa_descricao('sig.legenda_gmaps','NVL(MAX(cod_legenda_gmaps),0) + 1','0','','0');
end;

procedure TF_LegendaLogisticaGMAPS.btnCarregarClick(Sender: TObject);
var
  bookMark : TBookmark;
begin
  if OpenPictureDialog1.Execute then
  begin
    cxImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    if (cxImage1.Picture.Height > 32) or
       (cxImage1.Picture.Width > 32) then
    begin
      Application.MessageBox('A imagem deve ter o tamanho máximo de até 32x32.','Atenção',MB_ICONINFORMATION + MB_OK);
      cxImage1.Clear;
      Abort;
    end;

    with TOraQuery.Create(Self) do
    begin
      Session := DM.Sessao;
      SQL.Add('  UPDATE sig.legenda_gmaps a                          ' +
              '     SET a.icone_png = :icone                         ' +
              '   WHERE a.cod_legenda_gmaps = :codigo                ');
      ParamByName('codigo').AsFloat := QR_MainCOD_LEGENDA_GMAPS.AsFloat;
      ParamByName('icone').LoadFromFile(OpenPictureDialog1.FileName,ftBlob);
      ExecSQL;
      Free;
    end;

    bookMark := QR_Main.GetBookmark;
    QR_Main.Refresh;
    QR_Main.GotoBookmark(bookMark);

  end;
end;

procedure TF_LegendaLogisticaGMAPS.btnExcluirClick(Sender: TObject);
var
  bookMark : TBookMark;
begin
  if Application.MessageBox('Deseja excluir a imagem ?','Confirmação',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    cxImage1.Clear;

    with TOraQuery.Create(Self) do
    begin
      Session := DM.Sessao;
      SQL.Add('  UPDATE sig.legenda_gmaps a                          ' +
              '     SET a.icone_png = null                           ' +
              '   WHERE a.cod_legenda_gmaps = :codigo                ');
      ParamByName('codigo').AsFloat := QR_MainCOD_LEGENDA_GMAPS.AsFloat;
      ExecSQL;
      Free;
    end;

    bookMark := QR_Main.GetBookmark;
    QR_Main.Refresh;
    QR_Main.GotoBookmark(bookMark);
  end;
end;

end.
