
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class PermissionErrorDialog extends StatelessWidget {
  final String message;
  const PermissionErrorDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Ionicons.warning_outline, color: Theme.of(context).colorScheme.onSurfaceVariant,),
            const SizedBox(height: 16,),
            Text('Permission denied', style: Theme.of(context).textTheme.headlineSmall,),
            const SizedBox(height: 16,),
            Text(message, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.justify,),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.bottomRight,
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Ok'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
