import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/widgets/BestFoodWidget.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/PopularFoodsWidget.dart';
import 'package:flutter_app/widgets/SearchWidget.dart';
import 'package:flutter_app/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> selectedCategory = [
    "Kofluence",
    "Food",
  ];

  List<String> unSelectedCategory = [
    "Burger",
    "Sushi",
    "Pizza",
    "Cake",
    "Ice Cream",
    "Soft Drink",
    "Snacks",
    "Juices",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.white,
              size: MediaQuery.of(context).size.width * 0.08),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Details',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset('assets/appLogo.png', height: 20, width: 20),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () => Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("In Development"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () => Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("In Development"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("In Development"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TopMenus(foodCategoryVals: unSelectedCategory),
              PopularFoodsWidget(),
              BestFoodWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
