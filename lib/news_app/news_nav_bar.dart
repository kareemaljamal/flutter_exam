import 'package:flutter/material.dart';

class NavBarNews extends StatefulWidget {
  NavBarNews({
    super.key,
  });

  @override
  State<NavBarNews> createState() => _NavBarState();
}

class _NavBarState extends State<NavBarNews> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color.fromRGBO(105, 65, 198, 1),
      unselectedItemColor: Color.fromRGBO(71, 84, 103, 1),
      currentIndex: index,
      onTap: (selectedIndex) {
        index = selectedIndex;
        setState(() {});
      },
      iconSize: 35,
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                'assets/icons/news_icons/ic_calendar.png')),
            label: 'Today'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                'assets/icons/news_icons/ic_boxes.png')),
            label: 'Insight'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                'assets/icons/news_icons/ic_chat.png')),
            label: 'Chat'),
      ],
    );
  }
}
