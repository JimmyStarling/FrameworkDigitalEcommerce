import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/cart/cart_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/home/details_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/home/home_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/process/forgot_password.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/profile/profile_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/signin/signin_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/signup/signup_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/splashscreen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};