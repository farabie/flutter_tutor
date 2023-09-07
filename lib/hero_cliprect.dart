import 'package:flutter/material.dart';

class HeroClipFlut extends StatelessWidget {
  const HeroClipFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHeroPage(),
    );
  }
}

class MainHeroPage extends StatelessWidget {
  const MainHeroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Tutorial Hero Animation'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondHeroPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                image: NetworkImage(
                    'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/07/25/242787825.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///Kalau hero salah satu tagnya tidak ada maka akan error assertion
///Tapi kalau salah satu saja tagnya maka hero animation tidak berjalan
class SecondHeroPage extends StatelessWidget {
  const SecondHeroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Tutorial Hero Animation'),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                image: NetworkImage(
                    'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/07/25/242787825.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
