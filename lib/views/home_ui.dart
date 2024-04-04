import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dti_mukrata_app/views/about_ui.dart';
import 'package:dti_mukrata_app/views/calculate_pay_bill_ui.dart';

import 'package:dti_mukrata_app/views/menu_shop_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> _showView = [CalculatePayBillUI(), MenuShopUI(), AboutUI()];

  int _CurrentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Tech SAU Buffet',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: _showView[_CurrentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.deepOrange,
        // currentIndex: _CurrentIndex,
        // unselectedItemColor: Colors.grey[400],
        activeColor: Colors.white,
        initialActiveIndex: 1,
        onTap: (value) {
          setState(() {
            _CurrentIndex = value;
          });
        },
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              color: Color.fromARGB(255, 238, 50, 3),
            ),
            // label: 'facebook',
            // backgroundColor: Color.fromARGB(255, 43, 6, 143),
            title: 'Calculate',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Color.fromARGB(255, 238, 50, 3),
            ),
            title: 'Home',
            // label: 'google',
            // backgroundColor: Color.fromARGB(255, 238, 50, 3),
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Color.fromARGB(255, 238, 50, 3),
            ),
            title: 'About',
            // label: 'twitter',
            // backgroundColor: Color.fromARGB(255, 3, 214, 230),
          ),
        ],
      ),
    );
  }
}
