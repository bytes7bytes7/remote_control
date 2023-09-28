import 'package:flutter/material.dart';

enum CircleButtonSize {
  big(70),
  small(30);

  const CircleButtonSize(this.size);

  final double size;
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.onPressed,
    required this.icon,
    CircleButtonSize? size,
  }) : size = size ?? CircleButtonSize.big;

  final VoidCallback onPressed;
  final IconData icon;
  final CircleButtonSize size;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox.square(
        dimension: size.size,
        child: ElevatedButton(
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.zero),
          ),
          onPressed: onPressed,
          child: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
