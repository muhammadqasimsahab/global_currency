import 'package:global_currency/utils/app_urls.dart';

Widget reusableButton({required String text}) {
  return Container(
    width: double.infinity,
    height: 56,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      gradient: const LinearGradient(
        colors: [
          Color(0xff5FB1FF),
          Color(0xffFE60F7),
        ],
      ),
    ),
    child: Center(child: Text(text,style: TextStyle(fontSize: 16.sp,fontFamily: 'Inter',fontWeight: FontWeight.w700,color: whiteColor))),
  );
}


// class reusableButton extends StatelessWidget {
//   var text;
//    reusableButton({super.key,required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 56,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         gradient: const LinearGradient(
//           colors: [
//             Color(0xff5FB1FF),
//             Color(0xffFE60F7),
//           ],
//         ),
//       ),
//       child: Center(child: Text(text, style: Theme.of(context).textTheme.bodyText2)),
//     );
//   }
// }
//
//
