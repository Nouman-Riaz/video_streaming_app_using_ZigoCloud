import 'package:flutter/material.dart';
import 'package:video_call/constants/constant.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID,required this.userName,required this.userId}) : super(key: key);
  final String callID;
  final String userName;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Constants.appID,
      appSign: Constants.appSign,
      userID: userId,
      userName: userName,
      callID: callID,
      // Use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}