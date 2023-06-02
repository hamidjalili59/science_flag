import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/editor/bloc/math_keyboard/math_keyboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MathKeyboardCustom extends StatelessWidget {
  const MathKeyboardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 0.7.sw,
        maxWidth: 0.8.sw,
        minHeight: 0.1.sh,
        maxHeight: 0.5.sh,
      ),
      child: BlocBuilder<MathKeyboardBloc, MathKeyboardState>(
        bloc: getIt.get<MathKeyboardBloc>(),
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  getIt
                      .get<MathKeyboardBloc>()
                      .add(const MathKeyboardEvent.changeEditMode());
                },
                child: Container(
                  constraints: BoxConstraints(
                    minWidth: 0.8.sw,
                    minHeight: 50.h,
                    maxHeight: 0.2.sh,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade900.withOpacity(0.65),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: Math.tex(
                            state.data.isEmpty ? 'empty' : state.data,
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: IconButton(
                              onPressed: () {
                                getIt
                                    .get<MathKeyboardBloc>()
                                    .add(const MathKeyboardEvent.remove(''));
                              },
                              icon: Icon(
                                Icons.backspace_rounded,
                                color: Colors.white,
                                size: 16.r,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              state.editMode
                  ? Container(
                      width: 0.8.sw,
                      height: 0.305.sh,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: GridView(
                        padding: EdgeInsets.all(5.r),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                        ),
                        children: state.isAdvanced
                            ? [
                                KeyboardButtonWidget(
                                    isMath: true,
                                    value: r'\scriptstyle x',
                                    size: 28.r),
                                KeyboardButtonWidget(isIcon: false, value: 'y'),
                                KeyboardButtonWidget(isIcon: false, value: 'z'),
                                KeyboardButtonWidget(
                                    isMath: true, value: r'\int', size: 14.r),
                                KeyboardButtonWidget(
                                    isMath: true, value: r'\cos', size: 22.r),
                                KeyboardButtonWidget(isIcon: false, value: 'f'),
                                KeyboardButtonWidget(isIcon: false, value: 'f'),
                                KeyboardButtonWidget(isIcon: false, value: 'n'),
                                KeyboardButtonWidget(
                                    isMath: true, value: 'f(x)', size: 14.r),
                                KeyboardButtonWidget(
                                    isMath: true,
                                    value: r'\frac{\Box}{\Box}',
                                    size: 14.r),
                                KeyboardButtonWidget(isIcon: false, value: '7'),
                                KeyboardButtonWidget(isIcon: false, value: '8'),
                                KeyboardButtonWidget(isIcon: false, value: '9'),
                                KeyboardButtonWidget(
                                    icon: Icons.minimize_rounded),
                                KeyboardButtonWidget(icon: Icons.add_rounded),
                                KeyboardButtonWidget(
                                    isIcon: false, value: 'func'),
                                KeyboardButtonWidget(isIcon: false, value: '0'),
                                KeyboardButtonWidget(isIcon: false, value: '.'),
                                KeyboardButtonWidget(isIcon: false, value: '='),
                                KeyboardButtonWidget(
                                  icon: Icons.check_rounded,
                                  color: Colors.green,
                                ),
                              ]
                            : const [
                                KeyboardButtonWidget(isIcon: false, value: '1'),
                                KeyboardButtonWidget(isIcon: false, value: '2'),
                                KeyboardButtonWidget(isIcon: false, value: '3'),
                                KeyboardButtonWidget(isIcon: false, value: '%'),
                                KeyboardButtonWidget(isIcon: false, value: 'C'),
                                KeyboardButtonWidget(isIcon: false, value: '4'),
                                KeyboardButtonWidget(isIcon: false, value: '5'),
                                KeyboardButtonWidget(isIcon: false, value: '6'),
                                KeyboardButtonWidget(isIcon: false, value: '*'),
                                KeyboardButtonWidget(isIcon: false, value: '/'),
                                KeyboardButtonWidget(isIcon: false, value: '7'),
                                KeyboardButtonWidget(isIcon: false, value: '8'),
                                KeyboardButtonWidget(isIcon: false, value: '9'),
                                KeyboardButtonWidget(
                                    icon: Icons.minimize_rounded),
                                KeyboardButtonWidget(icon: Icons.add_rounded),
                                KeyboardButtonWidget(
                                    isIcon: false, value: 'func'),
                                KeyboardButtonWidget(isIcon: false, value: '0'),
                                KeyboardButtonWidget(isIcon: false, value: '.'),
                                KeyboardButtonWidget(isIcon: false, value: '='),
                                KeyboardButtonWidget(
                                  icon: Icons.check_rounded,
                                  color: Colors.green,
                                ),
                              ],
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        getIt
                            .get<MathKeyboardBloc>()
                            .add(const MathKeyboardEvent.changeEditMode());
                      },
                      icon: Icon(
                        Icons.keyboard,
                        color: Colors.black,
                        size: 36.r,
                      ))
            ],
          );
        },
      ),
    );
  }
}

class KeyboardButtonWidget extends StatelessWidget {
  final IconData icon;
  final String value;
  final MaterialColor? color;
  final bool isIcon;
  final bool isMath;
  final double size;
  const KeyboardButtonWidget({
    super.key,
    this.icon = Icons.abc_rounded,
    this.isIcon = true,
    this.value = '',
    this.color,
    this.isMath = false,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value == 'func') {
          return getIt
              .get<MathKeyboardBloc>()
              .add(const MathKeyboardEvent.switchTabs());
        }
        getIt.get<MathKeyboardBloc>().add(MathKeyboardEvent.write(
            getIt.get<MathKeyboardBloc>().state.data + value));
      },
      child: Padding(
        padding: EdgeInsets.all(3.0.r),
        child: Container(
          constraints: BoxConstraints(
              minWidth: 30.w, maxWidth: 80.w, minHeight: 40.h, maxHeight: 40.h),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            gradient: LinearGradient(
              colors: color == null
                  ? [
                      Colors.grey.shade400,
                      Colors.grey.shade300,
                      Colors.grey.shade200
                    ]
                  : [
                      color!.shade500,
                      color!.shade400,
                      color!.shade300,
                    ],
              stops: const [
                0.0,
                0.55,
                0.8,
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: isMath
              ? Center(
                  child: Math.tex(
                    textStyle: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: size.r),
                    value,
                    mathStyle: MathStyle.displayCramped,
                  ),
                )
              : isIcon
                  ? Icon(
                      icon,
                      size: 26.r,
                      color: color == null ? Colors.black : Colors.white70,
                    )
                  : Center(
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
        ),
      ),
    );
  }
}
