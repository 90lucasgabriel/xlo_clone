import 'package:flutter/material.dart';
import 'package:xlo_mobx/components/custom_drawer/components/custom_drawer_header/custom_drawer_header.dart';
import 'package:xlo_mobx/components/custom_drawer/components/page_section/page_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(right: Radius.circular(24)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            padding: const EdgeInsets.only(top: 0),
            children: const [
              CustomDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
