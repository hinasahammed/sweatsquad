import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sweat_squad/res/components/custom_button.dart';
import 'package:sweat_squad/res/components/custom_text_form_field.dart';
import 'package:sweat_squad/viewmodel/controller/signup/signup_viewmodel.dart';
import 'package:sweat_squad/viewmodel/services/signup_services.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signupViewmodel = Get.put(SignupViewmodel());
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Obx(
        () => Stack(
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
                  child: Form(
                    key: _formKey,
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
                          'Unlock Your Fitness Journey - Create Your Account',
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(10),
                        Stack(
                          children: [
                            Container(
                              width: size.width * .5,
                              height: size.height * .2,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: theme.colorScheme.secondary,
                                  width: 3,
                                ),
                                image: DecorationImage(
                                  image: signupViewmodel
                                          .selectedImage.value.path.isEmpty
                                      ? const NetworkImage(
                                          'https://i.pinimg.com/736x/6d/bb/5f/6dbb5f9316940231d98f0a17b6f48099.jpg',
                                        )
                                      : FileImage(signupViewmodel.selectedImage
                                          .value) as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    SignupServices().pickImage(context);
                                  },
                                  icon: const Icon(Icons.add),
                                  color: theme.colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        CustomTextFormfield(
                          controller: signupViewmodel.userNameController.value,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter an username';
                            }
                            if (value.length < 3) {
                              return 'Username length is short';
                            }
                            return null;
                          },
                          fieldName: 'User name',
                        ),
                        const Gap(10),
                        CustomTextFormfield(
                          controller: signupViewmodel.emailController.value,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter email address';
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                                .hasMatch(signupViewmodel
                                    .emailController.value.text)) {
                              return 'Enter a valid email address';
                            }
                            return null;
                          },
                          fieldName: 'Email address',
                        ),
                        const Gap(10),
                        CustomTextFormfield(
                          controller: signupViewmodel.passwordController.value,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a password';
                            }
                            if (value.length < 6) {
                              return 'Your password is too short!';
                            }
                            // if (!value.contains(RegExp(r'[A-Z]'))) {
                            //   return 'Uppercase must contain';
                            // }
                            // if (!value.contains(RegExp(r'[a-z]'))) {
                            //   return 'lowercase must contain';
                            // }
                            // if (!value.contains(RegExp(r'[0-9]'))) {
                            //   return 'digits must contain';
                            // }
                            // if (!value
                            //     .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                            //   return 'Special chareacter must contain';
                            // }
                            return null;
                          },
                          fieldName: 'Password',
                        ),
                        const Gap(10),
                        CustomTextFormfield(
                          controller:
                              signupViewmodel.confirmPasswordController.value,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Confirm the password';
                            }
                            if (value !=
                                signupViewmodel.passwordController.value.text) {
                              return "Your password doesn't match";
                            }
                            return null;
                          },
                          fieldName: 'Confirm password',
                        ),
                        const Gap(10),
                        SizedBox(
                          width: size.width,
                          height: 50,
                          child: CustomButton(
                            btnTitle: 'Sign up',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                signupViewmodel.registerUser(context);
                              }
                            },
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
            ),
          ],
        ),
      ),
    );
  }
}
