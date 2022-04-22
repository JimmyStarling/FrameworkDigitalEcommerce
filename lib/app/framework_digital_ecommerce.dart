import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/app/utils/constants.dart';

class App extends StatelessWidget {
	const App({Key? key}): super(key : key); 

	@override
	Widget build(BuildContext context){
		return MaterialApp(
				debugShowCheckedModeBanner: false,
				title: appName,
				theme: ThemeData(
						primarySwatch: Colors.blue
				),
				home: const Text(
          'Testing',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )  
        ),
		);
	}
}
