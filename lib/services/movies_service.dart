import 'package:http/http.dart' as http;

class MoviesService {

  final String apiEndpoint = "https://utelly-tv-shows-and-movies-availability-v1.p.rapidapi.com/lookup";

  searchMoviesAndShows(String searchQuery) async {
    var response = await http.get(Uri.parse(apiEndpoint),
      headers: <String, String>{
        'X-RapidAPI-Key': '470c769351mshb625310135ef877p16d95cjsna31fe01a3ba6',
        'X-RapidAPI-Host': 'utelly-tv-shows-and-movies-availability-v1.p.rapidapi.com'
      },
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}