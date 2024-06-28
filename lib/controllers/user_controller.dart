import 'package:flutter_getx_mvvm/models/user_model.dart';
import 'package:flutter_getx_mvvm/services/user_services.dart';
import 'package:get/get.dart';

class UserController extends GetxController with StateMixin {

  List<UserModel> users = <UserModel>[];
  
  @override
  void onInit() {
    super.onInit();
    fetchUser();
  }

  void fetchUser() async {
    change(null, status: RxStatus.loading());
    UserServices().fetchUser().then((value) {
      users = value;
      change(null, status: RxStatus.success());
    }, onError: (e) {
      change(null, status: RxStatus.error());
    });
    update();
  }
}