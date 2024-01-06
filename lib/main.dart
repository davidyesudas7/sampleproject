import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/application/bloc/sample_bloc_bloc.dart';
import 'package:sample_project/application/pages/homepage.dart';
import 'package:sample_project/application/provider/homepage_data_provider.dart';
import 'package:sample_project/core/injections.dart' as di;
import 'package:sample_project/core/injections.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<SampleBlocBloc>(),
        ),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
