// import 'package:bloc/bloc.dart';

// //create event
// sealed class CounterEvent {}

// //create a class and extends (the event)
// final class CounterIncrementPressed extends CounterEvent {}

// //create bloc --start
// class CounterBloc extends Bloc<CounterEvent, int> {
//   CounterBloc() : super(0) {
//     //call event and change state
//     on<CounterIncrementPressed>(
//       (event, emit) {
//         // handle incoming `CounterIncrementPressed` event

//         emit(state + 1);
//       },
//     );
//   }

//   @override
//   void onEvent(CounterEvent event) {
//     super.onEvent(event);
//     print(event);
//   }

//   @override
//   void onChange(Change<int> change) {
//     super.onChange(change);
//     print(change);
//   }

//   @override
//   void onTransition(Transition<CounterEvent, int> transition) {
//     super.onTransition(transition);
//     print(transition);
//   }
// }
// //create bloc --end

// //create BlocObserver --start
// class SimpleBlocObserver extends BlocObserver {
//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);
//     print('${bloc.runtimeType} $change');
//   }

//   @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);
//     print('${bloc.runtimeType} $event');
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     print('${bloc.runtimeType} $transition');
//   }

//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     print('${bloc.runtimeType} $error $stackTrace');
//     super.onError(bloc, error, stackTrace);
//   }
// }
// //create BlocObserver --end

// void main(List<String> args) async {
//   //create var of bloc (basic):

//   // final myBloc = CounterBloc();
//   // print(myBloc.state);
//   // myBloc.add(CounterIncrementPressed());
//   // await Future.delayed(Duration.zero);
//   // print(myBloc.state);
//   // myBloc.close();

//   //use bloc with stream:
//   // final myBloc = CounterBloc();
//   // final subscribeBloc = await myBloc.stream.listen(print);
//   // myBloc.add(CounterIncrementPressed());
//   // await Future.delayed(Duration.zero);
//   // await subscribeBloc.cancel();
//   // await myBloc.close();

//   //another way:
//   Bloc.observer = SimpleBlocObserver();
//   CounterBloc()
//     ..add(CounterIncrementPressed())
//     ..close();
//   // NegativeBloc()
//   //   ..add(NegativeIncrementPressed())
//   //   ..close();
// }

// // sealed class NegativeEvent {}

// // final class NegativeIncrementPressed extends NegativeEvent {}

// // class NegativeBloc extends Bloc<NegativeEvent, int> {
// //   NegativeBloc() : super(0) {
// //     on<NegativeIncrementPressed>(
// //       (NegativeIncrementPressed event, Emitter<int> emit) {
// //         emit(state - 1);
// //       },
// //     );
// //   }

// //   @override
// //   void onTransition(Transition<NegativeEvent, int> transition) {
// //     super.onTransition(transition);
// //     print(transition);
// //   }

// //   @override
// //   void onChange(Change<int> change) {
// //     super.onChange(change);
// //     print(change);
// //   }
// // }
