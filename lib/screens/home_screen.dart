import 'package:finplan/screens/drawer.dart';
import 'package:finplan/utils/global_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState(){
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page){
    pageController.jumpToPage(page);

  }
  void onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      // backgroundColor:const Color.fromRGBO(249, 249, 249, 1),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.grey.shade300,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: _page==0? Colors.grey.shade700 : Colors.blue,)),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart,color: _page==1? Colors.grey.shade700 : Colors.blue,)),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: _page==2? Colors.grey.shade700 : Colors.blue,)),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: _page==3? Colors.grey.shade700 : Colors.blue,)),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
