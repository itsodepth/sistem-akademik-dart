import 'matakuliah.dart';

class Nilai {
  MataKuliah mataKuliah;
  double nilai;

  Nilai(this.mataKuliah, this.nilai) {
    if (nilai < 0.0 || nilai > 4.0) {
      throw ArgumentError('Nilai harus di antara 0.0 dan 4.0.');
    }
  }

  String get nilaiHuruf {
    if (nilai >= 3.5) return 'A';
    if (nilai >= 3.0) return 'B+';
    if (nilai >= 2.5) return 'B';
    if (nilai >= 2.0) return 'C+';
    if (nilai >= 1.5) return 'C';
    if (nilai >= 1.0) return 'D';
    return 'E';
  }

  void tampilkanTranskrip() {
    print(
        '${mataKuliah.nama} (${mataKuliah.kode}) - ${mataKuliah.sks} SKS - Nilai: ${nilai.toStringAsFixed(1)} (${nilaiHuruf})');
  }
}
