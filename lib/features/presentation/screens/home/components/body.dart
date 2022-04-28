import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:framework_digital_ecommerce/features/presentation/components/custom_card.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

	cardsArray(int value) {
    if (value == 1) {
      return Colors.purple[800];
    } else if (value == 2) {
      return Colors.green[100];
    } else {
      return Colors.black87;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: 
          Column(
            children: <Widget>[
              const SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Center(
                    child: Text(
                      'Produtos 100%\nOrgânicos',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                      ),
                    ),
                  )
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                        color: AppColors.SECONDARY_COLOR,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                /*Column(
                  children: [
                    CustomCard(context, cardsArray)
                  ],
                )*/
                ]
              ),
            ],
          )
      )
    );
  }
}