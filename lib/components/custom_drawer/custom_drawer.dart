import 'package:flutter/material.dart';
import 'package:xlo_mobx/components/custom_drawer/components/custom_drawer_header/custom_drawer_header.dart';
import 'package:xlo_mobx/components/custom_drawer/components/page_section/page_section.dart';
import 'package:xlo_mobx/shared/theme/app_theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
          right: Radius.circular(
        AppTheme.sizes.medium,
      )),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: AppTheme.sizes.zero),
            children: [
              const CustomDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
