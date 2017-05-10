unit U_FormLegendaLogisticaGMAPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  //pngextra,
  RzGroupBar,
  pngimage, cxControls, cxContainer, cxEdit,
  cxImage, ExtCtrls, DB, MemDS, DBAccess, Ora, StdCtrls, RzPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxGDIPlusClasses, RzButton;

type
  TF_FormLegendaLogisticaGMAPS = class(TForm)
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    sbEquipamentos: TScrollBox;
    sbOperacao: TScrollBox;
    QR_LegendaEquipamentos: TOraQuery;
    pnEquipamento: TPanel;
    QR_LegendaOperacaoAgricola: TOraQuery;
    pnImgEquipamento: TPanel;
    cxImgEquipamento: TcxImage;
    lbEquipamento: TLabel;
    pnOperacaoAgricola: TPanel;
    lbOperacaoAgricola: TLabel;
    pnImgOperacaoAgricola: TPanel;
    cxImgOperacaoAgricola: TcxImage;
    RzPanel1: TRzPanel;
    rzBitbtnStatusAtualizacao: TRzBitBtn;
    QR_LegendaEquipamentosCOD_LEGENDA: TFloatField;
    QR_LegendaEquipamentosDESCRICAO: TStringField;
    QR_LegendaEquipamentosICONE_PNG: TBlobField;
    QR_LegendaOperacaoAgricolaCOD_OPERACAO: TFloatField;
    QR_LegendaOperacaoAgricolaDESCRICAO: TStringField;
    QR_LegendaOperacaoAgricolaPRODUTIVO_IMPRODUTIVO: TStringField;
    QR_LegendaOperacaoAgricolaICONE_EQUIP_MAPS: TBlobField;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ativar(Sender: TObject; Ponto: TPoint);
    procedure Desativar;
    procedure rzBitbtnStatusAtualizacaoClick(Sender: TObject);
  private
    { Private declarations }
    pnComponente : TPanel;
      pnComponenteImagem : TPanel;
        cxImageComponente : TcxImage;
      lbComponente : TLabel;

  public
    { Public declarations }
  end;

var
  F_FormLegendaLogisticaGMAPS: TF_FormLegendaLogisticaGMAPS;

implementation

uses U_DM;

{$R *.dfm}

procedure TF_FormLegendaLogisticaGMAPS.Ativar(Sender: TObject; Ponto: TPoint);
begin
  if (Ponto.X+Width > Screen.Width) then
    Left := Ponto.X - Width
  else
    Left := Ponto.X;

  if (Ponto.Y+Height > Screen.Height) then
    Top := Ponto.Y - Height
  else
    Top := Ponto.Y;

  Show;
end;

procedure TF_FormLegendaLogisticaGMAPS.Desativar;
begin
  Close;
end;

procedure TF_FormLegendaLogisticaGMAPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if tag = 1 then
    Action := caFree
end;

procedure TF_FormLegendaLogisticaGMAPS.FormCreate(Sender: TObject);
var
  BlobStream : TBlobStream;
  FileStream : TFileStream;
  imgPath : String;
