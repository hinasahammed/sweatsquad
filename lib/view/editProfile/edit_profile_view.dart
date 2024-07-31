import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sweat_squad/res/components/custom_button.dart';
import 'package:sweat_squad/res/components/custom_text_form_field.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

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
                image: NetworkImage(
                  'https://i.pinimg.com/564x/ce/67/52/ce67525bcc1ccb74286f3f9fb29d8f24.jpg',
                ),
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
                child: Column(
                  children: [
                    Text(
                      'Edit Your Profile',
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Motivate yourself and others. Update your bio and share your fitness goals!',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
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
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://i.pinimg.com/736x/6d/bb/5f/6dbb5f9316940231d98f0a17b6f48099.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 20,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(10),
                    CustomTextFormfield(
                      controller: TextEditingController(),
                      fieldName: 'Username',
                    ),
                    const Gap(10),
                    CustomTextFormfield(
                      controller: TextEditingController(),
                      fieldName: 'Bio',
                    ),
                    const Gap(20),
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: CustomButton(
                        btnTitle: 'Save',
                        onPressed: () {},
                      ),
                    ),
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
