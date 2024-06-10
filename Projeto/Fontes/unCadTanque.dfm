object frmCadTanque: TfrmCadTanque
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de tanque'
  ClientHeight = 454
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 67
    Height = 15
    Caption = 'Combust'#237'vel'
  end
  object btIncluir: TSpeedButton
    Left = 160
    Top = 360
    Width = 129
    Height = 65
    Caption = 'Inserir'
    OnClick = btIncluirClick
  end
  object btExcluir: TSpeedButton
    Left = 304
    Top = 360
    Width = 129
    Height = 65
    Caption = 'Excluir'
    OnClick = btExcluirClick
  end
  object btGravar: TSpeedButton
    Left = 160
    Top = 360
    Width = 129
    Height = 65
    Caption = 'Gravar'
    Visible = False
    OnClick = btGravarClick
  end
  object btCancelar: TSpeedButton
    Left = 304
    Top = 360
    Width = 129
    Height = 65
    Caption = 'Cancelar'
    Visible = False
    OnClick = btCancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 27
    Width = 577
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = dsTanque
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 112
    Width = 577
    Height = 233
    TabStop = False
    DataSource = dsTanque
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 200
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 77
    Width = 281
    Height = 23
    DataField = 'IDCOMBUSTIVEL'
    DataSource = dsTanque
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = dsCombustivel
    TabOrder = 2
  end
  object dsTanque: TDataSource
    DataSet = DM.qTanque
    OnStateChange = dsTanqueStateChange
    Left = 576
    Top = 72
  end
  object dsCombustivel: TDataSource
    DataSet = DM.qAbastecimentos
    Left = 572
    Top = 136
  end
end
