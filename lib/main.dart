import 'package:advanced_flutter_app/core/di/dependancy_ingection.dart';
import 'package:advanced_flutter_app/core/routing/app_router.dart';
import 'package:advanced_flutter_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
