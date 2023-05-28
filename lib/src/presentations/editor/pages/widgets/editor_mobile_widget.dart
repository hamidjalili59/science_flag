import 'dart:io';

import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quill_delta/quill_delta.dart';
import 'package:ndialog/ndialog.dart';
import 'package:url_launcher/url_launcher.dart';

class EditorMobileWidget extends StatefulWidget {
  const EditorMobileWidget({Key? key}) : super(key: key);

  @override
  State<EditorMobileWidget> createState() => _EditorMobileWidgetState();
}

class _EditorMobileWidgetState extends State<EditorMobileWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorPageBloc, EditorPageState>(
      bloc: getIt.get<EditorPageBloc>(),
      builder: (context, editorState) {
        final defaultTheme = FleatherThemeData.fallback(context);
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            onPressed: () {
              NDialog(
                dialogStyle: DialogStyle(
                  titleDivider: false,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h),
                  titlePadding: EdgeInsets.symmetric(vertical: 10.h),
                ),
                title: Text(
                  'محتویات مورد نظر را انتخاب کنید',
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                content: SizedBox(
                  width: 0.35.sw,
                  height: 0.24.sh,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      InkWell(
                        onTap: () => getIt.get<EditorPageBloc>().add(
                            EditorPageEvent.addTool(
                                'formula',
                                editorState.controller!.selection.baseOffset,
                                false)),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 35,
                                  height: 25,
                                  child: SvgPicture.asset(SVGAssets.formula)),
                              SizedBox(width: 0.25.sw),
                              const Text('فرمول'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => getIt.get<EditorPageBloc>().add(
                            EditorPageEvent.addTool(
                                'gallary',
                                editorState.controller!.selection.baseOffset,
                                false)),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 35,
                                height: 25,
                                // child: SvgPicture.asset(SVGAssets.formula),
                                child: Icon(Icons.image_rounded),
                              ),
                              SizedBox(width: 0.25.sw),
                              const Text('گالری'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => getIt.get<EditorPageBloc>().add(
                            EditorPageEvent.addTool(
                                'camera',
                                editorState.controller!.selection.baseOffset,
                                false)),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 35,
                                height: 25,
                                child: Icon(Icons.camera_alt_rounded),
                              ),
                              SizedBox(width: 0.25.sw),
                              const Text('دوربین'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ).show(context);
            },
            label: Icon(
              Icons.add_rounded,
              color: GeneralConstants.backgroundColor,
              size: 26.r,
            ),
          ),
          backgroundColor: Colors.white,
          body: editorState.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    FleatherToolbar.basic(controller: editorState.controller!),
                    Divider(
                        height: 1, thickness: 1, color: Colors.grey.shade200),
                    Expanded(
                      child: FleatherTheme(
                        data: defaultTheme,
                        child: FleatherEditor(
                          contextMenuBuilder: (context, editableTextState) {
                            return Container(
                              width: 100,
                              height: 50,
                              color: Colors.red,
                            );
                          },
                          controller: editorState.controller!,
                          focusNode: _focusNode,
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 0.35.sh,
                          ),
                          onLaunchUrl: _launchUrl,
                          maxContentWidth: 800,
                          enableInteractiveSelection: true,
                          showCursor: true,
                          embedBuilder: _embedBuilder,
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget _embedBuilder(BuildContext context, EmbedNode node) {
    if (node.value.type == 'hr') {
      final theme = FleatherTheme.of(context)!;
      return Divider(
        height: theme.paragraph.style.fontSize! * theme.paragraph.style.height!,
        thickness: 2,
        color: Colors.grey.shade200,
      );
    }

    if (node.value.type == 'math') {
      // Icons.rocket_launch_outlined
      return const Icon(
        Icons.access_time_outlined,
        color: Color(0xFFFBFC22),
        size: 38,
      );
    }

    if (node.value.type == 'camera') {
      return SizedBox(
        width: 0.65.sw,
        height: 0.35.sh,
        child: Image.file(File(node.value.data['images'])),
        // child: Image.memory((node.value.data['images'])),
        // child: const Icon(Icons.access_alarm_outlined),
      );
    }
    if (node.value.type == 'gallary') {
      // Icons.rocket_launch_outlined
      return SizedBox(
        width: 0.8.sw,
        height: 0.4.sh,
        child: Image.file(File(node.value.data['image'])),
        // Image.memory((node.value.data['images'] as Uint8List)),
      );
    }

    if (node.value.type == 'formula') {
      // Icons.rocket_launch_outlined
      return Container(
        constraints: BoxConstraints(
            minHeight: 15.h, maxHeight: 80.h, minWidth: 80.w, maxWidth: 250.w),
        child: Math.tex(node.value.data['value'],
            mathStyle: MathStyle.text,
            textStyle: TextStyle(
              fontSize: node.value.data['size'],
            )),
      );
    }

    if (node.value.type == 'icon') {
      final data = node.value.data;
      // Icons.rocket_launch_outlined
      return InkWell(
        onTap: () {},
        child: Icon(
          IconData(int.parse(data['codePoint']),
              fontFamily: data['fontFamily']),
          color: Color(int.parse(data['color'])),
          size: 18,
        ),
      );
    }

    if (node.value.type == 'widget') {
      return Container(
        width: node.value.data['width'],
        height: node.value.data['height'],
        color: Colors.red,
      );
    }

    if (node.value.type == 'image' &&
        node.value.data['source_type'] == 'assets') {
      return Padding(
        padding: const EdgeInsets.only(left: 4, right: 2, top: 2, bottom: 2),
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(node.value.data['source']),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    throw UnimplementedError();
  }

  void _launchUrl(String? url) async {
    if (url == null) return;
    final uri = Uri.parse(url);
    final canLaunch = await canLaunchUrl(uri);
    if (canLaunch) {
      await launchUrl(uri);
    }
  }
}

/// This is an example insert rule that will insert a new line before and
/// after inline image embed.
class ForceNewlineForInsertsAroundInlineImageRule extends InsertRule {
  @override
  Delta? apply(Delta document, int index, Object data) {
    if (data is! String) return null;

    final iter = DeltaIterator(document);
    final previous = iter.skip(index);
    final target = iter.next();
    final cursorBeforeInlineEmbed = _isInlineImage(target.data);
    final cursorAfterInlineEmbed =
        previous != null && _isInlineImage(previous.data);

    if (cursorBeforeInlineEmbed || cursorAfterInlineEmbed) {
      final delta = Delta()..retain(index);
      if (cursorAfterInlineEmbed && !data.startsWith('\n')) {
        delta.insert('\n');
      }
      delta.insert(data);
      if (cursorBeforeInlineEmbed && !data.endsWith('\n')) {
        delta.insert('\n');
      }
      return delta;
    }
    return null;
  }

  bool _isInlineImage(Object data) {
    if (data is EmbeddableObject) {
      return data.type == 'image' && data.inline;
    }
    if (data is Map) {
      return data[EmbeddableObject.kTypeKey] == 'image' &&
          data[EmbeddableObject.kInlineKey];
    }
    return false;
  }
}
