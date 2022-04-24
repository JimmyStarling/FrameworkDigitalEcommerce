import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/features/presentation/widgets/custom_textfield.dart';

import '../widgets/custom_filledbutton.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final bool _autoValidate = false;
  
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: const ListTile(
                        title: Text(
                          'Bem vindo',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ), 
                        subtitle: Text(
                          'Faça login para continuar',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0.2),
                      child:
                        Text(
                          'Registrar-se',
                          style: TextStyle(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Divider(color: Colors.black12),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 26),
                child:
                filledButton(
                  'Entrar', 
                  onPressed,
                ),
              ),
            ],
            )) // Form
          ],
        ),  
      )
    );
  }
  onPressed () => {
    print("testing")
  };
}
