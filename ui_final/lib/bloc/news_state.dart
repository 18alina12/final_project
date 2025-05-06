import 'package:equatable/equatable.dart';

abstract class NewsState extends Equatable {
  @override
  List<Object> get props => [];
}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  final List<Map<String, dynamic>> news;
  NewsLoaded(this.news);

  @override
  List<Object> get props => [news];
}

class NewsError extends NewsState {}
