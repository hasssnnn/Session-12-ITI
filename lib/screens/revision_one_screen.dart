import 'package:flutter/material.dart';

//Positioned:done
//LayoutBuilder simple: done
//TextField:later
//Padding:done
//Navigation:later

class RevisionScreen extends StatefulWidget {
  const RevisionScreen({super.key});

// _privateMethod()
//_PrivateClass()
  @override
  State<RevisionScreen> createState() => _RevisionScreenState();
}

class _RevisionScreenState extends State<RevisionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //Dispoe Animation Controller
    //Dispose Text Controller
    //Dispose Stream Controller
    //close any heavy resource
    //Retain Cycle :=> Memory Leak
  }

  int number = 9;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Revison Day $number"),
          centerTitle: true,
        ),
        body: Offstage(
            offstage: true,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Text("Start"))));
  }
}
