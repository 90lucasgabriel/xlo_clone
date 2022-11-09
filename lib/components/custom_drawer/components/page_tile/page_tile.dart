import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  const PageTile({
    Key? key,
    required this.label,
    required this.iconData,
    required this.highlighted,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final IconData iconData;
  final bool highlighted;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(color: highlighted ? Colors.purple : Colors.black54),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? Colors.purple : Colors.black54,
      ),
      onTap: onTap,
    );
  }
}
