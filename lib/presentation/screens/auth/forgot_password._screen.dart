import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

import 'package:gasly/bloc/auth/auth_bloc.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';
import 'package:gasly/presentation/widgets/button.dart';
import 'package:gasly/presentation/widgets/custom_text_form_field.dart';
import 'package:gasly/presentation/widgets/gasly_logo.dart';
import 'package:gasly/services/toast_services.dart';

class ForgotPasswordScreen extends HookWidget {
  const ForgotPasswordScreen({super.key});

  static const String routeName = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    final emailFocusNode = useFocusNode();

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            _forgotPasswordBuildWhen(context, previous, current),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── Logo ──────────────────────────────
                    const GaslyLogo(),
                    AppSpacing.verticalSpaceLarge,

                    // ── Back Button ───────────────────────
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 14,
                            color: AppColors.primaryTextColor,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Back',
                            style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppSpacing.verticalSpaceMedium,

                    // ── Icon ──────────────────────────────
                    Center(
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor.withValues(alpha: 0.08),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.lock_outline_rounded,
                          color: AppColors.primaryColor,
                          size: 28,
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpaceMedium,

                    // ── Header ────────────────────────────
                    Text(
                      'Forgot your password?',
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
                      'Enter your email and we will send you a link to reset your password',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.greyTextColor,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AppSpacing.verticalSpaceLarge,

                    // ── Email ─────────────────────────────
                    CustomTextFormField(
                      focusNode: emailFocusNode,
                      title: 'Email Address',
                      hintText: 'Enter your work email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      errorText:
                          !state.forgotPasswordEmail.isPure &&
                              state.forgotPasswordEmail.isNotValid
                          ? 'Please enter a valid email address'
                          : null,
                      onFieldSubmitted: (_) => context.read<AuthBloc>().add(
                        const AuthEvent.forgotPasswordPressed(),
                      ),
                      onChanged: (value) => context.read<AuthBloc>().add(
                        AuthEvent.forgotPasswordEmailChanged(value),
                      ),
                    ),
                    AppSpacing.verticalSpaceLarge,

                    // ── Send Button ───────────────────────
                    Button(
                      'Send Reset Link',
                      busy:
                          state.forgotPasswordStatus ==
                          FormzSubmissionStatus.inProgress,
                      onPressed: () => context.read<AuthBloc>().add(
                        const AuthEvent.forgotPasswordPressed(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool _forgotPasswordBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.forgotPasswordStatus != current.forgotPasswordStatus &&
        current.forgotPasswordStatus.isSuccess) {
      ToastService.toast(
        'If an account exists with this email, a reset link has been sent.',
        ToastType.success,
      );
      Navigator.pop(context);
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

    if (previous.forgotPasswordStatus != current.forgotPasswordStatus) {
      return true;
    }

    if (previous.forgotPasswordEmail != current.forgotPasswordEmail) {
      return true;
    }

    return false;
  }
}
