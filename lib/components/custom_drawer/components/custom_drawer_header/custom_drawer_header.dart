import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SafeArea(
        top: true,
        child: Row(
          children: [
            const Icon(
              Icons.person,
              color: Colors.white,
              size: 45,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Acesse sua conta',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('Clique aqui', style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
