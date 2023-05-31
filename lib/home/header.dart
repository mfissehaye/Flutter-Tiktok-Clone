import 'package:flutter/material.dart';

class HeaderRow extends StatelessWidget {
  final VoidCallback onShowForYou;
  final bool isForYou;
  const HeaderRow({Key? key, required this.onShowForYou, this.isForYou = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Row(
              children: [
                Icon(Icons.alarm),
                Text('10m', style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              children: [
                isForYou
                    ? const Text('Following')
                    : Column(
                        children: [
                          const Text(
                            'Following',
                          ),
                          Container(width: 100, height: 3, color: Colors.white),
                        ],
                      ),
                isForYou
                    ? Column(
                        children: [
                          const Text(
                            'For You',
                          ),
                          Container(width: 100, height: 3, color: Colors.white),
                        ],
                      )
                    : const Text('For You'),
              ],
            ),
            const Icon(Icons.search, color: Colors.white),
          ],
        ));
  }
}
