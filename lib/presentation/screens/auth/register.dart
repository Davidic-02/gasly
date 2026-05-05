import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:gasly/presentation/screens/auth/login.dart';
import 'package:gasly/presentation/screens/tabs/dashboard.dart';
import 'package:gasly/presentation/widgets/button.dart';
import 'package:gasly/presentation/widgets/custom_text_form_field.dart';
import 'package:gasly/presentation/widgets/gasly_logo.dart';
import 'package:go_router/go_router.dart';

import 'package:gasly/bloc/auth/auth_bloc.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';
import 'package:gasly/services/toast_services.dart';

class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    final fullNameFocusNode = useFocusNode();
    final emailFocusNode = useFocusNode();
    final phoneFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final obscurePassword = useState(true);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            _registerBuildWhen(context, previous, current),
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                width: 420,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 48,
                ),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.07),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const GaslyLogo(),
                      AppSpacing.verticalSpaceLarge,
                      Text(
                        'Create your account',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryTextColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        'Set up your Gasly workspace to get started',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.greyTextColor,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      AppSpacing.verticalSpaceLarge,
                      CustomTextFormField(
                        focusNode: fullNameFocusNode,
                        title: 'Full Name',
                        hintText: 'Enter your full name',
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        errorText:
                            !state.fullName.isPure && state.fullName.isNotValid
                            ? 'Name must be at least 3 characters'
                            : null,
                        onFieldSubmitted: (_) => emailFocusNode.requestFocus(),
                        onChanged: (value) => context.read<AuthBloc>().add(
                          AuthEvent.fullNameChanged(value),
                        ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      CustomTextFormField(
                        focusNode: emailFocusNode,
                        title: 'Email Address',
                        hintText: 'Enter your work email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        errorText: !state.email.isPure && state.email.isNotValid
                            ? 'Please enter a valid email address'
                            : null,
                        onFieldSubmitted: (_) => phoneFocusNode.requestFocus(),
                        onChanged: (value) => context.read<AuthBloc>().add(
                          AuthEvent.emailChanged(value),
                        ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      CustomTextFormField(
                        focusNode: phoneFocusNode,
                        title: 'Phone Number',
                        hintText: '+234 000 0000 000',
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        errorText: !state.phone.isPure && state.phone.isNotValid
                            ? 'Enter a valid phone number'
                            : null,
                        onFieldSubmitted: (_) =>
                            passwordFocusNode.requestFocus(),
                        onChanged: (value) => context.read<AuthBloc>().add(
                          AuthEvent.phoneChanged(value),
                        ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      CustomTextFormField(
                        focusNode: passwordFocusNode,
                        title: 'PASSWORD',
                        hintText: 'Enter Password',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        obscureText: obscurePassword.value,
                        isPassword: true,
                        errorText:
                            !state.password.isPure && state.password.isNotValid
                            ? 'Password must be at least 6 characters'
                            : null,
                        onSuffixIconPressed: () =>
                            obscurePassword.value = !obscurePassword.value,
                        onChanged: (value) => context.read<AuthBloc>().add(
                          AuthEvent.passwordChanged(value),
                        ),
                        onFieldSubmitted: (_) => context.read<AuthBloc>().add(
                          const AuthEvent.registerPressed(),
                        ),
                      ),
                      AppSpacing.verticalSpaceLarge,
                      Button(
                        'Create Account',
                        busy:
                            state.registerStatus ==
                            FormzSubmissionStatus.inProgress,
                        onPressed: () => context.read<AuthBloc>().add(
                          const AuthEvent.registerPressed(),
                        ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: AppColors.greyTextColor,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign in',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      context.go(LoginScreen.routeName),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool _registerBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.registerStatus != current.registerStatus &&
        current.registerStatus.isSuccess) {
      ToastService.toast('Account created successfully!');
      context.go(Dashboard.routeName); // clears stack ✅
      return true;
    }

    if (previous.errorMessage != current.errorMessage &&
        current.errorMessage != null) {
      ToastService.toast(
        current.errorMessage ?? 'Something went wrong',
        ToastType.error,
      );
      context.read<AuthBloc>().add(const AuthEvent.errorMessageCleared());
      return true;
    }

    if (previous.registerStatus != current.registerStatus) return true;

    if (previous.fullName != current.fullName ||
        previous.email != current.email ||
        previous.phone != current.phone ||
        previous.password != current.password) {
      return true;
    }

    return false;
  }
}
