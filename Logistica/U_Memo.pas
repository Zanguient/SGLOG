unit U_Memo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TF_Memo = class(TForm)
    Panel1: TPanel;
    b_ok: TBitBtn;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Memo: TF_Memo;

implementation


{$R *.DFM}

procedure TF_Memo.FormShow(Sender: TObject);
begin
   Memo1.SelectAll;
end;

end.
