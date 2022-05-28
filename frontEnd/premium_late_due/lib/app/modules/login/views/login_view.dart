import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:premium_late_due/app/data/constants/styleConstants.dart';
import 'package:premium_late_due/app/modules/sharedWidgets/flatTextFormField.dart';
import 'package:premium_late_due/app/modules/sharedWidgets/textButton.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KlightPallet.backgroundColor,
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              const SizedBox(
                height: 80,
              ),
              _buildLoginForm(),
              const SizedBox(
                height: 20,
              ),
              _buildForget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'PREMIUM',
              style: TextStyle(
                fontSize: 34,
                color: KlightPallet.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' CARD',
              style: TextStyle(
                fontSize: 34,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Text(
          'For Financial Services',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ],
    );
  }

  Widget _buildLoginForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 400,
          child: Column(
            children: [
              FlatTextFormField(
                controller: controller.userNameController,
                hintText: 'User Name',
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              FlatTextFormField(
                controller: controller.passwordController,
                hintText: 'Password',
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 60,
              ),
              const MyTextButton(
                text: 'Login',
                icon: Icons.arrow_forward,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildForget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Forget Your Password?',
          style: TextStyle(color: Colors.blueGrey, fontSize: 11),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Click Here',
              style: TextStyle(color: KlightPallet.primaryColor, fontSize: 11),
            ))
      ],
    );
  }
}
