object dmMain: TdmMain
  OldCreateOrder = False
  Height = 293
  Width = 478
  object Conn: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    VendorLib = 'fbclient.dll'
    Left = 432
    Top = 8
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 176
    Top = 88
  end
  object SQLDataSet1: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    Params = <>
    Left = 224
    Top = 128
  end
  object ds2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 184
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 264
    Top = 200
  end
end
