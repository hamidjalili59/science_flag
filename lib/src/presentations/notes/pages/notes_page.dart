import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/notes/pages/widgets/notes_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'notes')
class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => StaticDependencies.notesbloc,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Theme.of(context).colorScheme.onBackground,
              elevation: 5,
              label: Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 42.r,
              )),
          body: ScreenUtil().screenWidth < 400
              ? const NotesMobileWidget()
              : const NotesMobileWidget(),
        ),
      ),
    );
  }
}
