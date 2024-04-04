import 'package:flutter/material.dart';

class MenuShopUI extends StatefulWidget {
  const MenuShopUI({super.key});

  @override
  State<MenuShopUI> createState() => _MenuShopUIState();
}

class _MenuShopUIState extends State<MenuShopUI> {
  List<String> _menu = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
  ];

  List<String> _shop = [
    'assets/images/shop1.png',
    'assets/images/shop2.png',
    'assets/images/shop3.png',
    'assets/images/shop4.png',
    'assets/images/shop5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/logo.png', // Replace 'your_image.png' with your actual image path
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'เมนูเด็ด', // Replace 'Your Text' with your actual text
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height *
                    0.03, // Adjust font size as needed
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
      
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: _menu.length,
            //   itemBuilder: (context, index) {
            //     return _buildImageWithBorder(_menu[index]);
            //   },
            // ),
      
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _menu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        _menu[index],
                      ),
                    ),
                  );
                },
              ),
            ),
      
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'ร้านในเครือ', // Replace 'Your Text' with your actual text
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height *
                    0.03, // Adjust font size as needed
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
      
            Expanded(
              child:  ListView.builder(  
                scrollDirection: Axis.vertical,
                itemCount: _shop.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        _shop[index],
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

    // ignore: dead_code
    // Widget _buildImageWithBorder(String imagePath) {
    //   return Container(
    //     margin: EdgeInsets.all(8.0),
    //     decoration: BoxDecoration(
    //       border: Border.all(
    //         color: Colors.deepOrange, // Border color
    //         width: 2.0, // Border width
    //       ),
    //       borderRadius: BorderRadius.circular(10.0), // Border radius
    //     ),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(8.0),
    //       child: Image.asset(
    //         imagePath,
    //         width: 150.0, // Adjust the width of each image
    //         height: 150.0, // Adjust the height of each image
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //   );
    // }
  }
}
