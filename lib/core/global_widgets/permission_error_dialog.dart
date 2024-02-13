
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class PermissionErrorDialog extends StatelessWidget {
  final String? message;
  const PermissionErrorDialog({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 24,),
          Icon(Ionicons.warning_outline, color: Theme.of(context).colorScheme.onSurfaceVariant,),
          const SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Permission denied', style: Theme.of(context).textTheme.headlineSmall,),
          ),
          const SizedBox(height: 16,),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,),
            child: Text(message?? 'You are not allowed to perform this operation. Please contact your administrator.', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant), textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Ok'),
              ),
            ),
          ),
          const SizedBox(height: 24,),
        ],
      ),
    );
  }
}
