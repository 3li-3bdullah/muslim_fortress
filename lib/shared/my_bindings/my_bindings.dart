import 'package:get/get.dart';
import 'package:muslim_fortress/controller/home_controller.dart';

class MyBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => HomeController(),fenix: true);
  }

}