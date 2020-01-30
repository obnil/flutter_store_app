import 'package:flutter/material.dart';
import 'package:flutter_store_app/models/popular_model.dart';

class BestSellers extends StatelessWidget {
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
                'Best Sellers',
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
          padding: const EdgeInsets.only(top: 20.0,left: 20.0),
          child: Container(
            height: 120.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sellers.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage(sellers[index].imageUrl),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        sellers[index].name,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
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
