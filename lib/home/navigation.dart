import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.home_filled, color: Colors.white54),
                Text("Home", style: TextStyle(color: Colors.white))
              ],
            ),
            Column(
              children: [
                Icon(Icons.home_filled, color: Colors.white54),
                Text("Discover", style: TextStyle(color: Colors.white54))
              ],
            ),
            Column(
              children: [
                Icon(Icons.alarm, color: Colors.white54),
                Text("Activity", style: TextStyle(color: Colors.white54))
              ],
            ),
            Column(
              children: [
                Icon(Icons.bookmark, color: Colors.white54),
                Text("Bookmarks", style: TextStyle(color: Colors.white54))
              ],
            ),
            Column(
              children: [
                Icon(Icons.verified_user, color: Colors.white54),
                Text("Profile", style: TextStyle(color: Colors.white54))
              ],
            ),
          ],
        ));
  }
}
