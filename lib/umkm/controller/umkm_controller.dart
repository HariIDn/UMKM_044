import 'package:umkm/umkm/model/umkm.dart';
import 'package:umkm/umkm/service/umkm_service.dart';

class UMKMController{
  final umkmservices = UMKMService();
  Future<List<UMKM>> getPlace() async {
    try {
      List<dynamic> placeData = await umkmservices.fetchUMKM();
      List<UMKM> place =
          placeData.map((json) => UMKM.fromMap(json)).toList();
      return place;
    } catch (e) {
      print(e);
      throw Exception("Gagal mengambil data");
    }
  }
}