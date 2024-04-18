import 'package:effective_dialog_management/view/bloc/dialog_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class DialogManager {
  static void showLoading(BuildContext context) {
    BlocProvider.of<DialogBloc>(context).add(ShowLoadingDialog());
  }

  static void hideLoading(BuildContext context) {
    BlocProvider.of<DialogBloc>(context).add(HideLoadingDialog());
  }
}
