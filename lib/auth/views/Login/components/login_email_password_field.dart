
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_state.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/components/check_tile.dart';
import 'package:svemble_new/core/utils/app_dialog.dart';
import 'package:svemble_new/core/widgets/primary_text_form_field.dart';

import '../../../../components/default_button.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class LoginEmailPasswordField extends HookConsumerWidget {
  const LoginEmailPasswordField({
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
    final handleSignIn = useCallback(() async {
      if (formKey.value.currentState?.validate() ?? false) {
        try {
          await authNotifier.signIn(
            email: emailController.value.text.trim(),
            password: passwordController.value.text.trim(),
          );
          final currentState = ref.read(authViewmodelProvider);
          if (currentState.eventState is Authenticated) {
            AppDialog.showSuccess("Signed in!");
          } else if (currentState.eventState is Unauthenticated) {
            AppDialog.showError(currentState.errorMessage ??
                "Sign-in failed. Please try again.");
          }
        } catch (e) {
          AppDialog.showError("An unexpected error occurred: $e");
        }
      }
    }, [formKey, emailController, passwordController]);

    return Form(
      key: formKey.value,
      child: Column(
        children: [
          PrimaryTextFormField(
            controller: emailController,
            validator: (p0) {
              if (p0 != null && p0.isNotEmpty) {
                return null;
              }
              return "Please fill empty space";
            },
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
            validator: (p0) {
              if (p0 != null && p0.isNotEmpty) {
                return null;
              }
              return "Please fill empty space";
            },
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
                onChanged: (value) {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
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
            text: "Login",
            onTap: handleSignIn,
          ),
        ],
      ),
    );
  }
}
