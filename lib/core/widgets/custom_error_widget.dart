import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({super.key, required this.errorMessage});
  String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.textStyle22,
      ),
    );
  }
}