import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String,dynamic>> gridData = [
    {
      "image" : "asset/Images/wirless.jpg",
      "name" : "Wireless Headphones",
      "price" : "\$120.00",
    },
    {
      "image" : "asset/Images/sweater.jpg",
      "name" : "Woman Sweater",
      "price" : "\$120.00"
    },
    {
      "image" : "asset/Images/saree.jpg",
      "name" : "Saree",
      "price" : "\$120.00",
    },
    {
      "image" : "asset/Images/mens.jpg",
      "name" : "Men's Shirt",
      "price" : "\$120.00",
    },
  ];
  List<Map<String, dynamic>> mData = [
    {
      "Image": "asset/Images/shooessmall.jpg",
      "name": "Shoes",
    },
    {
      "Image": "asset/Images/beauty.png",
      "name": "Beauty",
    },
    {
      "Image": "asset/Images/womenfashion.jpg",
      "name": "Women's Fashion",
    },
    {
      "Image": "asset/Images/jwelerypng.png",
      "name": "Jewellery",
    },
    {
      "Image": "asset/Images/men'sfashion.jpg",
      "name": "Men's",
    },
    {
      "Image": "asset/Images/kidsfashion.jpg",
      "name": "Kids",
    },
    {
      "Image": "asset/Images/pursefashion.jpg",
      "name": "Purse",
    },
    {
      "Image": "asset/Images/sareefashion.jpg",
      "name": "Saree",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Menu Icon
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xffE3E3E3), // Background color
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.menu,
                  size: 25, color: Colors.black), // Optional: Adjust icon color
            ),

            /// Notification Icon
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xffE3E3E3), // Background color
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.notifications_none_rounded,
                  size: 25, color: Colors.black), // Optional: Adjust icon color
            ),
          ],
        ),
        centerTitle: true, // Optional: Center the title row in the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ///Menu and notification
            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffE3E3E3), // Background color
                    borderRadius: BorderRadius.circular(50),
                  ),
                    child: Icon(Icons.menu,size: 25,),
                ),
                Container(
                    height: 35,
                    width: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffE3E3E3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                    child: Icon(Icons.notifications_none_rounded,size: 25,)),
              ],
            ),*/

            ///Search Icon
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE3E3E3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                              width: 8), // Add space between the icon and text
                          Text("Search..."),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey, // Customize color
                      thickness: 1, // Customize thickness
                    ),
                    SizedBox(
                        width: 8), // Space between the separator and the icon
                    Icon(Icons.grid_view),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///Discount Image Container
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(30), // Adjust the radius as needed
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      "asset/Images/shooes.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the left
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Super Sale",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Discount",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            "Up to",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "50 %",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Shop Now"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffff650e),
                          foregroundColor: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            /// Listview for menu fashion
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mData.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(mData[index]["Image"]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            mData[index]["name"]
                                .replaceFirst("Women", "Women\n"),
                            textAlign:
                                TextAlign.center, // To center-align the text
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),

            ///Special For you
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Special For you",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10, // Horizontal spacing
                  mainAxisSpacing: 10, // Vertical spacing
                  childAspectRatio: 0.7, // Adjust aspect ratio to fit the design
                ),
                itemCount: gridData.length, // Number of items in the grid
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16), // Rounded corners for the card
                    ),
                    elevation: 4, // Shadow effect
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
                        children: [
                          /// Top Row: Heart Icon
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(Icons.favorite_border, color: Colors.white, size: 20),
                            ),
                          ),
              
                          /// Product Image
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                gridData[index]["image"], // Example image asset
                                fit: BoxFit.contain,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
              
                          SizedBox(height: 8),
              
                          /// Product Name
                          Text(
                              gridData[index]["name"],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis, // Handle long text
                          ),
              
                          SizedBox(height: 4),
              
                          /// Product Price
                          Text(
                            gridData[index]["price"],
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
                          ),
              
                          SizedBox(height: 8),
              
                          /// Color Options
                          Row(
                            children: [
                              // Color Option 1
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(width: 4),
              
                              // Color Option 2
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(width: 4),
              
                              // Additional Colors Indicator
                              Text("+2", style: TextStyle(fontSize: 12, color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
