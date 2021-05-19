import 'package:flutter/material.dart';
import 'package:learning_providers/homescreen.dart';
import 'package:learning_providers/model/itemAddNotifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Homeapp());
}

class Homeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ItemAddNotifier();
      },
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen()),
    );
  }
}
