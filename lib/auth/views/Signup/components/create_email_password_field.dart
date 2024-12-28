import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/core/widgets/primary_text_form_field.dart';
import 'package:svemble_new/screens/AccountSetup/account_setup_screen.dart';

import '../../../../components/check_tile.dart';
import '../../../../components/default_button.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class CreateEmailPasswordField extends HookConsumerWidget {
  const CreateEmailPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useRef(GlobalKey<FormState>());

    final isRememberState = useState(false);
    final obscureTextState = useState(true);

    final TextEditingController emailController = useTextEditingController();
    final TextEditingController passwordController = useTextEditingController();
    final authViewModel = ref.watch(authViewmodelProvider);
    final authNotifier = ref.read(authViewmodelProvider.notifier);

    // Methods
    final handleSignUp = useCallback(() {
      if (formKey.value.currentState?.validate() ?? false) {
        authNotifier.signUp(
          email: emailController.value.text.trim(),
          password: passwordController.value.text.trim(),
        );
      }
    }, [formKey, emailController, passwordController]);
    return Form(
      key: formKey.value,
      child: Column(
        children: [
          PrimaryTextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              prefixIconColor: kPrimaryColor,
              prefixIcon: Icon(
                Icons.mail,
              ),
              hintText: "Email",
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(20),
          ),
          PrimaryTextFormField(
            obscureText: obscureTextState.value,
            controller: passwordController,
            decoration: InputDecoration(
                prefixIconColor: kPrimaryColor,
                prefixIcon: const Icon(
                  Icons.lock,
                ),
                hintText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {
                      obscureTextState.value = !obscureTextState.value;
                    },
                    icon: Icon(!obscureTextState.value
                        ? Icons.visibility
                        : Icons.visibility_off))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckTile(
                text: "Remember me",
                value: isRememberState.value,
                onChanged: (value) {SchedulerBinding.instance.addPostFrameCallback((_) {
                    isRememberState.value = value ?? false;
                  });
                },
              )
            ],
          ),
          SizedBox(
            height: getPropScreenWidth(20),
          ),
          DefaultButton(
            text: "Create",
            onTap: handleSignUp,
          ),
        ],
      ),
    );
  }
}
