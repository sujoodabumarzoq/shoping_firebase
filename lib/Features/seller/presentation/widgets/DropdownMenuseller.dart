import 'package:flutter/material.dart';

class DropdownMenuseller extends StatefulWidget {
  const DropdownMenuseller({super.key});

  @override
  State<DropdownMenuseller> createState() => _DropdownMenusellerState();
}

class _DropdownMenusellerState extends State<DropdownMenuseller> {

  List<String> list = <String>['hot Deals', 'trandy','weelktop'];
  String dropdownValue = 'One';


  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 385,

      // تحديد العرض هنا
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(

            value: value, label: value);
      }).toList(),
    );
  }
}
