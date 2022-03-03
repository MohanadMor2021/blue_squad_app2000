import 'package:blue_squad_app/models/all_product.dart';

abstract class ShopStates {}

class ShopInitialState extends ShopStates {}

class ShopGetHomeLoadingState extends ShopStates {}

class ShopGetHomeSuccessState extends ShopStates {
   final AllProduct ?modelAll;

  ShopGetHomeSuccessState(this.modelAll);
}

class ShopGetHomeErrorState extends ShopStates {}