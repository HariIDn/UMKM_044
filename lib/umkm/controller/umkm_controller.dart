import 'package:umkm/umkm/model/umkm.dart';
import 'package:umkm/umkm/service/umkm_service.dart';

class UMKMController {
  final umkmservices = UMKMService();
  Future<List<UMKM>> getUMKM() async {
    try {
      List<dynamic> umkmData = await umkmservices.fetchUMKM();
      List<UMKM> place = umkmData.map((json) => UMKM.fromJson(json)).toList();
      return place;
    } catch (e) {
      print(e);

      throw Exception("Gagal mengambil data");
    }
  }
}
