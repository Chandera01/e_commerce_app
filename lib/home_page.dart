import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  List<Map<String,dynamic>> mData = [
    {
    "Image": "asset/Images/shooessmall.jpg",
    "name" : "Shoes",
    },
    {
      "Image": "asset/Images/beauty.png",
      "name" : "Beauty",
    },
    {
      "Image": "asset/Images/womenfashion.jpg",
      "name" : "Women's Fashion",
    },
    {
      "Image": "asset/Images/jwelerypng.png",
      "name" : "Jewellery",
    },
    {
      "Image": "asset/Images/men'sfashion.jpg",
      "name" : "Men's",
    },
    {
      "Image": "asset/Images/kidsfashion.jpg",
      "name" : "Kids",
    },
    {
      "Image": "asset/Images/pursefashion.jpg",
      "name" : "Purse",
    },
    {
      "Image": "asset/Images/sareefashion.jpg",
      "name" : "Saree",
    },
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ///Menu and notification
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffc3c3c3), // Background color
                    borderRadius: BorderRadius.circular(50),
                  ),
                    child: Icon(Icons.menu,size: 25,),
                ),
                Container(
                    height: 35,
                    width: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffc3c3c3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                    child: Icon(Icons.notifications_none_rounded,size: 25,)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffc3c3c3),
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
                          SizedBox(width: 8), // Add space between the icon and text
                          Text("Search..."),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey,  // Customize color
                      thickness: 1,        // Customize thickness
                    ),
                    SizedBox(width: 8), // Space between the separator and the icon
                    Icon(Icons.grid_view),
                  ],
                ),
              ),
            ),
              SizedBox(
                height: 20,
              ),
            ///Image Container
            Stack(
              alignment: Alignment.centerLeft,
              children: [
              // Directly use the image inside the Stack without extra Container or Center
                ClipRRect(
                  borderRadius: BorderRadius.circular(30), // Adjust the radius as needed
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      "asset/Images/shooes.jpg",
                      fit: BoxFit.contain, // Adjust as needed (cover, contain, etc.)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Super Sale",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                      Text("Discount",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                      Row(
                        children: [
                          Text("Up to",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                          Text("50 %",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      ElevatedButton(onPressed: (){},
                          child: Text("Shop Now"),style: ElevatedButton.styleFrom(
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
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                  itemCount: mData.length,
                    itemBuilder: (_,index){
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
                              mData[index]["name"].replaceFirst("Women", "Women\n"),
                              textAlign: TextAlign.center,  // To center-align the text
                            ),
                          ],
                        ),
                      );
                }),
              )
          ],
        ),
      ),
    );
  }
}