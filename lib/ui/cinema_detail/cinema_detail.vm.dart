import 'package:cinemax/base/base_vm.dart';
import 'package:cinemax/models/cinema_response.dart';
import 'package:get/get.dart';

class CinemaDetailVM extends BaseVM {
  final CinemaResponse _cinemaResponse =
      Get.arguments['cinema'] as CinemaResponse;
  final List<CinemaResponse> _cinemaResponseList =
      Get.arguments['cinema_list'] as List<CinemaResponse>;

  final RxList<CinemaResponse> cinemaList = <CinemaResponse>[].obs;

  @override
  void onInit() {
    _filterData();
    super.onInit();
  }

  _filterData() {
    for (CinemaResponse item in _cinemaResponseList) {
      if (item.character == _cinemaResponse.character) {
        cinemaList.add(item);
      }
    }
  }
}
