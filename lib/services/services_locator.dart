import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:gasly/services/logger.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final dio = Dio();

  // Only attach logging in debug mode
  if (kDebugMode) {
    dio.interceptors.add(ResponseLoggingInterceptor());
  }

  // Register core shared services only
  getIt.registerSingleton<Dio>(dio);
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
}
