import 'package:flutter/material.dart';
import 'package:videocall/loginPage.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';



class CallPage extends StatefulWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if(widget.callID.isNotEmpty){
    //   print("Called");
    //   onUserLogin();
    // }

  }

//   void onUserLogin() {
//   /// 1.2.1. initialized ZegoUIKitPrebuiltCallInvitationService
//   /// when app's user is logged in or re-logged in
//   /// We recommend calling this method as soon as the user logs in to your app.
//   ZegoUIKitPrebuiltCallInvitationService().init(
//     appID: 598524471 /*input your AppID*/,
//     appSign: "46eacd73bff041d2e127f4c939b987f9907a0da79519bc78bd3cd29e0eca2663" /*input your AppSign*/,
//     userID: LoginPage.name,
//     userName: LoginPage.userId,
//     plugins: [ZegoUIKitSignalingPlugin()],
//   );
// }

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appID: 598524471,
      // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      appSign: "46eacd73bff041d2e127f4c939b987f9907a0da79519bc78bd3cd29e0eca2663", 
      userID: LoginPage.userId,
      userName: LoginPage.name,
      callID: widget.callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall() 
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
} 