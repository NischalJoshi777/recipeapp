import 'package:flutter/cupertino.dart';

class SizeTransitionWrapper extends StatefulWidget {
  final Widget child;
  final Axis axis;

  const SizeTransitionWrapper({
    super.key,
    required this.child,
    this.axis = Axis.horizontal,
  });

  @override
  State<SizeTransitionWrapper> createState() => _SizeTransitionWrapperState();
}

class _SizeTransitionWrapperState extends State<SizeTransitionWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeFactor;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _sizeFactor = Tween<double>(begin: 0.0, end: 1.0).animate(
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
    return SizeTransition(
      sizeFactor: _sizeFactor,
      axis: Axis.horizontal,
      child: widget.child,
    );
  }
}
