
import 'package:flutter/material.dart';
import 'package:full_app/page/login/login.dart';
import 'package:full_app/widget/widget.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(primaryColor: Colors.amber),
        home:const HomePage(),
      );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          leading:const Icon(Icons.home),
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.file_copy)),
            PopupMenuButton(icon:const Icon(Icons.home_filled),itemBuilder: (context)=>[
              const PopupMenuItem(child: Text("face")),
              const PopupMenuItem(child: Text("face")),
            ])
          ],
          bottom:const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.car_crash),),
              Tab(icon: Icon(Icons.bike_scooter),)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("WellCome My App"),
                  const SizedBox(height: 30,),
                  buttonWidget(onPressed: (){Get.to(const FormLogin());}, 
                  child:const Text("next"), icon:const Icon(Icons.arrow_forward), width: 130.0),
                ],
              ),
            ),
            const Center(child: Text("car"),),
            const Center(child: Text("bike"),)
          ],
        ),
      ),
    );
  }
}

