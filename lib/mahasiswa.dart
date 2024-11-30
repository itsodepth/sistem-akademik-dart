class Mahasiswa {
  String nim;
  String nama;
  int semester;

  Mahasiswa(this.nim, this.nama, this.semester) {
    if (semester < 1) {
      throw ArgumentError('Semester tidak boleh kurang dari 1.');
    }
  }

  void tampilkanInfo() {
    print('\nInformasi Mahasiswa:');
    print('NIM      : $nim');
    print('Nama     : $nama');
    print('Semester : $semester');
  }

  bool cekSemester(int targetSemester) {
    return semester == targetSemester;
  }
}
