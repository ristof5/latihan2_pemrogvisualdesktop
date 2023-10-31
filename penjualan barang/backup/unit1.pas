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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox; // Menambahkan ListBox untuk menampilkan daftar barang yang dibeli
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
    TotalBelanja: Double; // Variabel untuk menyimpan total belanja
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
  KodeBarang, NamaBarang: String;
  HargaBarang, Subtotal: Double;
  Quantity: Integer;
begin
  // Mendapatkan input kode barang, nama barang, dan harga barang
  KodeBarang := ComboBox1.Text;
  Quantity := StrToInt(Edit2.Text);

  // Melakukan validasi untuk quantity (maksimal 10)
  if (Quantity < 1) or (Quantity > 10) then
  begin
    ShowMessage('Quantity pembelian harus antara 1 hingga 10.');
    Exit;
  end;

  // Menentukan nama dan harga barang berdasarkan kode
  case KodeBarang of
    'A01':
    begin
      NamaBarang := 'Speaker';
      HargaBarang := 50000;
    end;
    'B02':
    begin
      NamaBarang := 'Mouse';
      HargaBarang := 25000;
    end;
    'C03':
    begin
      NamaBarang := 'Hardisk';
      HargaBarang := 750000;
    end;
    'D04':
    begin
      NamaBarang := 'MousePad';
      HargaBarang := 5000;
    end;
  else
    ShowMessage('Kode barang tidak valid.');
    Exit;
  end;

  // Menghitung subtotal
  Subtotal := HargaBarang * Quantity;

  // Menampilkan data barang yang dibeli di ListBox
  ListBox1.Items.Add(KodeBarang + ' - ' + NamaBarang + ' - ' + IntToStr(Quantity) + ' buah - Rp. ' + FloatToStr(Subtotal));

  // Menambahkan subtotal ke total belanja
  TotalBelanja := TotalBelanja + Subtotal;

  // Menampilkan total belanja
  Edit3.Text := FloatToStr(TotalBelanja);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // Mendapatkan total belanja
  TotalBelanja := StrToFloat(Edit3.Text);

  // Menghitung diskon berdasarkan total belanja
  if TotalBelanja >= 100000 then
    Edit5.Text := '15%'
  else if TotalBelanja >= 50000 then
    Edit4.Text := '10%'
  else if TotalBelanja >= 25000 then
    Edit4.Text := '5%'
  else
    Edit4.Text := '0%';

  // Menghitung jumlah diskon
  if Edit4.Text <> '0%' then
  begin
    Edit5.Text := FloatToStr((StrToFloat(Edit4.Text) / 100) * TotalBelanja);
    Edit6.Text := FloatToStr(TotalBelanja - StrToFloat(Edit5.Text));
  end
  else
  begin
    Edit5.Text := '0';
    Edit6.Text := Edit3.Text;
  end;
end;

end.


