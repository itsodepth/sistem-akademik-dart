class Mahasiswa {
//Melakukan pendefinisian class
  String nim;
  String nama;
  int semester;

//Menginisialisasi properti dan validasi
  Mahasiswa(this.nim, this.nama, this.semester) {
    if (semester < 1) {
      throw ArgumentError('Semester tidak boleh kurang dari 1.');
    }
  }

//Untuk menampilkan data mhs yg sudah diinput
  void tampilkanInfo() {
    print('\nInformasi Mahasiswa:');
    print('NIM      : $nim');
    print('Nama     : $nama');
    print('Semester : $semester');
  }

//Fungsi untuk melakukan pengecekan semester
  bool cekSemester(int targetSemester) {
    return semester == targetSemester;
  }
}
