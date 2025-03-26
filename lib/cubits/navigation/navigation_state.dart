//Local Imports

import 'package:radhe_gaushala/utility/routes.dart';

class NavigationState {
  final Routes currentPage;
  final List<Routes> pages;
  NavigationState({
    this.currentPage = Routes.homePage,
    this.pages = const [],
  });

  NavigationState copyWith({
    Routes? currentPage,
    List<Routes>? pages,
  }) {
    return NavigationState(
      currentPage: currentPage ?? this.currentPage,
      pages: pages ?? this.pages,
    );
  }
}
