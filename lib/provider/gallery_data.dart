import 'package:flutter/material.dart';
import 'package:photo_gallery/services/network_helper.dart';

class GalleryData extends ChangeNotifier{
  List<String> photos = [];

  Future<void> getImages() async {
    List<String> images = [];
    String url = "https://api.slingacademy.com/v1/sample-data/photos?offset=0&limit=99";
    NetworkHelper networkHelper = NetworkHelper(url: url);
    dynamic data = await networkHelper.getData();
    List<dynamic> hitsList = data["photos"] as List;
    for(int i=0; i<hitsList.length; i++){
      images.add(hitsList[i]["url"]);
    }
    photos = images;
    notifyListeners();
  }

}