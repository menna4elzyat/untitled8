import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class column {
  column({
    List<Widget>children = const<Widget>[],
  });
}
void main() {
  runApp(const MyApp());
}
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
            actions: [
              PopupMenuButton(itemBuilder: (context)=>[
                PopupMenuItem(child: Text("setting"),value:'setting',
                ),
                PopupMenuItem(child: Text("started"),value:'started',
                ),
                PopupMenuItem(child: Text("whatsApp web"),value:'whatsApp web',
                ),
                PopupMenuItem(child: Text("new group"),value:'new group',
                ),
              ]),
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
          ),
          body:TabBarView(
            children:[
              chats()
            ]
          )
        ),

          );

  }
}

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        child:ListTile(title:Text("mohamed sayed"),subtitle: Text("hello"),leading:Icon(Icons.person), ),),
            Container(
            child:ListTile(title:Text("ronaldo"),subtitle: Text("h 5"),leading:Icon(Icons.person),  ), ),
               Container(

               child:ListTile(title:Text("john"),subtitle: Text("where are you"),leading:Icon(Icons.person), ),),
         Container(                                                                            
         child:ListTile(title:Text("sarg"),subtitle: Text("يا انستراكتور"),leading:Icon(Icons.person), ),),

      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff075e54)
        ),
      ),
      home:Home(),
    );
  }
}




