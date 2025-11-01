
  import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/Model_Photo&Qusion.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/PhotoAndElevted.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/widgetElvetedBonTask.dart';

List<Photoandelevted> QusionPhoto = [
    Photoandelevted(
      Photos: ModelPhotoQusion(Photo: "assets/images/Dog.jpg"),

      VoiPhoto: [
        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Lion", sc: 5),

        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Dog",sc: 1,),

        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Tiger"),
      ],
    ),

    Photoandelevted(
      Photos: ModelPhotoQusion(Photo: "assets/images/lion.jpg"),

      VoiPhoto: [
        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Lion", sc: 1),

        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Dog"),

        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Tiger"),
      ],
    ),

    Photoandelevted(
      Photos: ModelPhotoQusion(Photo: "assets/images/TEG.jpeg"),

      VoiPhoto: [
        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Lion"),

        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Dog"),

        WidgetElvetedBonTask(onPressPhoto: () {}, Chois: "Tiger",sc: 1,),
      ],
    ),
  ];