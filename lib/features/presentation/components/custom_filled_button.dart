import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';

Widget filledButton(String text, void Function() onPressed) {
  return 
  SizedBox(
    child:
    Expanded(
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        ElevatedButton(
          style:
          ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 25)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: AppColors.SECONDARY_COLOR),
              )
            )
          ),
          child: Text(
            text,
            style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
          ),
          onPressed: () {
            onPressed();
          },
        )
        ]
      )
    )
  );
  }