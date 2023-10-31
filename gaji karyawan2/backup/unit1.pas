unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject); // Tambahkan event FormCreate
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Menambahkan pilihan ke ComboBox saat form diinisialisasi
  ComboBox1.Items.Add('Direktur');
  ComboBox1.Items.Add('Manager');
  ComboBox1.Items.Add('Karyawan');
  ComboBox1.ItemIndex := 0; // Pilih item pertama sebagai default
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  GajiPokok, Tunjangan, GajiTotal: Double;
begin
  // ... (kode perhitungan gaji seperti sebelumnya)
end;

end.


