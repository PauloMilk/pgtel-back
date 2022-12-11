import 'package:pgtel_app/src/pages/auth/sign_in_screen.dart';
import 'package:pgtel_app/src/pages/base/base_screen.dart';

abstract class AppRoutes {
  static final routes = {
    Routes.SIGNIN: (context) => SignInScreen(),
    Routes.BASE: (context) => BaseScreen(),
  };
}

abstract class Routes {
  static const SPLASH = '/splash';
  static const SIGNIN = '/signin';
  static const BASE = '/';
}
