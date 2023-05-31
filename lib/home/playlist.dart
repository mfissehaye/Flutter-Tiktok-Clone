import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  const PlayList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.all(5),
      child: const Row(
        children: [
          Row(
            children: [
              Icon(Icons.playlist_add, color: Colors.white),
              Text('Playlist', style: TextStyle(color: Colors.white)),
              Icon(Icons.circle, color: Colors.white),
              Text("Unit 5: Period 5: 1844-1877",
                  style: TextStyle(color: Colors.white))
            ],
          ),
          Icon(Icons.arrow_right, color: Colors.white)
        ],
      ),
    );
  }
}
