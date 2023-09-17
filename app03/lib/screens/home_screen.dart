import 'package:app03/models/webtoon_model.dart';
import 'package:app03/services/api_service.dart';
import 'package:app03/widgets/webtoon_widget.dart';
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
  return ListView.separated(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    scrollDirection: Axis.horizontal,
    itemCount: snapshot.data!.length,
    separatorBuilder: (context, index) {
      return const SizedBox(
        width: 40,
      );
    },
    itemBuilder: (context, index) {
      var webtoon = snapshot.data![index];
      return WebToon.indivisual(
        id: webtoon.id,
        title: webtoon.title,
        thumb: webtoon.thumb,
      );
    },
  );
}
