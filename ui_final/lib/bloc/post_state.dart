import 'package:equatable/equatable.dart';

abstract class PostState extends Equatable {
  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final Map<String, dynamic> post;
  PostLoaded(this.post);

  @override
  List<Object> get props => [post];
}

class PostError extends PostState {}
