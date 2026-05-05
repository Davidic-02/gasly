import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

import 'package:gasly/bloc/auth/auth_bloc.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';
import 'package:gasly/presentation/screens/auth/register.dart';
import 'package:gasly/services/toast_services.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final obscurePassword = useState(true);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            _loginBuildWhen(context, previous, current),
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
                      // ── Logo ──────────────────────────────
                      const _GaslyLogo(),
                      AppSpacing.verticalSpaceLarge,

                      // ── Header ────────────────────────────
                      Text(
                        'Sign in with your work email',
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
                        'Use your work email to sign in to your team workspace',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.greyTextColor,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      AppSpacing.verticalSpaceLarge,

                      // ── Email ─────────────────────────────
                      GaslyTextField(
                        focusNode: emailFocusNode,
                        title: 'Email Address',
                        hintText: 'Enter your work email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        errorText: !state.email.isPure && state.email.isNotValid
                            ? 'Please enter a valid email address'
                            : null,
                        onFieldSubmitted: (_) =>
                            passwordFocusNode.requestFocus(),
                        onChanged: (value) => context.read<AuthBloc>().add(
                          AuthEvent.emailChanged(value),
                        ),
                      ),
                      AppSpacing.verticalSpaceMedium,

                      // ── Password ──────────────────────────
                      GaslyTextField(
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
                          const AuthEvent.loginPressed(),
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,

                      // ── Forgot Password ───────────────────
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            ForgotPasswordScreen.routeName,
                          ),
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      AppSpacing.verticalSpaceLarge,

                      // ── Sign In Button ────────────────────
                      GaslyButton(
                        'Sign in',
                        busy:
                            state.loginStatus ==
                            FormzSubmissionStatus.inProgress,
                        onPressed: () => context.read<AuthBloc>().add(
                          const AuthEvent.loginPressed(),
                        ),
                      ),
                      AppSpacing.verticalSpaceMedium,

                      // ── Register Link ─────────────────────
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: AppColors.greyTextColor,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      context.go(RegisterScreen.routeName),
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

  bool _loginBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.loginStatus != current.loginStatus &&
        current.loginStatus.isSuccess) {
      ToastService.toast('Welcome back!');
      Navigator.pushNamedAndRemoveUntil(
        context,
        DashboardScreen.routeName,
        (route) => false,
      );
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

    if (previous.loginStatus != current.loginStatus) return true;

    if (previous.email != current.email ||
        previous.password != current.password) {
      return true;
    }

    return false;
  }
}

// ─────────────────────────────────────────────
// SHARED LOGO WIDGET (used across auth screens)
// ─────────────────────────────────────────────

class _GaslyLogo extends StatelessWidget {
  const _GaslyLogo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'GASLY',
        style: TextStyle(
          color: AppColors.primaryTextColor,
          fontSize: 28,
          fontWeight: FontWeight.w900,
          letterSpacing: 4,
        ),
      ),
    );
  }
}
