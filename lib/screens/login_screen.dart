import 'package:flutter/material.dart';
import 'package:flutter_store_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: MediaQuery.of(context).size.height,
                image: AssetImage('assets/images/adam-birkett-unsplash.png'),
                fit: BoxFit.fitHeight,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Enter Premium Sound',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                              labelText: 'Name',
                              hintText: 'Name'),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextField(
                        obscureText: true,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            labelText: 'Pass',
                            hintText: 'Pass'),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ),
                        ),
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
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
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Forgot Your Password?',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('New Account',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
