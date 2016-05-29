program AracTakip;

uses
  Forms,
  Windows,
  Anaform in 'Anaform.pas' {frmAna},
  DataModule in 'DataModule.pas' {dm: TDataModule},
  AracKayit in 'AracKayit.pas' {frmArac},
  Acilis in 'Acilis.pas' {frmAcilis};

{$R *.res}

begin
  frmAcilis := TfrmAcilis.Create(nil);
  frmAcilis.Show;
  Application.ProcessMessages;
  Application.Initialize;
  Sleep(1000); // 1 sn. bekle
  frmAcilis.Hide;
  frmAcilis.Release;
  Application.Title := 'Araç Kontrol ve Takip Sistemi';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmAna, frmAna);
  Application.CreateForm(TfrmArac, frmArac);
  Application.Run;
end.

end.
