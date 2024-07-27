import 'package:advanced_flutter_app/core/di/dependancy_ingection.dart';
import 'package:advanced_flutter_app/core/helpers/constants.dart';
import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:advanced_flutter_app/core/routing/app_router.dart';
import 'package:advanced_flutter_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/shared_pref_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // this to fix text hidden bug in flutter screen utill in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
