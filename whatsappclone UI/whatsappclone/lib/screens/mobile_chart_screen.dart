import 'package:flutter/material.dart';
import 'package:whatsappclone/info.dart';
import 'package:whatsappclone/widgets/colors.dart';

class  MobileChatScreen extends StatelessWidget {
  const MobileChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString(),),
      ),
    );
  }
}