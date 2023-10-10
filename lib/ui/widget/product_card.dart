import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/progress_custom.dart';

const Color firstColor = Color(0xffF44336);
const Color secondColor = Color(0xff4caf450);

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String name;
  final String price;
  final int quantity;
  final int stock;
  final String notification;
  final void Function()? onAddCartTap;
  final void Function()? onIncTap;
  final void Function()? onDecTap;

  final TextStyle textStyle = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800]);

  ProductCard({super.key, 
    this.imageURL = "",
    this.name = "",
    this.price = "",
    this.notification = "",
    this.quantity = 0,
    this.stock = 10,
    this.onAddCartTap,
    this.onIncTap,
    this.onDecTap,
  });
  @override
  Widget build(BuildContext context) {
    double ratio = stock / 10;
    double progressBarWidth = 140 * ratio;
    return Stack(
      children: <Widget>[
        ///Notification
        AnimatedContainer(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          width: 130,
          duration: const Duration(milliseconds: 300),
          height: (notification != null) ? 300 : 270,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.black.withOpacity(0.3),
              )
            ],
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            color: secondColor,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              (notification != null) ? notification : "",
              style: textStyle.copyWith(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),

        ///Product Card
        Container(
          width: 150,
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(1, 1),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Atas
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(imageURL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: textStyle,
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: Text(
                      price,
                      style: textStyle.copyWith(
                        fontSize: 12,
                        color: firstColor,
                      ),
                    ),
                  ),
                ],
              ),

              //Progress bar
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          Icons.card_giftcard,
                          size: 16,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("$stock/10 pcs")
                      ],
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        elevation: 1,
                        child: AnimatedContainer(
                          height: 5,
                          width: progressBarWidth,
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                          decoration: BoxDecoration(
                              color: (ratio < 0.1)
                                  ? Colors.red
                                  : (ratio < 0.6)
                                      ? Colors.amber[400]
                                      : Colors.lightGreen,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              //Bawah
              Column(
                children: <Widget>[
                  Container(
                    width: 140,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: firstColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: onDecTap,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: const Icon(
                              Icons.remove,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          quantity.toString(),
                          style: textStyle,
                        ),
                        GestureDetector(
                          onTap: onIncTap,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: const Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )),
                        backgroundColor: firstColor,
                      ),
                      onPressed: onAddCartTap,
                      child: const Icon(
                        Icons.add_shopping_cart,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
