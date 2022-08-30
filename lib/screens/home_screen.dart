import 'package:edecsa_app/includes/utils/responsive.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Scaffold(
      body: SafeArea(child: Container(
        width: responsive.width,
        height: responsive.height,
        child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Switch.adaptive(value: true, onChanged: null),
                Switch.adaptive(value: true, onChanged: null),
                Switch.adaptive(value: true, onChanged: null),

              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton.large(onPressed: (){}, elevation: 0, child: const Icon(Icons.play_arrow_rounded),)
              ],
            ),
          ],
        ),
      ))
    );
  }
}