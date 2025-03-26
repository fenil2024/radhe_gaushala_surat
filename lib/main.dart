import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radhe_gaushala/helper_widget/multi_bloc_provider.dart';
import 'package:radhe_gaushala/helper_widget/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: List.from(multiBlocProvider(context)),
      child: Builder(
          builder: (context) => MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              initialRoute: '/',
              home: const Scaffold(
                body: NavigationScreen(),
              ))),
    );
  }
}


//dart run build_runner build
