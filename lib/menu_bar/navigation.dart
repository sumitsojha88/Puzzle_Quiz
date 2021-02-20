import 'package:bloc/bloc.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_main.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/menu_homepage.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/myaccountspage.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/myorderspage.dart';



enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyHomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
    }
  }
}