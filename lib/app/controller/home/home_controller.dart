import 'package:get/get.dart';

class HomeController extends GetxController {

  final RxString expandedCardIndex ="".obs;


void toggleExpansion(String index) {
   
      expandedCardIndex.value = index; 
    
  }
void removeExpansion(){
  expandedCardIndex.value="";
}

  
}