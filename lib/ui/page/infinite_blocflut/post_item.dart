import 'package:flutter/cupertino.dart';
import 'package:flutter_tutor/model/post.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(post.id),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 40) * 7 / 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post.title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(post.body),
              ],
            ),
          )
        ],
      ),
    );
  }
}
