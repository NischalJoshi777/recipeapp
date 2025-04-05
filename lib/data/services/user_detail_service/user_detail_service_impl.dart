import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myrecipeapp/data/model/user_detail/user_detail.dart';
import 'package:myrecipeapp/data/services/user_detail_service/user_detail_service.dart';

class UserDetailServiceImpl implements UserDetailService {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<UserDetail> fetchUserDetails() async {
    try {
      final userId = _auth.currentUser?.uid;

      ///TODO: Store in shared pref and get the data here from the shared pref.
      if (userId == null) {
        throw Exception('User id not found');
      }
      DocumentSnapshot userSnapshot =
          await _fireStore.collection('users').doc(userId).get();
      if (userSnapshot.exists) {
        final Map<String, dynamic> userJson =
            userSnapshot.data() as Map<String, dynamic>;
        return UserDetail.fromJson(userJson);
      } else {
        throw Exception('User detail does not exist');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(
        'Error fetching user details',
      );
    }
  }

  @override
  Future<void> updateUserDetails() {
    // TODO: implement updateUserDetails
    throw UnimplementedError();
  }
}
