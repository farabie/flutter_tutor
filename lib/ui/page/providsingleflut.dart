import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/aplication_color.dart';
import 'package:provider/provider.dart';

class ProviderSingleFlut extends StatelessWidget {
  const ProviderSingleFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<ApplicationColor>(
        ///Ubah provider jadi versi 6.00
        ///Di versi 6.00 tidak ada builder, builder diganti jadi create
        ///Yang mana is create itu cuman (context) => (BuildContext)
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                'Provider State Management',
                style: TextStyle(
                  color: applicationColor.color,
                ),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                    width: 100,
                    height: 100,
                    color: applicationColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("AB"),
                    ),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBlue,
                        onChanged: (newValue) {
                          applicationColor.isLightBlue = newValue;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("LB"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
