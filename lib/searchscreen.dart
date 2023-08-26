import 'package:animelist/searched.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchedText = TextEditingController();
  var SearchedAnime = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Align(
          alignment: Alignment.topCenter,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 48,
                            width: 2 * (MediaQuery.of(context).size.width) / 3,
                            child: TextField(
                              controller: searchedText,
                              decoration: const InputDecoration(
                                  hintText: "Search Anime eg Naruto..",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(style: BorderStyle.solid))),
                            ),
                          ),
                          IconButton(onPressed: (){
                            SearchedAnime = searchedText.text;
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Searched(text: SearchedAnime);
                                  },
                                ));
                          }, icon: Icon(Icons.search))
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('assets/animepeeking.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
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
}
