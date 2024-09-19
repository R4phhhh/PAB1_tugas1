class Produk {
  String namaProduk;
  double harga, diskon;
  int jumlah;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  void hitungTotalHargaTanpaDiskon() {
    double totalHarga = harga*jumlah;
    print("Total Harga Tanpa Diskon: Rp. $totalHarga");
  }

  void hitungTotalHargaSetelahDiskon() {
    double hargaSetelahDiskon = harga*jumlah*(1-diskon/100);
    print("Total Harga Setelah Diskon: Rp. $hargaSetelahDiskon");
  }

  void tampilkanInformasiProduk() {
    print("Nama Produk: $namaProduk \nHarga Satuan: Rp. $harga \nJumlah: $jumlah \nDiskon: $diskon%\n");
  }
}

void main() {
  Produk produk = Produk("Kamera", 2000000, 2, 10);
  produk.tampilkanInformasiProduk();
  produk.hitungTotalHargaTanpaDiskon();
  produk.hitungTotalHargaSetelahDiskon();
}