object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Combust'#237'veis'
  ClientHeight = 508
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poMainFormCenter
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 72
    Top = 72
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Combustvel1: TMenuItem
        Caption = 'Combust'#237'vel'
        OnClick = Combustvel1Click
      end
      object Bomba1: TMenuItem
        Caption = 'Bomba'
        OnClick = Bomba1Click
      end
      object aque1: TMenuItem
        Caption = 'Tanque'
        OnClick = aque1Click
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      OnClick = Movimentaes1Click
    end
    object Reltorios1: TMenuItem
      Caption = 'Rel'#225'torios'
      OnClick = Reltorios1Click
    end
  end
end
