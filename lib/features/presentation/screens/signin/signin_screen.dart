import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/features/presentation/components/custom_textfield.dart';
import 'package:framework_digital_ecommerce/features/presentation/screens/home/home_screen.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';

import '../../components/custom_filled_button.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final bool _autoValidate = false;
  bool _isChecked = false;
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
          Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Bem vindo',
                            style: TextStyle(
                              color: AppColors.SECONDARY_COLOR,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              height: 1.0,
                            ),
                          ), 
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Faça login para continuar',
                              style: TextStyle(
                                color: AppColors.SECONDARY_COLOR,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ]
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0.2),
                      child:
                        Text(
                          'Registrar-se',
                          style: TextStyle(
                            color: AppColors.SECONDARY_COLOR,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                    )
                  ],
                ),
            ),
            Form(
              key: _formKey,
              child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: CustomTextField(
                  hint: 'Email',
                  onSaved: (input) {
                    var _email = input;
                  },
                  validator: (value) { // TODO: Add emailValidation function;
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: CustomTextField(
                  obsecure: true,
                  hint: 'Password',
                  onSaved: (input) {
                    var _password = input;
                  },
                  validator: (input) { // TODO: Add validation method;
                    if (input != null){
                      if (input.isEmpty){
                      return "*Required";
                      } else {
                        return null;
                      }
                    }
                  }
                ),
              ), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 26),
                child:
                filledButton(
                  'Entrar', 
                  onPressed(context),
                ),
              ),
            ],
            )) // Form
          ],
        ),  
      )
    );
  }
  onPressed (context) => {
    Navigator.pushNamed(context, 'HomeScreen'),
  };

  onChecked(bool value) {
    print(value);
  }
}
