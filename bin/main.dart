import 'package:main/fetch_random_user.dart';

void main() async {
  final fetchRandomUser = FetchRandomUser();
  final fetchUrl = 'https://random-data-api.com/api/users/random_user?size=';
  final numberOfUsers = 12;
  final users = await fetchRandomUser.fetchRandomUsers(fetchUrl, numberOfUsers);

  for (var user in users) {
    final String uid = user['uid'];
    final String firstName = user['first_name'];
    final String lastName = user['last_name'];
    final String userDetails = 'UID: $uid, Name: $firstName $lastName';
    print(userDetails);
  }
}
