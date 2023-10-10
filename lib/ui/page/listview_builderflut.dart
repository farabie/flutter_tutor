import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/product_card.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBuilderFlut extends StatelessWidget {
  const ListViewBuilderFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProductBloc(
          [],
        ),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Random r = Random();

  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
        title: Text('Demo List View Builde'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: firstColor,
            ),
            onPressed: () {
              bloc.add(r.nextInt(4) + 2);
            },
            child: Text(
              'Create Products',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (index == 0)
                          ? SizedBox(
                              width: 20,
                            )
                          : Container(),
                      ProductCard(
                        name: products[index].name,
                        imageURL: products[index].imageURL,
                        price: products[index].price.toString(),
                        onAddCartTap: () {},
                        onDecTap: () {},
                        quantity: 1,
                        stock: 10,
                        notification: "Berhasil",
                        onIncTap: () {},
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Product {
  String imageURL;
  String name;
  int price;

  Product({this.imageURL = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  ProductBloc(List<Product> initialState) : super(initialState);

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (var i = 0; i < event; i++) {
      products.add(
        Product(
          imageURL:
              "https://5.imimg.com/data5/RX/JD/GW/SELLER-4711940/fresh-mix-fruit-500x500.jpg",
          name: "Produk Ke-" + (i + 1).toString(),
          price: (i + 1) * 5000,
        ),
      );
    }
    yield products;
  }
}
