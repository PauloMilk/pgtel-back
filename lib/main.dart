import 'package:flutter/material.dart';
import 'package:pgtel_app/src/config/custom_colors.dart';
import 'package:pgtel_app/src/pages/auth/sign_in_screen.dart';
import 'package:pgtel_app/src/pages/base/base_screen.dart';
import 'package:pgtel_app/src/pages/page_routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PGTEL App',
      theme: ThemeData(
        primarySwatch: CustomColors.customSwatchColor,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SIGNIN,
      routes: AppRoutes.routes,
    );
  }
}
