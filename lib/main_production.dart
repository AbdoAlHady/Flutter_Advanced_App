import 'package:advanced_flutter_app/core/di/dependancy_ingection.dart';
import 'package:advanced_flutter_app/core/routing/app_router.dart';
import 'package:advanced_flutter_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // this to fix .sp font bug in flutter screen utill in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
