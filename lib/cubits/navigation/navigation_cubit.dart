import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radhe_gaushala/cubits/navigation/navigation_state.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/routes.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState());

  void push(Routes page) async {
    try {
      final targetPage = page;
      List<Routes> pages = List.from(state.pages, growable: true);

      pages.add(targetPage);
      print("Pages : $pages");
      emit(state.copyWith(currentPage: targetPage, pages: pages));
    } catch (e, s) {}
  }

  void pushAndRemoveUntil(Routes page, {Routes? rootRoute}) async {
    try {
      if (page == state.currentPage) return;
      Routes targetPage = page;

      List<Routes> pages = List.empty(growable: true);
      if (rootRoute != null) pages.add(rootRoute);

      pages.add(targetPage);
      emit(state.copyWith(currentPage: targetPage, pages: pages));
    } catch (e) {}
  }

  Future<void> pop({bool isBottomsheet = false}) async {
    try {
      if (isBottomsheet && Navigator.of(navigationContext).canPop()) {
        Navigator.of(navigationContext).pop();
        return;
      }

      print("Page length is : ${state.pages.length}");

      if (state.pages.length > 1) {
        // If after login we are on Routes.checkPinV2 then can not go back

        List<Routes> pages = List.from(state.pages, growable: true);
        pages.removeAt(pages.length - 1);
        // Navigator.pop(navigationContext);
        emit(
            state.copyWith(currentPage: pages[pages.length - 1], pages: pages));

        //To prevent to go to dashboard instead of loan details to loan history

        // If home page then call this bloc
      }
    } catch (e) {}
  }
}
