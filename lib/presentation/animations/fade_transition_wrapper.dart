import 'package:flutter/cupertino.dart';

class FadeTransitionWrapper extends StatefulWidget {
  final Widget child;

  const FadeTransitionWrapper({
    super.key,
    required this.child,
  });

  @override
  State<FadeTransitionWrapper> createState() => _SizeTransitionWrapperState();
}

class _SizeTransitionWrapperState extends State<FadeTransitionWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeFactor;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _fadeFactor = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeFactor,
      child: widget.child,
    );
  }
}
