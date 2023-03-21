import 'package:flutter/material.dart';
import 'package:whatsapp_demo/layouts/colors/colors_const.dart';


class GroupeViews extends StatefulWidget {
  const GroupeViews({Key? key}) : super(key: key);

  @override
  State<GroupeViews> createState() => _GroupeViewsState();
}

class _GroupeViewsState extends State<GroupeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding:const EdgeInsets.all(20.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Screenshotr.png"),
                    )
                ),
              ),

              const SizedBox(height: 20.0,),
              const Text("Présentation des \n communautés",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black),
              ),
              const SizedBox(height: 15.0,),
              const   Text("Réunissez facilement plusieurs groupes dédies à "
                  "une communauté, comme une école ou un quartier, et envoyez des messages à tous les membres.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.blueGrey),
              ),
              const SizedBox(height: 25.0,),
              Container(
                padding:const EdgeInsets.all(12.0),
                // height: 50,
                decoration: BoxDecoration(
                  color: GreenAppBar,
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text("Lancez votre communauté",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}

