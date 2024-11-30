// ignore_for_file: constant_identifier_names

// const String url = String.fromEnvironment("BASE_URL");

// const String url = "https://jibon420.reigeeky.com";
const String url = "https://kevinmistry96.reigeeky.com/api";
const String imageUrl = "$url/";

final class NetworkConstants {
  NetworkConstants._();
  static const GOOGLEMAPAPIKEY = "AIzaSyCfh0I1gb3LmtaGkgP43R8TEU6226hYGZA";
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

  static String register() => "/register";
}
