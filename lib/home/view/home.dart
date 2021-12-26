import 'package:flutter/material.dart';

import 'package:portfolio/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FakeAppBar(),
            Expanded(
              child: Row(
                children: [
                  const SideColumn(left: true),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [LandingText()],
                      ),
                    ),
                  ),
                  const SideColumn(left: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
