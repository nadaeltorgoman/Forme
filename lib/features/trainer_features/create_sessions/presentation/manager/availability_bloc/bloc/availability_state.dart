part of 'availability_bloc.dart';

sealed class AvailabilityState extends Equatable {
  const AvailabilityState();
  
  @override
  List<Object> get props => [];
}

final class AvailabilityInitial extends AvailabilityState {}
