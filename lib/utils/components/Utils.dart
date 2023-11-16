import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';


class Utils {


  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }



  static double averageRating(List<int> rating){
    var avgrating = 0;
    for(int i =0; i < rating.length; i++){
      avgrating = avgrating+rating[i];
    }
    return double.parse((avgrating/rating.length).toStringAsFixed(1));
  }


// static toastMessage(String message) {
//   Fluttertoast.showToast(
//     msg: message,
//     backgroundColor: Colors.black,
//     textColor: Colors.white,
//   );
// }

//
// static void flushBarErrorMessage(String messsge, BuildContext context) {
//   showFlushbar(
//     context: context,
//     flushbar: Flushbar(
//       forwardAnimationCurve: Curves.decelerate,
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       padding: const EdgeInsets.all(15),
//       message: messsge,
//       duration: const Duration(seconds: 3),
//       borderRadius: BorderRadius.circular(10),
//       flushbarPosition: FlushbarPosition.TOP,
//       backgroundColor: Colors.red,
//       reverseAnimationCurve: Curves.easeInOut,
//       positionOffset: 20,
//       icon: const Icon(
//         Icons.error,
//         size: 20,
//         color: Colors.white,
//       ),
//     )..show(context),
//   );
// }

static snackBar(String message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(message),
  ));
}
}


