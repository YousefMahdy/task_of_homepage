import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/layout/cubit/states.dart';
import 'package:task/models/slider_model.dart';
import '../../models/categories_model.dart';
import '../../modules/productsScreen/shopProducts.dart';
import '../../shared/network/remote/dio_Helper.dart';

class HomeCubit extends Cubit<ShopStates> {
  HomeCubit() : super(InitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
  int current_index = 0;
  List<Widget> screens = [
    ShopProducts(),
    // SettingsScreen()
  ];

  changIndex(index) {
    current_index = index;
    emit(ChangeBottomNaveState());
  }

  SliderModel? sliderModel;

  Future getHomeSliderData() async {
    await DioHelper.getData(path: "v1/general-slider").then((value) {
      sliderModel = SliderModel.fromJson(value.data);
      emit(ShopSuccessHomeSliderState());
    }).catchError((e) {
      print(e);
      emit(ShopErrorHomeSliderState());
    });
  }

  CategoriesModel? categoriesModel;

  Future getHomeCategoriesData() async {
    await DioHelper.getData(path: 'v1/categories').then((value) {
      // print(value.data.toString());
      categoriesModel = CategoriesModel.fromJson(value.data);

      emit(ShopSuccessHomeCategoriesState());
    }).catchError((e) {
      print(e);
      emit(ShopErrorHomeCategoriesState());
    });
  }
}
