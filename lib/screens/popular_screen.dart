import 'package:flutter/material.dart';
import 'package:flutter_store_app/models/popular_model.dart';

class PopularScreen extends StatefulWidget {
  final Popular popular;
  PopularScreen({this.popular});
  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  Widget _buildBuy() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              alignment: Alignment.center,
              height: 70,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                'Buy Now 120\$',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              )),
          Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 1),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                'Add to Card',
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 14.0),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 15,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 10.0),
                        blurRadius: 6.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 100.0),
                  child: Text(
                    widget.popular.desctiption,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => {
                        Navigator.pop(context),
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image(
                              alignment: Alignment.bottomLeft,
                              color: Colors.white,
                              width: 30.0,
                              image:
                                  AssetImage('assets/images/notification.png'),
                            ),
                            Container(
                              width: 25.0,
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Hero(
                      tag: widget.popular.imageUrl,
                      child: Image(
                        alignment: Alignment.bottomCenter,
                        width: 160,
                        fit: BoxFit.fitWidth,
                        image: AssetImage(widget.popular.imageUrl),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Experience your music like never before.',
                              style: TextStyle(fontSize: 22.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Image(
                                  width: 20,
                                  image:
                                      AssetImage('assets/images/battery.png'),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Up to 40-hour battery',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Image(
                                  width: 20,
                                  image: AssetImage('assets/images/wifi.png'),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Wi-Fi',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Image.asset('assets/images/foldedcase.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'With Fast Fuel, it only takes a few minutes of charging to get up to 3 hours of play, so you can be on your way quicker.',
                    style: TextStyle(fontSize: 14.0),
                    strutStyle: StrutStyle(leading: 0.5),
                  ),
                ),
              ],
            ),
          ),
          _buildBuy(),
        ],
      ),
    );
  }
}
