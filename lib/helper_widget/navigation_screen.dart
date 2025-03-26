import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radhe_gaushala/cubits/bloc_events.dart';
import 'package:radhe_gaushala/cubits/navigation/navigation_cubit.dart';
import 'package:radhe_gaushala/cubits/navigation/navigation_state.dart';
import 'package:radhe_gaushala/screens/faqs.dart';
import 'package:radhe_gaushala/screens/gallery.dart';
import 'package:radhe_gaushala/screens/home_page.dart';
import 'package:radhe_gaushala/screens/paid_bill_history.dart';
import 'package:radhe_gaushala/screens/pending_bill.dart';
import 'package:radhe_gaushala/screens/product_Details.dart';
import 'package:radhe_gaushala/screens/product_categories.dart';
import 'package:radhe_gaushala/screens/profile_view.dart';
import 'package:radhe_gaushala/screens/registration_signup.dart';
import 'package:radhe_gaushala/screens/transaction_history.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/routes.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationScreenState createState() => _NavigationScreenState();
}

GlobalKey<ScaffoldState> navigationScaffoldKey = new GlobalKey<ScaffoldState>();

class _NavigationScreenState extends State<NavigationScreen>
    with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    try {
      if (state == AppLifecycleState.resumed) {
      } else if (state == AppLifecycleState.paused) {
      } else if (state == AppLifecycleState.detached) {
      } else if (state == AppLifecycleState.inactive) {}
    } catch (error) {}
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    navigationContext = context;

    return WillPopScope(
      onWillPop: () async {
        BlocEvent.pop();
        return false;
      },
      child: SafeArea(
          top: false,
          child: Scaffold(
              key: navigationScaffoldKey,
              drawerScrimColor: Colors.transparent,
              floatingActionButton: FloatingActionButton(onPressed: () {
                BlocEvent.push(Routes.signupPage);
              }),
              body: BlocBuilder<NavigationCubit, NavigationState>(
                builder: (context, state) => _currentPage(state.currentPage),
              ))),
    );
  }

  Widget _currentPage(Routes currentPage) {
    switch (currentPage) {

      case Routes.signupPage:
        return SignUpPage();

      case Routes.paidBillHistory:
        return PaidBillHistory();

      case Routes.pendingBill:
        return PendingBill();

      case Routes.transactionHistory:
        return TransactionHistory();

      case Routes.gallery:
        return GalleyView();

      case Routes.faqsScreen:
        return FaqsScreen();

      case Routes.productCategories:
        return ProductCategories();

      case Routes.productDetails:
        return ProductDetails();

      case Routes.profileView:
        return ProfileView();

      default:
        return const MyHomePage();
    }
  }
}
