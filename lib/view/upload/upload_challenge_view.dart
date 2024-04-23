import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sweat_squad/res/components/custom_button.dart';
import 'package:sweat_squad/res/components/custom_text_form_field.dart';

class UploadChallengeView extends StatelessWidget {
  const UploadChallengeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * .3,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                      color: theme.colorScheme.secondary,
                      width: 4,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/736x/bb/99/07/bb99079b040b5a34884af402d2042f53.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.colorScheme.primary,
                    ),
                    child: Icon(
                      Icons.add,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            CustomTextFormfield(
              controller: TextEditingController(),
              fieldName: 'Challenge name',
            ),
            const Gap(10),
            CustomTextFormfield(
              controller: TextEditingController(),
              fieldName: 'Description',
            ),
            const Gap(10),
            DropdownButtonFormField(
              value: "Strength",
              borderRadius: BorderRadius.circular(10),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                label: const Text('Select category'),
              ),
              items: const [
                DropdownMenuItem(
                  value: "Strength",
                  child: Text('Strength'),
                ),
                DropdownMenuItem(
                  value: "Cardio",
                  child: Text('Cardio'),
                ),
                DropdownMenuItem(
                  value: "Flexibility",
                  child: Text('Flexibility'),
                ),
                DropdownMenuItem(
                  value: "Balance",
                  child: Text('Balance'),
                ),
              ],
              onChanged: (value) {},
            ),
            const Gap(20),
            SizedBox(
              width: size.width,
              height: 50,
              child: CustomButton(
                onPressed: () {},
                btnTitle: 'Upload',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
