import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:makeup_ui/blocs/home_bloc.dart';

import '../models/api.dart';
import '../models/screen.dart';
import 'description_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final homeBloc = HomeBloc();

  @override
  void initState() {
    super.initState();
    homeBloc.getMakeup();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maybelline'),
      ),
      body: StreamBuilder(
        stream: homeBloc.makeupStream,
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
