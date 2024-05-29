import '../controller/controller.dart';
import '../theme/textfield_theme.dart';
import '../utils/app_urls.dart';

// Widget reusableTextFiled({required var label, var SuffixIcon}) {
//   return TextFormField(
//     style: const TextStyle(color: blackColor),
//     decoration: InputDecoration(
//       suffixIcon: SuffixIcon,
//         border:
//             const OutlineInputBorder(borderSide: BorderSide(color: greyColor)),
//         labelText: label,
//         labelStyle: const TextStyle(
//           color: greyColor,
//         )),
//   );
// }

// Widget reusableTextField({required String label,  Widget? suffixIcon}) {
//   final Controller _controller = Get.put(Controller());
//   return TextFormField(
//     obscureText: _controller.obscureText.value,
//     style: const TextStyle(color: Colors.black),
//     decoration: InputDecoration(
//       suffixIcon: suffixIcon,
//       border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
//       labelText: label,
//       labelStyle: const TextStyle(
//         color: Colors.grey,
//       ),
//     ),
//   );
// }

class reusableTextField extends StatelessWidget {
  final String label;
  final Widget? suffixIcon;
  final bool obscuretext;

  const reusableTextField({Key? key, required this.label, this.suffixIcon,  this.obscuretext = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext,
      style: Get.isDarkMode ? TTextFormFieldTheme.darkInputTextStyle : TTextFormFieldTheme.lightInputTextStyle,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        hintText: label,
        labelStyle: Get.isDarkMode ? TTextFormFieldTheme.darkInputLabelStyle : TTextFormFieldTheme.lightInputLabelStyle,
      ),
    );
  }
}
