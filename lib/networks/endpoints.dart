// ignore_for_file: constant_identifier_names

// const String url = String.fromEnvironment("BASE_URL");

// const String url = "https://jibon420.reigeeky.com";
const String url = "https://kevinmistry96.reigeeky.com/api";
const String imageUrl = "$url/";

final class NetworkConstants {
  NetworkConstants._();
  static const GOOGLEMAPAPIKEY =
      "AIzaSyCfh0I1gb3LmtaGkgP43R8TEU6226hYGZA"; // google map api key
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
  static const styleId = 'osm-liberty';
}

final class PaymentGateway {
  PaymentGateway._();
  static String gateway(String orderId) =>
      "https://demo.vivapayments.com/web/checkout?ref={$orderId}";
}

final class Endpoints {
  Endpoints._();
  //backend_url

  static String register() => "/register";
  static String logIn() => "/login";
  static String profileadd() => "/profile";
  static String profile() => "/me";
  static String logout() => "/logout";
}







//DEMO CODE...

// // ignore_for_file: constant_identifier_names
// // const String url = String.fromEnvironment("BASE_URL");
// // const String url = "https://jibon420.reigeeky.com";
// const String url = "https://www.jibon420.com";
// const String imageUrl = "$url/";

// final class NetworkConstants {
//   NetworkConstants._();
//   static const GOOGLEMAPAPIKEY =
//       "AIzaSyCfh0I1gb3LmtaGkgP43R8TEU6226hYGZA"; // google map api key
//   static const ACCEPT = "Accept";
//   static const APP_KEY = "App-Key";
//   static const ACCEPT_LANGUAGE = "Accept-Language";
//   static const ACCEPT_LANGUAGE_VALUE = "pt";
//   static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
//   static const ACCEPT_TYPE = "application/json";
//   static const AUTHORIZATION = "Authorization";
//   static const CONTENT_TYPE = "content-Type";
//   static const styleId = 'osm-liberty'; //barikoi map style id
//   static const apiKey =
//       'bkoi_5149ea351a38c80200683ab45901944df3a18d2df9cef34196a0d1fff97f5b64'; //barikoi API key, get it from https://developer.barikoi.com
//   static const mapUrl =
//       'https://map.barikoi.com/styles/$styleId/style.json?key=$apiKey';
// }

// final class PaymentGateway {
//   PaymentGateway._();
//   static String gateway(String orderId) =>
//       "https://demo.vivapayments.com/web/checkout?ref={$orderId}";
// }

// final class Endpoints {
//   Endpoints._();
//   //backend_url

//   static String signUp() => "/api/user/register";
//   static String logIn() => "/api/user/login";
//   static String logout() => "/api/user/logout";
//   static String verifyEmail() => "/api/user/verify-email";
//   static String verifyOtp() => "/api/user/verify-otp";
//   static String resendOtp() => "/api/user/resend-otp";
//   static String forgotPassword() => "/api/user/send-otp";
//   static String resetPassword() => "/api/user/reset-password";
//   static String allPost(double lat, double lon, String? id) =>
//       "/api/user/post-all/$lat/$lon/$id";
//   static String nearByPost(double lat, double lon) => "/api/nearby/$lat/$lon";
//   static String allCategory() => "/api/user/post-category";
//   static String createReport() => "/api/user/post-create";
//   static String myProfile() => "/api/user/me";
//   static String myPost() => "/api/user/post-user";
//   static String myCircle() => "/api/user/circle-all";
//   static String createCircle() => "/api/user/circle-create";
//   static String joinCircle(String code) => "/api/user/circle-join/$code";
//   static String allNotification() => "/api/user/notify";
//   static String emargencyContact() => "/api/user/emergency-contacts";
//   static String sendSOS(String lat, String lon) =>
//       "/api/user/sos/send/$lat/$lon";
//   static String getSOS(int id) => "/api/user/sos/$id";

//   static String socialLogin() => "/api/social-login";
//   static String allShopSubCategories() => "/api/shop-sub-categories";
//   static String shopDetails(String slug) => "/api/shops/$slug";
//   static String productDetails(String slug) => "/api/products/$slug";
//   static String shopsProductCategories() => "/api/product-categories";
//   static String shopProducts(String slug) => "/api/shops/$slug/products";
//   static String orders() => "/api/orders";
//   static String allOrders() => "/api/all-orders";
//   static String reOrders() => "/api/re-order";
//   static String ordersOngoing() => "/api/orders-ongoing";
//   static String orderDetail(String orderId) => "/api/orders/$orderId";
//   static String profile() => "/api/profile";
//   static String deliveryAddresses() => "/api/v2/delivery-addresses";
//   static String deleteDeliveryAddress(int id) => "/api/delivery-addresses/$id";
//   static String saveDeliveryAddress() => "/api/save-delivery-address";
//   static String updateAddress() => "/api/update-address";
//   static String postIssues() => "/api/register-issue";
//   static String defaultDeliveryAddress() => "/api/default-delivery-address";
//   static String updateProfile() => "/api/update-profile";
//   static String carts() => "/api/carts";
//   static String addToCart() => "/api/carts";
//   static String deleteCartItem() => "/api/carts";
//   static String addMultipleAddon() => "/api/cart-addons-multiple";
//   static String paymentMethods() => "/api/payment-methods";
//   static String timeSlots(String slug) => "/api/shops/$slug/time-slots";
//   static String changePassword() => "/api/change-password";
//   static String sliders() => "/api/sliders";
//   static String sendMailToAdmin() => "/api/send-mail-to-admin";
//   static String adminSettings() => "/api/admin-settings";
//   static String trendingFood() => "/api/trending-food";
//   static String deviceToken() => "/api/device-token";
//   static String deleteAccount() => "/api/delete-account";
//   static String deleteToken() => "/api/delete-device-token";
//   static String productRating() => "/api/product-rating";
//   static String applyVoucher() => "/api/apply-voucher";
//   static String reviews() => "/api/reviews";
//   static String removeVoucher() => "/api/remove-voucher";
//   static String getCartRestaurant() => "/api/cart-restaurant";
//   static String getFavouriteRestaurant() => "/api/favourite-restaurants";
//   static String makeFavouriteRestaurant() => "/api/favourite-restaurant";
//   static String getDefaultDeliveryAddress() =>
//       "/api/get-default-delivery-address";
//   static String getProductByCategory(String slug) =>
//       "/api/product-categories/$slug/products";
//   static String getSubCategoryByCategory(String slug) =>
//       "/api/shop-categories/$slug/subs";
//   static String postCancelOrder() => "/api/order-cancel";
//   static String getDeliveryAddressCategory() =>
//       "/api/delivery-address-categories";
//   static String getCartProcessingTime(num time, num id) =>
//       "/api/cart-food-processing-time?duration=$time&restaurant_id=$id";
//   static String getFilteredProduct() => "/api/filter-products";

//   //gloabal url
//   static String gDistanceApi() =>
//       "https://maps.googleapis.com/maps/api/distancematrix/json?origins=";
//   static String successfulPaymentUrlPrefix() =>
//       "https://wedeapp.eu/payment-success";
//   static String failedPaymentUrlPrefix() => "https://wedeapp.eu/payment-fail";
//   static String paymentUrlProcessing() =>
//       "https://wedeapp.eu/payment-processing";
// }
