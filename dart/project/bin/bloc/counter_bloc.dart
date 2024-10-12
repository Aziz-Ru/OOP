import 'package:bloc/bloc.dart';

void main(List<String> args) {
  final bloc = CounterBloc();
  print(bloc.state);
  bloc.add(Increment());
  print(bloc.state);
  bloc.add(Increment());
  print(bloc.state);
  bloc.close();
}

sealed class CounterEvent {}

class Increment extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Increment>((event, emit) => emit(state + 1));
  }
  @override
  void onChange(Change<int> change) {
    print(change);
    super.onChange(change);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
