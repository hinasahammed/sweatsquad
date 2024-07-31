import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sweat_squad/res/components/custom_button.dart';
import 'package:sweat_squad/res/components/custom_text_form_field.dart';
import 'package:sweat_squad/res/routes/routes_name.dart';
import 'package:sweat_squad/viewmodel/controller/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginViewmodel = Get.put(LoginViewmodel());
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Stack(
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
                    color: theme.colorScheme.surface,
                  ),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            'Welcome back!',
                            style: theme.textTheme.titleLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Login to your account',
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const Gap(10),
                          CustomTextFormfield(
                            controller: loginViewmodel.emailController.value,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter email address';
                              }
                              if (!RegExp(
                                      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                                  .hasMatch(loginViewmodel
                                      .emailController.value.text)) {
                                return 'Enter a valid email address';
                              }
                              return null;
                            },
                            fieldName: 'Email address',
                          ),
                          const Gap(10),
                          CustomTextFormfield(
                            controller: loginViewmodel.passwordController.value,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter a password';
                              }
                              if (value.length < 6) {
                                return 'Your password is too short!';
                              }
                              if (!value.contains(RegExp(r'[A-Z]'))) {
                                return 'Uppercase must contain';
                              }
                              if (!value.contains(RegExp(r'[a-z]'))) {
                                return 'lowercase must contain';
                              }
                              if (!value.contains(RegExp(r'[0-9]'))) {
                                return 'digits must contain';
                              }
                              if (!value.contains(
                                  RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                return 'Special chareacter must contain';
                              }
                              return null;
                            },
                            fieldName: 'Password',
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                Get.toNamed(RoutesName.reset);
                              },
                              child: Text(
                                "Forget your password?",
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
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
                              status: loginViewmodel.reqStatusResponse.value,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  loginViewmodel.login(context);
                                }
                              },
                            ),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed(RoutesName.signup);
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
