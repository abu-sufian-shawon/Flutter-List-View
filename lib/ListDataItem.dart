import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListDataItem extends StatefulWidget {
  String _itemName;

  ListDataItem(this._itemName);

  @override
  _ListDataItemState createState() => _ListDataItemState();
}

class _ListDataItemState extends State<ListDataItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.only(top: 2.0),
      shadowColor: Colors.lightBlueAccent,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                widget._itemName,
                style: TextStyle(fontSize: 20),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              maxRadius: 20.0,
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
