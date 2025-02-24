import 'package:design_system/widgets_omni.dart';
import 'package:design_system_example/molecules.dart';
import 'package:design_system_example/organisms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'atoms.dart';

final indexProvider = StateProvider<int>((ref) {
  return 0;
});

class ShowCase extends ConsumerStatefulWidget {
  const ShowCase({Key? key}) : super(key: key);

  @override
  ConsumerState<ShowCase> createState() => _ShowCaseState();
}

class _ShowCaseState extends ConsumerState<ShowCase> {
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final index = ref.watch(indexProvider);
    pages = [
      const ExampleAtoms(),
      const ExampleMolecules(),
      const ExampleOrganisms(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[index],
      bottomNavigationBar: ElevatedBottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.blue),
          currentIndex: index,
          onTap: (index) {
            ref.read(indexProvider.notifier).state = index;
          },
          items: <BottomNavigationBarItem>[
            circularBottomNavigation(
              labelColor: Colors.blue,
              labelActiveColor: Colors.white,
              text: 'ATOMS',
              icon: const Icon(
                Icons.home,
                size: 22,
              ),
              activeIcon: const Icon(
                Icons.home,
              ),
            ),
            circularBottomNavigation(
              labelColor: Colors.blue,
              labelActiveColor: Colors.white,
              text: 'MOLECULES',
              icon: const Icon(
                Icons.business,
                size: 22,
              ),
              activeIcon: const Icon(
                Icons.business,
              ),
            ),
            circularBottomNavigation(
              labelColor: Colors.blue,
              labelActiveColor: Colors.white,
              text: 'ORGANISM',
              icon: const Icon(
                Icons.school,
                size: 22,
              ),
              activeIcon: const Icon(
                Icons.school,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
