enum Routes {
  homePage(analyticsName: "HomePage"),

  paidBillHistory(analyticsName: "PaidBillHistory"),

  pendingBill(analyticsName: "PendingdBill"),

  transactionHistory(analyticsName: "TransactionHistory"),

  faqsScreen(analyticsName: "FaqsScreen"),

  productCategories(analyticsName: "ProductCategories"),

  productDetails(analyticsName: "ProductDetails"),

  profileView(analyticsName: "ProfileView"),

  loginPage(analyticsName: "LoginPage"),

  signupPage(analyticsName: "SignupPage"),

  otpPage(analyticsName: "OTPPage"),

  gallery(analyticsName: "Gallery");

  final String analyticsName;

  const Routes({required this.analyticsName});
}
