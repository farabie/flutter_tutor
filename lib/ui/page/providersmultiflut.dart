import 'package:flutter/material.dart';
import 'package:flutter_tutor/model/cart.dart';
import 'package:flutter_tutor/model/money.dart';
import 'package:provider/provider.dart';

class ProviderMultiFLut extends StatelessWidget {
  const ProviderMultiFLut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Cart>(create: (context) => Cart()),
          ChangeNotifierProvider<Money>(create: (context) => Money()),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    money.balance -= 500;
                    cart.quantity += 1;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Providers Multi Flut'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Balance'),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Consumer<Money>(
                          builder: (context, money, _) => Text(
                            money.balance.toString(),
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple[100],
                          border: Border.all(width: 2, color: Colors.purple)),
                    )
                  ],
                ),
                Container(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Cart>(
                        builder: (context, cart, _) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Apple (500) x " + cart.quantity.toString(),
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              (500 * cart.quantity).toString(),
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )),
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.black)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
