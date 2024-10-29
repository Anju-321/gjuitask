// import 'package:flutter/material.dart';
// import 'package:myapplication/core/extensions/margin_extension.dart';

// import '../../../../core/style/style.dart';

// class MyBusinessScreen extends StatelessWidget {
//   const MyBusinessScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: primaryClr,
//       body: Column(
//         children: [
//           40.hBox,
//           Padding(
//             padding:  const EdgeInsets.symmetric(horizontal: 22),
//             child: SizedBox(
//                 height: 36,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     isDense: true,
//                     filled: true,
//                     fillColor: Colors.white,
//                     contentPadding:
//                         const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
//                     suffixIcon: const Icon(
//                       Icons.search,
//                       color: primaryClr,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(40),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//               ),
//           ),
//           16.hBox,
      
//             Expanded(
//           child: Container(
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(16),
//                     topLeft: Radius.circular(16)),
//                 color: Colors.white),
//             child: ListView.separated(
              
//               shrinkWrap: true,
//               itemCount: 20 ,
//               padding:const EdgeInsets.symmetric(horizontal: 22,vertical: 24),
//               itemBuilder: (context, index) {
//              return  GestureDetector(
//               onTap: () {
//                 Screen.open(SubscribersDetailScreen());
//               },
//               child: const SubscriberListTile());
//               },
//               separatorBuilder: (context, index) => const SizedBox(
//                 height: 16,
//               ),
              
//             ),
//           ),
//         ),
//         ],
      
//       ),


//     );
//   }
// }