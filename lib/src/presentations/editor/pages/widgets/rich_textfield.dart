// import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart';

// class RichTextEditor extends StatelessWidget {
//   const RichTextEditor({super.key, required this.controller});
//   final QuillController controller;

//   @override
//   Widget build(BuildContext context) {
//     return QuillEditor(
//         controller: controller,
//         readOnly: false,
//         autoFocus: false,
//         expands: false,
//         focusNode: FocusNode(),
//         padding: EdgeInsets.zero,
//         scrollController: ScrollController(),
//         scrollable: false,
//         customStyles: DefaultStyles(
//           color: Colors.orange,
//           h1: DefaultTextBlockStyle(
//             const TextStyle(
//               color: Colors.black,
//             ),
//             const VerticalSpacing(10, 10),
//             const VerticalSpacing(10, 10),
//             const BoxDecoration(),
//           ),
//           h2: DefaultTextBlockStyle(
//             const TextStyle(
//               color: Colors.green,
//             ),
//             const VerticalSpacing(10, 10),
//             const VerticalSpacing(10, 10),
//             const BoxDecoration(),
//           ),
//           h3: DefaultTextBlockStyle(
//             const TextStyle(
//               color: Colors.blue,
//             ),
//             const VerticalSpacing(10, 10),
//             const VerticalSpacing(10, 10),
//             const BoxDecoration(),
//           ),
//         ));
//   }
// }
