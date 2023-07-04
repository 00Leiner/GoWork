// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class DateTypeStatusSetup extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const DateTypeStatusSetup({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          defaultColumnWidth: IntrinsicColumnWidth(),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                      bottom: 20,
                    ),
                    child: Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                      bottom: 20,
                    ),
                    child: Text(
                      'Type',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                      bottom: 20,
                    ),
                    child: Text(
                      'Status',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                      bottom: 20,
                    ),
                    child: Text(
                      ' ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            ...data.map((row) {
              return TableRow(
                children: [
                  TableCell(child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(row['date'].toString()),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(row['type'].toString()),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(row['status'].toString()),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: row['icon'],
                  )),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}