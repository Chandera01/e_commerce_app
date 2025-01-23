  import 'package:flutter/material.dart';

  class ProductPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE3E3E3),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Back Button
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.arrow_back_outlined),
              ),
              Spacer(),

              // Share Button
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.share),
              ),
              SizedBox(width: 15),

              // Favorite Button
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ),
        ///
        /// body
        ///
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image Container (No Padding)
              Container(
                height: 260,
                width: double.infinity,
                color: Color(0xffE3E3E3),
                child: Image.asset("asset/Images/earbuds.webp"),
              ),

              ////Text
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wireless Headphone",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    // Add spacing between the text widgets
                    Text(
                      "\$520.00",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Saller: Tariqual islam",
                          style: TextStyle(fontSize: 16),
                        )),

                    ///Rating
                    Row(
                      children: [
                        // Review
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(
                                  "4.8 ",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(320 Review)",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),

                    ///Colors
                    Text(
                      "Color",
                      style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    //color selected
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 19,
                          backgroundColor: Color(0xff300020),
                        ),
                        SizedBox(
                          width: 8,
                        ),

                        ///border box
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Ensures the container is circular
                            border: Border.all(
                              color: Colors.black, // Set the border color
                              width: 2.0, // Set the border width
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 19,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 19,
                          backgroundColor: Colors.brown,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 19,
                          backgroundColor: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Description"),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.deepOrange),
                        ),
                        Spacer(),
                        Text("Specification"),
                        SizedBox(
                          width: 35,
                        ),
                        Text("Reviews")
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "When buying earbuds, it’s essential to consider several factors to ensure they meet your needs. Sound quality is one of the most important aspects, so look for earbuds that deliver clear audio with balanced bass, mids, and highs. Comfort and fit are equally crucial, especially if you plan to wear them for long periods. Many earbuds come with interchangeable ear tips to provide a secure fit. Noise cancellation is another significant feature—active noise cancellation (ANC) is ideal for blocking out external noise, while passive noise isolation relies on the design to reduce ambient sound. Battery life is also a key factor; most wireless earbuds offer 4-10 hours of playback, with additional charges from the case.",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
