import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_styles.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.pageTitle,
    required this.children,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.hasPadding = true,
    this.extendBodyBehindAppBar = false,
    this.removeLargeTitle = false,
  });

  final String pageTitle;
  final List<Widget> children;
  final Widget? leading;
  final Widget? trailing;
  final Color? backgroundColor;
  final bool hasPadding;
  final bool extendBodyBehindAppBar;
  final bool removeLargeTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: !removeLargeTitle
                ? Text(
                    pageTitle,
                    style: AppTextStyles.h1.copyWith(
                      color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
                    ),
                  )
                : const SizedBox.shrink(),
            middle: Text(
              pageTitle,
              style: AppTextStyles.bodyLarge.copyWith(
                color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
              ),
            ),
            leading: leading,
            trailing: trailing,
            brightness: Theme.of(context).brightness,
            backgroundColor: backgroundColor ?? ThemedColor.backgroundColor(context),
            border: const Border(
              bottom: BorderSide(color: Colors.transparent),
            ),
            alwaysShowMiddle: false,
            transitionBetweenRoutes: false,
            stretch: true,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: hasPadding ? AppSizes.size_16 : 0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(children),
            ),
          ),
        ],
      ),
    );
  }
}
