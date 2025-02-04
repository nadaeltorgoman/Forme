class MyWorkoutsCardsModel {
  String type, title, image;
  double price, rating;
  int reviews, id, videos, clients;
  MyWorkoutsCardsModel({
    required this.id,
    required this.type,
    required this.title,
    required this.image,
    required this.price,
    required this.clients,
    required this.videos,
    required this.rating,
    required this.reviews,
  });
}

List<MyWorkoutsCardsModel> myWorkoutsCardsModel = [
  MyWorkoutsCardsModel(
    id: 0,
    type: 'Yoga',
    title: 'Mindful Movement',
    image: 'card_image.jpg',
    videos: 23,
    clients: 20,
    price: 150.00,
    rating: 4.9,
    reviews: 17,
  ),
  MyWorkoutsCardsModel(
    id: 1,
    type: 'Gym',
    title: 'Mindful Movement',
    image: 'card_image_2.jpg',
    videos: 10,
    clients: 40,
    price: 200.00,
    rating: 3.9,
    reviews: 5,
  ),
  MyWorkoutsCardsModel(
    id: 2,
    type: 'Yoga',
    title: 'Mindful Movement',
    image: 'card_image_3.jpg',
    videos: 40,
    clients: 15,
    price: 100.00,
    rating: 4.2,
    reviews: 20,
  ),
  MyWorkoutsCardsModel(
    id: 3,
    type: 'Gym',
    title: 'Mindful Movement',
    image: 'card_image_4.jpg',
    videos: 20,
    clients: 100,
    price: 120.00,
    rating: 4.0,
    reviews: 10,
  ),
  MyWorkoutsCardsModel(
    id: 4,
    type: 'Yoga',
    title: 'Mindful Movement',
    image: 'card_image_5.jpg',
    videos: 23,
    clients: 30,
    price: 250.00,
    rating: 3.5,
    reviews: 20,
  ),
  MyWorkoutsCardsModel(
    id: 5,
    type: 'Yoga',
    title: 'Mindful Movement',
    image: 'card_image_6.jpg',
    videos: 15,
    clients: 25,
    price: 150.00,
    rating: 4.9,
    reviews: 17,
  ),
  MyWorkoutsCardsModel(
    id: 6,
    type: 'Yoga',
    title: 'Mindful Movement',
    image: 'card_image.jpg',
    videos: 50,
    clients: 50,
    price: 150.00,
    rating: 4.5,
    reviews: 100,
  ),
];
