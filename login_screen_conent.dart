import 'package:flutter/material.dart';
import '/app_strings.dart';
import 'package:screens_task/otp.dart';
import '/app_colors.dart';
import '/forget_password_row.dart';

class LoginScreenConente extends StatelessWidget {
  const LoginScreenConente({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final fieldWidth = screenWidth * 0.8;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Text(
              AppStrings.loginScreenWelcomeText,
              style: TextStyle(
                color: AppColors.whiteApp,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Phone TextField
          SizedBox(
            width: fieldWidth,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                hintText: AppStrings.loginScreenPhonenumberTextFiled,
                fillColor: AppColors.whiteApp,
                filled: true,
                border: const OutlineInputBorder(),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Password TextField
          SizedBox(
            width: fieldWidth,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                hintText: AppStrings.loginScreenPasswordTextFiled,
                fillColor: AppColors.whiteApp,
                filled: true,
                border: const OutlineInputBorder(),
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Align forget password to left
          SizedBox(
            width: fieldWidth,
            child: Align(
              alignment: Alignment.centerLeft,
              child: ForgetPasswordRow(
                firstWhiteText: AppStrings.loginScreenForgetPass,
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Login Button
          SizedBox(
            width: fieldWidth/2,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const OtpVerificationScreen()),
                );
              },
              child: const Text('Login'),
            ),
          ),

          // Sign up text
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ForgetPasswordRow(
              firstWhiteText: 'إنشاء حساب ',
              secoednBlcakText: AppStrings.loginScreenNoAccount,
            ),
          ),
        ],
      ),
    );

  }
}