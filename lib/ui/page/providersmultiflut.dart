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
                backgroundColor: Colors.purple,
                child: const Icon(Icons.add_shopping_cart),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text('Providers Multi Flut'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Balance'),
                    Container(
                      height: 30,
                      width: 150,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple[100],
                          border: Border.all(width: 2, color: Colors.purple)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Consumer<Money>(
                          builder: (context, money, _) => Text(
                            money.balance.toString(),
                            style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 30,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Cart>(
                        builder: (context, cart, _) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Apple (500) x ${cart.quantity}",
                              style: const TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              (500 * cart.quantity).toString(),
                              style: const TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
