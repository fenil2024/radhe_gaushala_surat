import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radhe_gaushala/cubits/navigation/navigation_cubit.dart';
import 'package:radhe_gaushala/utility/globals.dart';

class BlocEvent {
  BlocEvent._();

  static NavigationCubit navigationCubit = navigationContext.read();

  static final push = navigationCubit.push;
  static final pushAndRemoveUntil = navigationCubit.pushAndRemoveUntil;
  static final pop = navigationCubit.pop;
}
