import 'package:flutter/widgets.dart';

class ScaleTransitionWrapper extends StatefulWidget {
  final Widget child;

  const ScaleTransitionWrapper({
    super.key,
    required this.child,
  });

  @override
  State<ScaleTransitionWrapper> createState() => _ScaleTransitionWrapperState();
}

class _ScaleTransitionWrapperState extends State<ScaleTransitionWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    scale = Tween(begin: 1.0, end: 1.5).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _controller.forward();
      },
      onLongPressUp: () {
        _controller.reverse();
      },
      child: ScaleTransition(
        scale: scale,
        child: widget.child,
      ),
    );
  }
}
