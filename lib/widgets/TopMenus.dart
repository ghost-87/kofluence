import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class TopMenus extends StatefulWidget {
  final foodCategoryVals;

  TopMenus({
    Key key,
    @required this.foodCategoryVals,
  }) : super(key: key);

  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  List<String> fixedFoodCategory = ["food", "Kofluence"];
  List _foodCategoryValsChanged = [];
  void initState() {
    super.initState();
    setCategoryVals();
    print(_foodCategoryValsChanged);
  }

  setCategoryVals() {
    if (mounted) {
      if (widget.foodCategoryVals != null) {
        _foodCategoryValsChanged = widget.foodCategoryVals;
      }
    }
  }

  hashTagClicked(int index, bool searchedHasTag) {
    String temp;
    if (searchedHasTag) {
      if (index > 1) {
        setState(() {
          temp = fixedFoodCategory[index];
          fixedFoodCategory.removeAt(index);
          widget.foodCategoryVals.add(temp);
        });
      }
    } else {
      setState(() {
        temp = widget.foodCategoryVals[index];
        widget.foodCategoryVals.removeAt(index);
        fixedFoodCategory.add(temp);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: fixedFoodCategory.length,
                  itemBuilder: (context, i) {
                    return _topMenuTiles(fixedFoodCategory[i], i, true);
                  },
                ),
              ),
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  'Hashtags:',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: widget.foodCategoryVals.length,
                itemBuilder: (context, i) {
                  return _topMenuTiles(
                    widget.foodCategoryVals[i],
                    i,
                    false,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
// }

  Widget _topMenuTiles(String name, int index, bool searchedHasTag) {
    return InkWell(
      onTap: () => hashTagClicked(index, searchedHasTag),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 5),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                '#' + name,
                style: TextStyle(
                    color: Color(0xFF6e6e71),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
