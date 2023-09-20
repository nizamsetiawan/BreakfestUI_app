import 'package:breakfast/config/app.color.dart';
import 'package:breakfast/config/app.route.dart';
import 'package:breakfast/widget/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'asset/bgscreen.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sarapan Pagi\nSeni Hidup Sehat',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Awali Pagi dengan Kebahagiaan, Mulailah dengan Sarapan!',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                MyButton(
                  colorButton: AppColor.primary,
                  label: 'Get Started',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoute.singinpage);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
