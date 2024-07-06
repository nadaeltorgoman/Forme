class ClientsRequestsModel {
  int id;
  String clientName, clientLevel, clientType, image;
  ClientsRequestsModel(
      {required this.id,
      required this.image,
      required this.clientName,
      required this.clientLevel,
      required this.clientType});
}

List<ClientsRequestsModel> clientsRequestsModel = [
  ClientsRequestsModel(
    id: 0,
    image: 'image1.png',
    clientName: 'Ahmed Ali',
    clientLevel: 'Beginner',
    clientType: 'Personal Training',
  ),
  ClientsRequestsModel(
    id: 1,
    image: 'image2.png',
    clientName: 'Yosef Salem',
    clientLevel: 'Advanced',
    clientType: 'Personal Training',
  ),
  ClientsRequestsModel(
    id: 2,
    image: 'image7.png',
    clientName: 'Lara Hany',
    clientLevel: 'Beginner',
    clientType: 'Online Coaching',
  ),
  ClientsRequestsModel(
    id: 3,
    image: 'image4.png',
    clientName: 'Omar Shrief',
    clientLevel: 'Intermediate',
    clientType: 'Personal Training',
  ),
  ClientsRequestsModel(
    id: 4,
    image: 'image3.png',
    clientName: 'Khaled Qotb',
    clientLevel: 'Beginner',
    clientType: 'Personal Training',
  ),
  ClientsRequestsModel(
    id: 5,
    image: 'image6.png',
    clientName: 'Hany Safwat',
    clientLevel: 'Advanced',
    clientType: 'Personal Training',
  ),
  ClientsRequestsModel(
    id: 6,
    image: 'image3.png',
    clientName: 'Fares Samy',
    clientLevel: 'Beginner',
    clientType: 'Personal Training',
  ),
  ClientsRequestsModel(
    id: 7,
    image: 'image5.png',
    clientName: 'Saif Said',
    clientLevel: 'Beginner',
    clientType: 'Online Coaching',
  ),
];
