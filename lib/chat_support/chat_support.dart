import 'package:crisp/crisp.dart';
import 'package:flutter/material.dart';

class ChatSupport extends StatefulWidget {
  const ChatSupport({Key? key}) : super(key: key);

  @override
  _ChatSupportState createState() => _ChatSupportState();
}

class _ChatSupportState extends State<ChatSupport> {
  late CrispMain crispMain;
  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: '40db5c99-0af8-4b3c-a981-bc240b3a907f',
      locale: 'en',
    );

    crispMain.register(
      user: CrispUser(
        email: "leo@provider.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "João Cardoso",
        phone: "5511987654321",
      ),
    );

    crispMain.setSessionData({
      "order_id": "111",
      "app_version": "0.1.1",
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: CrispView(
            crispMain: crispMain,
            clearCache: false,
          ),
        ),
      ),
    );
  }
}
