import 'package:get/get.dart';

class Controller extends GetxController {
  var obscureText = true.obs;
  var isHidden = true.obs;

  void toggleObscureText() {
    obscureText.toggle();
  }



  final RxBool isChecked = false.obs; 

  void toggleCheckbox() => isChecked.value = !isChecked.value;
}
