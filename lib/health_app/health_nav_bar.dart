import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> isSelected = [true, false, false, false];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(2, 122, 72, 1),
        unselectedItemColor:
            Color.fromRGBO(102, 112, 133, 1),
        currentIndex: index,
        onTap: (selectedIndex) {
          index = selectedIndex;
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = false;
          }
          isSelected[index] = true;
          setState(() {});
        },
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  ImageIcon(AssetImage(
                      'assets/icons/ic_home_heakth.png')),
                  CircleAvatar(
                      radius: 3,
                      child: isSelected[0]
                          ? Image(
                              image: AssetImage(
                                  'assets/icons/work_out/ic_dot_black.png'),
                            )
                          : null),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  ImageIcon(AssetImage(
                      'assets/icons/ic_boxes.png')),
                  CircleAvatar(
                      radius: 3,
                      child: isSelected[1]
                          ? Image(
                              image: AssetImage(
                                  'assets/icons/work_out/ic_dot_black.png'),
                            )
                          : null),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  ImageIcon(AssetImage(
                      'assets/icons/ic_calender.png')),
                  CircleAvatar(
                      radius: 3,
                      child: isSelected[2]
                          ? Image(
                              image: AssetImage(
                                  'assets/icons/work_out/ic_dot_black.png'),
                            )
                          : null),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  ImageIcon(AssetImage(
                      'assets/icons/ic_person.png')),
                  CircleAvatar(
                      radius: 3,
                      child: isSelected[3]
                          ? Image(
                              image: AssetImage(
                                  'assets/icons/work_out/ic_dot_black.png'),
                            )
                          : null),
                ],
              ),
              label: ''),
        ],
      ),
    );
  }
}
