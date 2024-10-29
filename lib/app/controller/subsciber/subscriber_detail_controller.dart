import 'package:get/get.dart';

class SubscriberDetailController extends GetxController{

  final RxString expandedCardIndex ="".obs;


void toggleExpansion(String index) {
   
      expandedCardIndex.value = index; 
    
  }
void removeExpansion(){
  expandedCardIndex.value="";
}



}