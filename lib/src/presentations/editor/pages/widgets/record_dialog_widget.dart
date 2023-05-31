import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:record/record.dart';

class RecordDialogWidget extends StatelessWidget {
  final String appDocumentsDir;
  final int baseOffset;
  const RecordDialogWidget(
      {super.key, required this.appDocumentsDir, required this.baseOffset});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorPageBloc, EditorPageState>(
      bloc: getIt.get<EditorPageBloc>(),
      builder: (context, state) {
        return SizedBox(
          height: 0.15.sh,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    onTap: () {
                      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Icon(
                        Icons.close,
                        size: 28.r,
                        color: Colors.white70,
                      ),
                    )),
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: state.inRecording
                      ? () async {
                          getIt
                              .get<EditorPageBloc>()
                              .add(const EditorPageEvent.recordAudio(false));
                          await getIt.get<Record>().stop();

                          // await getIt
                          //     .get<AudioPlayer>()
                          //     .setFilePath('$appDocumentsDir/voice$baseOffset');
                          getIt
                              .get<AppRouter>()
                              .popUntilRouteWithName('Editor');
                        }
                      : () async {
                          getIt
                              .get<EditorPageBloc>()
                              .add(const EditorPageEvent.recordAudio(true));
                          if (await getIt.get<Record>().hasPermission()) {
                            await getIt.get<Record>().start(
                                  path: '$appDocumentsDir/voice$baseOffset',
                                  encoder: AudioEncoder.aacLc, // by default
                                  bitRate: 128000, // by default
                                  samplingRate: 44100, // by default
                                );
                          }
                        },
                  child: CircleAvatar(
                    radius: 42.r,
                    child: Icon(
                      state.inRecording
                          ? Icons.stop_rounded
                          : Icons.mic_rounded,
                      size: 32.r,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
