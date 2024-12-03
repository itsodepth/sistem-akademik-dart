import '../lib/mahasiswa.dart';
import '../lib/matakuliah.dart';
import '../lib/krs.dart';
import '../lib/nilai.dart';

void main() {
  // Membuat objek Mahasiswa
  Mahasiswa mhs1 =
      Mahasiswa('12345678', 'Muh Devano Alfarizy', 3); // Mahasiswa 1
  Mahasiswa mhs2 = Mahasiswa('23456789', 'Vander Decken', 4); // Mahasiswa 2
  Mahasiswa mhs3 = Mahasiswa('34567890', 'John Cena', 2); // Mahasiswa 3

  // Membuat objek Mata Kuliah
  MataKuliah mk1 = MataKuliah('MK001', 'Pemrograman Dasar', 3); // Mata kuliah 1
  MataKuliah mk2 =
      MataKuliah('MK002', 'Matematika Diskrit', 3); // Mata kuliah 2
  MataKuliah mk3 = MataKuliah('MK003', 'Basis Data', 4); // Mata kuliah 3
  MataKuliah mk4 =
      MataKuliah('MK004', 'Algoritma dan Struktur Data', 3); // Mata kuliah 4
  MataKuliah mk5 = MataKuliah('MK005', 'Sistem Operasi', 3); // Mata kuliah 5

  // Membuat KRS untuk setiap mahasiswa dan menambahkan mata kuliah
  KRS krs1 = KRS(mhs1);
  krs1.tambahMataKuliah(mk1);
  krs1.tambahMataKuliah(mk3);

  KRS krs2 = KRS(mhs2);
  krs2.tambahMataKuliah(mk2);
  krs2.tambahMataKuliah(mk4);

  KRS krs3 = KRS(mhs3);
  krs3.tambahMataKuliah(mk5);
  krs3.tambahMataKuliah(mk1);
  // Mencetak KRS untuk setiap mahasiswa
  print('\nKRS Mahasiswa 1:');
  krs1.cetakKRS();

  print('\nKRS Mahasiswa 2:');
  krs2.cetakKRS();

  print('\nKRS Mahasiswa 3:');
  krs3.cetakKRS();

  // Input nilai untuk setiap mahasiswa
  List<Nilai> daftarNilai1 = [
    Nilai(mk1, 3.5), // Nilai untuk mata kuliah Pemrograman Dasar
    Nilai(mk3, 4.0), // Nilai untuk mata kuliah Basis Data
  ];

  List<Nilai> daftarNilai2 = [
    Nilai(mk2, 3.8), // Nilai untuk mata kuliah Matematika Diskrit
    Nilai(mk4, 3.9), // Nilai untuk mata kuliah Algoritma dan Struktur Data
  ];

  List<Nilai> daftarNilai3 = [
    Nilai(mk5, 3.2), // Nilai untuk mata kuliah Sistem Operasi
    Nilai(mk1, 1.0), // Nilai untuk mata kuliah Pemrograman Dasar
  ];

  // Menampilkan transkrip dan menghitung IPK untuk setiap mahasiswa
  print('\nTranskrip Nilai Mahasiswa 1:');
  tampilkanTranskripDanHitungIPK(daftarNilai1);

  print('\nTranskrip Nilai Mahasiswa 2:');
  tampilkanTranskripDanHitungIPK(daftarNilai2);

  print('\nTranskrip Nilai Mahasiswa 3:');
  tampilkanTranskripDanHitungIPK(daftarNilai3);
}

// Fungsi untuk menampilkan transkrip nilai dan menghitung IPK
void tampilkanTranskripDanHitungIPK(List<Nilai> daftarNilai) {
  double totalNilai =
      0; // Variabel untuk menyimpan total nilai yang dihitung berdasarkan SKS
  int totalSKS = 0; // Variabel untuk menyimpan total SKS

  for (var nilai in daftarNilai) {
    nilai
        .tampilkanTranskrip(); // Menampilkan transkrip nilai untuk setiap mata kuliah
    totalNilai += nilai.nilai *
        nilai.mataKuliah.sks; // Menghitung total nilai berdasarkan SKS
    totalSKS += nilai.mataKuliah.sks; // Menjumlahkan total SKS yang diambil
  }

  double ipk =
      totalNilai / totalSKS; // Menghitung Indeks Prestasi Kumulatif (IPK)
  print(
      '\nIPK: ${ipk.toStringAsFixed(2)}'); // Menampilkan IPK dengan dua angka desimal

  // Menentukan status berdasarkan IPK yang diperoleh
  print(ipk >= 3.0 ? 'Status: Cum Laude' : 'Status: Regular');
}
