import 'package:flutter/material.dart';

class PositionedFloatingFlut extends StatelessWidget {
  const PositionedFloatingFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          //Lingkaran Kecil
          Positioned(
            top: -getSmallDiameter(context) / 3,
            right: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2),
                    Color(0xFFFF6dA7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          //Lingkaran Besar
          Positioned(
            top: -getBigDiameter(context) / 4,
            left: -getBigDiameter(context) / 4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2),
                    Color(0xFFFF6dA7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Text(
                  'dribblee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: "Pacifico",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 4,
            bottom: -getBigDiameter(context) / 4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(16, 25, 16, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xFFFF4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFFFF4891),
                            )),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Color(0xFFFF4891))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xFFFF4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFFFF4891),
                            )),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xFFFF4891))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20,
                    bottom: 20,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                        color: Color(0xFFFF4891),
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              splashColor: Colors.amber,
                              child: Center(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFB226B2),
                                Color(0xFFFF6dA7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: "facebook",
                        mini: true,
                        onPressed: () {},
                        elevation: 0,
                        child: Image(
                          image: AssetImage(
                            'images/facebook.png',
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: "twitter",
                        mini: true,
                        onPressed: () {},
                        elevation: 0,
                        child: Image(
                          image: AssetImage(
                            'images/twitter.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'DON\'T HAVE AN ACCOUNT? ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Color(0xFFFF4891),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