begin
  //############################################################################
  //### Montagem Legenda Equipamentos                                        ###
  //############################################################################
  QR_LegendaEquipamentos.Close;
  QR_LegendaEquipamentos.Open;
  while not QR_LegendaEquipamentos.Eof do
  begin
    //1 - Componente Panel Base
    pnComponente            := TPanel.Create(Application);
    pnComponente.Name       := pnEquipamento.Name+QR_LegendaEquipamentosCOD_LEGENDA.AsString;
    pnComponente.Parent     := pnEquipamento.Parent;
    pnComponente.Align      := pnEquipamento.Align;
    pnComponente.BevelOuter := pnEquipamento.BevelOuter;
    pnComponente.Caption    := '';
    pnComponente.Height     := pnEquipamento.Height;

    if QR_LegendaEquipamentosICONE_PNG.AsString = '' then
      imgPath := ''
    else
      begin
        BlobStream := TBlobStream.Create((QR_LegendaEquipamentosICONE_PNG as TBlobField), BMREAD);
        FileStream := TFileStream.Create('iconeLegenda.png', fmCreate or fmOpenWrite);

        FileStream.CopyFrom(BlobStream, 0);

        FileStream.Free;
        BlobStream.Free;

        imgPath := 'iconeLegenda.png'
      end;

      //1.1 - Componente Panel da Imagem
      pnComponenteImagem            := TPanel.Create(pnComponente);
      pnComponenteImagem.Name       := pnImgEquipamento.Name+QR_LegendaEquipamentosCOD_LEGENDA.AsString;
      pnComponenteImagem.Parent     := pnComponente;
      pnComponenteImagem.Align      := pnImgEquipamento.Align;
      pnComponenteImagem.BevelOuter := pnImgEquipamento.BevelOuter;
      pnComponenteImagem.Height     := pnImgEquipamento.Height;
      pnComponenteImagem.Width      := pnImgEquipamento.Width;

        //1.1.1 - Componente Imagem
        cxImageComponente                    := TcxImage.Create(pnComponente);
        cxImageComponente.Name               := cxImgEquipamento.Name+QR_LegendaEquipamentosCOD_LEGENDA.AsString;
        cxImageComponente.Parent             := pnComponenteImagem;
        cxImageComponente.Align              := cxImgEquipamento.Align;
        cxImageComponente.Properties         := cxImgEquipamento.Properties;
        cxImageComponente.Picture.LoadFromFile(imgPath);
        cxImageComponente.Style              := cxImgEquipamento.Style;
        cxImageComponente.Width              := 24;

      //1.2 - Componente Label
      lbComponente         := TLabel.Create(pnComponente);
      lbComponente.Name    := lbEquipamento.Name+QR_LegendaEquipamentosCOD_LEGENDA.AsString;
      lbComponente.Parent  := pnComponente;
      lbComponente.Align   := lbEquipamento.Align;
      lbComponente.Caption := '  '+QR_LegendaEquipamentosDESCRICAO.AsString;
      lbComponente.Font    := lbEquipamento.Font;
      lbComponente.Layout  := lbEquipamento.Layout;

    QR_LegendaEquipamentos.Next;
  end;
  pnEquipamento.Visible := False;
  //############################################################################

  //############################################################################
  //### Montagem Legenda Operação Agricola                                   ###
  //############################################################################
  QR_LegendaOperacaoAgricola.Close;
  QR_LegendaOperacaoAgricola.Open;
  while not QR_LegendaOperacaoAgricola.Eof do
  begin
    //1 - Componente Panel Base
    pnComponente            := TPanel.Create(Application);
    pnComponente.Name       := pnOperacaoAgricola.Name+QR_LegendaOperacaoAgricolaCOD_OPERACAO.AsString;
    pnComponente.Parent     := pnOperacaoAgricola.Parent;
    pnComponente.Align      := pnOperacaoAgricola.Align;
    pnComponente.BevelOuter := pnOperacaoAgricola.BevelOuter;
    pnComponente.Caption    := '';
    pnComponente.Height     := pnOperacaoAgricola.Height;

    if QR_LegendaOperacaoAgricolaICONE_EQUIP_MAPS.AsString = '' then
      imgPath := ''
    else
      begin
        BlobStream := TBlobStream.Create((QR_LegendaOperacaoAgricolaICONE_EQUIP_MAPS as TBlobField), BMREAD);
        FileStream := TFileStream.Create('iconeLegenda.png', fmCreate or fmOpenWrite);

        FileStream.CopyFrom(BlobStream, 0);

        FileStream.Free;
        BlobStream.Free;

        imgPath := 'iconeLegenda.png'
      end;

      //1.1 - Componente Panel da Imagem
      pnComponenteImagem            := TPanel.Create(pnComponente);
      pnComponenteImagem.Name       := pnImgOperacaoAgricola.Name+QR_LegendaOperacaoAgricolaCOD_OPERACAO.AsString;
      pnComponenteImagem.Parent     := pnComponente;
      pnComponenteImagem.Align      := pnImgOperacaoAgricola.Align;
      pnComponenteImagem.BevelOuter := pnImgOperacaoAgricola.BevelOuter;
      pnComponenteImagem.Height     := pnImgOperacaoAgricola.Height;
      pnComponenteImagem.Width      := pnImgOperacaoAgricola.Width;

        //1.1.1 - Componente Imagem
        cxImageComponente                    := TcxImage.Create(pnComponente);
        cxImageComponente.Name               := cxImgOperacaoAgricola.Name+QR_LegendaOperacaoAgricolaCOD_OPERACAO.AsString;
        cxImageComponente.Parent             := pnComponenteImagem;
        cxImageComponente.Align              := cxImgOperacaoAgricola.Align;
        cxImageComponente.Properties         := cxImgOperacaoAgricola.Properties;
        cxImageComponente.Picture.LoadFromFile(imgPath);
        cxImageComponente.Style              := cxImgOperacaoAgricola.Style;
        cxImageComponente.Width              := 24;

      //1.2 - Componente Label
      lbComponente         := TLabel.Create(pnComponente);
      lbComponente.Name    := lbOperacaoAgricola.Name+QR_LegendaOperacaoAgricolaCOD_OPERACAO.AsString;
      lbComponente.Parent  := pnComponente;
      lbComponente.Align   := lbOperacaoAgricola.Align;
      lbComponente.Caption := '  '+QR_LegendaOperacaoAgricolaDESCRICAO.AsString;
      lbComponente.Font    := lbOperacaoAgricola.Font;
      lbComponente.Layout  := lbOperacaoAgricola.Layout;

    QR_LegendaOperacaoAgricola.Next;
  end;
  pnOperacaoAgricola.Visible := False;
  //############################################################################
end;

procedure TF_FormLegendaLogisticaGMAPS.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TF_FormLegendaLogisticaGMAPS.rzBitbtnStatusAtualizacaoClick(
  Sender: TObject);
begin
  Close;
end;

end.
