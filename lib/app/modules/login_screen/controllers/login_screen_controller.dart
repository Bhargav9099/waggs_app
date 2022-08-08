import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:waggs_app/app/routes/app_pages.dart';

import '../../../constant/ConstantUrl.dart';

class LoginScreenController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<TextEditingController> emailController = TextEditingController().obs;
Rx<TextEditingController> passController = TextEditingController().obs;
  RxBool isChecked = false.obs;
  RxBool passwordVisible = true.obs;
  List respons =[];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> LoginUser() async {
    try{
      var url = Uri.parse(baseUrl+ApiConstant.loginUsers);
      var response = await http.post(url, body: {
        'email': '${emailController.value.text.trim()}',
        'password': '${passController.value.text.trim()}',
      }
      );
      respons.add(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if(response.statusCode==200){
        Get.toNamed(Routes.HOME);
      }
      else{
        Get.snackbar("Error", response.body,snackPosition: SnackPosition.BOTTOM);
      }
    }catch(e){

    Get.snackbar("Error", e.toString(),snackPosition: SnackPosition.BOTTOM,);

    }
  }
}
