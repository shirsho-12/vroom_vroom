// import 'package:flutter/material.dart';
// import 'package:vroom_vroom/app_ui.dart';
// export 'responsive_layout_builder.dart';

// class UIButton extends StatelessWidget {
//   const UIButton(
//       {Key? key,
//       required this.title,
//       required this.infoText,
//       required this.icon})
//       : super(key: key);
//   final String title;
//   final String infoText;
//   final Icon icon;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox.fromSize(
//       size: const Size(200, 200),
//       child: ClipRRect(
//         child: Container(
//           color: VroomVroomColors.buttonColor,
//           child: Row(
//             children: [
//               Icon(
//                 icon.icon,
//                 color: VroomVroomColors.iconColor,
//                 size: 50,
//               ),
//               Column(
//                 children: [
//                   Text(
//                     title,
//                     style: VroomVroomTextStyle.headline3,
//                   ),
//                   Text(
//                     infoText,
//                     style: VroomVroomTextStyle.bodyText1,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class UISearchBar extends StatefulWidget {
//   const UISearchBar({Key? key}) : super(key: key);

//   @override
//   State<UISearchBar> createState() => _UISearchBarState();
// }

// class _UISearchBarState extends State<UISearchBar> {
//   late final TextEditingController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: _controller,
//       decoration: InputDecoration(
//         hintText: "Search...",
//         hintStyle: VroomVroomTextStyle.bodyText1,
//         // prefixIcon: Icon(
//         //   Icons.search,
//         //   color: VroomVroomColors.searchBackground,
//         // ),
//         suffixIcon: _controller.text.isNotEmpty
//             ? IconButton(
//                 icon: const Icon(
//                   Icons.clear,
//                   color: VroomVroomColors.iconColor,
//                 ),
//                 onPressed: () => _controller.clear(),
//               )
//             : null,
//         filled: true,
//         fillColor: VroomVroomColors.searchBackground,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }
