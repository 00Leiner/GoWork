
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/comp/features/view/my_documents/setup/document_folder_setup.dart';

class Folders extends StatelessWidget {
  const Folders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DocumentFolderSetup(folderName: 'Personal Documents',),
        DocumentFolderSetup(folderName: 'Employment Documents',),
        DocumentFolderSetup(folderName: 'Performance Management',),
        DocumentFolderSetup(folderName: 'Training and Development',),
        DocumentFolderSetup(folderName: 'Leave and Time Off',),
        DocumentFolderSetup(folderName: 'Benefits and Insurance',),
        DocumentFolderSetup(folderName: 'Disciplinary and Legal',),
        DocumentFolderSetup(folderName: 'Miscellaneous',),
      ],
    );
  }
}
