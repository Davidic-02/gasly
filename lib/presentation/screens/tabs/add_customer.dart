import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:gasly/bloc/customer/customer_bloc.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';
import 'package:gasly/services/toast_services.dart';
import 'package:go_router/go_router.dart';

class AddCustomerScreen extends HookWidget {
  const AddCustomerScreen({super.key});
  static const String routeName = '/add-customer';

  @override
  Widget build(BuildContext context) {
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
          body: Row(children: [

                            ],
                          ),
        );
      },
    );
  }
}
