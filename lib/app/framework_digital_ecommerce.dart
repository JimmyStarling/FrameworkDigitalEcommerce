import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/app/utils/constants.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/login_screen.dart';
import 'package:framework_digital_ecommerce/resource/styles/theme.dart';

class App extends StatelessWidget {
	const App({Key? key}): super(key : key); 

	@override
	Widget build(BuildContext context){
		return MaterialApp(
				debugShowCheckedModeBanner: false,
				title: appName,
				theme: AppStyles.lightTheme(),
				home: LoginScreen(),
		);
	}
}
