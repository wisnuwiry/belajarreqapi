import 'package:flutter/material.dart';
import 'package:latihanreqapi/data/models/user_model.dart';
import 'package:latihanreqapi/data/repository/user_repository.dart';

class ListUserPage extends StatefulWidget {
  const ListUserPage({Key? key}) : super(key: key);

  @override
  _ListUserPageState createState() => _ListUserPageState();
}

class _ListUserPageState extends State<ListUserPage> {
  @override
  void initState() {
    print('Menjalankan method pertama kali : initState()');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ListUserPage oldWidget) {
    print('Merender ulang widget didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(),
      ),
    );
  }

  @override
  void dispose() {
    print('Widget terdispose dispose()');
    super.dispose();
  }
}

class _ListUser extends StatelessWidget {
  const _ListUser({Key? key, required this.userData}) : super(key: key);

  final List<UserModel> userData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(userData[index].avatar),
          ),
          title:
              Text(userData[index].firstName + ' ' + userData[index].lastName),
        );
      },
      itemCount: userData.length,
    );
  }
}
