import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:invitee/app/modules/home/data/models/room_model.dart';
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
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: Color(0XFFF6F7FC),
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
      body: Padding(
        padding: EdgeInsets.only(top: height * 2, right: width * 6, left: width * 6),
        child: Column(
          children: [
            Material(
              elevation: 2,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Container(
                height: height * 6,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Encontre sua sala de reunião',
                        style: GoogleFonts.nunito(
                          fontSize: height * 1.6,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Icon(Icons.filter_list, color: Colors.black,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:  height * 2,),
            Observer(
              builder: (_) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listRooms.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: height * 1.5),
                            child: CardRoom(dataRoom: controller.listRooms[index],)
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}

class CardRoom extends StatelessWidget {
  const CardRoom({
    Key? key,
    required this.dataRoom,
  }) : super(key: key);

  final RoomModel dataRoom;

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Material(
      elevation: 2,
      child: Column(
        children: [
          Container(
            height: height * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('${dataRoom.image}'),
                fit: BoxFit.fill
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 1, horizontal: width * 1),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sala de Reunião ${dataRoom.name}',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 1.8
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0XFF492E8D),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: height * 0.3, horizontal: width * 8),
                            child: Text(
                              '${dataRoom.direction}',
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 1),
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Color(0XFF492E8D),),
                          Text(
                            '${dataRoom.address}',
                            style: GoogleFonts.nunito(
                              fontSize: height * 1.3
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: dataRoom.attributes!.length,
                      itemBuilder: (_, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.black,
                                width: 1, 
                              )
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width * 1),
                            child: Text(
                              '${dataRoom.attributes![index]}',
                              style: GoogleFonts.nunito(
                                color: Color(0XFF492E8D),
                                fontWeight: FontWeight.w700,
                                fontSize: width * 3
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
