import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int index) onItemPressed;

  const CustomBottomNavigationBar({
    super.key,
    required this.onItemPressed,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
  }

  void setIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: 80.0,
          width: size.width,
          child: CustomPaint(
            painter: MyCustomPainter(),
          ),
        ),
        Center(
          heightFactor: 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _myIcons(Icons.home_filled, currentIndex == 0, onPressed: () {
                setIndex(0);
                widget.onItemPressed(0);
              }),
              _myIcons(Icons.search_off, currentIndex == 1, onPressed: () {
                setIndex(1);
                widget.onItemPressed(1);
              }),
              SizedBox(width: size.width * 0.20),
              _myIcons(Icons.bookmark_add, currentIndex == 2, onPressed: () {
                setIndex(2);
                widget.onItemPressed(2);
              }),
              _myIcons(Icons.person, currentIndex == 3, onPressed: () {
                setIndex(3);
                widget.onItemPressed(3);
              }),
            ],
          ),
        )
      ],
    );
  }

  Widget _myIcons(IconData icons, bool isPressed, {VoidCallback? onPressed}) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icons,
        color: isPressed ? Palette.primaryGreen : Palette.darkGray,
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * .20, 0, size.width * .35, 0);
    path.quadraticBezierTo(size.width * .40, 0, size.width * .40, 20);
    path.arcToPoint(Offset(size.width * .60, 20),
        radius: const Radius.circular(8.0), clockwise: false);
    path.quadraticBezierTo(size.width * .60, 0, size.width * .65, 0);
    path.quadraticBezierTo(size.width * .80, 0, size.width, 20.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawShadow(path, Palette.darkGray, 5.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
