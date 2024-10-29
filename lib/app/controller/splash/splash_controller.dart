import 'package:get/get.dart';
import 'package:myapplication/app/view/login/login.dart';

import '../../../core/utils/screen_utils.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    
    Future.delayed(const Duration(seconds: 3), () async {

        
        Screen.openAsNewPage(  LoginScreen());
      
    });
  }
}