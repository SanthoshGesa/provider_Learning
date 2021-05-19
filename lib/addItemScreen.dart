import 'package:flutter/material.dart';
import 'package:learning_providers/model/itemAddNotifier.dart';
import 'package:provider/provider.dart';

class AddItemScreen extends StatelessWidget {
  AddItemScreen() : super();

  final String title = 'Add Items';
  final TextEditingController _itemNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _itemNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hintText: 'Item Name',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text('ADD ITEM'),
              onPressed: () async {
                if (_itemNameController.text.isEmpty) {
                  return;
                }
                await Provider.of<ItemAddNotifier>(context,listen: false).addItem(_itemNameController.text);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
