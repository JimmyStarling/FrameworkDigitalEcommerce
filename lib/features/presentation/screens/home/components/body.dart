import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:framework_digital_ecommerce/features/presentation/components/custom_card.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';
import 'package:framework_digital_ecommerce/features/presentation/components/list_product.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
	
	//FirebaseFirestore firestore = FirebaseFirestore.instance;

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
      //child: SingleChildScrollView(
        child: 
          Row(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
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
							StreamBuilder(
								stream: FirebaseFirestore.instance.collection('fruits').snapshots(),
								builder: (context, snapshot){
									if (snapshot.hasData!) return const Text('Loading..');
									return ListView.builder(
										itemExtent: 80.0,
										itemCount: snapshot.data.documents.length,
										itemBuilder: (context, index) =>
											_buildListProduct(context, snapshot.data.documents[index]),
									)
								}
							),
            ],
          )
			);
    
  }
}
