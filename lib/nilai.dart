import 'matakuliah.dart';

class Nilai {
  // Atribut untuk menyimpan informasi tentang mata kuliah dan nilai
  MataKuliah mataKuliah;
  double nilai;

  // Konstruktor untuk menginisialisasi objek Nilai
  Nilai(this.mataKuliah, this.nilai) {
    // Validasi untuk memastikan nilai berada dalam rentang yang benar
    if (nilai < 0.0 || nilai > 4.0) {
      throw ArgumentError('Nilai harus di antara 0.0 dan 4.0.');
    }
  }

  // Getter untuk mengonversi nilai numerik menjadi nilai huruf
  String get nilaiHuruf {
    if (nilai >= 3.5) return 'A'; // Nilai A untuk >= 3.5
    if (nilai >= 3.0) return 'B+'; // Nilai B+ untuk >= 3.0
    if (nilai >= 2.5) return 'B'; // Nilai B untuk >= 2.5
    if (nilai >= 2.0) return 'C+'; // Nilai C+ untuk >= 2.0
    if (nilai >= 1.5) return 'C'; // Nilai C untuk >= 1.5
    if (nilai >= 1.0) return 'D'; // Nilai D untuk >= 1.0
    return 'E'; // Nilai E untuk < 1.0
  }

  // Metode untuk menampilkan transkrip nilai mata kuliah
  void tampilkanTranskrip() {
    print(
        '${mataKuliah.nama} (${mataKuliah.kode}) - ${mataKuliah.sks} SKS - Nilai: ${nilai.toStringAsFixed(1)} (${nilaiHuruf})');
    // Mencetak informasi tentang mata kuliah, SKS, nilai numerik, dan nilai huruf
  }
}
