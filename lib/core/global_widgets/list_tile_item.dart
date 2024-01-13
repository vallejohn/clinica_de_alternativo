import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailingIcon;
  final Widget? leadingIcon;
  final VoidCallback? onPressed;

  const ListTileItem({super.key, required this.title, this.subtitle, this.trailingIcon, this.leadingIcon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: ListTile(
          trailing: trailingIcon,
          leading: leadingIcon,
          title: Text(title, ),
          subtitle: subtitle == null? null : Text(subtitle!),
        ),
      ),
    );
  }
}
