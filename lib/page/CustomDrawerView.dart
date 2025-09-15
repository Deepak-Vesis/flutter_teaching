import 'package:flutter/material.dart';

class Customdrawerview extends StatelessWidget {
  const Customdrawerview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black.withValues(alpha: .9),
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              child: Text(
                "Upload",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            SizedBox(height: 20,),
            _infoBtn(
              label: "Profile",
              icon: Icons.account_circle_outlined,
              textColor: Colors.white,
            ),
            _infoBtn(
              label: "Message",
              icon: Icons.message,
              textColor: Colors.white,
            ),
            _infoBtn(
              label: "Chat",
              icon: Icons.chat,
              textColor: Colors.white,
            ),
            _infoBtn(
              label: "Ganja",
              icon: Icons.account_tree,
              textColor: Colors.white,
            ),
            Divider(color: Colors.white,),
            // Container(width: double.infinity,height: 1,color: Colors.white,)
            _infoBtn(
              label: "Setting",
              icon: Icons.settings,
              textColor: Colors.white,
            ),
            _infoBtn(
              label: "Logout",
              icon: Icons.login,
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoBtn({
    required String label,
    required IconData icon,
    required Color textColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
      child: Row(
        children: [
          Icon(icon, size: 24, color: Colors.yellow),
          SizedBox(width: 20),
          Text(label, style: TextStyle(color: textColor, fontSize: 20)),
        ],
      ),
    );
  }
}
