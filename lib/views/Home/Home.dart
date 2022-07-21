import 'package:commerce/core/Shared/app_bars.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarWithNowBackArrow(context, "Home"),
    );
  }
}
