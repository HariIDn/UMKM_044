import 'package:umkm/umkm/model/umkm.dart';
import 'package:umkm/umkm/service/umkm_service.dart';

class UMKMController {
  final umkmservices = UMKMService();
  Future<List<UMKM>> getPlace() async {
    try {
      List<dynamic> placeData = await umkmservices.getUMKM();
      List<UMKM> place = placeData.map((item) => UMKM.fromJson(item)).toList();
      return place;
    } catch (e) {
      print(e);
      throw Exception("Gagal mengambil data");
    }
  }
}
