import 'package:get/get.dart';
import 'package:study_app/pages/data_uploader/controller.dart';

class DataUploaderBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<DataUploaderController>(() => DataUploaderController());
    Get.put(DataUploaderController());
  }

}