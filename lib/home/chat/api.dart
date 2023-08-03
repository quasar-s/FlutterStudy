import 'package:http/http.dart' as http;

Future Getdata(url) async {
  String link = url;
  http.Response Response = await http.get(Uri.parse(link));

  return Response.body;
}
