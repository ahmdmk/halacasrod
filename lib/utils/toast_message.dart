import 'package:fluttertoast/fluttertoast.dart';

toastMessage({message}){
  Fluttertoast.showToast(
    msg:message,
    gravity:ToastGravity.TOP,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 1,
  );
}
