import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_shop_app_ui/Model/model.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.bgColor,
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 25,
                top: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      // width: 55,
                      // height: 50,

                      width: 50,    //image back erro
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 35,
                      ),
                    ),
                  ),
                  Image.asset(
                    "images/two line.png",
                    height: 30, //right upper two line
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 200,  //image
                child: Hero(
                  tag: item.imageUrl,
                  child: Image.asset(
                    item.imageUrl,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold, //fruite name
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          item.lb,
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,//- icon
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                Container(
                                    height: 40, //+icon
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                                Container(
                                  height: 40, //+ icon
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "\$${item.price}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const Text(
                                  "Product Description",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20, //
                                  ),
                                ),
                                const SizedBox(height: 0),
                                Text(
                                  item.description,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 2, color: item.color),
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: item.color,
                              ),
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Expanded(
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: item.color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}