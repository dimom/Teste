unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentaes1: TMenuItem;
    Reltorios1: TMenuItem;
    Combustvel1: TMenuItem;
    Bomba1: TMenuItem;
    aque1: TMenuItem;
    procedure Combustvel1Click(Sender: TObject);
    procedure aque1Click(Sender: TObject);
    procedure Bomba1Click(Sender: TObject);
    procedure Movimentaes1Click(Sender: TObject);
    procedure Reltorios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unCadCombustivel, unCadTanque, unCadBomba, unAbastecimento,
  unRelAbastecimento;

procedure TfrmPrincipal.aque1Click(Sender: TObject);
begin
  frmCadTanque := TfrmCadTanque.Create(Application);
  frmCadTanque.ShowModal;
end;

procedure TfrmPrincipal.Bomba1Click(Sender: TObject);
begin
  frmCadBomba := TfrmCadBomba.Create(Application);
  frmCadBomba.ShowModal;
end;

procedure TfrmPrincipal.Combustvel1Click(Sender: TObject);
begin
  frmCadCombustivel := TfrmCadCombustivel.Create(Application);
  frmCadCombustivel.ShowModal;
end;

procedure TfrmPrincipal.Movimentaes1Click(Sender: TObject);
begin
  frmAbastecimento := TfrmAbastecimento.Create(Application);
  frmAbastecimento.ShowModal;
end;

procedure TfrmPrincipal.Reltorios1Click(Sender: TObject);
begin
  frmRelAbastecimento := TfrmRelAbastecimento.Create(Application);
  frmRelAbastecimento.ShowModal;
end;

end.
