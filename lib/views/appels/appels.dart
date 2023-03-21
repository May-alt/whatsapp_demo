import 'package:flutter/material.dart';
import 'package:whatsapp_demo/generated/assets.dart';
import 'package:whatsapp_demo/layouts/colors/colors_const.dart';

class AppelsViews extends StatefulWidget {
  const AppelsViews({Key? key}) : super(key: key);

  @override
  State<AppelsViews> createState() => _AppelsViewsState();
}

class _AppelsViewsState extends State<AppelsViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Row(
                children: [
                  
                  CircleAvatar(
                    radius: 25,
                    //utilisation de generateur assets of images
                    backgroundColor: GreenAppBar,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.link_rounded)),
                  ),
                
                  SizedBox(width: 08.0,),
                
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Créer un lien d'appel"),
                        Text("Partager un lien pour votre appel whatsapp"),
                      ],
                    ),),
                ],
              ),
             const SizedBox(height: 20.0,),

             Text("Récents"),
             
             const SizedBox(height: 20.0,),

              Row(
                children: [

                  CircleAvatar(
                    radius: 25,
                    backgroundImage:AssetImage(Assets.assetsImagesAr),
                  ),

                  SizedBox(width: 08.0,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Foulen ben foulen"),
                        Text("hier,12:55"),
                      ],
                    ),),

                  Icon(Icons.phone),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor:GreenAppBar,
          onPressed: (){},
          child: Icon(Icons.phone_bluetooth_speaker)
      ),
    );
  }
}
