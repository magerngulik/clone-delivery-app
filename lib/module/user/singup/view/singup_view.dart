// import 'package:flutter/material.dart';
// import '../controller/singup_controller.dart';

// import 'package:get/get.dart';

// class SingupView extends StatelessWidget {
//   const SingupView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<SingupController>(
//       init: SingupController(),
//       builder: (controller) {
//         controller.view = this;

//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Singup"),
//           ),
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: const [
//                   //body
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }