class CCamera{
  String imageUrl;
  String name;
  String discription;
  int rating;
  int price;

  CCamera({this.imageUrl,this.name,this.discription,this.rating,this.price});
}
List<CCamera>activities = [
  CCamera(
    imageUrl: 'assets/images/camera.jpg',
    name: 'Canon Camera',
    discription: 'Canon buitiful Pexel Camera',
    price: 1500,
    rating: 5,
  ),
  CCamera(
    imageUrl: 'assets/images/camera1.jpg',
    name: 'Camera Nikkon',
    discription: 'Buetiful Camera',
    price: 1800,
    rating: 5,
  ),
  CCamera(
    imageUrl: 'assets/images/camera2.jpg',
    name: 'Camera',
    discription: 'Canon buitiful Pexel Camera',
    price: 1200,
    rating: 5,
  ),
  CCamera(
    imageUrl: 'assets/images/camera3.jpeg',
    name: 'Canon',
    discription: 'Camera',
    price: 1300,
    rating: 5,
  ),
];

class cDiscount{
  String imageUrl;
  String name;
  String discription;
  int rating;
  int price;

  cDiscount({this.imageUrl,this.name,this.discription,this.rating,this.price});
}
List<cDiscount>cdiscount = [
  cDiscount(
    imageUrl: 'assets/images/p_Camera.jpg',
    name: 'Camera',
    discription: 'Saint martin tour',
    price: 200,
    rating: 5,
  ),
  cDiscount(
    imageUrl: 'assets/images/camera7.webp',
    name: 'Laptop',
    discription: 'Camera',
    price: 300,
    rating: 5,
  ),
  cDiscount(
    imageUrl: 'assets/images/camera4.jpg',
    name: 'Topes',
    discription: 'Saint martin tour',
    price: 20,
    rating: 5,
  ),
  cDiscount(
    imageUrl: 'assets/images/camera2.jpg',
    name: 'Panjabi',
    discription: 'Saint martin tour',
    price: 30,
    rating: 5,
  ),
];

class cPopular{
  String imageUrl;
  String name;
  String discription;
  int rating;
  int price;

  cPopular({this.imageUrl,this.name,this.discription,this.rating,this.price});
}
List<cPopular>cpopular = [
  cPopular(
    imageUrl: 'assets/images/cctvcamera.jpg',
    name: 'Camera',
    discription: 'Saint martin tour',
    price: 200,
    rating: 5,
  ),
  cPopular(
    imageUrl: 'assets/images/Canon1.jpg',
    name: 'Laptop',
    discription: 'Camera',
    price: 300,
    rating: 5,
  ),
  cPopular(
    imageUrl: 'assets/images/Canon-Rumors.jpg',
    name: 'Topes',
    discription: 'Saint martin tour',
    price: 20,
    rating: 5,
  ),
  cPopular(
    imageUrl: 'assets/images/camera.jpg',
    name: 'Camera',
    discription: 'Smuth And Zoom Camera',
    price: 30,
    rating: 5,
  ),
];

class cNewItem{
  String imageUrl;
  String name;
  String discription;
  int rating;
  int price;

  cNewItem({this.imageUrl,this.name,this.discription,this.rating,this.price});
}
List<cNewItem>cmewItems = [
  cNewItem(
    imageUrl: 'assets/images/p_Camera.jpg',
    name: 'Camera',
    discription: 'Saint martin tour',
    price: 200,
    rating: 5,
  ),
  cNewItem(
    imageUrl: 'assets/images/camera7.webp',
    name: 'Laptop',
    discription: 'Camera',
    price: 300,
    rating: 5,
  ),
  cNewItem(
    imageUrl: 'assets/images/camera3.jpeg',
    name: 'Canon',
    discription: 'Black Color Camera',
    price: 20,
    rating: 5,
  ),
  cNewItem(
    imageUrl: 'assets/images/p_panjabi.jpg',
    name: 'Panjabi',
    discription: 'Saint martin tour',
    price: 30,
    rating: 5,
  ),
];