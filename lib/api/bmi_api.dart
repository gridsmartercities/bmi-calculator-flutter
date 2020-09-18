import 'package:http/http.dart';

class BmiApi {
  final baseUrl = "https://mnqmg5khn4.execute-api.eu-west-2.amazonaws.com/Prod";

  final Client _httpClient;

  BmiApi(this._httpClient);

  Future<void> submitDetails(int height, int weight) {
    
  }
}
