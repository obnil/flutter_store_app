import 'package:flutter/material.dart';
import 'package:flutter_store_app/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: MediaQuery.of(context).size.height,
                image: AssetImage('assets/images/vincent-delegge-unsplash.png'),
                fit: BoxFit.fitHeight,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Listen all day',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Enjoy your playlist without interruption, because a full charge lasts up to 22 hours - or up to 40 hours with Pure ANC off.',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify,
                        strutStyle: StrutStyle(leading: 0.5),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LoginScreen(),
                                ),
                              ),
                            },
                            child: Container(
                                width: 140.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                          Container(
                              width: 140.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 1),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12.0,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w600),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
