import 'package:flutter/material.dart';

double iconSize = 30;

CarList carList = CarList(
    cars: [
      Car(
          imgList: [
            "ecommerce.png",
            "eccomerce.png",
            "ecommerce1.jpg",
          ],
        title: [
          "Ecommerce Shopping",
          "Choose Item",
          "Bye Item"
        ],
        description: [
          "Beutiful Ecommerse Tamplate bye this tamplate contact us",
          "Choose item wherever you are with this application to make life easier",
          "Shop from thousand brand in the world"
        ]
      )
    ]
);

class CarList{
  List<Car> cars;

  CarList({
    @required this.cars,
  });
}

class Car{
  List <String> title;
  List <String> description;
  List <String> imgList;

  Car({
    @required this.title,
    @required this.description,
    @required this.imgList,
  });
}