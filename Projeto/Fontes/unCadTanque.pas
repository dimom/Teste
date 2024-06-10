unit unCadTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmCadTanque = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsTanque: TDataSource;
    Label2: TLabel;
    btIncluir: TSpeedButton;
    btExcluir: TSpeedButton;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    dsCombustivel: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dsTanqueStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTanque: TfrmCadTanque;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCadTanque.btCancelarClick(Sender: TObject);
begin
  DM.qTanque.CancelUpdates;
end;

procedure TfrmCadTanque.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir realmente este registro?', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DM.qTanque.Delete;
      DM.qTanque.ApplyUpdates;
      ShowMessage('Registro excluído com sucesso!');
      except
      on e: Exception do
        ShowMessage('Erro ao excluir registro: '+ e.Message);
    end;
  end;
end;

procedure TfrmCadTanque.btGravarClick(Sender: TObject);
begin
  try
    DM.qTanque.Post;
    DM.qTanque.ApplyUpdates;
    DM.qTanque.CommitUpdates;
    DM.qTanque.Close;
    DM.qTanque.Open;
    ShowMessage('Registro salvo com sucesso!');
    except
    on e: Exception do
      ShowMessage('Erro ao salvar registro: '+ e.Message);
  end;
end;

procedure TfrmCadTanque.btIncluirClick(Sender: TObject);
begin
  DM.qTanque.Append;
  DBEdit1.SetFocus;
end;

procedure TfrmCadTanque.dsTanqueStateChange(Sender: TObject);
begin
  btIncluir.Visible := DM.qTanque.State in [dsBrowse];
  btExcluir.Visible := DM.qTanque.State in [dsBrowse];
  btGravar.Visible := DM.qTanque.State in [dsEdit, dsInsert];
  btCancelar.Visible := DM.qTanque.State in [dsEdit, dsInsert];
end;

procedure TfrmCadTanque.FormShow(Sender: TObject);
begin
  DM.qAbastecimentos.Close;
  DM.qAbastecimentos.Open;
  DM.qTanque.Close;
  DM.qTanque.Open;
end;

end.
