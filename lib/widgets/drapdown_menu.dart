import 'package:flutter/material.dart';
import '../theme/text_themes.dart';
import '../utils/app_urls.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String dropdownvalue = 'All Chain';
  var items = [
    'All Chain',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      icon: const Icon(Icons.keyboard_arrow_down),
      underline: Container(),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items,  style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: TTextTheme.getTextColor(context))),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}

class DropDownMenu1 extends StatefulWidget {
  const DropDownMenu1({Key? key}) : super(key: key);

  @override
  _DropDownMenu1State createState() => _DropDownMenu1State();
}

class _DropDownMenu1State extends State<DropDownMenu1> {
  String dropdownvalue = 'Sort by 24 Volume';

  var items = [
    'Sort by 24 Volume',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      icon: const Icon(Icons.keyboard_arrow_down),
      underline: Container(),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items, style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: TTextTheme.getTextColor(context))),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
