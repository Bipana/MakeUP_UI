import 'package:flutter/material.dart';

import '../models/screen.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key, required this.product,}) : super(key: key);
  final Product product;
  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description Page'),
      ),
      body: Center(
        child: Text(widget.product.description),
      ),
    );
  }
}

