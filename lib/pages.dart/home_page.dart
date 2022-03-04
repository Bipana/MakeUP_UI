import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

import '../models/api.dart';
import '../models/screen.dart';
import 'description_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final StreamController<BuiltList<Product>> _productController =
      StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //then - callback function
    //registers call back to be called when this future completes.
    //when this future completes with a value, it then add the value to sink.
    getMakeUp()
        .then((BuiltList<Product> value) => _productController.sink.add(value))
        .catchError((error) => _productController.addError(error));
  }

  // addToStream(BuiltList<Product> value) => _productController.sink.add(value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maybelline'),
      ),
      body: StreamBuilder(
        stream: _productController.stream,
        builder: ((context, AsyncSnapshot<BuiltList<Product>> snapshot) {
          if (snapshot.hasError) {
            return const Text("There is error");
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            return ListView(
              children: snapshot.data
                      ?.map(
                        (product) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(product.image_link.toString()),
                            Text(product.name.toString()),
                            Text(product.created_at.toString()),
                            ElevatedButton(
                              child: const Text('Description'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DescriptionPage(
                                              product: product,
                                            )));
                              },
                            ),
                          ],
                        ),
                      )
                      .toList() ??
                  [],
            );
          }
        }),
      ),
    );
  }
}