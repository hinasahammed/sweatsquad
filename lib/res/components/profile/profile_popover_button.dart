import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:sweat_squad/res/components/profile/profile_menu_item.dart';

class ProfilePopoverButton extends StatelessWidget {
  const ProfilePopoverButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return IconButton(
      onPressed: () {
        showPopover(
          context: context,
          bodyBuilder: (context) => const ProfileMenuItem(),
          direction: PopoverDirection.bottom,
          width: size.width * .6,
          arrowDxOffset: -5,
          height: size.height * .08,
          arrowHeight: 15,
          arrowWidth: 30,
        );
      },
      icon: const Icon(Icons.more_vert),
    );
  }
}
