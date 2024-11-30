class MataKuliah {
  String kode;
  String nama;
  int sks;

  MataKuliah(this.kode, this.nama, this.sks) {
    if (sks <= 0) {
      throw ArgumentError('SKS harus lebih dari 0.');
    }
  }

  static int totalSKS(List<MataKuliah> daftarMataKuliah) {
    return daftarMataKuliah.fold(0, (total, mk) => total + mk.sks);
  }

  void tampilkanInfo() {
    print('\nInformasi Mata Kuliah:');
    print('Kode MK : $kode');
    print('Nama MK : $nama');
    print('SKS     : $sks');
  }
}
