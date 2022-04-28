
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(BuildContext context, cardsArray, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color cardColor;
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), color: AppColors.PRIMARY_COLOR),
        child: Column(children: <Widget>[
					Container(
						margin: const EdgeInsets.only(top: 30), 
						child:
							const Text(
								'Produtos',
								style: TextStyle(
									color: Colors.white,
									fontSize: 18.0,
									fontWeight: FontWeight.w900,
								),
							),
					),
          const Text(
            'Produtos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ]));
  }
}