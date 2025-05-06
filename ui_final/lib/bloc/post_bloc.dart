import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostLoading()) {
    on<FetchPost>((event, emit) async {
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
        if (response.statusCode == 200) {
          emit(PostLoaded(json.decode(response.body)));
        } else {
          emit(PostError());
        }
      } catch (e) {
        emit(PostError());
      }
    });
  }
}
