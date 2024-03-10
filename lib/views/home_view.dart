import 'package:flutter/material.dart';
import 'package:resume_ai/controllers/message_controller.dart';
import 'package:resume_ai/widgets/base_drawer.dart';
import 'package:resume_ai/widgets/message_card.dart';
import 'package:resume_ai/widgets/url_input.dart';

class HomeView extends StatefulWidget {
  const HomeView({ super.key });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController contentUrl = TextEditingController();
  MessageController? messageController;

  @override
  void initState() {
    super.initState();
    messageController = MessageController(contentUrl: contentUrl);
    messageController?.addListener(() {
      setState(() {
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BaseDrawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14,
          ),
          'jeremias.marques'
        ),
        centerTitle: true,
        actions: [
          ClipOval(
            child: Image.network(
              width: 35,
              height: 35,
              'https://github.com/jeremarques.png',
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                messageController!.messages.isNotEmpty
                  ? Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: messageController!.messages.map((message) => Row(
                            children: [
                              MessageCard(message: message),
                            ],
                          )).toList()
                        )
                      ],
                    ),
                  ) 
                  : Expanded(
                    child: Image.asset(
                      'assets/images/resumeai-logo-black.png',
                      width: 200,
                      opacity: const AlwaysStoppedAnimation(0.1),
                    ),
                  ),  
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, top: 12),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffd6d6d6),
                          blurRadius: 12.0,
                          offset: Offset(0, 5)
                        )
                      ],
                    ),
                    child: UrlInput(messageController: messageController!)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}