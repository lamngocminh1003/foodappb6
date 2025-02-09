import 'package:flutter/material.dart';
import 'package:food_app/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20), // Thay đổi margin và padding ở đây
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Foodi".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MenuItem(
                  title: "Home",
                  press: () {},
                ),
                MenuItem(
                  title: "about",
                  press: () {},
                ),
                MenuItem(
                  title: "Pricing",
                  press: () {},
                ),
                MenuItem(
                  title: "Contact",
                  press: () {},
                ),
                MenuItem(
                  title: "Login",
                  press: () {},
                ),
                DefaultButton(
                  text: "Get Started",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
