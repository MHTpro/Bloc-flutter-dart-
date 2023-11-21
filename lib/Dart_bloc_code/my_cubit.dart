// import 'package:bloc/bloc.dart';

// //creating a cubit --start
// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(1);

//   //change state with emit
//   void increment() {
//     addError(Exception('increment error!'), StackTrace.current);
//     emit(state + 1);
//   }

//   @override
//   void onChange(Change<int> change) {
//     super.onChange(change);
//     print(change);
//   }

//   @override
//   void addError(Object error, [StackTrace? stackTrace]) {
//     print('$error, $stackTrace');
//     super.addError(error, stackTrace);
//   }
// }
// //creating a cubit --end

// //creating second cubit --start
// // class NegativeCubit extends Cubit<int> {
// //   NegativeCubit() : super(1);
// //   void lessNumber() => emit(state - 1);

// //   @override
// //   void onChange(Change<int> change) {
// //     super.onChange(change);
// //     print(change);
// //   }
// // }
// //creating second cubit --end

// //creating a blocObserver --start
// class SimpleBlocObserver extends BlocObserver {
//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     print("${bloc.runtimeType} : $error $stackTrace");
//     super.onError(bloc, error, stackTrace);
//   }

//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);

//     print('${bloc.runtimeType} $change');
//   }
// }
// //creating a blocObserver --end

// void main(List<String> args) async {
//   //basic usage:
//   // final myCubit = CounterCubit();
//   // print(myCubit.state);
//   // myCubit.increment();
//   // print(myCubit.state);
//   // myCubit.close();

//   //stream usage:
//   // final myCubit = CounterCubit();
//   // final subScription = myCubit.stream.listen(print);
//   // myCubit.increment();
//   // await Future.delayed(Duration.zero);
//   // await subScription.cancel();
//   // await myCubit.close();

//   //create var for bloc
//   Bloc.observer = SimpleBlocObserver();

//   print("..........................");

//   //a way to see changes:
//   CounterCubit()
//     ..increment()
//     ..close();
//   print("..........................");
//   // NegativeCubit()
//   //   ..lessNumber()
//   //   ..close();
//   print("..........................");
// }
