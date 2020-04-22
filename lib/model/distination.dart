
class Activity {
  String imageUrl;
  String name;
  String type;
  List<String>startTimes;
  int rating;
  int price;

  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price
  });
}

class Destination{
  String imageUrl;
  String city;
  String country;
  String discription;
  List<Activity>activities;

  Destination({this.imageUrl,this.city,this.country,this.discription,this.activities});

}

List<Activity>activities = [
  Activity(
    imageUrl: 'assets/images/p_Camera.jpg',
    name: 'Camera',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 200,
    rating: 5,
  ),
  Activity(
    imageUrl: 'assets/images/p_laptop.webp',
    name: 'Laptop',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 300,
    rating: 5,
  ),
  Activity(
    imageUrl: 'assets/images/p_tops.jpg',
    name: 'Topes',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 20,
    rating: 5,
  ),
  Activity(
    imageUrl: 'assets/images/p_panjabi.jpg',
    name: 'Panjabi',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 30,
    rating: 5,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/p_panjabi.jpg',
    city: 'discount',
    country: '10%',
    discription: 'Beutifull Netural View in This Place',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/p_laptop.webp',
    city: 'Discount',
    country: '15%',
    discription: 'Canada is Beutifull Netural View in This Place',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/p_shoes.jpg',
    city: 'discount',
    country: '10%',
    discription: 'Beutifull Netural View in This Place',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/p_book.jpg',
    city: 'discount',
    country: '20%',
    discription: 'Beutifull Netural View in This Place',
    activities: activities,
  ),
];