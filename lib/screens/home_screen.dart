import 'package:flutter/material.dart';
import 'package:flutter_store_app/screens/best_sellers.dart';
import 'package:flutter_store_app/screens/popular_deals.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image(
                            alignment: Alignment.bottomLeft,
                            width: 30.0,
                            image: AssetImage('assets/images/notification.png'),
                          ),
                          Container(
                            width: 25.0,
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(color: Colors.white),
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
            Stack(
              children: <Widget>[
                Container(
                  child: Container(
                    margin: EdgeInsets.all(
                      20.0,
                    ),
                    padding:
                        EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
                    color: Color(0xFFBADAED),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(5.0),
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'data',
                                  style: TextStyle(
                                      color: Color(0xFFBADAED), fontSize: 12.0),
                                )),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Beats By Solo Dr.Dre\nWireless',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '24.90\$',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/product.png'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            PopularDeals(),
            SizedBox(
              height: 10.0,
            ),
            BestSellers(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/home.png'),
              width: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/shopping.png'),
              width: 20.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/deals.png'),
              width: 20.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/me.png'),
              width: 20.0,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
