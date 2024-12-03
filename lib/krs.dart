import 'mahasiswa.dart';
import 'matakuliah.dart';

class KRS {
  Mahasiswa
      mahasiswa; // Objek dari kelas Mahasiswa yang merepresentasikan mahasiswa
  List<MataKuliah>
      daftarMataKuliah; // List untuk menyimpan mata kuliah yang diambil
  static const int maxSKS =
      24; // Konstanta untuk batas maksimal SKS yang dapat diambil

  // Konstruktor untuk menginisialisasi objek KRS dengan mahasiswa dan daftar mata kuliah kosong
  KRS(this.mahasiswa) : daftarMataKuliah = [];

  // Metode untuk menambahkan mata kuliah ke dalam daftar
  void tambahMataKuliah(MataKuliah mk) {
    // Menghitung total SKS setelah menambahkan mata kuliah baru
    int totalSKS = MataKuliah.totalSKS(daftarMataKuliah) + mk.sks;

    // Memeriksa apakah total SKS melebihi batas maksimum
    if (totalSKS > maxSKS) {
      print(
          'Gagal menambahkan ${mk.nama}: Total SKS melebihi $maxSKS.'); // Pesan kesalahan jika melebihi batas
    } else {
      daftarMataKuliah.add(mk); // Menambahkan mata kuliah ke daftar jika valid
      print(
          'Mata kuliah ${mk.nama} berhasil ditambahkan untuk ${mahasiswa.nama}'); // Konfirmasi penambahan
    }
  }

  // Metode untuk mencetak Kartu Rencana Studi (KRS)
  void cetakKRS() {
    mahasiswa.tampilkanInfo(); // Menampilkan informasi mahasiswa

    // Memeriksa apakah daftar mata kuliah kosong
    if (daftarMataKuliah.isEmpty) {
      print(
          'Belum ada mata kuliah yang diambil.'); // Pesan jika tidak ada mata kuliah
    } else {
      print('Daftar Mata Kuliah:'); // Judul daftar mata kuliah
      for (var mk in daftarMataKuliah) {
        print(
            '- ${mk.nama} (${mk.kode}) - ${mk.sks} SKS'); // Menampilkan setiap mata kuliah dalam daftar
      }
      print(
          'Total SKS: ${MataKuliah.totalSKS(daftarMataKuliah)}'); // Menampilkan total SKS dari semua mata kuliah
    }
  }
}
