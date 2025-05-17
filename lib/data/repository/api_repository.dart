import 'package:cinemax/data/service/base_service.dart';
import 'package:cinemax/models/cinema_response.dart';
import 'package:get/get.dart';

class ApiRepository {
  final BaseService _baseService = Get.find<BaseService>();

  Future<List<CinemaResponse>> getCinemaList() async {
    final response = await _baseService.get(
        url: 'https://whoa.onrender.com/whoas/random?results=20');
    if (response != null && response.data != null) {
      final List list = response.data;
      return list.map((e) => CinemaResponse.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
