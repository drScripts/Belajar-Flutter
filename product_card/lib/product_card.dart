import 'package:flutter/material.dart';

const Color firstColor = Color(0xfff44336);
const Color secondColor = Color(0xff4caf50);

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final Function onAddCart;
  final Function onAdd;
  final Function onDec;
  final int quantity;
  final String notification;
  final TextStyle textStyle = TextStyle(
      fontFamily: 'Lato',
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800]);
  ProductCard(
      {this.imageUrl = "",
      this.name = "",
      this.price = "",
      this.onAddCart,
      this.onAdd,
      this.onDec,
      this.quantity = 0,
      this.notification});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // notifikasi
        AnimatedContainer(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          duration: Duration(seconds: 1),
          width: 130,
          height: (notification != null) ? 270 : 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: Offset(1, 1),
                color: Colors.black.withOpacity(0.3),
              )
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: secondColor,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              (notification != null) ? notification : "",
              style: textStyle.copyWith(color: Colors.white, fontSize: 12),
            ),
          ),
        ),

        // Card
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: Offset(1, 1),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      name,
                      maxLines: 1,
                      style: textStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: Text(
                      price,
                      style:
                          textStyle.copyWith(fontSize: 12, color: firstColor),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  // +-
                  Container(
                    width: 140,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      ),
                      border: Border.all(
                        color: firstColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onAdd,
                          child: Container(
                            decoration: BoxDecoration(
                              color: firstColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                              ),
                            ),
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          quantity.toString(),
                          style: textStyle,
                        ),
                        GestureDetector(
                          onTap: onDec,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                              ),
                              color: firstColor,
                            ),
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // add tochart
                  SizedBox(
                    width: 140,
                    child: RaisedButton(
                      onPressed: onAddCart,
                      child: Icon(
                        Icons.add_shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                      color: firstColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
