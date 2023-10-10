import 'package:flutter/material.dart';

///class User profile untuk membuat tampilan dari user
class UserProfile extends StatelessWidget {
  ///field ini digunakan untuk menyimpan nama user
  String name;
  String role;
  String photoURL;

  ///* [name] berisi nama *user*. Nilai defaultnya adalah `no name`
  ///
  ///* [role] berisi role dari user. Nilai **defaultnya** adalah `no role`
  ///
  ///* [photoURL] berisi link foto user. Nilai defaultnya adalah `null`
  ///
  ///Contoh
  ///
  ///```
  ///final UserProfile profile = UserProfile(
  ///name: 'nama user',
  ///role: 'role user',
  ///photoURL: 'https://photoUrl/chopper.png',
  ///);
  ///```

  UserProfile(
      {this.name = "No Name", this.role = "No Role", required this.photoURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: NetworkImage((photoURL != null)
                  ? photoURL
                  : "https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Account-512.png"),
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "[" + role + "]",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
