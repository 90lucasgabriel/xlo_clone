import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:xlo_mobx/components/custom_drawer/components/page_tile/page_tile.dart';
import 'package:xlo_mobx/shared/store/page_store.dart';

class PageSection extends StatelessWidget {
  PageSection({super.key});

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúncios',
          iconData: Icons.list,
          highlighted: pageStore.page == 0,
          onTap: () {
            pageStore.setPage(0);
          },
        ),
        PageTile(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          highlighted: pageStore.page == 1,
          onTap: () {
            pageStore.setPage(1);
          },
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          highlighted: pageStore.page == 2,
          onTap: () {
            pageStore.setPage(2);
          },
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          highlighted: pageStore.page == 3,
          onTap: () {
            pageStore.setPage(3);
          },
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          highlighted: pageStore.page == 4,
          onTap: () {
            pageStore.setPage(4);
          },
        ),
      ],
    );
  }
}
