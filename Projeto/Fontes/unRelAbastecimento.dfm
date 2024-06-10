object frmRelAbastecimento: TfrmRelAbastecimento
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de abastecimentos'
  ClientHeight = 135
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 35
    Width = 74
    Height = 15
    Caption = 'Filtro por data'
  end
  object Label2: TLabel
    Left = 148
    Top = 59
    Width = 6
    Height = 15
    Caption = 'a'
  end
  object btGravar: TSpeedButton
    Left = 304
    Top = 35
    Width = 129
    Height = 65
    Caption = 'Imprimir'
    OnClick = btGravarClick
  end
  object RLReport1: TRLReport
    Left = 118
    Top = 184
    Width = 794
    Height = 1123
    DataSource = dsRelAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLGroup1: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 131
      DataFields = 'DATA'
      object RLBand1: TRLBand
        Left = 0
        Top = 50
        Width = 718
        Height = 24
        object RLDBText2: TRLDBText
          Left = 91
          Top = 6
          Width = 182
          Height = 16
          AutoSize = False
          DataField = 'TANQUE'
          DataSource = dsRelAbastecimento
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 275
          Top = 6
          Width = 214
          Height = 16
          AutoSize = False
          DataField = 'BOMBA'
          DataSource = dsRelAbastecimento
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 495
          Top = 6
          Width = 44
          Height = 16
          DataField = 'TOTAL'
          DataSource = dsRelAbastecimento
          Text = ''
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 25
        BandType = btColumnHeader
        object RLLabel2: TRLLabel
          Left = 91
          Top = 3
          Width = 52
          Height = 16
          Caption = 'Tanque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 275
          Top = 3
          Width = 49
          Height = 16
          Caption = 'Bomba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 491
          Top = 3
          Width = 38
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 74
        Width = 718
        Height = 24
        BandType = btColumnFooter
        object RLDBResult1: TRLDBResult
          Left = 495
          Top = 2
          Width = 185
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TOTAL'
          DataSource = dsRelAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'Total por data: '
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btColumnHeader
        object RLLabel5: TRLLabel
          Left = 3
          Top = 4
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 40
          Top = 4
          Width = 82
          Height = 16
          AutoSize = False
          DataField = 'DATA'
          DataSource = dsRelAbastecimento
          Text = ''
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 24
      BandType = btColumnFooter
      object RLDBResult2: TRLDBResult
        Left = 495
        Top = 1
        Width = 165
        Height = 18
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'TOTAL'
        DataSource = dsRelAbastecimento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total geral: '
      end
    end
  end
  object dtIni: TDateTimePicker
    Left = 24
    Top = 56
    Width = 113
    Height = 23
    Date = 45453.000000000000000000
    Time = 0.517129328705777900
    TabOrder = 1
  end
  object dtFim: TDateTimePicker
    Left = 164
    Top = 56
    Width = 113
    Height = 23
    Date = 45453.000000000000000000
    Time = 0.517129328705777900
    TabOrder = 2
  end
  object dsRelAbastecimento: TDataSource
    DataSet = DM.qRelAbastecimento
    Left = 56
    Top = 256
  end
end
