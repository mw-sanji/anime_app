import 'package:animelist/Models/Recommendations.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ListItem2 extends StatelessWidget {
  final Data listItem;

  const ListItem2({super.key, required this.listItem})
      : assert(listItem != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
      child: InkWell(
        onTap: () async {
          final _url = Uri.parse(listItem.entry!.url!);
          await launchUrl(_url);
        },
        child: Container(
          height: 200,
          child: Products(context),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Products(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(listItem.entry!.images!.jpg!.imageUrl!),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.only(left: 48, right: 48),
              height: 60,
              width: double.infinity,
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        listItem.entry!.title!,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
