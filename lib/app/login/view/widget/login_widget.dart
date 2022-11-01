import 'package:flutter/material.dart';
import 'package:git_app/app/get_start/view/get_start.dart';
import 'package:git_app/app/home/view/home_screen.dart';
import 'package:git_app/routes/routes.dart';

import 'textform_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const TextformsField(
            title: "Username",
            icon: Icons.person,
          ),
          const TextformsField(
            title: "Password",
            icon: Icons.lock,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ButtonWidget(
              horizontal: 40,
              vertical: 10,
              fn: () {
                Routes.nextScreen(
                  screen: const HomeScreen(),
                );
              },
              title: 'Sign In',
            ),
          ),
        ],
      ),
    );
  }
}
