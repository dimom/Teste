object DM: TDM
  Height = 509
  Width = 640
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\ProjetoFortes\BaseDados\ABASTECIMENTOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object FDTransaction: TFDTransaction
    Options.Isolation = xiSnapshot
    Connection = FDConn
    Left = 64
    Top = 32
  end
  object qAbastecimentos: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      '  from combustivel'
      'order by descricao')
    Left = 56
    Top = 184
    object qAbastecimentosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qAbastecimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object qAbastecimentosIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
    end
    object qAbastecimentosVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
  end
  object qTanque: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      '  from tanque'
      'order by descricao')
    Left = 56
    Top = 128
    object qTanqueID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qTanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object qTanqueIDCOMBUSTIVEL: TIntegerField
      FieldName = 'IDCOMBUSTIVEL'
      Origin = 'IDCOMBUSTIVEL'
    end
  end
  object qBomba: TFDQuery
    AfterScroll = qBombaAfterScroll
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      '  from bomba'
      'order by descricao')
    Left = 56
    Top = 240
    object qBombaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qBombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
  end
  object qBombaTanque: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      '  from bomba_tanque'
      ' where idbomba = :idbomba')
    Left = 56
    Top = 304
    ParamData = <
      item
        Name = 'IDBOMBA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qBombaTanqueID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qBombaTanqueIDTANQUE: TIntegerField
      FieldName = 'IDTANQUE'
      Origin = 'IDTANQUE'
    end
    object qBombaTanqueIDBOMBA: TIntegerField
      FieldName = 'IDBOMBA'
      Origin = 'IDBOMBA'
    end
    object qBombaTanqueTANQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'TANQUE'
      LookupDataSet = qTanque
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'IDTANQUE'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object qAbastecimento: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      '  from abastecimento'
      'where id = :id')
    Left = 56
    Top = 368
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qAbastecimentoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qAbastecimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object qAbastecimentoBombaTanque: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      '  from abastecimento_bomba_tanque'
      ' where id = :id')
    Left = 56
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qAbastecimentoBombaTanqueID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qAbastecimentoBombaTanqueIDABASTECIMENTO: TIntegerField
      FieldName = 'IDABASTECIMENTO'
      Origin = 'IDABASTECIMENTO'
    end
    object qAbastecimentoBombaTanqueIDBOMBATANQUE: TIntegerField
      FieldName = 'IDBOMBATANQUE'
      Origin = 'IDBOMBATANQUE'
    end
    object qAbastecimentoBombaTanqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qAbastecimentoBombaTanqueVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object qAbastecimentoBombaTanqueTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object qAbastecimentoBombaTanqueBOMBA: TStringField
      FieldKind = fkLookup
      FieldName = 'BOMBA'
      LookupDataSet = qAbastBomba
      LookupKeyFields = 'ID'
      LookupResultField = 'BOMBA'
      KeyFields = 'IDBOMBATANQUE'
      Size = 60
      Lookup = True
    end
  end
  object qAbastBomba: TFDQuery
    AfterScroll = qBombaAfterScroll
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      
        'select b.id, a.descricao||'#39' '#39'||c.descricao||'#39' '#39'||d.descricao bom' +
        'ba, d.imposto, d.valor_unitario'
      '  from bomba a, bomba_tanque b, tanque c, combustivel d'
      ' where a.id = b.idbomba'
      '   and b.idtanque = c.id'
      '   and c.idcombustivel = d.id'
      'order by 1')
    Left = 280
    Top = 376
    object qAbastBombaBOMBA: TStringField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      Size = 182
    end
    object qAbastBombaIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
    end
    object qAbastBombaVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object qAbastBombaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qAux: TFDQuery
    AfterScroll = qBombaAfterScroll
    CachedUpdates = True
    Connection = FDConn
    Left = 288
    Top = 272
  end
  object qRelAbastecimento: TFDQuery
    AfterScroll = qBombaAfterScroll
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      
        'select cast(a.data as date) data, d.descricao tanque, e.descrica' +
        'o bomba, sum(b.total) total'
      
        '  from abastecimento a, abastecimento_bomba_tanque b, bomba_tanq' +
        'ue c, tanque d, bomba e'
      ' where a.id = b.idabastecimento'
      '   and b.idbombatanque = c.id'
      '   and c.idtanque = d.id'
      '   and c.idbomba = e.id'
      '   and cast(a.data as date)  between :dtini and :dtfim '
      ' group by data, d.descricao, e.descricao')
    Left = 408
    Top = 208
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qRelAbastecimentoTANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object qRelAbastecimentoBOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOMBA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object qRelAbastecimentoTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object qRelAbastecimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
end
