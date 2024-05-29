import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_currency/utils/app_colors.dart';

import '../controller/controller.dart';


class CheckboxWidget extends StatelessWidget {
  final Controller controller;

  const CheckboxWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Checkbox(
            activeColor: Colors.blue,
        checkColor: whiteColor,
        value: controller.isChecked.value,
        onChanged: (value) => controller.toggleCheckbox(),
      ),
    );
  }
}
