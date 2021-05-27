import 'package:http/http.dart' as http;

class Example{
  fetchPost() async {
    http.Response response = await http.get(Uri.parse('https://www.prothomalo.com/lifestyle/shopping/%E0%A6%B0%E0%A6%BF%E0%A6%AF%E0%A6%BC%E0%A7%87%E0%A6%B2%E0%A6%AE%E0%A6%BF%E0%A6%B0-%E0%A6%AC%E0%A6%BE%E0%A6%A1%E0%A6%B8-%E0%A6%8F%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0-%E0%A7%A8-%E0%A6%93-%E0%A6%AC%E0%A6%BE%E0%A6%A1%E0%A6%B8-%E0%A6%8F%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0-%E0%A7%A8-%E0%A6%A8%E0%A6%BF%E0%A6%93'));
    print(response.body);
  }
}
