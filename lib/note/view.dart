import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../tittles/view.dart';
import 'logic.dart';

class NotePage extends StatelessWidget {
  NotePage({Key? key}) : super(key: key);

  final logic = Get.put(NoteLogic());

  final state = Get.find<NoteLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            SizedBox(height: 100,),
            Row(
              children: [
                Text("All Notes", style: TextStyle(fontSize: 20),),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'search',
                  hintText: 'search notes',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a search";
                  }
                  double? num = double.tryParse(value);
                  if (num == null) {
                    return "Please enter a valid search";
                  }
                  return value;
                },
              ),
            ),

            ListView.builder(
              itemCount:logic.modellist.length ,
              itemBuilder: (context, index) {
                return cointain(
                  name: logic.modellist[index].name,
                  tittle: logic.modellist[index].tittle,
                  Date: logic.modellist[index].Date,
                );
              },)
            // contain(tittle:"",
            // Date: '',
            //  name: '',),

          ],

        ) ,
        floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Center(
                child: FloatingActionButton(
                    child: Icon(
                        Icons.add
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TittlesPage(),
                          ));
                      // Get.to(TittlesPage());
                    }

                ),
              )

            ]

        )
    );



  }
}

class cointain extends StatelessWidget {
  final state = Get.find<NoteLogic>().state;
  final logic = Get.put(NoteLogic());

  final String tittle;
  final String Date;
  final String name;


  cointain({
    Key? key,

    required this.tittle,
    required this.Date,
    required this.name,
  }) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12
        ),
        child: Column(
          children: [
            Title(color: Colors.black, child: Text(tittle)),
            Text(Date),
            Row(
              children: [
                Icon(logic
                    .listoficons[Random().nextInt(logic.listoficons.length)]),
                Text(name)
              ],
            )

          ],
        ),
      ),
    );
  }
}



