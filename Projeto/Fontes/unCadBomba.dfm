object frmCadBomba: TfrmCadBomba
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de bomba'
  ClientHeight = 632
  ClientWidth = 624
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
  object btIncluir: TSpeedButton
    Left = 168
    Top = 177
    Width = 129
    Height = 65
    Caption = 'Inserir'
    OnClick = btIncluirClick
  end
  object btExcluir: TSpeedButton
    Left = 312
    Top = 177
    Width = 129
    Height = 65
    Caption = 'Excluir'
    OnClick = btExcluirClick
  end
  object btGravar: TSpeedButton
    Left = 168
    Top = 177
    Width = 129
    Height = 65
    Caption = 'Gravar'
    Visible = False
    OnClick = btGravarClick
  end
  object btCancelar: TSpeedButton
    Left = 312
    Top = 177
    Width = 129
    Height = 65
    Caption = 'Cancelar'
    Visible = False
    OnClick = btCancelarClick
  end
  object btIncluirT: TSpeedButton
    Left = 164
    Top = 521
    Width = 129
    Height = 65
    Caption = 'Inserir'
    OnClick = btIncluirTClick
  end
  object btExcluirT: TSpeedButton
    Left = 308
    Top = 521
    Width = 129
    Height = 65
    Caption = 'Excluir'
    OnClick = btExcluirTClick
  end
  object btGravarT: TSpeedButton
    Left = 164
    Top = 521
    Width = 129
    Height = 65
    Caption = 'Gravar'
    Visible = False
    OnClick = btGravarTClick
  end
  object btCancelarT: TSpeedButton
    Left = 308
    Top = 521
    Width = 129
    Height = 65
    Caption = 'Cancelar'
    Visible = False
    OnClick = btCancelarTClick
  end
  object Label2: TLabel
    Left = 8
    Top = 336
    Width = 38
    Height = 15
    Caption = 'Tanque'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 29
    Width = 577
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = dsBomba
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 58
    Width = 577
    Height = 113
    TabStop = False
    DataSource = dsBomba
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
  object DBGrid2: TDBGrid
    Left = 8
    Top = 402
    Width = 577
    Height = 113
    TabStop = False
    DataSource = dsBombaTanque
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TANQUE'
        Title.Caption = 'Descri'#231#227'o'
        Width = 200
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 357
    Width = 281
    Height = 23
    DataField = 'IDTANQUE'
    DataSource = dsBombaTanque
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = dsTanque
    TabOrder = 3
  end
  object dsBomba: TDataSource
    DataSet = DM.qBomba
    OnStateChange = dsBombaStateChange
    Left = 568
    Top = 104
  end
  object dsBombaTanque: TDataSource
    DataSet = DM.qBombaTanque
    OnStateChange = dsBombaTanqueStateChange
    Left = 552
    Top = 520
  end
  object dsTanque: TDataSource
    DataSet = DM.qTanque
    Left = 544
    Top = 344
  end
end
