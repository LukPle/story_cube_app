import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/colors.dart';
import 'package:story_cube_app/constants/strings.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/ui/pages/pages.dart';

import 'constants/icon_sizes.dart';
import 'constants/sizes.dart';

class TabSelector extends StatelessWidget {
  TabSelector({super.key});

  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  final List<Widget> _pages = [
    const TimelinePage(),
    const ChroniclePage(),
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
                selectedItemColor: ThemedColor.primaryColor(context),
                items: [
                  BottomNavigationBarItem(
                    label: AppStrings.timelinePageTitle,
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: AppSizes.size_2),
                      child: Icon(PhosphorIcons.notebook(
                          _currentIndex.value == 0 ? PhosphorIconsStyle.fill : PhosphorIconsStyle.regular)),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppStrings.chroniclePageTitle,
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: AppSizes.size_2),
                      child: Icon(PhosphorIcons.userFocus(
                          _currentIndex.value == 1 ? PhosphorIconsStyle.fill : PhosphorIconsStyle.regular)),
                    ),
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
