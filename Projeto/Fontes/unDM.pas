unit unDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    FDTransaction: TFDTransaction;
    qAbastecimentos: TFDQuery;
    qAbastecimentosID: TIntegerField;
    qAbastecimentosDESCRICAO: TStringField;
    qAbastecimentosIMPOSTO: TFloatField;
    qAbastecimentosVALOR_UNITARIO: TFloatField;
    qTanque: TFDQuery;
    qTanqueID: TIntegerField;
    qTanqueDESCRICAO: TStringField;
    qTanqueIDCOMBUSTIVEL: TIntegerField;
    qBomba: TFDQuery;
    qBombaID: TIntegerField;
    qBombaDESCRICAO: TStringField;
    qBombaTanque: TFDQuery;
    qBombaTanqueID: TIntegerField;
    qBombaTanqueIDTANQUE: TIntegerField;
    qBombaTanqueIDBOMBA: TIntegerField;
    qBombaTanqueTANQUE: TStringField;
    qAbastecimento: TFDQuery;
    qAbastecimentoBombaTanque: TFDQuery;
    qAbastecimentoBombaTanqueID: TIntegerField;
    qAbastecimentoBombaTanqueIDABASTECIMENTO: TIntegerField;
    qAbastecimentoBombaTanqueIDBOMBATANQUE: TIntegerField;
    qAbastecimentoBombaTanqueQUANTIDADE: TFloatField;
    qAbastecimentoBombaTanqueVALOR_UNITARIO: TFloatField;
    qAbastecimentoBombaTanqueTOTAL: TFloatField;
    qAbastecimentoID: TIntegerField;
    qAbastecimentoDATA: TSQLTimeStampField;
    qAbastBomba: TFDQuery;
    qAbastBombaBOMBA: TStringField;
    qAbastBombaIMPOSTO: TFloatField;
    qAbastBombaVALOR_UNITARIO: TFloatField;
    qAbastBombaID: TIntegerField;
    qAbastecimentoBombaTanqueBOMBA: TStringField;
    qAux: TFDQuery;
    qRelAbastecimento: TFDQuery;
    qRelAbastecimentoTANQUE: TStringField;
    qRelAbastecimentoBOMBA: TStringField;
    qRelAbastecimentoTOTAL: TFloatField;
    qRelAbastecimentoDATA: TDateField;
    procedure qBombaAfterScroll(DataSet: TDataSet);
  private

  public
    function RetornaUltimoAbastecimento: Integer;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.qBombaAfterScroll(DataSet: TDataSet);
begin
  qBombaTanque.Close;
  qBombaTanque.Params[0].AsInteger := qBombaID.AsInteger;
  qBombaTanque.Open;
end;

function TDM.RetornaUltimoAbastecimento: Integer;
begin
  Result := 0;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Add('select max(id) ultimo from abastecimento');
  qAux.Open;
  if not qAux.IsEmpty then
    Result := qAux.FieldByName('ultimo').AsInteger;
end;

end.
