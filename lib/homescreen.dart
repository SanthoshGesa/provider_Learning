import 'package:flutter/material.dart';
import 'package:learning_providers/addItemScreen.dart';
import 'package:learning_providers/model/itemAddNotifier.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  Homescreen() : super();

  final String title = 'Provider Tutorial';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return AddItemScreen();
                    },
                  ));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Consumer<ItemAddNotifier>(
              builder: (context, itemAddNotifier, _) {
                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: itemAddNotifier.itemList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          itemAddNotifier.itemList[index].itemName,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
