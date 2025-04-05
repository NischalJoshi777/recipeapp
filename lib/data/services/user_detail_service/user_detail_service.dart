import 'package:myrecipeapp/data/model/user_detail/user_detail.dart';

abstract class UserDetailService {
  Future<UserDetail> fetchUserDetails();
  Future<void> updateUserDetails();
}
