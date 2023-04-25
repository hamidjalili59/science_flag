import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/notes/bloc/notes/notes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              if (isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
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
                                    child: SvgPicture.asset(SVGAssets.math_1),
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
                                      height: 40.w,
                                      child: Padding(
                                        padding: EdgeInsets.all(6.0.r),
                                        child: SvgPicture.asset(
                                          SVGAssets.modify,
                                          fit: BoxFit.fitHeight,
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
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Theme.of(context).colorScheme.surface,
              size: 30.r,
            ),
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
            height: 35.w,
            child: SvgPicture.asset(
              SVGAssets.search,
              fit: BoxFit.fitHeight,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
    );
  }
}
