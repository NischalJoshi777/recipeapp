import 'package:flutter_bloc/flutter_bloc.dart';

class RecipeCategoryCubit extends Cubit<int> {
  RecipeCategoryCubit() : super(0);

  void onItemPressed(int index) {
    emit(index);
  }
}
