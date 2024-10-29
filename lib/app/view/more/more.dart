import 'package:flutter/material.dart';
import 'package:myapplication/app/view/home/home.dart';
import 'package:myapplication/app/widgets/appsvg.dart';
import 'package:myapplication/core/extensions/margin_extension.dart';
import 'package:myapplication/core/style/app_text_style.dart';

import '../../../core/style/style.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      appBar: AppBar(
        backgroundColor: primaryClr,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: primaryClr,
                child: Text(
                  "P",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: monts5),
                ),
              ),
            ),
            12.wBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Ranganathan',
                    style: TextStyle(
                        fontSize: 14, fontFamily: monts5, color: Colors.white)),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Kozhikode ',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: monts4,
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: '017',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: monts7,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          16.hBox,
          Expanded(
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    color: Colors.white),
                child: Column(
                  children: [
                    16.hBox,
                    const Text(
                      'More',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: monts5,
                          color: lightblackClr),
                      textAlign: TextAlign.center,
                    ),
                    MoreOptionsRow(leadIcon: "my_business",tittle:"My Business" ,
                    onTap: () {
                      
                    },),
                    MoreOptionsRow(leadIcon: "arrear",tittle:"My Arrears" ,),
                    MoreOptionsRow(leadIcon: "bluetooth",tittle:"Connect to Bluetooth" ,),
                    MoreOptionsRow(leadIcon: "Change-password",tittle:"Change Password" ,),
                    MoreOptionsRow(leadIcon: "logout",tittle:"Logout" ,),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class MoreOptionsRow extends StatelessWidget {
  const MoreOptionsRow({
    super.key, required this.leadIcon, required this.tittle,this.onTap
  });
  final String leadIcon,tittle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onTap ,
      visualDensity: VisualDensity(horizontal: -4,vertical: -4),
      contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 24),
      leading: AppSvg(name: leadIcon),
      title: Text(tittle,style: AppTextStyles.textStyle_400_12,),
      trailing: AppSvg(name: "ontap"),
    );
  }
}
