import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/FoodDetailsPage.dart';

class PopularFoodsWidget extends StatefulWidget {
  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularFoodTitle(),
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;
  String date;
  String type;
  String like;
  String comment;
  PopularFoodTiles({
    Key key,
    @required this.name,
    @required this.imageUrl,
    @required this.rating,
    @required this.numberOfRating,
    @required this.price,
    @required this.slug,
    @required this.date,
    @required this.type,
    @required this.like,
    @required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              boxShadow: [],
            ),
            child: Column(
              children: [
                Card(
                  color: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.46,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Align(
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(right: 5, top: 5),
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            Text(
                                              " " + date,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01,
                                        ),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          child: type == "pic"
                                              ? Icon(
                                                  Icons.image,
                                                  color: Colors.black,
                                                  size: 20,
                                                )
                                              : Icon(
                                                  Icons.play_circle_fill,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/popular_foods/' +
                                      imageUrl +
                                      ".png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.width * 0.4,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite, size: 15),
                                    Text(
                                      like,
                                      style: TextStyle(
                                          color: Color(0xFF6e6e71),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.message, size: 15),
                                    Text(
                                      comment,
                                      style: TextStyle(
                                          color: Color(0xFF6e6e71),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Text(
        "Your Posts",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularFoodTiles(
          type: "pic",
          name: "Fried Egg",
          imageUrl: "ic_popular_food_1",
          rating: '4.9',
          numberOfRating: '200',
          price: '15.06',
          slug: "fried_egg",
          date: "01 Apr",
          like: "111 K",
          comment: '100',
        ),
        PopularFoodTiles(
          type: "video",
          name: "Mixed Vegetable",
          imageUrl: "ic_popular_food_3",
          rating: "4.9",
          numberOfRating: "100",
          price: "17.03",
          slug: "",
          date: "01 Apr",
          like: "222 K",
          comment: '200',
        ),
        PopularFoodTiles(
          type: "pic",
          name: "Salad With Chicken",
          imageUrl: "ic_popular_food_4",
          rating: "4.0",
          numberOfRating: "50",
          price: "11.00",
          slug: "",
          date: "01 Apr",
          like: "333 K",
          comment: '300',
        ),
        PopularFoodTiles(
          type: "video",
          name: "Mixed Salad",
          imageUrl: "ic_popular_food_5",
          rating: "4.00",
          numberOfRating: "100",
          price: "11.10",
          slug: "",
          date: "01 Apr",
          like: "444 K",
          comment: '400',
        ),
        PopularFoodTiles(
          type: "pic",
          name: "Red meat,Salad",
          imageUrl: "ic_popular_food_2",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
          date: "01 Apr",
          like: "555 K",
          comment: '500',
        ),
        PopularFoodTiles(
          type: "video",
          name: "Mixed Salad",
          imageUrl: "ic_popular_food_5",
          rating: "4.00",
          numberOfRating: "100",
          price: "11.10",
          slug: "",
          date: "01 Apr",
          like: "666 K",
          comment: '600',
        ),
        PopularFoodTiles(
          type: "pic",
          name: "Potato,Meat fry",
          imageUrl: "ic_popular_food_6",
          rating: "4.2",
          numberOfRating: "70",
          price: "23.0",
          slug: "",
          date: "01 Apr",
          like: "777 K",
          comment: '700',
        ),
        PopularFoodTiles(
          type: "video",
          name: "Fried Egg",
          imageUrl: "ic_popular_food_1",
          rating: '4.9',
          numberOfRating: '200',
          price: '15.06',
          slug: "fried_egg",
          date: "01 Apr",
          like: "888 K",
          comment: '800',
        ),
        PopularFoodTiles(
          type: "pic",
          name: "Red meat,Salad",
          imageUrl: "ic_popular_food_2",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
          date: "01 Apr",
          like: "999 K",
          comment: '900',
        ),
      ],
    );
  }
}
