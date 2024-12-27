import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        value: 0.5,
        color: Colors.blue,
        strokeCap: StrokeCap.round,
        backgroundColor: Colors.white,
        strokeWidth: 5,
        valueColor: AlwaysStoppedAnimation(Colors.blue),

      ),
    );
  }
}
