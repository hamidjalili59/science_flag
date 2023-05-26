import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContentSelectionWidget extends StatelessWidget {
  const ContentSelectionWidget({super.key});

  static String _selectedContentType = '';
  void _onTileClicked(String contentType) {
    _selectedContentType = contentType;
    // getIt.get<EditorBloc>().add(
    //       EditorEvent.addBlocTool(
    //         contentType == 'Text'
    //             ? EditorItemType.text
    //             : contentType == 'Image'
    //                 ? EditorItemType.image
    //                 : EditorItemType.formula,
    //       ),
    //     );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.32.sh,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h, bottom: 8.0.h),
              child: Text(
                'نوع محتوای مورد نظر را انتخاب کنید:',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.w700),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.text_fields_rounded),
                  SizedBox(width: 25.w),
                  const Text('Text'),
                ],
              ),
              selectedColor: Colors.blueGrey,
              iconColor: Colors.black,
              textColor: Colors.black,
              selectedTileColor: Colors.black.withOpacity(0.05),
              selected: _selectedContentType == 'Text',
              onTap: () => _onTileClicked('Text'),
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.image_rounded),
                  SizedBox(width: 25.w),
                  const Text('Image'),
                ],
              ),
              selected: _selectedContentType == 'Image',
              selectedColor: Colors.blueGrey,
              iconColor: Colors.black,
              textColor: Colors.black,
              selectedTileColor: Colors.black.withOpacity(0.05),
              onTap: () => _onTileClicked('Image'),
            ),
            ListTile(
              title: Row(
                children: [
                  SizedBox(
                      width: 25.w, child: SvgPicture.asset(SVGAssets.formula)),
                  SizedBox(width: 25.w),
                  const Text('Math Formula'),
                ],
              ),
              selected: _selectedContentType == 'Math Formula',
              selectedColor: Colors.blueGrey,
              iconColor: Colors.black,
              textColor: Colors.black,
              selectedTileColor: Colors.black.withOpacity(0.05),
              onTap: () => _onTileClicked('Math Formula'),
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.link_rounded),
                  SizedBox(width: 25.w),
                  const Text('Link'),
                ],
              ),
              selected: _selectedContentType == 'Link',
              selectedColor: Colors.blueGrey,
              iconColor: Colors.black,
              textColor: Colors.black,
              selectedTileColor: Colors.black.withOpacity(0.05),
              onTap: () => _onTileClicked('Link'),
            ),
          ],
        ),
      ),
    );
  }
}
