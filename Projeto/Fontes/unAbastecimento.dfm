object frmAbastecimento: TfrmAbastecimento
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Abastecimentos'
  ClientHeight = 557
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 38
    Height = 15
    Caption = 'Bomba'
  end
  object Label1: TLabel
    Left = 24
    Top = 75
    Width = 62
    Height = 15
    Caption = 'Quantidade'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 26
    Height = 15
    Caption = 'Valor'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 24
    Top = 224
    Width = 25
    Height = 15
    Caption = 'Total'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 24
    Top = 173
    Width = 44
    Height = 15
    Caption = 'Imposto'
    FocusControl = DBEdit4
  end
  object btGravar: TSpeedButton
    Left = 316
    Top = 144
    Width = 129
    Height = 65
    Caption = 'Gravar'
    Visible = False
    OnClick = btGravarClick
  end
  object btIncluir: TSpeedButton
    Left = 316
    Top = 144
    Width = 129
    Height = 65
    Caption = 'Inserir'
    OnClick = btIncluirClick
  end
  object btExcluir: TSpeedButton
    Left = 459
    Top = 144
    Width = 129
    Height = 65
    Caption = 'Excluir'
  end
  object btCancelar: TSpeedButton
    Left = 459
    Top = 144
    Width = 129
    Height = 65
    Caption = 'Cancelar'
    Visible = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 37
    Width = 281
    Height = 23
    DataField = 'IDBOMBATANQUE'
    DataSource = dsAbastecimentoBombaTanque
    KeyField = 'ID'
    ListField = 'BOMBA'
    ListSource = dsBomba
    TabOrder = 0
    OnExit = DBLookupComboBox1Exit
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 96
    Width = 154
    Height = 23
    DataField = 'QUANTIDADE'
    DataSource = dsAbastecimentoBombaTanque
    TabOrder = 1
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 144
    Width = 154
    Height = 23
    DataField = 'VALOR_UNITARIO'
    DataSource = dsAbastecimentoBombaTanque
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 240
    Width = 154
    Height = 23
    DataField = 'TOTAL'
    DataSource = dsAbastecimentoBombaTanque
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 192
    Width = 154
    Height = 23
    DataField = 'IMPOSTO'
    DataSource = dsBomba
    ReadOnly = True
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 290
    Width = 620
    Height = 231
    TabStop = False
    DataSource = dsAbastecimentoBombaTanque
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BOMBA'
        Title.Caption = 'Bomba'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total'
        Width = 100
        Visible = True
      end>
  end
  object dsAbastecimentoBombaTanque: TDataSource
    DataSet = DM.qAbastecimentoBombaTanque
    OnStateChange = dsAbastecimentoBombaTanqueStateChange
    Left = 336
    Top = 240
  end
  object dsBomba: TDataSource
    DataSet = DM.qAbastBomba
    Left = 360
    Top = 32
  end
end
