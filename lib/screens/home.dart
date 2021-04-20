import 'package:CWCFlutter/controller/providers.dart';
import 'package:CWCFlutter/controller/user_list.dart';
import 'package:CWCFlutter/model/user.dart';
import 'package:CWCFlutter/screens/user_list_screen.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:CWCFlutter/widget/cheetah_input.dart';
import 'package:CWCFlutter/widget/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String? _name;
  String? _city;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("Home rebuilding...");
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Consumer(
          builder: (context, watch, child) {
            AsyncValue<String> name = watch(profileNameProvider);

            return name.when(
              data: (name) => Text(
                name,
                style: TextStyle(color: Colors.white),
              ),
              loading: () => Text(
                "Loading...",
                style: TextStyle(color: Colors.white),
              ),
              error: (e, stackTrace) => Text("Error!!!"),
            );
          },
        ),
        leading: Center(
          child: Consumer(
            builder: (context, watch, _) {
              AsyncValue<int> time = watch(sessionTimeProvider);

              return time.when(
                data: (value) => Text(
                  value.toString(),
                  style: TextStyle(fontSize: 22),
                ),
                loading: () => Text("?"),
                error: (e, trace) => Text("error"),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                context.read(channelNameProvider),
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 16),
              CheetahInput(
                labelText: 'Name',
                onSaved: (String? value) {
                  _name = value;
                },
              ),
              SizedBox(height: 16),
              CheetahInput(
                labelText: 'City',
                onSaved: (String? value) {
                  _city = value;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer(
                    builder: (context, watch, _) {
                      final UserListController controller =
                          context.read(userListProvider.notifier);

                      return CheetahButton(
                        text: 'Add',
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) return;

                          _formKey.currentState!.save();

                          controller.addUser(User(_name, _city));
                        },
                      );
                    },
                  ),
                  SizedBox(width: 8),
                  CheetahButton(
                    text: 'List',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserListScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              UserList(),
            ],
          ),
        ),
      ),
    );
  }
}
