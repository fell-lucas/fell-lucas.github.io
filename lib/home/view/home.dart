import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const route = '/';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: context.isSmallScreen
          ? FadeInRight(
              delay: kAnimationDelays[0],
              child: FabMenu(scaffoldKey: _scaffoldKey),
            )
          : null,
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
                  if (context.isMediumOrBigScreen)
                    FadeInLeft(delay: kAnimationDelays[7], child: const SideColumn(left: true))
                  else
                    ...[],
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
                  if (context.isMediumOrBigScreen)
                    FadeInRight(delay: kAnimationDelays[8], child: const SideColumn(left: false))
                  else
                    ...[],
                ],
              ),
            ),
            FadeInUp(delay: kAnimationDelays[context.isSmallScreen ? 1 : 9], child: const WIPBanner()),
          ],
        ),
      ),
    );
  }
}
