import 'package:flutter/material.dart';

class NavBarWorkOut extends StatefulWidget {
  NavBarWorkOut({
    super.key,
  });

  @override
  State<NavBarWorkOut> createState() => _NavBarState();
}

class _NavBarState extends State<NavBarWorkOut> {
  int index = 0;
  List<bool> isSelected = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromRGBO(54, 63, 114, 1),
      unselectedItemColor: Color.fromRGBO(102, 112, 133, 1),
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
                    'assets/icons/work_out/ic_home_wo.png')),
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
                    'assets/icons/work_out/ic_location_wo.png')),
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
                    'assets/icons/work_out/ic_statistics_wo.png')),
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
                    'assets/icons/work_out/ic_profile_wo.png')),
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
    );
  }
}
