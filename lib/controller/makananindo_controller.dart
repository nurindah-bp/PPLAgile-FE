import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ppl_agile/utils/endpoint.dart';
import 'package:ppl_agile/models/kategori_makanan.dart';

class MakananIndoController extends GetxController {
  RxList<KategoriMakanan> katMakanan = RxList();

  Future<void> getKategoriMakanan() async {
    final response =
        await http.get(Uri.parse('${Endpoint.baseUrl}/katmakanan'));

    if (response.statusCode != 200) return;

    List data = jsonDecode(response.body);
    for (var katMakananJson in data) {
      katMakanan.add(KategoriMakanan.fromJson(katMakananJson));
    }
  }
}
