import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dialog_event.dart';
part 'dialog_state.dart';

class DialogBloc extends Bloc<DialogEvent, DialogState> {
  DialogBloc() : super(DialogInitial()) {
    on<ShowLoadingDialog>((event, emit) => emit(LoadingVisible()));
    on<HideLoadingDialog>((event, emit) => emit(LoadingHidden()));
  }
}
