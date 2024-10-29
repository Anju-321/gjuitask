import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapplication/app/controller/subsciber/subscriber_detail_controller.dart';
import 'package:myapplication/core/extensions/margin_extension.dart';
import 'package:myapplication/core/style/app_text_style.dart';
import 'package:myapplication/core/style/style.dart';
import 'package:myapplication/core/utils/screen_utils.dart';

import '../../widgets/appsvg.dart';
import '../home/home.dart';

class SubscribersDetailScreen extends StatelessWidget {
  const SubscribersDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SubscriberDetailController());
    return Scaffold(
      backgroundColor: primaryClr,
      appBar: AppBar(
        backgroundColor: primaryClr,
        titleSpacing: -10,
        title: const Text(
          "KBMS031300",
          style: AppTextStyles.textStyle_500_14_white,
          textAlign: TextAlign.start,
        ),
        leading: IconButton(
            onPressed: () {
              Screen.close();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22, ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16)),
            color: Colors.white),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 3 + 1,
          itemBuilder: (context, index) {
            if(index==0){
              return 10.hBox;
            }
            return SubscriberReceiptCard(
              
              isFirst: index == 1,
              isPaid: index == 1,
              controller: controller,
              indexValue: index.toString(),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
        ),
      ),
    );
  }
}

class SubscriberReceiptCard extends StatelessWidget {
  final bool isPaid;
  final bool isFirst;
  final SubscriberDetailController controller;
  final String indexValue;

  const SubscriberReceiptCard(
      {super.key,
      required this.isPaid,
      required this.isFirst,
      required this.controller,
      required this.indexValue});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Card(
        elevation: 0,
        color: cardClr,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            isFirst
                ? Column(
                    children: [
                      16.hBox,
                      const Text(
                        "Accurate Spring Private Limited",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStyle_400_12,
                      ),
                      const ListTile(
                        isThreeLine: true,
                        leading: AppSvg(name: "ticket"),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "KBMS022948",
                              style: AppTextStyles.textStyle_500_12,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Spacer(),
                            Text(
                              "+91 9995559990",
                              style: AppTextStyles.textStyle_500_12,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                                width: 160,
                                child: Text(
                                  "05, Street no 2, Sowrastra nagar, Choolaimedu, chennai",
                                  style: AppTextStyles.textStyle_400_12,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                )),
                            Spacer(),
                            Text(
                              "Liability:3",
                              style: AppTextStyles.textStyle_500_12,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                      ),
                    ],
                  )
                : 0.hBox,
            const SizedBox(
              height: 18,
            ),
            isPaid && !(controller.expandedCardIndex.value == indexValue)
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Paid',
                          style: TextStyle(
                              fontFamily: monts4,
                              fontSize: 12,
                              color: lightblackClr),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '09-02-2023',
                              style: TextStyle(
                                  fontFamily: monts5,
                                  fontSize: 12,
                                  color: lightblackClr),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            AppSvg(name: "paid")
                          ],
                        ),
                      ],
                    ),
                  )
                : !isPaid && !(controller.expandedCardIndex.value == indexValue)
                    ? const PaymentCardRow(
                        leadText: "Not Paid",
                        isrichText: false,
                        trailText: "-,-",
                      )
                    : const SizedBox.shrink(),
            const SizedBox(
              height: 12,
            ),
            const PaymentCardRow(
              leadText: 'Ticket ID',
              isrichText: false,
              trailText: "G2F/0001/PAR05",
            ),
            const SizedBox(
              height: 12,
            ),
            const PaymentCardRow(
              leadText: 'Temp ID',
              isrichText: false,
              trailText: "G2F/0001/PAR05",
            ),
            const SizedBox(
              height: 12,
            ),
            const PaymentCardRow(
              leadText: 'Balance',
              isrichText: true,
              trailText: "/-600.00",
              richtext: "4250.00",
            ),
            const SizedBox(
              height: 16,
            ),
            const PaymentCardRow(
              leadText: 'Branch',
              isrichText: false,
              trailText: "Calicut",
            ),
            16.hBox,
            const PaymentCardRow(
              leadText: 'Auction No',
              isrichText: false,
              trailText: "59",
            ),
            16.hBox,
            (controller.expandedCardIndex.value == indexValue)
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const PaymentCardRow(
                        leadText: 'Collection',
                        isrichText: false,
                        trailText: "69951 + 7100 = 77051",
                      ),
                      16.hBox,
                      const PaymentCardRow(
                        leadText: 'LDR',
                        isrichText: false,
                        trailText: "09-02-2023",
                      ),
                      16.hBox,
                      const PaymentCardRow(
                        leadText: 'Last Verified',
                        isrichText: false,
                        trailText: "05-11-2021",
                      ),
                      16.hBox,
                   isPaid?   const PaymentCardRow(
                        leadText: 'Paid Date',
                        isrichText: false,
                        trailText: "05-01-2019",
                      ):0.hBox,
                      isPaid?16.hBox:0.hBox,
                      GestureDetector(
                        onTap: () {
                          controller.removeExpansion();
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: const BoxDecoration(
                              color: greyClr,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Text(
                            "View Less",
                            style: AppTextStyles.textStyle_400_12_white,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )
                : GestureDetector(
                    onTap: () {
                      controller.toggleExpansion(indexValue);
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: greyClr,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Text(
                          "View More",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: monts4,
                              fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
          ],
        ),
      );
    });
  }
}
