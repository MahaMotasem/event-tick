import 'package:event_trick/helpers/shared.dart';
import 'package:event_trick/onboarding/onboarding_page.dart';
import 'package:event_trick/routing/app_router.dart';
import 'package:event_trick/routing/routes.dart';
import 'package:event_trick/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Shared.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext , Orientation , ScreenType ) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
         onGenerateRoute: onGenerateRoute,
        initialRoute: Routes.onboarding,
      );
      },
    );
  }
}
