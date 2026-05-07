import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:gasly/bloc/customer/customer_bloc.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';
import 'package:gasly/presentation/screens/tabs/customer_list.dart';
import 'package:gasly/presentation/widgets/button.dart';
import 'package:gasly/presentation/widgets/custom_text_form_field.dart';
import 'package:gasly/services/toast_services.dart';
import 'package:go_router/go_router.dart';

class AddCustomerScreen extends HookWidget {
  const AddCustomerScreen({super.key});
  static const String routeName = '/add-customer';

  @override
  Widget build(BuildContext context) {
    final fullNameFocus = useFocusNode();
    final phoneFocus = useFocusNode();
    final emailFocus = useFocusNode();
    final addressFocus = useFocusNode();
    return BlocConsumer<CustomerBloc, CustomerState>(
      buildWhen: (previous, current) {
        return previous.fullName != current.fullName ||
            previous.phone != current.phone ||
            previous.email != current.email ||
            previous.address != current.address ||
            previous.addCustomerStatus != current.addCustomerStatus ||
            previous.errorMessage != current.errorMessage;
      },

      listener: (context, state) {
        if (state.addCustomerStatus == FormzSubmissionStatus.success) {
          context.pop();
        }
        if (state.addCustomerStatus == FormzSubmissionStatus.failure) {
          ToastService.toast(
            state.errorMessage ?? 'Failed to add customer.',
            ToastType.error,
          );
        }
      },

      builder: (context, state) {
        final bloc = context.read<CustomerBloc>();
        final isLoading =
            state.addCustomerStatus == FormzSubmissionStatus.inProgress;

        return Scaffold(
          backgroundColor: AppColors.lightBg,
          body: Expanded(
            child: Column(
              children: [
                AppSpacing.horizontalSpaceMedium,

                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Breadcrumb
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  context.go(CustomerListScreen.routeName),
                              child: const Text(
                                'Customer information',
                                style: TextStyle(
                                  color: AppColors.greyTextColor,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Icon(
                                Icons.chevron_right,
                                size: 16,
                                color: AppColors.greyTextColor,
                              ),
                            ),
                            const Text(
                              'Add Customer',
                              style: TextStyle(
                                color: AppColors.primaryTextColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        AppSpacing.verticalSpaceLarge,
                        const Text(
                          'Add new customer',
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                          ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        const Text(
                          'Fill in the details below to register a new customer.\nFields marked * are required.',
                          style: TextStyle(
                            color: AppColors.greyTextColor,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                        AppSpacing.verticalSpaceLarge,
                        // Form Card
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.borderColor),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: .04),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                focusNode: fullNameFocus,
                                onChanged: (value) => bloc.add(
                                  CustomerEvent.fullNameChanged(value),
                                ),
                                title: 'Full Name *',
                                hintText: 'e.g. Olamide Akintan',
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                errorText:
                                    state.fullName.isNotValid &&
                                        state.fullName.value.isNotEmpty
                                    ? 'Please enter a valid full name'
                                    : null,
                              ),
                              AppSpacing.verticalSpaceMedium,
                              CustomTextFormField(
                                focusNode: phoneFocus,
                                onChanged: (value) =>
                                    bloc.add(CustomerEvent.phoneChanged(value)),
                                title: 'Phone Number *',
                                hintText: '+234 848 563 845',
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                errorText:
                                    state.phone.isNotValid &&
                                        state.phone.value.isNotEmpty
                                    ? 'Please enter a valid phone number'
                                    : null,
                              ),
                              AppSpacing.verticalSpaceMedium,
                              CustomTextFormField(
                                focusNode: emailFocus,
                                onChanged: (value) =>
                                    bloc.add(CustomerEvent.emailChanged(value)),
                                title: 'Email Address',
                                hintText: 'name@example.com',
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                errorText:
                                    state.email.isNotValid &&
                                        state.email.value.isNotEmpty
                                    ? 'Please enter a valid email'
                                    : null,
                              ),
                              AppSpacing.verticalSpaceMedium,
                              CustomTextFormField(
                                focusNode: addressFocus,
                                onChanged: (value) => bloc.add(
                                  CustomerEvent.addressChanged(value),
                                ),
                                title: 'Address',
                                hintText: 'Flat 3, New York...',
                                keyboardType: TextInputType.streetAddress,
                                textInputAction: TextInputAction.done,
                              ),
                              AppSpacing.verticalSpaceLarge,
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor.withValues(
                                    alpha: .06,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.primaryColor.withValues(
                                      alpha: .2,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.info_outline_rounded,
                                      color: AppColors.primaryColor,
                                      size: 16,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        'Customer will start as Active with 0 loyalty points and ₦0.00 total spent.',
                                        style: TextStyle(
                                          color: AppColors.warningOrange,
                                          fontSize: 12,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        AppSpacing.verticalSpaceLarge,
                        Row(
                          children: [
                            Expanded(
                              child: Button(
                                'Cancel',
                                color: AppColors.whiteColor,
                                textColor: AppColors.primaryTextColor,
                                onPressed: isLoading
                                    ? null
                                    : () => context.go(
                                        CustomerListScreen.routeName,
                                      ),
                              ),
                            ),
                            AppSpacing.horizontalSpaceMedium,
                            Expanded(
                              child: Button(
                                'Add Customer',
                                busy: isLoading,
                                busyText: 'Saving...',
                                onPressed: isLoading
                                    ? null
                                    : () {
                                        bloc.add(
                                          const CustomerEvent.addCustomerPressed(),
                                        );
                                      },
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpaceLarge,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
