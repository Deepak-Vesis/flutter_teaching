import 'dart:developer';

import 'package:calculator/page/CustomDrawerView.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50),
            buildProfilePicBox(),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onPressed: () => printFuck(),
              child: Text(
                "Profile Details",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 40),
            buildInfoBtn(
              context: context,
              label: "Account ID # 1245236",
              icon: Icons.account_circle_outlined,
            ),
            buildInfoBtn(
              context: context,
              label: "Dev Subhra",
              icon: Icons.account_circle_outlined,
            ),
            buildInfoBtn(context: context, label: "Necotin", arrow: false),
            buildInfoBtn(
              context: context,
              label: "Logout",
              icon: Icons.logout,
              arrow: false,
              textColor: Colors.red,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        width: 400,
        child: Customdrawerview(),
      ),
    );
  }


  Container buildInfoBtn({
    required BuildContext context,
    required String label,
    Color? textColor = Colors.white,
    IconData? icon,
    bool arrow = true,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon ?? Icons.info_outline_rounded,
                  color: Colors.yellow,
                  size: 24,
                ),
              ),
              SizedBox(width: 20),
              Text(label, style: TextStyle(color: textColor)),
            ],
          ),
          arrow
              ? Icon(
            Icons.arrow_forward_ios,
            color: Colors.white.withOpacity(0.5),
          )
              : SizedBox.shrink(),
        ],
      ),
    );
  }

  printFuck() {
    log("awww yaaa");
  }

  Widget buildProfilePicBox() {
    return Container(
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellowAccent,
              ),
              child: Icon(Icons.edit_outlined, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
