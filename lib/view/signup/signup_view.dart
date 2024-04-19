import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sweat_squad/res/components/custom_button.dart';
import 'package:sweat_squad/res/components/custom_text_form_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/One Piece.jpeg'),
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
                      'Join the Sweat Squad',
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.onBackground,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '"Unlock Your Fitness Journey - Create Your Accoun',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onBackground,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Gap(10),
                    CustomTextFormfield(
                      controller: TextEditingController(),
                      fieldName: 'User name',
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
                    const Gap(10),
                    CustomTextFormfield(
                      controller: TextEditingController(),
                      fieldName: 'Confirm password',
                    ),
                    const Gap(10),
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: CustomButton(
                        btnTitle: 'Sign up',
                        onPressed: () {},
                      ),
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Already have an account?",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
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
    );
  }
}
