object frmCadCombustivel: TfrmCadCombustivel
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Cadastro de combut'#237'vel'
  ClientHeight = 470
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object btIncluir: TSpeedButton
    Left = 216
    Top = 384
    Width = 129
    Height = 65
    Caption = 'Inserir'
    OnClick = btIncluirClick
  end
  object btExcluir: TSpeedButton
    Left = 360
    Top = 384
    Width = 129
    Height = 65
    Caption = 'Excluir'
    OnClick = btExcluirClick
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 54
    Height = 15
    Caption = 'Descri'#231#227'o '
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 120
    Width = 57
    Height = 15
    Caption = '% Imposto'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 26
    Height = 15
    Caption = 'Valor'
    FocusControl = DBEdit3
  end
  object btGravar: TSpeedButton
    Left = 216
    Top = 384
    Width = 129
    Height = 65
    Caption = 'Gravar'
    Visible = False
    OnClick = btGravarClick
  end
  object btCancelar: TSpeedButton
    Left = 360
    Top = 384
    Width = 129
    Height = 65
    Caption = 'Cancelar'
    Visible = False
    OnClick = btCancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 29
    Width = 648
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = dsCombustivel
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 136
    Width = 154
    Height = 23
    DataField = 'IMPOSTO'
    DataSource = dsCombustivel
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 80
    Width = 154
    Height = 23
    DataField = 'VALOR_UNITARIO'
    DataSource = dsCombustivel
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 681
    Height = 194
    TabStop = False
    DataSource = dsCombustivel
    TabOrder = 3
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
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNITARIO'
        Title.Caption = 'Valor'
        Width = 150
        Visible = True
      end>
  end
  object dsCombustivel: TDataSource
    DataSet = DM.qAbastecimentos
    OnStateChange = dsCombustivelStateChange
    Left = 632
    Top = 80
  end
end
