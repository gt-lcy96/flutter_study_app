import 'package:get/get.dart';
import 'package:study_app/routes/routes.dart';

class AuthController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    initAuth();
  }

  Future<void> initAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    navigateToIntroduction();
  }
  
  void navigateToIntroduction() {
    Get.offAllNamed(AppRoutes.INTRODUCTION);
  }
}