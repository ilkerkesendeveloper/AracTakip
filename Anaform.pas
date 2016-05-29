unit Anaform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, ComCtrls,
  Grids, DBGrids, Buttons, DB, ImgList, ActnList;

type
  TfrmAna = class(TForm)
    dbGrid: TDBGrid;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Rapor1: TMenuItem;
    k1: TMenuItem;
    lemler1: TMenuItem;
    KaytEkle1: TMenuItem;
    KaytSil1: TMenuItem;
    ActionList1: TActionList;
    KayitEkle: TAction;
    actKayitSil: TAction;
    KayitBul: TAction;
    Timer1: TTimer;
    bbtnKayitEkle: TBitBtn;
    Edit1: TEdit;
    bbtnAra: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    actRapor: TAction;
    actCikis: TAction;
    actAracListesi: TAction;
    procedure mmKayitEkleClick(Sender: TObject);
    procedure mmCikisClick(Sender: TObject);
    procedure bbtnCikisClick(Sender: TObject);
    procedure KayitEkleExecute(Sender: TObject);
    procedure KayitBulExecute(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure actKayitSilExecute(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure actRaporExecute(Sender: TObject);
    procedure actCikisExecute(Sender: TObject);
private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAna: TfrmAna;

resourcestring
  lrsKayitSil = 'Geçerli kaydý silmek istiyor musunuz?';
  lrsKayitYok = 'Kayýt Yok';

    procedure RaporGoster(RaporDosyaAdi: string; Turu: string);

implementation

uses AracKayit, DataModule;


{$R *.dfm}

procedure TfrmAna.mmKayitEkleClick(Sender: TObject);
begin
  frmArac.Show;
end;

procedure TfrmAna.dbGridDblClick(Sender: TObject);
begin
  frmArac.Show;
end;

procedure TfrmAna.mmCikisClick(Sender: TObject);
begin
close;
end;                                         

procedure TfrmAna.actCikisExecute(Sender: TObject);
begin
   Close;
end;

procedure TfrmAna.actKayitSilExecute(Sender: TObject);
begin
  if dm.tbarac.RecordCount = 0 then
  Application.MessageBox('Silinecek Kayýt Yok...', 'Uyarý !!!', 0)
  else
  if Application.MessageBox(PChar(lrsKayitSil),
    'Onay', MB_YESNO + MB_ICONQUESTION+ MB_DEFBUTTON2)=idYes then
  dm.tbArac.Delete;
end;

procedure TfrmAna.actRaporExecute(Sender: TObject);
begin
   dm.LiderReport.DesignReport;
end;

procedure RaporGoster(RaporDosyaAdi: string; Turu: string);
begin
  with dm.LiderReport do
  begin
    LoadFromFile(ExtractFilePath(Application.ExeName) + 'Raporlar\' + RaporDosyaAdi);
    if Turu = 'B' then
      ShowReport;
    if Turu = 'Y' then
      Print;
  end;
end;

procedure TfrmAna.bbtnCikisClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAna.KayitEkleExecute(Sender: TObject);
begin
  frmArac.Show;
  dm.tbArac.Insert;
end;
procedure TfrmAna.KayitBulExecute(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    if edit1.Text <> '' then
    dm.tbArac.Locate('MUSTERIADI',Edit1.Text,[loCaseInsensitive, loPartialKey])
  else
    MessageDlg('Müþteri Adý Girin..', mtInformation, mbOKCancel, 0);
  end
  else
    if edit1.Text <> '' then
    dm.tbArac.Locate('PLAKANO',Edit1.Text,[loCaseInsensitive, loPartialKey])
  else
    MessageDlg('Plaka No Girin...', mtInformation, mbOKCancel, 0);
end;

procedure TfrmAna.k1Click(Sender: TObject);
begin
  Close;
end;

end.
