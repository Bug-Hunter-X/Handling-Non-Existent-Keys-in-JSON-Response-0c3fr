```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      // Safe access using containsKey
      if (jsonResponse.containsKey('key')) {
          final value = jsonResponse['key'];
          print(value);
      } else {
          print('Key not found');
      }

      // Alternative: Using ?? for default value
      final alternativeValue = jsonResponse['anotherKey'] ?? 'Default Value';
      print(alternativeValue);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```