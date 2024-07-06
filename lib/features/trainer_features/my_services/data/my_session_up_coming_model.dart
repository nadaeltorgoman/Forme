class MySessionUpComingModel {
  final String id;
  final String name;
  final String date;
  final String from;
  final String to;
  final String callType;

  MySessionUpComingModel({
    required this.id,
    required this.name,
    required this.date,
    required this.callType,
    required this.from,
    required this.to,
  });
}

List<MySessionUpComingModel> mySessionUpComingModel = [
  MySessionUpComingModel(
    id: '0',
    name: 'Ahmed Youssef',
    date: '15 Nov',
    from: '10:00',
    to: '11:00',
    callType: 'Video Call',
  ),
  MySessionUpComingModel(
    id: '1',
    name: 'Mohamed Ali',
    date: '16 Nov',
    from: '11:00',
    to: '12:00',
    callType: 'Audio Call',
  ),
  MySessionUpComingModel(
    id: '2',
    name: 'Omar Hassan',
    date: '17 Nov',
    from: '12:00',
    to: '13:00',
    callType: 'Video Call',
  ),
  MySessionUpComingModel(
    id: '3',
    name: 'Khaled Ibrahim',
    date: '18 Nov',
    from: '13:00',
    to: '14:00',
    callType: 'Audio Call',
  ),
  MySessionUpComingModel(
    id: '4',
    name: 'Sara Adel',
    date: '19 Nov',
    from: '14:00',
    to: '15:00',
    callType: 'Video Call',
  ),
  MySessionUpComingModel(
    id: '5',
    name: 'Youssef Hassan',
    date: '20 Nov',
    from: '15:00',
    to: '16:00',
    callType: 'Audio Call',
  ),
  MySessionUpComingModel(
    id: '6',
    name: 'Fares Samy',
    date: '21 Nov',
    from: '16:00',
    to: '17:00',
    callType: 'Video Call',
  ),
  MySessionUpComingModel(
    id: '7',
    name: 'Ahmed Saif',
    date: '22 Nov',
    from: '17:00',
    to: '18:00',
    callType: 'Audio Call',
  ),

  
];
