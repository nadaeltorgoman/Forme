import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forme_app/features/trainer_features/Trainer_Profile/presentation/views/trainer_profile_screen.dart';
import 'package:forme_app/features/trainer_features/client_list/presentation/views/client_list_screen.dart';
import 'package:forme_app/features/trainer_features/dashboard/presentation/views/dashboard_screen.dart';
import 'package:forme_app/features/trainer_features/dashboard/presentation/views/manager/bloc/trainer_home_bloc.dart';
import 'package:forme_app/features/trainer_features/my_services/presentation/views/my_services_screen.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

class TrainerHomeScreen extends StatefulWidget {
  static const routeName = '/trainer_home-screen';

  const TrainerHomeScreen({super.key});

  @override
  State<TrainerHomeScreen> createState() => _TrainerHomeScreenState();
}

class _TrainerHomeScreenState extends State<TrainerHomeScreen> {
  final List<Widget> _pages = [
    const SafeArea(child: Center(child: DashboardScreen())),
    const SafeArea(child: MyServicesScreen()),
    const SafeArea(child: ClientListScreen()),
    const SafeArea(child: Center(child: Text('chat'))),
    const SafeArea(child: TrainerProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerHomeBloc, TrainerHomeState>(
      builder: (context, state) {
        int currentIndex =
            BlocProvider.of<TrainerHomeBloc>(context).currentIndex;
        return Scaffold(
          body: _pages[currentIndex],
          bottomNavigationBar: const CustomBottomNavigationBar(
            isTrainer: true,
            icons: ['home', 'PlayBorder', 'client-list', 'chat', 'profile'],
            labels: ['Home', 'My Services', 'Client List', 'Chat', 'Profile'],
          ),
        );
      },
    );
  }
}
