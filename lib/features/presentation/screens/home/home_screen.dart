import 'dart:html';

import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/app/utils/enum.dart';
import 'package:framework_digital_ecommerce/features/presentation/components/custom_bottom_navbar.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavbar(selectedMenu: MenuState.home),
    );
    
  }
}