import 'package:flutter/material.dart';
import 'package:flutter_store_app/models/popular_model.dart';
import 'package:flutter_store_app/screens/popular_screen.dart';

class PopularDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Popular Deals',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0,top: 20.0),
          child: Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: populars.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 30.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PopularScreen(popular: populars[index]),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(25.0),
                          color: Theme.of(context).accentColor,
                          width: 120.0,
                          child: Image(
                            image: AssetImage(populars[index].imageUrl),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          populars[index].desctiption,
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          '${populars[index].price}\$',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
