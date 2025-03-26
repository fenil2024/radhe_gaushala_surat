import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radhe_gaushala/cubits/navigation/navigation_cubit.dart';

List multiBlocProvider(context) {
  return [
    BlocProvider(create: (context) => NavigationCubit()),
  ];
}
