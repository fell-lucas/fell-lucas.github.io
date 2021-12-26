import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const route = '/';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ThemeProvider(
      initTheme: context.isDark ? darkThemeData : lightThemeData,
      duration: const Duration(milliseconds: 750),
      child: ThemeSwitchingArea(
        child: Scaffold(
          key: _scaffoldKey,
          floatingActionButton: size.width < kMediumScreenWidth ? FabMenu(scaffoldKey: _scaffoldKey) : null,
          drawer: const ScaffoldDrawer(),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: FakeAppBar(
                    scaffoldKey: _scaffoldKey,
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (size.width >= kMediumScreenWidth) const SideColumn(left: true) else const SizedBox.shrink(),
                      Expanded(
                        child: Center(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              child: Column(
                                children: const [LandingText()],
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (size.width >= kMediumScreenWidth) const SideColumn(left: false) else const SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
