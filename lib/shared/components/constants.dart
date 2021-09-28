import 'package:e_commerce_app/module/login/login_screen.dart';
import 'package:e_commerce_app/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/components/components.dart';

void signOut(context) {
  CacheHelper.removeData(
    key: 'token',
  ).then((value) {
    if (value) {
      navigateWithoutBack(
        context,
        LoginScreen(),
      );
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String token = '';

String uId = '';
