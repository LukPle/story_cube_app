import 'package:flutter/material.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/ui/pages/pages.dart';

import 'constants/icon_sizes.dart';

class TabSelector extends StatelessWidget {
  TabSelector({super.key});

  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  final List<Widget> _pages = [
    const StoriesPage(),
    const TimelinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _currentIndex,
        builder: (context, index, child) {
          return IndexedStack(
            index: index,
            children: _pages,
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _currentIndex,
        builder: (context, index, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: index,
                onTap: (newIndex) => _currentIndex.value = newIndex,
                iconSize: AppIconSizes.medium,
                unselectedLabelStyle: AppTextStyles.caption,
                selectedLabelStyle: AppTextStyles.caption,
                items: [
                  BottomNavigationBarItem(
                    label: 'Stories',
                    icon: Icon(_currentIndex.value == 0 ? Icons.menu_book : Icons.menu_book_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: 'Timeline',
                    icon: Icon(_currentIndex.value == 1 ? Icons.view_timeline : Icons.view_timeline_outlined),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
