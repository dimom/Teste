unit unRelAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmRelAbastecimento = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    dsRelAbastecimento: TDataSource;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    RLDBResult2: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    dtIni: TDateTimePicker;
    dtFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btGravar: TSpeedButton;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAbastecimento: TfrmRelAbastecimento;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmRelAbastecimento.btGravarClick(Sender: TObject);
begin
  DM.qRelAbastecimento.Close;
  DM.qRelAbastecimento.Params[0].AsDate := dtIni.Date;
  DM.qRelAbastecimento.Params[1].AsDate := dtFim.Date;
  DM.qRelAbastecimento.Open;

  RLReport1.PreviewModal; 
end;

end.
