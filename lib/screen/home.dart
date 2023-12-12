import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title:Text("whatsApp",style:TextStyle(fontSize: 25,fontWeight:FontWeight.bold)
          ),
            bottom: TabBar(tabs:[
              Tab(child:Icon(Icons.camera_alt_outlined),
              ) ,
              Tab(child:Text("chats"),
              ),
              Tab(child:Text("status"),
              ),
              Tab(child:Text("calls"),
              ),
            ]),
          ),
        )
    );
  }
}
