object dm: Tdm
  OldCreateOrder = False
  Height = 424
  Width = 488
  object tbArac: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ARACTAKIP'
      'SET '
      '    KARTKODU = :KARTKODU,'
      '    GELISTARIHI = :GELISTARIHI,'
      '    MUSTERIADI = :MUSTERIADI,'
      '    PLAKANO = :PLAKANO,'
      '    ADRES = :ADRES,'
      '    TELEFON = :TELEFON,'
      '    ARACINSI = :ARACINSI,'
      '    GELDIGIKM = :GELDIGIKM,'
      '    GELECEGIKM = :GELECEGIKM,'
      '    GELISKANBER = :GELISKANBER,'
      '    CIKISKANBER = :CIKISKANBER,'
      '    GELISRKASTE = :GELISRKASTE,'
      '    CIKISRKASTE = :CIKISRKASTE,'
      '    GELISLKASTE = :GELISLKASTE,'
      '    CIKISLKASTE = :CIKISLKASTE,'
      '    GELISROTAYAR = :GELISROTAYAR,'
      '    CIKISROTAYAR = :CIKISROTAYAR,'
      '    ARACINAYARLASTIK = :ARACINAYARLASTIK,'
      '    TEKNISYEN = :TEKNISYEN,'
      '    NOTLAR = :NOTLAR'
      'WHERE'
      '    SN = :OLD_SN'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ARACTAKIP'
      'WHERE'
      '        SN = :OLD_SN'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ARACTAKIP('
      '    SN,'
      '    KARTKODU,'
      '    GELISTARIHI,'
      '    MUSTERIADI,'
      '    PLAKANO,'
      '    ADRES,'
      '    TELEFON,'
      '    ARACINSI,'
      '    GELDIGIKM,'
      '    GELECEGIKM,'
      '    GELISKANBER,'
      '    CIKISKANBER,'
      '    GELISRKASTE,'
      '    CIKISRKASTE,'
      '    GELISLKASTE,'
      '    CIKISLKASTE,'
      '    GELISROTAYAR,'
      '    CIKISROTAYAR,'
      '    ARACINAYARLASTIK,'
      '    TEKNISYEN,'
      '    NOTLAR'
      ')'
      'VALUES('
      '    :SN,'
      '    :KARTKODU,'
      '    :GELISTARIHI,'
      '    :MUSTERIADI,'
      '    :PLAKANO,'
      '    :ADRES,'
      '    :TELEFON,'
      '    :ARACINSI,'
      '    :GELDIGIKM,'
      '    :GELECEGIKM,'
      '    :GELISKANBER,'
      '    :CIKISKANBER,'
      '    :GELISRKASTE,'
      '    :CIKISRKASTE,'
      '    :GELISLKASTE,'
      '    :CIKISLKASTE,'
      '    :GELISROTAYAR,'
      '    :CIKISROTAYAR,'
      '    :ARACINAYARLASTIK,'
      '    :TEKNISYEN,'
      '    :NOTLAR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SN,'
      '    KARTKODU,'
      '    GELISTARIHI,'
      '    MUSTERIADI,'
      '    PLAKANO,'
      '    ADRES,'
      '    TELEFON,'
      '    ARACINSI,'
      '    GELDIGIKM,'
      '    GELECEGIKM,'
      '    GELISKANBER,'
      '    CIKISKANBER,'
      '    GELISRKASTE,'
      '    CIKISRKASTE,'
      '    GELISLKASTE,'
      '    CIKISLKASTE,'
      '    GELISROTAYAR,'
      '    CIKISROTAYAR,'
      '    ARACINAYARLASTIK,'
      '    TEKNISYEN,'
      '    NOTLAR'
      'FROM'
      '    ARACTAKIP '
      ' WHERE '
      '        ARACTAKIP.SN = :OLD_SN'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SN,'
      '    KARTKODU,'
      '    GELISTARIHI,'
      '    MUSTERIADI,'
      '    PLAKANO,'
      '    ADRES,'
      '    TELEFON,'
      '    TELEFON2,'
      '    ARACINSI,'
      '    GELDIGIKM,'
      '    GELECEGIKM,'
      '    GELISKANBER,'
      '    CIKISKANBER,'
      '    GELISRKASTE,'
      '    CIKISRKASTE,'
      '    GELISLKASTE,'
      '    CIKISLKASTE,'
      '    GELISROTAYAR,'
      '    CIKISROTAYAR,'
      '    ARACINAYARLASTIK,'
      '    TEKNISYEN,'
      '    NOTLAR'
      'FROM'
      '    ARACTAKIP ')
    AutoUpdateOptions.UpdateTableName = 'ARACTAKIP'
    AutoUpdateOptions.KeyFields = 'SN'
    AutoUpdateOptions.GeneratorName = 'GEN_ARACTAKIP_SN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    BeforePost = tbAracBeforePost
    Transaction = trWriteDatabase
    Database = Database
    AutoCommit = True
    Left = 108
    Top = 21
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
    dcIgnoreMasterClose = True
    oKeepSorting = True
    oFetchAll = True
    object tbAracSN: TFIBIntegerField
      FieldName = 'SN'
    end
    object tbAracKARTKODU: TFIBIntegerField
      FieldName = 'KARTKODU'
    end
    object tbAracGELISTARIHI: TFIBDateField
      FieldName = 'GELISTARIHI'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object tbAracMUSTERIADI: TFIBStringField
      FieldName = 'MUSTERIADI'
      EmptyStrToNull = True
    end
    object tbAracPLAKANO: TFIBStringField
      FieldName = 'PLAKANO'
      Size = 10
      EmptyStrToNull = True
    end
    object tbAracADRES: TFIBStringField
      FieldName = 'ADRES'
      Size = 50
      EmptyStrToNull = True
    end
    object tbAracTELEFON: TFIBStringField
      FieldName = 'TELEFON'
      EditMask = '!\(999\)000 00 00;0;_'
      Size = 12
      EmptyStrToNull = True
    end
    object tbAracTELEFON2: TFIBStringField
      FieldName = 'TELEFON2'
      EditMask = '!\(999\)000 00 00;0;_'
      EmptyStrToNull = True
    end
    object tbAracARACINSI: TFIBStringField
      FieldName = 'ARACINSI'
      EmptyStrToNull = True
    end
    object tbAracGELDIGIKM: TFIBIntegerField
      FieldName = 'GELDIGIKM'
    end
    object tbAracGELECEGIKM: TFIBIntegerField
      FieldName = 'GELECEGIKM'
    end
    object tbAracGELISKANBER: TFIBIntegerField
      FieldName = 'GELISKANBER'
    end
    object tbAracCIKISKANBER: TFIBIntegerField
      FieldName = 'CIKISKANBER'
    end
    object tbAracGELISRKASTE: TFIBIntegerField
      FieldName = 'GELISRKASTE'
    end
    object tbAracCIKISRKASTE: TFIBIntegerField
      FieldName = 'CIKISRKASTE'
    end
    object tbAracGELISLKASTE: TFIBIntegerField
      FieldName = 'GELISLKASTE'
    end
    object tbAracCIKISLKASTE: TFIBIntegerField
      FieldName = 'CIKISLKASTE'
    end
    object tbAracGELISROTAYAR: TFIBIntegerField
      FieldName = 'GELISROTAYAR'
    end
    object tbAracCIKISROTAYAR: TFIBIntegerField
      FieldName = 'CIKISROTAYAR'
    end
    object tbAracARACINAYARLASTIK: TFIBStringField
      FieldName = 'ARACINAYARLASTIK'
      EmptyStrToNull = True
    end
    object tbAracTEKNISYEN: TFIBStringField
      FieldName = 'TEKNISYEN'
      EmptyStrToNull = True
    end
    object tbAracNOTLAR: TFIBMemoField
      FieldName = 'NOTLAR'
      BlobType = ftMemo
      Size = 8
    end
  end
  object Database: TpFIBDatabase
    Connected = True
    DBName = 'C:\Lider\AracTakip\Data\ARAC.FDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1254')
    DefaultTransaction = trWriteDatabase
    DefaultUpdateTransaction = trWriteDatabase
    SQLDialect = 3
    Timeout = 0
    UseRepositories = [urFieldsInfo, urDataSetInfo]
    WaitForRestoreConnect = 0
    Left = 47
    Top = 19
  end
  object dsArac: TDataSource
    DataSet = tbArac
    Left = 173
    Top = 21
  end
  object trWriteDatabase: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    TimeoutAction = TACommit
    TRParams.Strings = (
      'write'
      'isc_tpb_nowait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 47
    Top = 67
  end
  object LiderReport: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Varsay'#305'lan'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38904.583189560190000000
    ReportOptions.LastChange = 38904.583189560190000000
    ReportOptions.VersionMinor = '0'
    ReportOptions.VersionRelease = '0'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    StoreInDFM = False
    Left = 32
    Top = 184
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    Restrictions = []
    RTLLanguage = False
    Left = 100
    Top = 184
  end
  object rdsArac: TfrxDBDataset
    UserName = 'Ara'#231'lar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SN=SN'
      'KARTKODU=KARTKODU'
      'GELISTARIHI=GELISTARIHI'
      'MUSTERIADI=MUSTERIADI'
      'PLAKANO=PLAKANO'
      'ADRES=ADRES'
      'TELEFON=TELEFON'
      'ARACINSI=ARACINSI'
      'GELDIGIKM=GELDIGIKM'
      'GELECEGIKM=GELECEGIKM'
      'GELISKANBER=GELISKANBER'
      'CIKISKANBER=CIKISKANBER'
      'GELISRKASTE=GELISRKASTE'
      'CIKISRKASTE=CIKISRKASTE'
      'GELISLKASTE=GELISLKASTE'
      'CIKISLKASTE=CIKISLKASTE'
      'GELISROTAYAR=GELISROTAYAR'
      'CIKISROTAYAR=CIKISROTAYAR'
      'ARACINAYARLASTIK=ARACINAYARLASTIK'
      'TEKNISYEN=TEKNISYEN'
      'NOTLAR=NOTLAR')
    DataSet = tbArac
    Left = 32
    Top = 240
  end
end
