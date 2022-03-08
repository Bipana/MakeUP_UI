import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

import '../blocs/second_block.dart';
import '../models/screen.dart';
import 'description_page.dart';

class MySecondHomePage extends StatefulWidget {
  const MySecondHomePage({Key? key}) : super(key: key);

  @override
  State<MySecondHomePage> createState() => _MySecondHomePageState();
}

class _MySecondHomePageState extends State<MySecondHomePage> {
  late SecondBloc secondBloc;

  @override
  void initState() {
    super.initState();
    secondBloc = SecondBloc();
    secondBloc.getMakeup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maybelline'),
      ),
      body: ValueListenableBuilder(
        valueListenable: secondBloc.makeup,
        child: const Text('=>'),
        builder:
            (BuildContext context, BuiltList<Product> value, Widget? child) {
          return ListView(
            children: value
                .map(
                  (product) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      child!,
                      Image.network(product.imageLink.toString()),
                      Text(product.name.toString()),
                      Text(product.createdAt.toString()),
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
                .toList(),
          );
        },
      ),
    );
  }
}