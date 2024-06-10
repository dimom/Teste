unit unCadCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadCombustivel = class(TForm)
    btIncluir: TSpeedButton;
    btExcluir: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsCombustivel: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    procedure dsCombustivelStateChange(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCombustivel: TfrmCadCombustivel;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCadCombustivel.btCancelarClick(Sender: TObject);
begin
  DM.qAbastecimentos.CancelUpdates;
end;

procedure TfrmCadCombustivel.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir realmente este registro?', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DM.qAbastecimentos.Delete;
      DM.qAbastecimentos.ApplyUpdates;
      ShowMessage('Registro excluído com sucesso!');
      except
      on e: Exception do
        ShowMessage('Erro ao excluir registro: '+ e.Message);
    end;
  end;
end;

procedure TfrmCadCombustivel.btGravarClick(Sender: TObject);
begin
  try
    DM.qAbastecimentos.Post;
    DM.qAbastecimentos.ApplyUpdates;
    DM.qAbastecimentos.CommitUpdates;
    DM.qAbastecimentos.Close;
    DM.qAbastecimentos.Open;
    ShowMessage('Registro salvo com sucesso!');
    except
    on e: Exception do
      ShowMessage('Erro ao salvar registro: '+ e.Message);
  end;
end;

procedure TfrmCadCombustivel.btIncluirClick(Sender: TObject);
begin
  DM.qAbastecimentos.Append;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCombustivel.dsCombustivelStateChange(Sender: TObject);
begin
  btIncluir.Visible := DM.qAbastecimentos.State in [dsBrowse];
  btExcluir.Visible := DM.qAbastecimentos.State in [dsBrowse];
  btGravar.Visible := DM.qAbastecimentos.State in [dsEdit, dsInsert];
  btCancelar.Visible := DM.qAbastecimentos.State in [dsEdit, dsInsert];
end;

procedure TfrmCadCombustivel.FormShow(Sender: TObject);
begin
  DM.qAbastecimentos.Close;
  DM.qAbastecimentos.Open;
end;

end.
