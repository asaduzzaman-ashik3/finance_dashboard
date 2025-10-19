import 'dart:convert';

import 'package:http/http.dart' as http;

class ImagesService {


  Future<List<dynamic>>getData() async {
      final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');

      final responce = await http.get(url);
      
      if (responce.statusCode == 200){
        final decoded = jsonDecode(responce.body);
        print(decoded);
            return decoded;
      }  else {
        throw Exception('Failed to load data');
      }
  }}