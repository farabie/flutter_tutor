import 'package:flutter/material.dart';
import 'package:flutter_tutor/utils/post_result_model.dart';

class PostHttpFlut extends StatefulWidget {
  const PostHttpFlut({Key key}) : super(key: key);

  @override
  State<PostHttpFlut> createState() => _PostHttpFlutState();
}

class _PostHttpFlutState extends State<PostHttpFlut> {
  PostResult postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test API POST METHOD'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (postResult != null)
                    ? postResult.id +
                        " | " +
                        postResult.job +
                        " | " +
                        postResult.name +
                        " | " +
                        postResult.created
                    : "Tidak ada data",
              ),
              ElevatedButton(
                onPressed: () {
                  //Karena post resultnya awalnya null maka diganti jadi value atau isi dari hal tersebut
                  PostResult.connectToApi("Eva", "UI/UX").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text('POST'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
