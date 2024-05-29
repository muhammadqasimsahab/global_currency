import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabTitles; // List of tab titles
  final List<Widget> tabContents; // List of widgets for each tab's content

  const CustomTabBar({super.key, required this.tabTitles, required this.tabContents});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedIndex = 0; // Currently selected tab index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tab Bar'), // Optional app bar title
      ),
      body: widget.tabContents[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(widget.tabTitles.length, (index) =>
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _onItemTapped(index),
                  child: Text(widget.tabTitles[index]),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedIndex == index ? Colors.blue : Colors.grey, // Highlight selected tab
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
