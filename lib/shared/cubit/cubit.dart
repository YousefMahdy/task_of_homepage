//
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:jooo/shared/cubit/states.dart';
// import 'package:jooo/shared/network/local/cashe_helper.dart';
// import '../../models/loginModel.dart';
// import '../network/end_points.dart';
// import '../network/remote/dio_Helper.dart';
//
// class AppCubit extends Cubit<AppStetes> {
//   AppCubit() : super(AppInitialState());
//   var current_index = 0;
//
//   static AppCubit get(context) => BlocProvider.of(context);
//
//   changIndex(index) {
//     current_index = index;
//     emit(AppChangBottomNavBarStste());
//   }
//
//   changBottomSheetState({
//     required bool isBottomSheetShown,
//   }) {
//     isBottomSheetShown = isBottomSheetShown;
//     emit(ChangBottomSheetState());
//   }
//
//
//   bool isDark = false;
//
//   void changDarkMode(bool isDarkStored) {
//
//     isDark = isDarkStored;
//     print('value  is $isDark');
//     CasheHelper.setData(key: "isDark", value: isDark).then((value) {
//       // print('value to insert $x');
//       emit(ChangeDarckModeState());
//     }).catchError((e) {
//       print(e.toString());
//     });
//   }
//   ShopLoginModel ?userModel;
//   void getUserData() {
//     emit(ShopLoadingUserDataState());
//
//     DioHelper.getData(
//       path:  PROFILE,
//
//     ).then((value) {
//       userModel = ShopLoginModel.fromJson(value.data);
//       print(userModel!.data!.name);
//
//       emit(ShopSuccessUserDataState());
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorUserDataState());
//     });
//   }
// }
