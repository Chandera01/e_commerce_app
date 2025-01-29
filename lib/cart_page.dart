import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {
      "image": "asset/Images/deepu-removebg-preview.png",
      "title": "Women Sweter",
      "Desc": "Women Fashion",
      "price": "\$70.00",
    },
    {
      "image": "asset/Images/removebgsmart.png",
      "title": "Smart Watch",
      "Desc": "Electronic",
      "price": "\$55.00",
    },
    {
      "image": "asset/Images/earbuds.webp",
      "title": "Women Sweter",
      "Desc": "Women Fashion",
      "price": "\$70.00",
    },
    {
      "image": "asset/Images/earbuds.webp",
      "title": "Wireless HeadPhone",
      "Desc": "Electronic",
      "price": "\$120.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: mData.length,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffE3E3E3),
                                ),
                                child: Image.asset(mData[index]["image"]),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mData[index]["title"],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(mData[index]["Desc"],
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      )),
                                  Text(mData[index]["price"],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(Icons.delete, color: Colors.deepOrange),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("-  1   +"),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffE3E3E3),
                                        foregroundColor: Colors.black,
                                        minimumSize: Size(50, 30)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(context: context, builder: (_){
                  return Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.white54,
                  );
                });
              },
              child: Text("Buy Now"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                minimumSize: Size(70, 40)
              ),
          ),
        ],
      ),
    );
  }
}
