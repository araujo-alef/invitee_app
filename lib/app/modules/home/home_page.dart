import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invitee/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    controller.fetchRooms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0XFF492E8D),
        title: Text('Invitee'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.listRooms.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.listRooms[index].name.toString()),
              );
            },
          );
        },
      ),
    );
  }
}