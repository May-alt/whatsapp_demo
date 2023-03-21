import 'package:flutter/material.dart';
import 'package:whatsapp_demo/generated/assets.dart';
import 'package:whatsapp_demo/layouts/colors/colors_const.dart';

class StatutViews extends StatefulWidget {
  const StatutViews({Key? key}) : super(key: key);

  @override
  State<StatutViews> createState() => _StatutViewsState();
}

class _StatutViewsState extends State<StatutViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           Padding(
             padding: EdgeInsets.all(20.0),
             child:  Row(
               children: [
                
                 Stack(
                   children: [
                     CircleAvatar(
                       radius: 30,
                       //utilisation de generateur assets of images
                       backgroundImage: AssetImage(Assets.assetsImagesAr),
                     ),

                     Positioned(
                       bottom: 0.0,
                       child: CircleAvatar(
                         backgroundColor:Colors.green ,
                       radius: 12,
                       child: Icon(Icons.add,color: dwhite),
                     ),)
                   ],
                 ),
                 
                 
                 SizedBox(
                   width: 08.0,
                 ),
                 Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Mon statut"),
                       Text("Appuyez pour ajouter un statut"),
                     ],
                   ),
                 ),
               ],
             ),
           ),
            const SizedBox(
              height: 15.0,
            ),
            Divider(color: Colors.grey,height: 2,),



            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock,size: 16,),
                      SizedBox(width: 08.0,),

                      Text("Vos mises à jour de statut sont chiffrées de bout\n en bout.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize:13),
                      ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
          backgroundColor: GreenAppBar,
          onPressed: () {},
          child: Icon(Icons.camera_alt)),

    );
  }
}
