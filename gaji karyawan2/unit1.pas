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
    procedure ComboBox1Change(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
  GajiPokok, Tunjangan, GajiTotal: Double;
begin
  // Mengambil nilai gaji pokok berdasarkan jabatan
  case ComboBox1.ItemIndex of
    0: GajiPokok := 5000000; // Direktur
    1: GajiPokok := 3000000; // Manager
    2: GajiPokok := 1000000; // Karyawan
  end;

  // Mengambil nilai tunjangan berdasarkan status pegawai
  if RadioButton1.Checked then
    Tunjangan := 1500000 // Tetap
  else
    Tunjangan := 500000; // Honorer

  // Menghitung gaji total
  GajiTotal := GajiPokok + Tunjangan;

  // Menampilkan hasil gaji pokok dan total pada Edit1 dan Edit2
  Edit1.Text := FloatToStr(GajiPokok);
  Edit2.Text := FloatToStr(GajiTotal);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

end.

