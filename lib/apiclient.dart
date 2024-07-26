// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// const String baseUrl = 'https://0928-115-245-212-236.ngrok-free.app/';

// class Apiclient {
//   var client = http.Client();
//   Future<List<Response?>?> get(String route) async {
//     var url = Uri.parse(baseUrl + route);
//     var response = await client.get(url, headers: {});
//     print(response.body);
//     if (response.statusCode == 200) {
//       var jsonn = jsonDecode(response.body);
//       var res = Root.fromJson(jsonn);
//       var list = res.response;
//       return list;
//     } else {
//       print('failed');
//     }
//     // var response = ''' [
//     //   {
//     //     "id": 1,
//     //     "name": "zack",
//     //     "phone": "9526925448",
//     //     "age": "21",
//     //     "place": "vlmna",
//     //     "address": "kochi",
//     //     "createdAt": "2024-02-23T10:34:25.153Z",
//     //     "updatedAt": "2024-02-23T10:34:25.153Z"
//     //   },
//     //   {
//     //     "id": 2,
//     //     "name": "zack",
//     //     "phone": "9526925448",
//     //     "age": "21",
//     //     "place": "vlmna",
//     //     "address": "kochi",
//     //     "createdAt": "2024-02-23T10:35:22.503Z",
//     //     "updatedAt": "2024-02-23T10:35:22.503Z"
//     //   }
//     // ]''';
//     // print(response);

//     // List<Root> roots = (jsonDecode(response as String) as List)
//     //     .map((json) => Root.fromJson(json))
//     //     .toList();

//     // return roots;
//   }

//   Future<dynamic> post(String route, dynamic data) async {
//     var url = Uri.parse(baseUrl + route);
//     try {
//       print('api 1');
//       var response = await client.post(
//         url,
//         body: data,
//         headers: {},
//       );
//       print('api 2');
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         return response.body;
//       } else {
//         print('failed');
//       }
//     } catch (err) {
//       print(err);
//     }
//   }

//   Future<dynamic> put(String route, dynamic object) async {
//     var url = Uri.parse(baseUrl + route);
//     try {
//       var response = await client.put(
//         url,
//         body: object,
//         headers: {},
//       );
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         return response.body;
//       } else {
//         print('failed');
//       }
//     } catch (err) {
//       print(err);
//     }
//   }

//   Future<List<Response?>?> delete(String api, dynamic object) async {
//     var url = Uri.parse(baseUrl + api);
//     var response = await client.delete(url, body: object, headers: {});
//     print(response.body);
//     if (response.statusCode == 200) {
//       var jsonn = jsonDecode(response.body);
//       var res = Root.fromJson(jsonn);
//       var list = res.response;
//       print(list);
//       return list;
//       // return response.body;
//     } else {
//       print('failed');
//     }
//   }
// }
