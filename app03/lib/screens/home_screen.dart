import 'package:app03/models/webtoon_model.dart';
import 'package:app03/services/api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebToonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Today's Toons",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        elevation: 2,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

ListView makeList(AsyncSnapshot<List<WebToonModel>> snapshot) {
  print(snapshot.data![1].thumb);
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    itemCount: snapshot.data!.length,
    separatorBuilder: (context, index) {
      return const SizedBox(
        width: 40,
      );
    },
    itemBuilder: (context, index) {
      var webtoon = snapshot.data![index];
      return Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  offset: const Offset(10, 10),
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            width: 250,
            child: Image.network(
              webtoon.thumb,
              headers: const {
                'User-Agent':
                    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36',
                'Referer': 'https://comic.naver.com',
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            webtoon.title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      );
    },
  );
}
