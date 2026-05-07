import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gasly/bloc/auth/auth_bloc.dart';
import 'package:gasly/bloc/customer/customer_bloc.dart';

import 'package:gasly/constants/theme_data.dart';
import 'package:gasly/firebase_options.dart';
import 'package:gasly/router/app_router.dart';
import 'package:gasly/services/services_locator.dart';
import 'package:gasly/services/theme_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await dotenv.load();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupServiceLocator();
  await ThemeService.initializeTheme();

  runApp(const GaslyApp());
}

class GaslyApp extends StatelessWidget {
  const GaslyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<CustomerBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Gasly',
        debugShowCheckedModeBanner: false,
        theme: gaslyLightTheme,
        darkTheme: gaslyLightTheme,
        themeMode: ThemeMode.light,
        routerConfig: appRouter,
      ),
    );
  }
}
