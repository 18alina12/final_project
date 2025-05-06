import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'news_event.dart';
import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsLoading()) {
    on<FetchNews>((event, emit) async {
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        if (response.statusCode == 200) {
          List<Map<String, dynamic>> news =
              List<Map<String, dynamic>>.from(json.decode(response.body));
          emit(NewsLoaded(news));
        } else {
          emit(NewsError());
        }
      } catch (e) {
        emit(NewsError());
      }
    });
  }
}
