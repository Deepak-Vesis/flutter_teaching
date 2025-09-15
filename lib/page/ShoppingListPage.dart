// import 'package:calculator/utils/data.dart';
// import 'package:calculator/utils/text_style.dart';
// import 'package:flutter/material.dart';
//
// class Shoppinglistpage extends StatefulWidget {
//   Shoppinglistpage({super.key});
//
//   @override
//   State<Shoppinglistpage> createState() => _ShoppinglistpageState();
// }
//
// class _ShoppinglistpageState extends State<Shoppinglistpage> {
//   final TextEditingController searchController = TextEditingController();
//
//   List<FoodItems> foodListLocal = [];
//
//   @override
//   void initState() {
//     foodListLocal = foodList;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         height: double.infinity,
//         child: Column(
//           children: [
//
//             _headerBox(), // Header stays fixed
//             Expanded(
//               child: ListView(
//                 children:
//                     foodListLocal
//                         .map((e) => _buildCard(title: e.name, count: e.count))
//                         .toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       // bottomSheet: buildTextField(), // Uncomment if you want fixed form
//     );
//   }
//
//   Card _buildCard({required String title, required String count}) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: ListTile(
//         title: Text(title, style: getBFStyle()),
//         subtitle: Text("Count: $count", style: getRFStyle()),
//       ),
//     );
//   }
//
//   Widget _headerBox() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//       width: double.infinity,
//       color: Colors.amber,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Discover",
//             style: getBFStyle(color: Colors.white, fontSize: 20),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             "Everything needs effort to learn !!!",
//             style: getMFStyle(color: Colors.white),
//           ),
//           const SizedBox(height: 12),
//           _textFormField(
//             controller: searchController,
//             onChanged: (value) {
//               var f =
//                   foodList
//                       .where((element) => element.name.toUpperCase().contains(value.toUpperCase()))
//                       .toList();
//               print("Food 1s :${f.toList()}");
//               print("Food 2nd :${foodListLocal.toList()}");
//               setState(() {
//                 foodListLocal = f;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   TextFormField _textFormField({
//     TextEditingController? controller,
//     void Function(String)? onChanged,
//   }) {
//     return TextFormField(
//       controller: controller,
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Colors.white,
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.red.withOpacity(0.5)),
//         ),
//         border: const OutlineInputBorder(),
//       ),
//     );
//   }
// }
