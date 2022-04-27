import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/app/utils/enum.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/home/home_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/home/search_screen.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/profile/profile_screen.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = AppColors.SECONDARY_COLOR;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: 
                FaIcon(
                  FontAwesomeIcons.house,
                  color: MenuState.home == selectedMenu
                      ? AppColors.PRIMARY_COLOR
                      : inActiveIconColor,
                )
                ,
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: 
                FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: MenuState.explore == selectedMenu
                      ? AppColors.PRIMARY_COLOR
                      : inActiveIconColor,
                )
                ,
                onPressed: () =>
                    Navigator.pushNamed(context, SearchScreen.routeName),
              ),
              IconButton(
                icon: 
                FaIcon(
                  FontAwesomeIcons.person,
                  color: MenuState.profile == selectedMenu
                      ? AppColors.PRIMARY_COLOR
                      : inActiveIconColor,
                )
                ,
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}