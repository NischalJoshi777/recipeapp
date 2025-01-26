import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/custom_navbar_cubit/custom_navbar_cubit.dart';

class NavBarItem {
  final IconData icons;
  final String? label;

  NavBarItem({
    required this.icons,
    this.label,
  });
}

class CustomBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int>? onDestinationSelected;

  CustomBottomNavigationBar({
    super.key,
    this.onDestinationSelected,
  });

  final List<NavBarItem> _items = [
    NavBarItem(icons: Icons.home_filled),
    NavBarItem(icons: Icons.search_off),
    NavBarItem(icons: Icons.bookmark_add_outlined),
    NavBarItem(icons: Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) {
        return Stack(
          children: [
            SizedBox(
              height: 80.0,
              width: size.width,
              child: CustomPaint(
                painter: MyCustomPainter(),
              ),
            ),
            BlocBuilder<CustomNavBarCubit, int>(
              builder: (context, state) {
                final CustomNavBarCubit cubit =
                    context.read<CustomNavBarCubit>();
                return Center(
                  heightFactor: 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ..._items.asMap().entries.expand(
                        (e) {
                          final widgets = <Widget>[
                            _myIcons(
                              e.value.icons,
                              state == e.key,
                              e.key,
                              onPressed: (value) {
                                if (value < 3) {
                                  /// this logic will be removed
                                  onDestinationSelected!(value);
                                  cubit.onNavBarItemPressed(e.key);
                                }
                              },
                            ),
                          ];
                          // Add SizedBox after index 1
                          if (e.key == 1) {
                            widgets.add(const SizedBox(width: 20));
                          }
                          return widgets;
                        },
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }

  Widget _myIcons(
    IconData icons,
    bool isPressed,
    int index, {
    ValueChanged<int>? onPressed,
  }) {
    return IconButton(
      onPressed: () => onPressed?.call(index),
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
        radius: const Radius.elliptical(2, 1), clockwise: false);
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
