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
  EditorMobileWidget({Key? key}) : super(key: key);

  @override
  State<EditorMobileWidget> createState() => _EditorMobileWidgetState();
}

class _EditorMobileWidgetState extends State<EditorMobileWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    getIt.get<EditorPageBloc>().add(const EditorPageEvent.readDocument([]));
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
                title: Text(
                  'محتویات مورد نظر را انتخاب کنید',
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                content: SizedBox(
                  width: 0.35.sw,
                  height: 0.2.sh,
                  child: ListView(children: [
                    InkWell(
                      onTap: () => getIt.get<EditorPageBloc>().add(
                          EditorPageEvent.addTool(
                              'formula',
                              editorState.controller!.selection.baseOffset,
                              false)),
                      child: ListTile(
                        selected: true,
                        selectedTileColor:
                            Theme.of(context).colorScheme.secondary,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: SvgPicture.asset(SVGAssets.formula)),
                            ),
                            const Flexible(flex: 5, child: Text('فرمول')),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => getIt.get<EditorPageBloc>().add(
                          EditorPageEvent.addTool(
                              'camera',
                              editorState.controller!.selection.baseOffset,
                              false)),
                      child: ListTile(
                        selected: true,
                        selectedTileColor:
                            Theme.of(context).colorScheme.secondary,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: SvgPicture.asset(SVGAssets.slide)),
                            ),
                            const Flexible(flex: 5, child: Text('دوربین')),
                          ],
                        ),
                      ),
                    ),
                  ]),
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
                            bottom: MediaQuery.of(context).padding.bottom,
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
      // Icons.rocket_launch_outlined
      return SizedBox(
        width: 0.65.sw,
        height: 0.35.sh,
        child:
            Image.file(File((node.value.data['images'] as List<String>).first)),
      );
    }

    if (node.value.type == 'formula') {
      // Icons.rocket_launch_outlined
      return SizedBox(
          width: 80,
          height: 50,
          child: Math.tex('r${node.value.data['value']}'));
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
    final _canLaunch = await canLaunchUrl(uri);
    if (_canLaunch) {
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
      print(data);
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
