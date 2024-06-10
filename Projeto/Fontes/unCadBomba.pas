unit unCadBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmCadBomba = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsBomba: TDataSource;
    btIncluir: TSpeedButton;
    btExcluir: TSpeedButton;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsBombaTanque: TDataSource;
    btIncluirT: TSpeedButton;
    btExcluirT: TSpeedButton;
    btGravarT: TSpeedButton;
    btCancelarT: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    dsTanque: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btCancelarTClick(Sender: TObject);
    procedure btGravarTClick(Sender: TObject);
    procedure btIncluirTClick(Sender: TObject);
    procedure btExcluirTClick(Sender: TObject);
    procedure dsBombaStateChange(Sender: TObject);
    procedure dsBombaTanqueStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBomba: TfrmCadBomba;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCadBomba.btCancelarClick(Sender: TObject);
begin
  DM.qBomba.CancelUpdates;
end;

procedure TfrmCadBomba.btCancelarTClick(Sender: TObject);
begin
  DM.qBombaTanque.CancelUpdates;
end;

procedure TfrmCadBomba.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir realmente este registro?', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DM.qBomba.Delete;
      DM.qBomba.ApplyUpdates;
      ShowMessage('Registro excluído com sucesso!');
      except
      on e: Exception do
        ShowMessage('Erro ao excluir registro: '+ e.Message);
    end;
  end;
end;

procedure TfrmCadBomba.btExcluirTClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir realmente este registro?', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DM.qBombaTanque.Delete;
      DM.qBombaTanque.ApplyUpdates;
      ShowMessage('Registro excluído com sucesso!');
      except
      on e: Exception do
        ShowMessage('Erro ao excluir registro: '+ e.Message);
    end;
  end;
end;

procedure TfrmCadBomba.btGravarClick(Sender: TObject);
begin
  try
    DM.qBomba.Post;
    DM.qBomba.ApplyUpdates;
    DM.qBomba.CommitUpdates;
    DM.qBomba.Close;
    DM.qBomba.Open;
    ShowMessage('Registro salvo com sucesso!');
    except
    on e: Exception do
      ShowMessage('Erro ao salvar registro: '+ e.Message);
  end;
end;

procedure TfrmCadBomba.btGravarTClick(Sender: TObject);
begin
  try
    DM.qBombaTanqueIDBOMBA.AsInteger := DM.qBombaID.AsInteger;
    DM.qBombaTanque.Post;
    DM.qBombaTanque.ApplyUpdates;
    DM.qBombaTanque.CommitUpdates;
    DM.qBombaTanque.Close;
    DM.qBombaTanque.Open;
    ShowMessage('Registro salvo com sucesso!');
    except
    on e: Exception do
      ShowMessage('Erro ao salvar registro: '+ e.Message);
  end;
end;

procedure TfrmCadBomba.btIncluirClick(Sender: TObject);
begin
  DM.qBomba.Append;
  DBEdit1.SetFocus;
end;

procedure TfrmCadBomba.btIncluirTClick(Sender: TObject);
begin
  DM.qBombaTanque.Append;
  DBEdit1.SetFocus;
end;

procedure TfrmCadBomba.dsBombaStateChange(Sender: TObject);
begin
  btIncluir.Visible := DM.qBomba.State in [dsBrowse];
  btExcluir.Visible := DM.qBomba.State in [dsBrowse];
  btGravar.Visible := DM.qBomba.State in [dsEdit, dsInsert];
  btCancelar.Visible := DM.qBomba.State in [dsEdit, dsInsert];
end;

procedure TfrmCadBomba.dsBombaTanqueStateChange(Sender: TObject);
begin
  btIncluirT.Visible := DM.qBombaTanque.State in [dsBrowse];
  btExcluirT.Visible := DM.qBombaTanque.State in [dsBrowse];
  btGravarT.Visible := DM.qBombaTanque.State in [dsEdit, dsInsert];
  btCancelarT.Visible := DM.qBombaTanque.State in [dsEdit, dsInsert];
end;

procedure TfrmCadBomba.FormShow(Sender: TObject);
begin
  DM.qTanque.Close;
  DM.qTanque.Open;
  DM.qBomba.Close;
  DM.qBomba.Open;
  DM.qBombaTanque.Close;
  DM.qBombaTanque.Open;
end;

end.
