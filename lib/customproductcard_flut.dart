import 'package:flutter/material.dart';
import 'widget/product_card.dart';
import 'package:provider/provider.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
          title: Text("Product Card Example"),
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<ProductState>(
              create: (context) => ProductState(),
            ),
            ChangeNotifierProvider<StocktState>(
              create: (context) => StocktState(),
            )
          ],
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<StocktState>(
                builder: (context, stockState, _) => Consumer<ProductState>(
                  builder: (context, productState, _) => ProductCard(
                    name: "Buah-buahan Mix 1 kg",
                    price: "Rp.25.000",
                    notification:
                        (productState.quantity > 5) ? "Diskon 10 %" : null,
                    quantity: productState.quantity,
                    stock: stockState.stock,
                    imageURL:
                        "https://5.imimg.com/data5/RX/JD/GW/SELLER-4711940/fresh-mix-fruit-500x500.jpg",
                    onAddCartTap: () {},
                    onDecTap: () {
                      if (productState.quantity > 0) {
                        // Jika jumlah lebih dari 0, maka kurangi
                        productState.quantity--;
                        stockState.stock++;
                      }
                    },
                    onIncTap: () {
                      if (productState.quantity < 10) {
                        // Jika jumlah kurang dari 10, maka tambahkan
                        productState.quantity++;
                        stockState.stock--;
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }
}

class StocktState with ChangeNotifier {
  int _stock = 10;

  int get stock => _stock;
  set stock(int newValue) {
    _stock = newValue;
    notifyListeners();
  }
}
