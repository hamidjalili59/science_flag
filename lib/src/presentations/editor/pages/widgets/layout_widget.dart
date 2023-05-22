// import 'package:base_project/src/config/constants/png_assets.dart';
// import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
// import 'package:base_project/src/injectable/injectable.dart';
// import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_rte/flutter_rte.dart';

// // import 'item_bloc_widgets/bloc_widgets.dart';

// class CustomLayoutWidget extends StatelessWidget {
//   final int index;

//   const CustomLayoutWidget({super.key, required this.index});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<EditorBloc, EditorState>(
//       bloc: getIt.get<EditorBloc>(),
//       builder: (context, state) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: state.stackWidgetData[index].type == EditorItemType.text
//               ? Directionality(
//                   textDirection: TextDirection.rtl,
//                   child: HtmlEditor(
//                     enableDictation: false,
//                     controller: state.controllers[state.stackWidgetData
//                         .where((e) => e.type == EditorItemType.text)
//                         .toList()
//                         .indexOf(state.stackWidgetData[index])],
//                     minHeight: 64,
//                     height: 500,
//                   ),
//                 )
//               : state.stackWidgetData[index].type == EditorItemType.image
//                   ? SizedBox(height: 100, child: Image.asset(PngAssets.bio_3))
//                   : SizedBox(height: 100, child: Image.asset(PngAssets.math_5)),
//           // child: itemList[EditorItemLayoutType.values.indexOf(tileType.type)],
//         );
//       },
//     );
//   }
// }
