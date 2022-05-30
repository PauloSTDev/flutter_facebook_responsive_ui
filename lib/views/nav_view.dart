import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/views/home_page.dart';
import 'package:flutter_facebook_responsive_ui/widgets/custom_tab_bar.dart';
import 'package:flutter_facebook_responsive_ui/widgets/responsive.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavPage extends StatefulWidget {

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {


  final List<Widget> _views = [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
        child: Scaffold(

          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _views,
          ),
          bottomNavigationBar: !Responsive.isDesktop(context) ? Container(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: CustomTabBar(
              icons: _icons,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
            ),
          ) : const SizedBox.shrink(),
        ),
    );
  }
}
