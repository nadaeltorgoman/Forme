class ProgramsCardModel {
  int id;
  String category;
  String type, state, reviews, title, clientsNumber, price, period;
  bool isBestSeller;
  ProgramsCardModel({
    required this.id,
    required this.category,
    required this.type,
    required this.state,
    required this.reviews,
    required this.title,
    required this.clientsNumber,
    required this.price,
    required this.period,
    this.isBestSeller = false,
  });
}

List<ProgramsCardModel> programsCardModel = [
  ProgramsCardModel(
    id: 0,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '500 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
  ),
  ProgramsCardModel(
    id: 1,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '23 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
    isBestSeller: true,
  ),
  ProgramsCardModel(
    id: 2,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '100 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
    isBestSeller: true,
  ),
  ProgramsCardModel(
    id: 3,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
  ),
  ProgramsCardModel(
    id: 4,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
    isBestSeller: true,
  ),
  ProgramsCardModel(
    id: 5,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
  ),
  ProgramsCardModel(
    id: 6,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: 'E£150.00 ',
    period: '/4 weeks',
  ),
];
