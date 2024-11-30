// // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:app_links/app_links.dart';
// import 'package:jibon360/helpers/navigation_service.dart';
// import 'package:logging/logging.dart';

// import '../constants/app_constants.dart';
// import 'all_routes.dart';
// import 'di.dart';

// class DeepLinkService {
//   late AppLinks _appLinks;
//   final Logger _logger = Logger('DeepLinkService');

//   Future<void> initDeepLinks(BuildContext context) async {
//     _appLinks = AppLinks();

//     // Get initial link
//     try {
//       final initialLink = await _appLinks.getInitialLink();
//       if (initialLink != null) {
//         _handleLink(context, initialLink);
//       }
//     } catch (e) {
//       _logger.warning('Failed to get initial link: $e');
//     }

//     // Listen to link stream
//     _appLinks.uriLinkStream.listen(
//       (Uri? uri) {
//         if (uri != null) {
//           _handleLink(context, uri);
//         }
//       },
//       onError: (Object err) {
//         _logger.warning('Failed to receive link stream: $err');
//       },
//     );
//   }

//   void _handleLink(BuildContext context, Uri link) {
//     if (link.pathSegments.contains('sos')) {
//       final sosId = link.pathSegments.last;
//       _navigateToCollection(context, sosId);
//     }
//   }

//   void _navigateToCollection(BuildContext context, String sosId) {
//     // Convert the collectionId string to an int, or handle invalid values
//     int? id = int.tryParse(sosId);
//     try {
//       bool isLoggedIn = appData.read(kKeyIsLoggedIn) ?? false;
//       if (isLoggedIn) {
//         // NavigationService.navigateToWithArgs(
//         //   Routes.logInScreen,
//         //   {"cId": collectionIdInt}, // Pass the int value
//         // );
//         NavigationService.navigateToWithObject(Routes.sosMapScreen, id!);
//       } else {
//         NavigationService.navigateToWithObject(Routes.sosMapScreen, id!);
//       }
//     } catch (e) {
//       Fluttertoast.showToast(msg: 'Invalid collection');
//     }
//     // if (collectionIdInt != null) {
//     //   NavigationService.navigateToWithArgs(
//     //     Routes.makeAContributionsScreen,
//     //     {"cId": collectionIdInt}, // Pass the int value
//     //   );
//     // } else {
//     //   // Handle the case where conversion failed
//     //   Fluttertoast.showToast(msg: 'Invalid collection');
//     // }
//   }

//   // void _navigateToCollection(BuildContext context, String collectionId) {
//   //   //NavigationService.navigateTo(Routes.forgotPWScreen);

//   //   NavigationService.navigateToWithArgs(
//   //     Routes.makeAContributionsScreen,
//   //     {"cId": collectionId},
//   //   );
//   // }
// }
