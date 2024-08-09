import 'package:flutter/material.dart';
import 'package:suitmedia_msib/core/theme/app_pallete.dart';
import 'package:suitmedia_msib/core/utils/padding.dart';

class Screen1 extends StatelessWidget {
  static route() => const Screen1();

  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/asset-bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/asset-profile.png',
                width: 116,
                height: 116,
              ),
              40.heightBox,
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Name',
                      ),
                    ),
                    24.heightBox,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Palindrome',
                      ),
                    ),
                  ],
                ),
              ),
              40.heightBox,
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'CHECK',
                  style: TextStyle(
                    color: AppPallete.whiteColor,
                  ),
                ),
              ),
              20.heightBox,
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                    color: AppPallete.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
