import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> news = [
      {"title": "Первая новость", "body": "Это описание первой новости."},
      {
        "title": "Вторая новость",
        "body": "Тут краткое описание второй новости."
      },
      {
        "title": "Третья новость",
        "body": "Дополнительные детали третьей новости."
      },
      {
        "title": "Четвёртая новость",
        "body": "Информация по четвёртой новости."
      },
      {"title": "Пятая новость", "body": "Описание пятой новости."},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Новости'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          final item = news[index];
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            child: ListTile(
              title: Text(item['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item['body']!),
            ),
          );
        },
      ),
    );
  }
}
