

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'User.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    List<User> userlist =[];

    Future<List<User>> postData() async {
      const String url = "https://jsonplaceholder.typicode.com/posts";

      var response= await http.get(Uri.parse(url));
      var data = jsonDecode(response.body.toString());
      if(response.statusCode==200){
        for(Map i in data ){
          userlist.add(User.fromJson(i));
        }
        return  userlist;

      }else{
        return userlist;
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: postData(),
                builder: (context , snapshot){
                if(!snapshot.hasData){
                  return const Text("Loading");
                }else{
                  return ListView.builder(
                      itemBuilder: (context, index){
                        return Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(userlist[index].title.toString()),
                              Text(userlist[index].body.toString()),
                            ],
                          ),
                        );
                      });
                }
                }
            ),
          )
        ],
      ),
    );
  }
}
