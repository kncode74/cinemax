import 'package:cinemax/ui/cinema_list/cinema_list.vm.dart';
import 'package:get/get.dart';

class CinemaListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CinemaListVM>(
      () => CinemaListVM(),
    );
  }
}
