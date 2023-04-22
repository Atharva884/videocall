import 'package:flutter/material.dart';
import 'package:videocall/loginPage.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// 1.1.1 define a navigator key
  final navigatorKey = GlobalKey<NavigatorState>();

  /// 1.1.2: set navigator key to ZegoUIKitPrebuiltCallInvitationService
  ZegoUIKitPrebuiltCallInvitationService().setNavigatorKey(navigatorKey);
  runApp(MyApp(navigatorKey: navigatorKey));
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var navigatorKey;
  MyApp({required this.navigatorKey,super.key});

  @override
  Widget build(BuildContext context) {
    print(navigatorKey);
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   final GlobalKey<NavigatorState> navigatorKey;

//   const MyApp({
//     required this.navigatorKey,
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();

//       onUserLogin();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       /// 1.1.3: register the navigator key to MaterialApp
//       navigatorKey: widget.navigatorKey,
//     );
//   }
// }

// /// on App's user login
// void onUserLogin() {
//   /// 1.2.1. initialized ZegoUIKitPrebuiltCallInvitationService
//   /// when app's user is logged in or re-logged in
//   /// We recommend calling this method as soon as the user logs in to your app.
//   ZegoUIKitPrebuiltCallInvitationService().init(
//     appID: 598524471 /*input your AppID*/,
//     appSign: "46eacd73bff041d2e127f4c939b987f9907a0da79519bc78bd3cd29e0eca2663" /*input your AppSign*/,
//     userID: "Atharva1",
//     userName: "Atharva",
//     plugins: [ZegoUIKitSignalingPlugin()],
//   );
// }

// /// on App's user logout
// void onUserLogout() {
//   /// 1.2.2. de-initialization ZegoUIKitPrebuiltCallInvitationService
//   /// when app's user is logged out
//   ZegoUIKitPrebuiltCallInvitationService().uninit();
// }