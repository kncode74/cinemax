import 'package:cinemax/base/base_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseView<Controller extends BaseVM> extends GetView<Controller> {

  Widget render(BuildContext context);
  @override
  Widget build(BuildContext context) {
   controller.onInit();
    return render(context);
  }
}
