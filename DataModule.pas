unit DataModule;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBTable, IBQuery, Forms,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Windows, frxClass,
  frxDBSet, frxDesgn;

type
  Tdm = class(TDataModule)
    tbArac: TpFIBDataSet;
    Database: TpFIBDatabase;
    dsArac: TDataSource;
    trWriteDatabase: TpFIBTransaction;
    LiderReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    rdsArac: TfrxDBDataset;
    tbAracSN: TFIBIntegerField;
    tbAracKARTKODU: TFIBIntegerField;
    tbAracGELISTARIHI: TFIBDateField;
    tbAracMUSTERIADI: TFIBStringField;
    tbAracPLAKANO: TFIBStringField;
    tbAracADRES: TFIBStringField;
    tbAracTELEFON: TFIBStringField;
    tbAracTELEFON2: TFIBStringField;
    tbAracARACINSI: TFIBStringField;
    tbAracGELDIGIKM: TFIBIntegerField;
    tbAracGELECEGIKM: TFIBIntegerField;
    tbAracGELISKANBER: TFIBIntegerField;
    tbAracCIKISKANBER: TFIBIntegerField;
    tbAracGELISRKASTE: TFIBIntegerField;
    tbAracCIKISRKASTE: TFIBIntegerField;
    tbAracGELISLKASTE: TFIBIntegerField;
    tbAracCIKISLKASTE: TFIBIntegerField;
    tbAracGELISROTAYAR: TFIBIntegerField;
    tbAracCIKISROTAYAR: TFIBIntegerField;
    tbAracARACINAYARLASTIK: TFIBStringField;
    tbAracTEKNISYEN: TFIBStringField;
    tbAracNOTLAR: TFIBMemoField;
    procedure tbAracBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.tbAracBeforePost(DataSet: TDataSet);
begin
  with tbArac do
  begin
    if (FieldByName('GELISTARIHI').IsNull) or (FieldByName('GELISTARIHI').AsString <= '') then
    begin
      Application.MessageBox('Geliþ Tarihi Alaný Boþ Býrakýlamaz.','Bilgi',MB_OK + MB_ICONINFORMATION);
      tbArac.Cancel;
      Abort;
    end;
  end;
end;
end.
