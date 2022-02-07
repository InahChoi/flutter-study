import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<String, int> employeeList = {
  'Seok Chae Jung': 0,
  'Ji Hwan Lee': 26,
  'In Ah Choi': 26,
  'Jang Woo Hwang': 25,
  'Jae Sun Sim': 30,
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bayabas Flutter Study',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Bayabas Flutter Study'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🧸Bayabas Flutter Study🧸'),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              horizontalTitleGap: 30.0,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Icon(
                Icons.person,
                size: 30.0,
              ),
              title: Text(
                '${employeeList.keys.toList()[index]}',
              ),
              subtitle: Text(
                'AGE : ${employeeList.values.toList()[index]}',
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container();
        },
        itemCount: employeeList.length,
      )),
    );
  }
}
