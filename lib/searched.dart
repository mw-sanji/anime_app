// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:animelist/Models/AnimeList.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:animelist/widgets/listitem.dart';

// ignore: must_be_immutable
class Searched extends StatefulWidget {
  String text;
  Searched({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<Searched> createState() => _SearchedState();
}

class _SearchedState extends State<Searched> {
  String convertSpacesToPercent20(String input) {
  return input.replaceAll(' ', '%20');
}
  


   Future<AnimeModel> Userdata1(String text) async {
    text = convertSpacesToPercent20(text);
    final response =
        await http.get(Uri.parse('https://api.jikan.moe/v4/anime?q=$text&sfw'));
    var userData = jsonDecode(response.body.toString());
    if (response == 200) {
      return AnimeModel.fromJson(userData);
    } else {
      return AnimeModel.fromJson(userData);
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('AnimeList',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                  future: Userdata1(widget.text),
                  builder: (context, snapshot) {
                                    if(snapshot.connectionState == ConnectionState.waiting) {
                                      return Center(child: const CircularProgressIndicator());
                                    }
                                    else if(snapshot.hasError) {
                                      return Container();
                                    
                                    } 
                                    else if (snapshot.hasData) {
                                      if(snapshot.data!.data == null) {
                                        return Container();
                                      }
                                      else {
                                        return ListView.separated(
                                          itemCount: 10,
                                          itemBuilder: (context, index) {
                                            if(snapshot.data!.data== null) {
                                              return Container();
                                            }
                                            return ListItem(
                                                
                                                listItem: snapshot.data!.data![index]);
                                          },
                                         separatorBuilder: (BuildContext context, int index) { 
                                                    return Container();
                                                   },);
                                      }
                                    }
                                    else {
                                      return Container();
                                    }
                                  
   } ),
              ),
            ],
          )
        ),
      ),
    );
  }
}