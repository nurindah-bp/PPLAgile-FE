class KategoriMakanan {
  final int idKat;
  int statusKat;
  String namaKat;

  KategoriMakanan({
    required this.idKat,
    required this.namaKat,
    required this.statusKat,
  });

  factory KategoriMakanan.fromJson(Map<String, dynamic> json) {
    return KategoriMakanan(
      idKat: json['id_kategori_makanan'],
      namaKat: json['nama_kategori'],
      statusKat: json['status_kategori'],
    );
  }
}
