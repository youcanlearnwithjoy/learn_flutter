Future<String> fetchToken() async {
  await Future.delayed(Duration(seconds:1));
  return "token_abc123";
}

Future<String> fetchUser(String token) async{
  await Future.delayed(Duration(seconds:1));
  return "Alice (token: $token)";
}

Future<List<String>> fetchPosts(String user) async {
  await Future.delayed(Duration(seconds: 1));
  return ["Post 1 by $user", "Post 2 by $user"];
}

//Chaining async calls cleanly
Future<void> loadData() async {
  try{
    print("Starting...");
    String token = await fetchToken();
    print("Got token: $token");

    String user = await fetchUser(token);
    print("Got user: $user");

    List<String> posts = await fetchPosts(user);
    print("Got posts: $posts");

  }catch(e){
    print("Error: $e");
  }finally{
    print("Done - always runs");
  }
}

void main() async {
  await loadData();
}