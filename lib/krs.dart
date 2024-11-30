import 'mahasiswa.dart';
import 'matakuliah.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<MataKuliah> daftarMataKuliah;
  static const int maxSKS = 24;

  KRS(this.mahasiswa) : daftarMataKuliah = [];

  void tambahMataKuliah(MataKuliah mk) {
    int totalSKS = MataKuliah.totalSKS(daftarMataKuliah) + mk.sks;
    if (totalSKS > maxSKS) {
      print('Gagal menambahkan ${mk.nama}: Total SKS melebihi $maxSKS.');
    } else {
      daftarMataKuliah.add(mk);
      print(
          'Mata kuliah ${mk.nama} berhasil ditambahkan untuk ${mahasiswa.nama}');
    }
  }

  void cetakKRS() {
    print('\nKRS Mahasiswa:');
    mahasiswa.tampilkanInfo();
    if (daftarMataKuliah.isEmpty) {
      print('Belum ada mata kuliah yang diambil.');
    } else {
      print('Daftar Mata Kuliah:');
      for (var mk in daftarMataKuliah) {
        print('- ${mk.nama} (${mk.kode}) - ${mk.sks} SKS');
      }
      print('Total SKS: ${MataKuliah.totalSKS(daftarMataKuliah)}');
    }
  }
}
