import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoPage extends StatelessWidget {
  final callid;

  VideoPage({this.callid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZegoUIKitPrebuiltCall(
            appID: 1460345174,
            // Fill in the appID that you get from ZEGOCLOUD Admin Console.
            appSign:
            'c8e0871a93fe0a5642a401d556ca4534bcc19bf7c3b815446904d736312f30b6',
            // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
            userID: userid,
            userName: username,
            callID: callid,
            // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()));
  }
}

String userid = Random().nextInt(10095000).toString();
String username = Random().nextInt(10095000).toString();
