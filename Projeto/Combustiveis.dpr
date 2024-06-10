program Combustiveis;

uses
  Vcl.Forms,
  unPrincipal in 'Fontes\unPrincipal.pas' {frmPrincipal},
  unCadCombustivel in 'Fontes\unCadCombustivel.pas' {frmCadCombustivel},
  unDM in 'Fontes\unDM.pas' {DM: TDataModule},
  unCadTanque in 'Fontes\unCadTanque.pas' {frmCadTanque},
  unCadBomba in 'Fontes\unCadBomba.pas' {frmCadBomba},
  unAbastecimento in 'Fontes\unAbastecimento.pas' {frmAbastecimento},
  unRelAbastecimento in 'Fontes\unRelAbastecimento.pas' {frmRelAbastecimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
