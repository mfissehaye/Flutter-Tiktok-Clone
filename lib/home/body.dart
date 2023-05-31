import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final bool isForYou;
  const MainBody({Key? key, this.isForYou = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                      'What was the name of the Act that created federal subsidies for the construction of a transcontinental railroad?'),
                  Column(
                    children: [
                      'Pacific Railway Act',
                      'Interstate Commerce Act',
                      'Homestead Act'
                    ]
                        .map(
                          (_) => Container(
                            color: Colors.white12,
                            child: Text(_),
                          ),
                        )
                        .toList(),
                  ),
                  const Column(
                    children: [
                      Text('AP US History',
                          style: TextStyle(color: Colors.white)),
                      Text('Topic 5.2: Manifest Destiny #apush5_1',
                          style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Column(
                  children: [
                    Icon(Icons.heart_broken, color: Colors.white),
                    Text('87', style: TextStyle(color: Colors.white))
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.comment, color: Colors.white),
                    Text('2', style: TextStyle(color: Colors.white))
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.forward, color: Colors.white),
                    Text('17', style: TextStyle(color: Colors.white))
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.bookmark, color: Colors.white),
                    Text('203', style: TextStyle(color: Colors.white))
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.refresh, color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
