import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:gasly/bloc/auth/auth_bloc.dart';
import 'package:gasly/bloc/customer/customer_bloc.dart';
import 'package:gasly/services/logger.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final dio = Dio();

  if (kDebugMode) {
    dio.interceptors.add(ResponseLoggingInterceptor());
  }

  // ─────────────────────────────
  // CORE SERVICES
  // ─────────────────────────────
  getIt.registerSingleton<Dio>(dio);

  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  // ─────────────────────────────
  // BLOC REGISTRATION
  // ─────────────────────────────

  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(getIt<FirebaseAuth>(), getIt<FirebaseFirestore>()),
  );

  getIt.registerFactory<CustomerBloc>(
    () => CustomerBloc(getIt<FirebaseFirestore>()),
  );
}
