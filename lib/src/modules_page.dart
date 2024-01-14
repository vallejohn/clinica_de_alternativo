import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ModulesPage extends StatefulWidget {
  const ModulesPage({super.key});

  @override
  State<ModulesPage> createState() => _ModulesPageState();
}

class _ModulesPageState extends State<ModulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        child: const Center(child: Text('Sales Reporting')),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        child: const Center(child: Text('Sales Reporting')),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
