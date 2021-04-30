import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/FoodDetailsPage.dart';

class BestFoodWidget extends StatefulWidget {
  @override
  _BestFoodWidgetState createState() => _BestFoodWidgetState();
}

class _BestFoodWidgetState extends State<BestFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          BestFoodTitle(),
          Expanded(
            child: BestFoodList(),
          )
        ],
      ),
    );
  }
}

class BestFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Similar Posts",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w800),
          ),
          Text(
            "24 Posts",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}

class BestFoodTiles extends StatelessWidget {
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

  BestFoodTiles({
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
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.34,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/bestfood/' + imageUrl + ".jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                  right:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(25.0),
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

class BestFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        BestFoodTiles(
          name: "Fried Egg",
          imageUrl: "ic_best_food_8",
          rating: '4.9',
          numberOfRating: '200',
          price: '15.06',
          slug: "fried_egg",
          date: "01 Apr",
          like: "111 K",
          comment: '100',
          type: "pic",
        ),
        BestFoodTiles(
          name: "Mixed vegetable",
          imageUrl: "ic_best_food_9",
          rating: "4.9",
          numberOfRating: "100",
          price: "17.03",
          slug: "",
          date: "12 May",
          like: "222 K",
          comment: '200',
          type: "video",
        ),
        BestFoodTiles(
          name: "Salad with chicken meat",
          imageUrl: "ic_best_food_10",
          rating: "4.0",
          numberOfRating: "50",
          price: "11.00",
          slug: "",
          date: "23 June",
          like: "333 K",
          comment: '300',
          type: "pic",
        ),
        BestFoodTiles(
          name: "New mixed salad",
          imageUrl: "ic_best_food_5",
          rating: "4.00",
          numberOfRating: "100",
          price: "11.10",
          slug: "",
          date: "04 July",
          like: "444 K",
          comment: '400',
          type: "video",
        ),
        BestFoodTiles(
          name: "Red meat with salad",
          imageUrl: "ic_best_food_1",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
          date: "15 Aug",
          like: "555 K",
          comment: '500',
          type: "pic",
        ),
        BestFoodTiles(
          name: "New mixed salad",
          imageUrl: "ic_best_food_2",
          rating: "4.00",
          numberOfRating: "100",
          price: "11.10",
          slug: "",
          date: "26 Sep",
          like: "666 K",
          comment: '600',
          type: "video",
        ),
        BestFoodTiles(
          name: "Potato with meat fry",
          imageUrl: "ic_best_food_3",
          rating: "4.2",
          numberOfRating: "70",
          price: "23.0",
          slug: "",
          date: "07 Oct",
          like: "700 K",
          comment: '700',
          type: "pic",
        ),
        BestFoodTiles(
          name: "Fried Egg",
          imageUrl: "ic_best_food_4",
          rating: '4.9',
          numberOfRating: '200',
          price: '15.06',
          slug: "fried_egg",
          date: "18 Nov",
          like: "800 K",
          comment: '800',
          type: "video",
        ),
        BestFoodTiles(
          name: "Red meat with salad",
          imageUrl: "ic_best_food_5",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
          date: "29 Dec",
          like: "999 K",
          comment: '900',
          type: "pic",
        ),
        BestFoodTiles(
          name: "Red meat with salad",
          imageUrl: "ic_best_food_6",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
          date: "10 Jan",
          like: "1000 K",
          comment: '1000',
          type: "video",
        ),
        BestFoodTiles(
          name: "Red meat with salad",
          imageUrl: "ic_best_food_7",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
          date: "21 Feb",
          like: "1111 K",
          comment: '1100',
          type: "pic",
        ),
      ],
    );
  }
}
