import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBarCubit extends Cubit<int> {
  CustomNavBarCubit() : super(0);

  void onNavBarItemPressed(int index) {
    emit(index);
  }
}
