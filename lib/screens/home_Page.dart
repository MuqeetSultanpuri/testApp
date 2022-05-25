









// import 'package:flutter/material.dart';

// class Otp extends StatefulWidget {
//   const Otp({Key? key}) : super(key: key);

//   @override
//   _OtpState createState() => _OtpState();
// }

// class _OtpState extends State<Otp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: const Color(0xfff7f6fb),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: GestureDetector(
//                   onTap: () => Navigator.pop(context),
//                   child: const Icon(
//                     Icons.arrow_back,
//                     size: 32,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               const Text(
//                 'Device Registeration',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Enter the Device Code",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black38,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 28,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(28),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _textFieldOTP(first: true, last: false),
//                         _textFieldOTP(first: false, last: false),
//                         _textFieldOTP(first: false, last: false),
//                         _textFieldOTP(first: false, last: true),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           foregroundColor:
//                               MaterialStateProperty.all<Color>(Colors.white),
//                           backgroundColor:
//                               MaterialStateProperty.all<Color>(Colors.purple),
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(24.0),
//                             ),
//                           ),
//                         ),
//                         child: const Padding(
//                           padding: EdgeInsets.all(14.0),
//                           child: Text(
//                             'Verify',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _textFieldOTP({bool? first, last}) {
//     // ignore: sized_box_for_whitespace
//     return Container(
//       height: 55,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.isEmpty && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:first_app/providers/home_page_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/home_page_provider.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         padding: EdgeInsets.all(10),
//         child: ChangeNotifierProvider<HomePageProvider>(
//           create: (context) => HomePageProvider(),
//           child: Consumer<HomePageProvider>(
//             builder: (context, provider, child) {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     provider.eligibilityMessage.toString(),
//                     style: TextStyle(
//                       color: (provider.isEligible == true)
//                           ? Colors.green
//                           : Colors.red,
//                     ),
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(hintText: "Enter your age:"),
//                     onChanged: (val) {
//                       provider.checkEligibility(int.parse(val));
//                     },
//                   )
//                 ],
//               );
//             },
//           ),
//         ),
//       )),
//     );
//   }
// }
