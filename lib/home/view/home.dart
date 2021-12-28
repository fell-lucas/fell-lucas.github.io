import 'package:flutter/material.dart';

import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const route = '/';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: context.screenSize.width < kMediumScreenWidth ? FabMenu(scaffoldKey: _scaffoldKey) : null,
      drawer: const ScaffoldDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: FakeAppBar(),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (context.screenSize.width >= kMediumScreenWidth) const SideColumn(left: true) else ...[],
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
                  if (context.screenSize.width >= kMediumScreenWidth) const SideColumn(left: false) else ...[],
                ],
              ),
            ),
            const WIPBanner(),
          ],
        ),
      ),
    );
  }
}
