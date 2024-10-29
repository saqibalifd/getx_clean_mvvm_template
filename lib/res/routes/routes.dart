import 'package:clean_temp/presentation/screens/screens_imports.dart';
import 'package:get/get.dart';

import 'routes_imports.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => LoginScreen(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.signUpScreen,
          page: () => SignUpScreen(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.profileInfoScreen,
          page: () => ProfileInfoScreen(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
