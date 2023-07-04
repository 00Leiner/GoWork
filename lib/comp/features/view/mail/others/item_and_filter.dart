
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ItemFilter extends StatelessWidget {
  const ItemFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Opacity(
        opacity: .7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Item', style: TextStyle(fontSize: 11),),
            Row(
              children: [
                Icon(Icons.filter_alt, size: 13,),
                Text('Filter', style: TextStyle(fontSize: 11),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
