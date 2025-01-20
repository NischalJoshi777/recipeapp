import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';

class ExpandableHeader extends StatelessWidget {
  final String title;
  final List<Widget> content;

  const ExpandableHeader({
    super.key,
    required this.content,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey expansionTileKey = GlobalKey();
    return ExpansionTile(
      key: expansionTileKey,
      onExpansionChanged: (value) {
        if (value) {
          _scrollToItem(expansionTileKey);
        }
      },
      iconColor: Palette.primaryGreen,
      collapsedIconColor: Palette.darkGray,
      childrenPadding: EdgeInsets.zero,
      collapsedShape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      tilePadding: EdgeInsets.zero,
      title: HeaderText(text: title),
      children: content,
    );
  }

  void _scrollToItem(GlobalKey key) {
    final currentContext = key.currentContext;
    if (currentContext != null && currentContext.mounted) {
      Future.delayed(const Duration(milliseconds: 200)).then((value) {
        Scrollable.ensureVisible(
          currentContext,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 200),
        );
      });
    }
  }
}
