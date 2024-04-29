import 'package:flutter/material.dart';
import 'package:movies_tv_app/movies/presentation/view/movies_view.dart';
import 'package:movies_tv_app/tv/peresentation/view/tv_view.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final control= PersistentTabController(initialIndex: 0);
  
   List<Widget> screens = const [ MoviesView(), TvView()];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context, screens: screens,
      controller: control,
            backgroundColor: Color.fromARGB(193, 55, 54, 66),

      items: [
        PersistentBottomNavBarItem(
          icon:const Icon(Icons.movie),
         
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.black

        ),
        PersistentBottomNavBarItem(
          icon:const Icon(Icons.tv),
         
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.black

        )
        
      ],
      decoration: NavBarDecoration(),
      navBarStyle: NavBarStyle.style6,) ;
    
      
  }
}
