part of 'dialog_bloc.dart';

@immutable
sealed class DialogState {}

final class DialogInitial extends DialogState {}

class LoadingInitial extends DialogState {}

class LoadingVisible extends DialogState {}

class LoadingHidden extends DialogState {}
