import 'dart:typed_data';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<Uint8List> removeBgApi(String imagePath) async {
    var request = http.MultipartRequest(
        "POST", Uri.parse("https://api.remove.bg/v1.0/removebg"));
    request.files
        .add(await http.MultipartFile.fromString('image_url', imagePath));
    request.headers.addAll(
        {"X-API-Key": "HtR52Wj5ekbbAPidhpCJiykb"}); //Put Your API key HERE
    final response = await request.send();
    print(response.statusCode);
    print(response.request);
    if (response.statusCode == 200) {
      http.Response imgRes = await http.Response.fromStream(response);
      return imgRes.bodyBytes;
    } else {
      throw Exception("Error occurred with response ${response.statusCode}");
    }
  }
}
