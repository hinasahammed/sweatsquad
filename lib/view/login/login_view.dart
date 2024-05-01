import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sweat_squad/res/components/custom_button.dart';
import 'package:sweat_squad/res/components/custom_text_form_field.dart';
import 'package:sweat_squad/view/signup/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/baki.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height * .52,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                  color: theme.colorScheme.background,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Welcome back!',
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onBackground,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Login to your account',
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                      const Gap(10),
                      CustomTextFormfield(
                        controller: TextEditingController(),
                        fieldName: 'Email address',
                      ),
                      const Gap(10),
                      CustomTextFormfield(
                        controller: TextEditingController(),
                        fieldName: 'Password',
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget your password?",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ),
                      ),
                      const Gap(5),
                      SizedBox(
                        width: size.width,
                        height: 50,
                        child: CustomButton(
                          btnTitle: 'Login',
                          onPressed: () {},
                        ),
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => SignupView(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign up",
                              style: theme.textTheme.bodyLarge!.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
