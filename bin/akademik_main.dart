import '../lib/mahasiswa.dart';
import '../lib/matakuliah.dart';
import '../lib/krs.dart';
import '../lib/nilai.dart';

void main() {
  // Membuat mahasiswa
  Mahasiswa mhs1 = Mahasiswa('12345678', 'John Doe', 3);

  // Membuat beberapa mata kuliah
  MataKuliah mk1 = MataKuliah('MK001', 'Pemrograman Dasar', 3);
  MataKuliah mk2 = MataKuliah('MK002', 'Matematika Diskrit', 3);
  MataKuliah mk3 = MataKuliah('MK003', 'Basis Data', 4);

  // Membuat KRS untuk mahasiswa
  KRS krs = KRS(mhs1);
  krs.tambahMataKuliah(mk1);
  krs.tambahMataKuliah(mk2);
  krs.tambahMataKuliah(mk3);

  // Cetak KRS
  krs.cetakKRS();

  // Input nilai
  List<Nilai> daftarNilai = [
    Nilai(mk1, 3.5),
    Nilai(mk2, 4.0),
    Nilai(mk3, 3.0),
  ];

  // Menampilkan transkrip nilai
  print('\nTranskrip Nilai:');
  double totalNilai = 0;
  int totalSKS = 0;

  for (var nilai in daftarNilai) {
    nilai.tampilkanTranskrip();
    totalNilai += nilai.nilai * nilai.mataKuliah.sks;
    totalSKS += nilai.mataKuliah.sks;
  }

  // Menghitung dan menampilkan IPK
  double ipk = totalNilai / totalSKS;
  print('\nIPK: ${ipk.toStringAsFixed(2)}');
  print(ipk >= 3.0 ? 'Status: Cum Laude' : 'Status: Regular');
}
