
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DocumentFolderSetup extends StatelessWidget {
  final String folderName;
  
  const DocumentFolderSetup({
    required this.folderName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: widget.color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.folder,
                        color: Colors.yellow[600],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                   folderName,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Opacity(
                opacity: .3,
                child: Icon(Icons.chevron_right, size: 35, )),
            ],
          ),
        ),
      ),
    );
  }
}
