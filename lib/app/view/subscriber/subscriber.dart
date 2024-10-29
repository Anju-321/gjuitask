import 'package:flutter/material.dart';
import 'package:myapplication/app/view/subscriber/subscriper_detail_screen.dart';
import 'package:myapplication/app/widgets/appsvg.dart';
import 'package:myapplication/core/extensions/margin_extension.dart';
import 'package:myapplication/core/style/app_text_style.dart';
import 'package:myapplication/core/style/style.dart';
import 'package:myapplication/core/utils/screen_utils.dart';

class SubscriberScreen extends StatelessWidget {
  const SubscriberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: Column(
        children: [
          40.hBox,
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 22),
            child: SizedBox(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: primaryClr,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
          ),
          16.hBox,
      
            Expanded(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)),
                color: Colors.white),
            child: ListView.separated(
              
              shrinkWrap: true,
              itemCount: 20 ,
              padding:const EdgeInsets.symmetric(horizontal: 22,vertical: 24),
              itemBuilder: (context, index) {
             return  GestureDetector(
              onTap: () {
                Screen.open(SubscribersDetailScreen());
              },
              child: const SubscriberListTile());
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
              
            ),
          ),
        ),
        ],
      
      ),


    );
  }
}

class SubscriberListTile extends StatelessWidget {
  const SubscriberListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:cardClr ),
      child: const ListTile(
       
       leading: AppSvg(name: "ticket"),
         title: Text("Girish Kumar",style: AppTextStyles.textStyle_400_12,),
         subtitle: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           mainAxisSize: MainAxisSize.min,
           children: [
             Text("KBMS098988",style: AppTextStyles.textStyle_500_12,),
             Spacer(),
             Text("+91 1234567890",style: AppTextStyles.textStyle_500_12),
           ],
      
         ),
         trailing:Icon(Icons.arrow_forward_ios,size: 10,color: primaryClr,) ,
       ),
    );
  }
}