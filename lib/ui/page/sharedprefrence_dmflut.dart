import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDmFLut extends StatefulWidget {
  const SharedPreferencesDmFLut({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesDmFLut> createState() =>
      _SharedPreferencesDmFLutState();
}

class _SharedPreferencesDmFLutState extends State<SharedPreferencesDmFLut> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isON = false;

  void saveData() async {
    //Deklarasi untuk sharedpreference atau mengambil instance nya dulu
    SharedPreferences pref = await SharedPreferences.getInstance();
    //Jangan lupa untuk textediting controller itu .text bukan .toString()
    pref.setString("name", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("name") ?? "No Name";
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Shared Preferences & Double Mark'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isON,
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red[200],
                  onChanged: (newValue) {
                    setState(() {
                      isON = newValue;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: const Text('Save')),
              ElevatedButton(
                  onPressed: () {
                    getName().then((s) {
                      controller.text = s;
                      setState(() {});
                    });
                    getON().then((b) {
                      isON = b;
                      setState(() {});
                    });
                  },
                  child: const Text('Load')),
            ],
          ),
        ),
      ),
    );
  }
}
