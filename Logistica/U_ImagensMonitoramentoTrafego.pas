unit U_ImagensMonitoramentoTrafego;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TF_ImagensMonitoramentoTrafego = class(TForm)
    imgPNG_Direita_Vazio: TImage;
    imgPNG_Direita_Carregando: TImage;
    imgPNG_Direita_Carregando_Atrasado: TImage;
    imgPNG_Direita_Vazio_Alerta: TImage;
    imgPNG_Direita_Vazio_Atrasado: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado: TImage;
    imgPNG_Esquerda_Carregado: TImage;
    imgPNG_Esquerda_Descarregando: TImage;
    imgPNG_Esquerda_Carregado_Alerta: TImage;
    imgPNG_Esquerda_Carregado_Atrasado: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado: TImage;
    imgPNG_Direita_Vazio_Transparente: TImage;
    imgPNG_Direita_Carregando_Transparente: TImage;
    imgPNG_Direita_Carregando_Atrasado_Transparente: TImage;
    imgPNG_Direita_Vazio_Alerta_Transparente: TImage;
    imgPNG_Direita_Vazio_Atrasado_Transparente: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Transparente: TImage;
    imgPNG_Esquerda_Descarregando_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Transparente: TImage;
    imgPNG_Direita_Vazio_Selecionado: TImage;
    imgPNG_Direita_Carregando_Selecionado: TImage;
    imgPNG_Direita_Carregando_Atrasado_Selecionado: TImage;
    imgPNG_Direita_Vazio_Alerta_Selecionado: TImage;
    imgPNG_Direita_Vazio_Atrasado_Selecionado: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado: TImage;
    imgPNG_Esquerda_Carregado_Selecionado: TImage;
    imgPNG_Esquerda_Descarregando_Selecionado: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Selecionado: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Selecionado: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado: TImage;
    imgPNG_Direita_Vazio_Selecionado_Transparente: TImage;
    imgPNG_Direita_Carregando_Selecionado_Transparente: TImage;
    imgPNG_Direita_Carregando_Atrasado_Selecionado_Transparente: TImage;
    imgPNG_Direita_Vazio_Alerta_Selecionado_Transparente: TImage;
    imgPNG_Direita_Vazio_Atrasado_Selecionado_Transparente: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Selecionado_Transparente: TImage;
    imgPNG_Esquerda_Descarregando_Selecionado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Selecionado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Selecionado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado_Transpare: TImage;
    imgPNG_Direita_Vazio_Real: TImage;
    imgPNG_Direita_Carregando_Real: TImage;
    imgPNG_Direita_Carregando_Atrasado_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Real: TImage;
    imgPNG_Direita_Vazio_Atrasado_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Real: TImage;
    imgPNG_Esquerda_Carregado_Real: TImage;
    imgPNG_Esquerda_Descarregando_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Real: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Real: TImage;
    imgPNG_Direita_Vazio_Transparente_Real: TImage;
    imgPNG_Direita_Carregando_Transparente_Real: TImage;
    imgPNG_Direita_Carregando_Atrasado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Atrasado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Transparente_Real: TImage;
    imgPNG_Esquerda_Descarregando_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Selecionado_Real: TImage;
    imgPNG_Direita_Carregando_Selecionado_Real: TImage;
    imgPNG_Direita_Carregando_Atrasado_Selecionado_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Selecionado_Real: TImage;
    imgPNG_Direita_Vazio_Atrasado_Selecionado_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado_Real: TImage;
    imgPNG_Esquerda_Carregado_Selecionado_Real: TImage;
    imgPNG_Esquerda_Descarregando_Selecionado_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Selecionado_Real: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Selecionado_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado_Real: TImage;
    imgPNG_Direita_Vazio_Selecionado_Transparente_Real: TImage;
    imgPNG_Direita_Carregando_Selecionado_Transparente_Real: TImage;
    imgPNG_Carregando_Atrasado_Selecionado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Selecionado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Atrasado_Selecionado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Alerta_Atrasado_Selecionado_Transparente_R: TImage;
    imgPNG_Esquerda_Carregado_Selecionado_Transparente_Real: TImage;
    imgPNG_Esquerda_Descarregando_Selecionado_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Selecionado_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Atrasado_Selecionado_Transparente_Rea: TImage;
    imgPNG_Esquerda_Carregado_Alerta_Atrasado_Selecionado_Tran_Real: TImage;
    Img_Asfalto: TImage;
    Img_Terra: TImage;
    Img_industria: TImage;
    Img_lavoura: TImage;
    Img_Carreador: TImage;
    imgPNG_Direita_Vazio_Parado: TImage;
    imgPNG_Esquerda_Carregado_Parado: TImage;
    imgPNG_Direita_Vazio_Parado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Parado_Transparente: TImage;
    imgPNG_Direita_Vazio_Parado_Selecionado: TImage;
    imgPNG_Esquerda_Carregado_Parado_Selecionado: TImage;
    imgPNG_Direita_Vazio_Parado_Selecionado_Transparente: TImage;
    imgPNG_Esquerda_Carregado_Parado_Selecionado_Transparente: TImage;
    imgPNG_Direita_Vazio_Parado_Real: TImage;
    imgPNG_Esquerda_Carregado_Parado_Real: TImage;
    imgPNG_Direita_Vazio_Parado_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Parado_Transparente_Real: TImage;
    imgPNG_Direita_Vazio_Parado_Selecionado_Real: TImage;
    imgPNG_Esquerda_Carregado_Parado_Selecionado_Real: TImage;
    imgPNG_Direita_Vazio_Parado_Selecionado_Transparente_Real: TImage;
    imgPNG_Esquerda_Carregado_Parado_Selecionado_Transparente_Real: TImage;
    imgPNG_Direita_Carregando_Parado: TImage;
    imgPNG_Direita_Carregando_Parado_Transparente: TImage;
    imgPNG_Direita_Carregando_Parado_Selecionado: TImage;
    imgPNG_Direita_Carregando_Parado_Selecionado_Transparente: TImage;
    imgPNG_Direita_Carregando_Parado_Real: TImage;
    imgPNG_Direita_Carregando_Parado_Transparente_Real: TImage;
    imgPNG_Direita_Carregando_Parado_Selecionado_Real: TImage;
    imgPNG_Carregando_Parado_Selecionado_Transparente_Real: TImage;
    ImgColhedora: TImage;
    ImgReboque: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ImagensMonitoramentoTrafego: TF_ImagensMonitoramentoTrafego;

implementation

{$R *.dfm}

end.