import 'package:flutter/material.dart';

class CustomTabBarFlut extends StatelessWidget {
  const CustomTabBarFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(
            top: BorderSide(
              width: 5,
              color: Colors.purple,
            ),
          )),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: 'Comment',
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: 'Computer',
        ),
      ],
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        ///Untuk tab harus pakek default tab controller dulu
        ///kemudian set length/atau panjangnya
        ///Kemudian barulah masukan childnya scaffold
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Custom Tab Bar'),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                  color: Colors.amber,
                  child: myTabBar,
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Text('Tab 1'),
                ),
                Center(
                  child: Text('Tab 2'),
                ),
              ],
            ),
          ),
        ));
  }
}
