import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_app_bar_arrow_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leadingWidth: 80,
      backgroundColor: Colors.white,
      elevation: 0,
      title: title,
      centerTitle: true,
      leading: CustomAppBarArrowButton(
        onTap: () {},
      ),
    );
  }
}
