import 'package:cinemax/commons/enum.dart';
import 'package:get/get.dart';

abstract class BaseVM extends GetxController {
  final Rx<PageState> pageSate = PageState.DEFAULT.obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
