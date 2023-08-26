import 'package:animelist/Models/AnimeList.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListItem extends StatelessWidget {
  final Data listItem;

  const ListItem({super.key, required this.listItem});

  @override
  Widget build(BuildContext context) {
    if (listItem.aired != null) {
      return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
        child: InkWell(
          onTap: () async {
            final _url = Uri.parse(listItem.url!);
            await launchUrl(_url);
          },
          child: Material(
            elevation: 3,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 200,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: 127,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    listItem.images!.jpg!.largeImageUrl!))),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    listItem.title!,
                                    maxLines: 2,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                             
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Rating: '+listItem.score.toString(),
                                    overflow:TextOverflow.ellipsis,
                                    maxLines: 5,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Rank: '+listItem.rank.toString(),
                                    overflow:TextOverflow.ellipsis,
                                    maxLines: 5,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        ),
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    return Container();
  }

  // ignore: non_constant_identifier_names
}