unit U_CheckList_Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_TemplateConsulta, RzButton,
  Vcl.ExtCtrls, RzPanel, RzSplit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, Ora, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TF_CheckList_Sistema = class(TF_TemplateConsulta)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QR_CheckList: TOraQuery;
    DS_CheckList: TOraDataSource;
    QR_CheckListGRUPO: TStringField;
    QR_CheckListREGIONAL: TStringField;
    QR_CheckListUNIDADE: TStringField;
    QR_CheckListPOSSUIREFERENCIAESPACIAL: TStringField;
    QR_CheckListPOSSUIMAPAUNIDADE: TStringField;
    cxGrid1DBTableView1GRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1REGIONAL: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1POSSUIREFERENCIAESPACIAL: TcxGridDBColumn;
    cxGrid1DBTableView1POSSUIMAPAUNIDADE: TcxGridDBColumn;
    btnAtualizar: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CheckList_Sistema: TF_CheckList_Sistema;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_CheckList_Sistema.btnAtualizarClick(
  Sender: TObject);
begin
  inherited;
  QR_CheckList.Close;
  QR_CheckList.Open;
end;

procedure TF_CheckList_Sistema.FormCreate(Sender: TObject);
begin
  Top := 1;
  Left := 1;

  inherited;
  btnAtualizar.Click;
end;

end.
