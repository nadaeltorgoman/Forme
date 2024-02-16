class ProgramsSearchCardModel {
  int id;
  String category;
  String type, state, reviews, title, clientsNumber, price, period;
  bool isBestSeller;
  ProgramsSearchCardModel({
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

List<ProgramsSearchCardModel> programsSearchCardModel = [
  ProgramsSearchCardModel(
    id: 0,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '500 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
  ),
  ProgramsSearchCardModel(
    id: 1,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '23 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
    isBestSeller: true,
  ),
  ProgramsSearchCardModel(
    id: 2,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '100 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
    isBestSeller: true,
  ),
  ProgramsSearchCardModel(
    id: 3,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
  ),
  ProgramsSearchCardModel(
    id: 4,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
    isBestSeller: true,
  ),
  ProgramsSearchCardModel(
    id: 5,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
  ),
  ProgramsSearchCardModel(
    id: 6,
    category: 'Programs',
    type: 'Yoga ',
    state: ' Online',
    reviews: '4.9 (17 Reviews)',
    title: 'Mindful Movement',
    clientsNumber: '10 Clients',
    price: '\$150.00 ',
    period: '/4 weeks',
  ),
];
