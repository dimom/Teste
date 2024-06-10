unit unAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmAbastecimento = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsAbastecimentoBombaTanque: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    dsBomba: TDataSource;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    btGravar: TSpeedButton;
    btIncluir: TSpeedButton;
    DBGrid1: TDBGrid;
    btExcluir: TSpeedButton;
    btCancelar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure dsAbastecimentoBombaTanqueStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmAbastecimento.btGravarClick(Sender: TObject);
begin
  try
    if DM.qAbastecimentoBombaTanque.RecordCount <= 0 then
    begin
      DM.qAbastecimento.Append;
      DM.qAbastecimentoDATA.AsDateTime := Date+Time;
      DM.qAbastecimento.Post;
      DM.qAbastecimento.ApplyUpdates;
      DM.qAbastecimento.CommitUpdates;
    end;
    DM.qAbastecimentoBombaTanqueIDABASTECIMENTO.AsInteger := DM.RetornaUltimoAbastecimento;
    DM.qAbastecimentoBombaTanque.Post;
    DM.qAbastecimentoBombaTanque.ApplyUpdates;
    DM.qAbastecimentoBombaTanque.CommitUpdates;
    if MessageDlg('Deseja ir para o próximo abastecimento?', mtInformation, [mbOk, mbNo], 0) = mrYes then
    begin
      DM.qAbastecimentoBombaTanque.Close;
      DM.qAbastecimentoBombaTanque.Open;
    end;
    ShowMessage('Registro salvo com sucesso!');
    except
    on e: Exception do
      ShowMessage('Erro ao salvar registro: '+ e.Message);
  end;
end;

procedure TfrmAbastecimento.btIncluirClick(Sender: TObject);
begin
  DM.qAbastecimentoBombaTanque.Append;
  DBLookupComboBox1.SetFocus;
end;

procedure TfrmAbastecimento.DBEdit1Exit(Sender: TObject);
begin
    DM.qAbastecimentoBombaTanqueTOTAL.AsFloat :=
     (DM.qAbastecimentoBombaTanqueQUANTIDADE.AsFloat * DM.qAbastecimentoBombaTanqueVALOR_UNITARIO.AsFloat) +
     (DM.qAbastecimentoBombaTanqueQUANTIDADE.AsFloat * DM.qAbastecimentoBombaTanqueVALOR_UNITARIO.AsFloat) * (DM.qAbastBombaIMPOSTO.AsFloat / 100);
end;

procedure TfrmAbastecimento.DBLookupComboBox1Exit(Sender: TObject);
begin
  DM.qAbastecimentoBombaTanqueVALOR_UNITARIO.AsFloat := DM.qAbastBombaVALOR_UNITARIO.AsFloat;
end;

procedure TfrmAbastecimento.dsAbastecimentoBombaTanqueStateChange(
  Sender: TObject);
begin
  btIncluir.Visible := DM.qAbastecimentoBombaTanque.State in [dsBrowse];
  btExcluir.Visible := DM.qAbastecimentoBombaTanque.State in [dsBrowse];
  btGravar.Visible := DM.qAbastecimentoBombaTanque.State in [dsEdit, dsInsert];
  btCancelar.Visible := DM.qAbastecimentoBombaTanque.State in [dsEdit, dsInsert];
end;

procedure TfrmAbastecimento.FormShow(Sender: TObject);
begin
  DM.qAbastecimentoBombaTanque.Close;
  DM.qAbastecimentoBombaTanque.Open;
  DM.qAbastBomba.Close;
  DM.qAbastBomba.Open;
  DM.qAbastecimento.Close;
  DM.qAbastecimento.Open;
end;

end.
