import 'package:flutter/material.dart';
import 'package:whatsapp_demo/layouts/colors/colors_const.dart';
import 'package:whatsapp_demo/views/appels/appels.dart';
import 'package:whatsapp_demo/views/dec/des.dart';
import 'package:whatsapp_demo/views/groupe/groupe.dart';
import 'package:whatsapp_demo/views/statut/statuts.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:GreenAppBar,
          title: Text("WhatsApp"),
          titleSpacing: 8.0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),

            PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("Nouveau groupe"),value: "Nouveau groupe",),
                    PopupMenuItem(child: Text("Nouvelle diffusion"),value: "Nouvelle diffusion",),
                    PopupMenuItem(child: Text("Appareils connectés"),value: "Appareils connectés",),
                    PopupMenuItem(child: Text("Messages importants"),value: "Messages importants",),
                    PopupMenuItem(child: Text("Paramétres"),value: "Paramétres",),
                  ];
                },
            ),
          ],

          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              indicatorColor: dwhite,
              padding: EdgeInsets.zero,
              tabs: [
                Tab(icon: Icon(Icons.group,)),
                Tab(text: "Des",),
                Tab(text: "Statut",),
                Tab(text: "Appels",),
              ]
          ),
        ),
        body: TabBarView(
            children: [
              GroupeViews(),
              DescViews(),
              StatutViews(),
              AppelsViews(),

            ]),
        

      ),
    );
  }
}
