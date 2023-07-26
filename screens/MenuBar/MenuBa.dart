import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:well_right/screens/MenuBar/content_view.dart';
import 'package:well_right/screens/MenuBar/customtab.dart';
import 'package:well_right/screens/graphImages/grid_images.dart';
import 'package:well_right/screens/graphs/dashboardContent.dart';
import 'package:well_right/screens/home_page.dart';
import 'package:well_right/screens/login.dart';
import 'package:well_right/screens/signup.dart';

import 'custom_tab_bar.dart';
import 'menu_item.dart';

class CustomMenuBar extends StatefulWidget {
  @override
  State<CustomMenuBar> createState() => _CustomMenuBarState();
}

class _CustomMenuBarState extends State<CustomMenuBar>
    with SingleTickerProviderStateMixin {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  late double screenHeight;
  late double topPadding;
  late double bottomPadding;
  late double sidePadding;
  late double screenWidth;
  late TabController tabController;

  List<ContentView> contentViews = [
    // ContentView(tab: CustomTab(title: "Home"), content: HomePage()),
    ContentView(tab: CustomTab(title: "Predict"), content: LogIn()
        // Center(
        //   child: Container(
        //     color: Colors.green,
        //     width: 100,
        //     height: 100,
        //   ),
        // )),
        ),
    ContentView(tab: CustomTab(title: "Graph"), content: GridGraphImage()
        // Center(
        //     child: Container(
        //   color: Colors.green,
        //   width: 100,
        //   height: 100,
        // ))
        )
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    topPadding = screenHeight * 0.05;
    bottomPadding = screenHeight * 0.01;
    sidePadding = screenWidth * 0.05;
    return Scaffold(
      backgroundColor: Colors.black,
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.03),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxHeight > 515) {
              return desktopView();
            } else {
              return mobileView();
            }
          },
        ),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contentViews.map((e) => e.tab).toList(),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          height: screenHeight * 0.90,
          child: TabBarView(
            controller: tabController,
            children: contentViews.map((e) => e.content).toList(),
          ),
        ),
        Stack()
      ],
    );
  }

  Widget mobileView() {
    return Padding(
      padding: EdgeInsets.only(left: sidePadding, right: sidePadding),
      child: Container(
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
              icon: Icon(Icons.menu_rounded),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: contentViews
            .map((e) => Container(
                height: bottomPadding,
                child: ListTile(
                  title: Text(e.tab.title),
                  onTap: () {},
                )))
            .toList(),
      ),
    );
  }
}
