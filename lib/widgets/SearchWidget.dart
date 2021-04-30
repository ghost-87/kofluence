import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final foodCategoryVals;

  SearchWidget({
    Key key,
    @required this.foodCategoryVals,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: <Widget>[
          Container(),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
