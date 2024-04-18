part of 'dialog_bloc.dart';

@immutable
sealed class DialogEvent {}
class ShowLoadingDialog extends DialogEvent {}

class HideLoadingDialog extends DialogEvent {}