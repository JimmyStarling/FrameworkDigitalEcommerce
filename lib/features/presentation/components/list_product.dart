import 'package:flutter/material.dart';

class _buildListProduct extends StatelessWidget {

	const _buildListProduct({BuildContext context, DocumentSnapshot document}) : super(context: context, document: document);

	
  @override
  Widget build(BuildContext context, DocumentSnapshot document) {
    return Column(
			crossAxisAlignment: CrossAxisAlignment.center,
			mainAxisAlignment: MainAxisAlignment.stretch,
			children: <Widget>[
				Text(document['name']),
				Text(document['description']),
				Text(document['price']),
				Text(document['createdAt']),
			]
		)
	}
}
