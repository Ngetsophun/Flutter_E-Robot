import 'package:http/http.dart' as http;
Future<String> get getData async{
    String url = "https://jsonplaceholder.typicode.com/users";
    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode ==200){
      return response.body;
    }else{
      throw Exception("Error Code: ${response.statusCode}");
    }
}



// Future<String> get getPost async{
//     String url = "https://jsonplaceholder.typicode.com/users";
//     http.Response response = await http.get(url);

//     if(response.statusCode ==200){
//       return response.body;
//     }else{
//       throw Exception("Error Code: ${response.statusCode}");
//     }
//   }
