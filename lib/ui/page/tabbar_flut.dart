import 'package:flutter/material.dart';

class TabBarFlut extends StatefulWidget {
  const TabBarFlut({Key? key}) : super(key: key);

  @override
  State<TabBarFlut> createState() => _TabBarFlutState();
}

class _TabBarFlutState extends State<TabBarFlut> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 4, child: MainPageTab()),
    );
  }
}

class MainPageTab extends StatelessWidget {
  const MainPageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial Tab Bar'),
        bottom: const TabBar(tabs: <Widget>[
          Tab(
            icon: Icon(Icons.comment),
            text: 'Comment',
          ),
          Tab(
            child: Image(
              image: AssetImage('images/facebook.png'),
            ),
          ),
          Tab(
            icon: Icon(Icons.computer),
          ),
          Tab(
            text: 'News',
          ),
        ]),
      ),
      body: const TabBarView(
        children: <Widget>[
          FirstPage(),
          Center(
            child: Text('Tab 2'),
          ),
          Center(
            child: Text('Tab 3'),
          ),
          Center(
            child: Text('Tab 3'),
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Image(
            image: AssetImage('images/luffy.jpg'),
          ),
        ),
      ),
    );
  }
}
