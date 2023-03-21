import 'package:whatsapp_demo/generated/assets.dart';

class Chat {

  String name;
  String message;
  String UrlImg ;
  String time ;

  Chat({
    required this.name,
    required this.message,
    required this.UrlImg,
    required this.time});

}

List<Chat> chats = [
Chat(name: "asma", message: "welcom to my merd live",
    UrlImg:Assets.assetsChat3,
    time: "00:55"),
Chat(name: "wael", message: "welcom to my merd live",
    UrlImg: Assets.assetsChat3, time: "14:55"),
Chat(name: "amjed", message: "welcom to my merd live",
    UrlImg:Assets.assetsImagesAr,
    time: "08:55"),
Chat(name: "ahmed", message: "welcom to my merd livewelcom to my merd liv",
    UrlImg: Assets.assetsImagesAr,
    time: "15:55"),
Chat(name: "foulen", message: "welcom to my merd live",
    UrlImg: Assets.assetsImagesAr,
    time: "15:55"),
Chat(name: "ben Mohamed", message: "welcom to my merd live",
    UrlImg: Assets.assetsImagesAr,
    time: "11:95"),


];