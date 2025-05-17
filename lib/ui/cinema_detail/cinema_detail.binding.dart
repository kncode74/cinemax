import 'package:cinemax/ui/cinema_detail/cinema_detail.vm.dart';
import 'package:get/get.dart';

class CinemaDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CinemaDetailVM>(
      () => CinemaDetailVM(),
    );
  }
}
