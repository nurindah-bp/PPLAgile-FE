import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ppl_agile/models/kategori_makanan.dart';
import 'package:ppl_agile/utils/endpoint.dart';

class ListKategoriMakanan {
  Future getData() async {
    try {
      final response =
          await http.get(Uri.parse('${Endpoint.baseUrl}/katmakanan'));

      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<KategoriMakanan> dataKategoriMakanan =
            it.map((e) => KategoriMakanan.fromJson(e)).toList();
        return dataKategoriMakanan;
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
