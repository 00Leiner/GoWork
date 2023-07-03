
import 'package:flutter/material.dart';

class SearchFieldSetup extends StatelessWidget {
  const SearchFieldSetup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: 15,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 17.0),
              suffixIcon: Icon(
                Icons.search,
                size: 20,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
