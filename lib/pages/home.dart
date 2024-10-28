import 'package:flutter/material.dart';
import 'package:myapplication/core/appsvg.dart';
import 'package:myapplication/core/style.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      appBar: AppBar(
        backgroundColor: primaryClr,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
            const SizedBox(
              width: 8,
            ),
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
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.bluetooth,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16)),
                  color: Colors.white),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'Route collection',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: monts5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                  return PaymentCard(isPaid: index == 1);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  final bool isPaid;

  const PaymentCard({super.key, required this.isPaid});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFF4F4F4),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: primaryClr,
                radius: 23,
                child: Text('AS',
                    style: TextStyle(
                        color: Colors.white, fontFamily: monts5, fontSize: 12)),
              ),
              title: Text(
                'Accurate Spring Private Limited',
                style: TextStyle(fontFamily: monts4, fontSize: 12),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'KBMS022948',
                    style: TextStyle(fontFamily: monts4, fontSize: 12),
                  ),
                  Text(
                    '+91 9995559990',
                    style: TextStyle(fontFamily: monts5, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 1,
          ),
          const SizedBox(
            height: 18,
          ),
          isPaid
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Paid',
                        style: TextStyle(fontFamily: monts4, fontSize: 12),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '09-02-2023',
                            style: TextStyle(fontFamily: monts5, fontSize: 12),
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
              : const PaymentCardRow(
                  leadText: "Not Paid",
                  isrichText: false,
                  trailText: "-,-",
                ),
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
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: isPaid ? successClr : greyClr,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: isPaid
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppSvg(name: "Billed"),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Make Payment",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: monts4,
                              fontSize: 12),
                        )
                      ],
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Text(
                      "Make Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: monts4,
                          fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

class PaymentCardRow extends StatelessWidget {
  const PaymentCardRow({
    super.key,
    required this.leadText,
    this.trailText,
    this.richtext,
    required this.isrichText,
  });
  final String leadText;
  final String? trailText, richtext;
  final bool isrichText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            leadText,
            style: const TextStyle(fontFamily: monts4, fontSize: 12),
          ),
          const Spacer(),
          !isrichText
              ? Text(
                  trailText ?? "",
                  style: const TextStyle(fontFamily: monts5, fontSize: 12),
                )
              : RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: richtext,
                        style: const TextStyle(
                            color: primaryClr,
                            fontFamily: monts5,
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: trailText,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: monts5,
                            fontSize: 12),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
