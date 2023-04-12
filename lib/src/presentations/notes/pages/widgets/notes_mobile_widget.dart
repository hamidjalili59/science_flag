import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/notes/bloc/notes/notes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesMobileWidget extends StatelessWidget {
  const NotesMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: BlocBuilder<NotesBloc, NotesState>(
        bloc: StaticDependencies.notesbloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            failed: () => const Text('Failed'),
            idle: (isLoading, notes) {
              if (notes.isEmpty) {
                StaticDependencies.notesbloc
                    .add(const NotesEvent.getNotesItem());
              }
              return Column(
                children: [
                  const Expanded(flex: 1, child: AppbarSubPagesWidget()),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      width: 1.sw,
                      child: ListView.builder(
                        itemCount: notes.length,
                        itemBuilder: (context, position) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8.0.h,
                              horizontal: 20.w,
                            ),
                            child: Container(
                              height: 90.h,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  borderRadius: BorderRadius.circular(26.r)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 40.w,
                                    child: Image.asset(
                                      notes[position].category == 'math'
                                          ? PngAssets.mathNote
                                          : notes[position].category ==
                                                  'chemistry'
                                              ? PngAssets.chemistryNote1
                                              : PngAssets.chemistryNote2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.5.sw,
                                    child: Text(
                                      notes[position].title,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .surface,
                                          ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      StaticDependencies.autoRoutes
                                          .pushNamed('/editor');
                                    },
                                    child: SizedBox(
                                      width: 40.w,
                                      child: Padding(
                                        padding: EdgeInsets.all(6.0.r),
                                        child: Image.asset(
                                          PngAssets.open,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class AppbarSubPagesWidget extends StatelessWidget {
  const AppbarSubPagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.87.sw,
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).colorScheme.surface,
            size: 30.r,
          ),
          Text(
            'Notes',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 30.w,
            child: Image.asset(
              PngAssets.search_1,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
    );
  }
}
