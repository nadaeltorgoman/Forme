class YourClientsModel {
  int id;
  String clientName, clientLevel, clientType, duration, image;
  YourClientsModel(
      {required this.id,
      required this.image,
      required this.clientName,
      required this.clientLevel,
      required this.clientType,
      required this.duration});
}

List<YourClientsModel> yourClientsModel = [
  YourClientsModel(
    id: 0,
    image: 'image3.png',
    clientName: 'Ahmed Youssef',
    clientLevel: 'Beginner',
    duration: '3 months',
    clientType: 'Personal Training',
  ),
  YourClientsModel(
    id: 1,
    image: 'image1.png',
    clientName: 'Mohamed Ali',
    clientLevel: 'Advanced',
    duration: '6 months',
    clientType: 'Personal Training',
  ),
  YourClientsModel(
    id: 2,
    image: 'image2.png',
    clientName: 'Omar Hassan',
    clientLevel: 'Beginner',
    duration: '2 months',
    clientType: 'Online Coaching',
  ),
  YourClientsModel(
    id: 3,
    image: 'image4.png',
    clientName: 'Khaled Ibrahim',
    clientLevel: 'Intermediate',
    duration: '1 year',
    clientType: 'Personal Training',
  ),
  YourClientsModel(
    id: 4,
    image: 'image8.png',
    clientName: 'Sara Adel',
    clientLevel: 'Beginner',
    duration: '6 months',
    clientType: 'Online Coaching',
  ),
  YourClientsModel(
    id: 5,
    image: 'image6.png',
    clientName: 'Youssef Hassan',
    clientLevel: 'Advanced',
    duration: '10 months',
    clientType: 'Personal Training',
  ),
  YourClientsModel(
    id: 6,
    image: 'image7.png',
    clientName: 'Sama Sami',
    clientLevel: 'Beginner',
    duration: '1 month',
    clientType: 'Personal Training',
  ),
  YourClientsModel(
    id: 7,
    image: 'image5.png',
    clientName: 'Amr Nasser',
    clientLevel: 'Beginner',
    duration: '9 months',
    clientType: 'Personal Training',
  ),
];
