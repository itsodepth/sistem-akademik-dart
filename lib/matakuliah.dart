class MataKuliah {
  // Atribut untuk menyimpan informasi tentang mata kuliah
  String kode;
  String nama;
  int sks;

  // Konstruktor untuk menginisialisasi objek MataKuliah
  MataKuliah(this.kode, this.nama, this.sks) {
    if (sks <= 0) {
      throw ArgumentError('SKS harus lebih dari 0.');
    }
  }

  // Metode statis untuk menghitung total SKS dari daftar mata kuliah
  static int totalSKS(List<MataKuliah> daftarMataKuliah) {
    return daftarMataKuliah.fold(0, (total, mk) => total + mk.sks);
    // Menggunakan metode fold untuk menjumlahkan SKS dari semua mata kuliah dalam daftar
  }

  // Metode untuk menampilkan informasi tentang mata kuliah
  void tampilkanInfo() {
    print('\nInformasi Mata Kuliah:');
    print('Kode MK : $kode');
    print('Nama MK : $nama');
    print('SKS     : $sks');
  }
}
