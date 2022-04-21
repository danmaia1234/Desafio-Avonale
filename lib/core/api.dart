import 'package:http/http.dart' as http;

const still =
    "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=48fc4e6a81b757681f3a5b86dedc4668";

class API {
  static Future vr() async {
    return await http.get(Uri.parse(still));
  }
}
