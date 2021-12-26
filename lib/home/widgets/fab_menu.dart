import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';

class FabMenu extends StatelessWidget {
  const FabMenu({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = context.colorScheme;
    final orientation = MediaQuery.of(context).orientation;
    final ringDiameter = orientation == Orientation.landscape ? size.height * 0.4 : size.width * 0.5;

    return IconTheme(
      data: Theme.of(context).iconTheme.copyWith(color: colors.background),
      child: FabCircularMenu(
        ringColor: colors.primary.withOpacity(0.2),
        fabColor: colors.secondary,
        ringDiameter: ringDiameter,
        ringWidth: ringDiameter * 0.25,
        children: [
          IconButton(
            icon: Icon(Icons.menu, color: colors.secondary),
            onPressed: () => scaffoldKey.currentState!.openDrawer(),
          ),
          const ThemeSwitcherButton(),
          const LocaleDropdown()
        ],
      ),
    );
  }
}
