
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'User.dart';


class CallApi {



  Future<User?> postData() async {
    const String _url = "https://jsonplaceholder.typicode.com/posts";

    var response= await http.get(Uri.parse(_url));
    if(response.statusCode==200){

      return User.fromJson(json.decode(response.body.toString()));

    }else{
      return null;
    }
  }


/*_setHeaders() =>
      {
        'Accept': 'application/json',
      };*/
}

