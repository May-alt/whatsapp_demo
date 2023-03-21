import 'package:flutter/material.dart';
import 'package:whatsapp_demo/generated/assets.dart';
import 'package:whatsapp_demo/layouts/colors/colors_const.dart';

import 'package:whatsapp_demo/data/userinfortaion/user_info.dart';

class DescViews extends StatefulWidget {
  const DescViews({Key? key}) : super(key: key);

  @override
  State<DescViews> createState() => _DescViewsState();
}

class _DescViewsState extends State<DescViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: chats.map((chat) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            //utilisation de generateur assets of images
                            backgroundImage: AssetImage(chat.UrlImg),
                          ),
                          SizedBox(
                            width: 08.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.name,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 08.0,
                                ),
                                Text(
                                  chat.message,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            chat.time,
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: GreenAppBar,
          onPressed: () {},
          child: Icon(Icons.message)),
    );
  }
}
