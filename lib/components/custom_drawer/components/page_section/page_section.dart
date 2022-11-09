import 'package:flutter/material.dart';

import 'package:xlo_mobx/components/custom_drawer/components/page_tile/page_tile.dart';

class PageSection extends StatelessWidget {
  const PageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúncios',
          iconData: Icons.list,
          highlighted: true,
          onTap: () {},
        ),
        PageTile(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          highlighted: false,
          onTap: () {},
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          highlighted: false,
          onTap: () {},
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          highlighted: false,
          onTap: () {},
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          highlighted: false,
          onTap: () {},
        ),
      ],
    );
  }
}
