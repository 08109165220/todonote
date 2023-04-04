import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../note/view.dart';
import 'logic.dart';

class TittlesPage extends StatelessWidget {
  TittlesPage({Key? key}) : super(key: key);

  final logic = Get.put(TittlesLogic());
  final state = Get.find<TittlesLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(

          child: ListView(children: [
            Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 10, right: 10),
                child: SizedBox(
                  height: 80,
                  width: 300,
                  child: TextFormField(

                    validator: (validate) {
                      if (validate!.isEmpty) {
                        return "Title Required";
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.notes),
                      labelText: "Title",
                      labelStyle: TextStyle(fontSize: 30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 2,
                            color: Colors.purple),
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 10, right: 10),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(

                    maxLines: 10,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.notes),
                      labelText: "Description",
                      labelStyle: TextStyle(fontSize: 30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 2,
                            color: Colors.purple),
                      ),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      providerListenFalse.showCalender(context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.date_range_outlined),
                        Text(providerListenTrue.selectedDate)
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      providerListenFalse.showTime(context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.timer),
                        Text(providerListenTrue.selectedTime)
                      ],
                    ))
              ],
            )
          ]),
        ),
      // body: Column(
      //    children: [
      //      SizedBox(height: 80,),
      //      Row(
      //        children: [
      //          GestureDetector(onTap: () {
      // Navigator.pop(
      //     context,
      //     MaterialPageRoute(
      //     builder: (context) => NotePage()
      //            )
      // );
      //          },
      //
      //              child: Icon(Icons.arrow_back_outlined)),
      //          SizedBox(width: 20,),
      //         Text("notes") ,
      //          SizedBox(width: 200,),
      //          Icon(Icons.share_outlined),
      //          SizedBox(width: 20,),
      //          Icon(Icons.offline_bolt)
      //        ],
      //      ),
           // Container(
           //   child: Row(
           //     children: [
           //       SizedBox(width: 10,),
           //       Icon(Icons.book_sharp,size: 5),
           //       SizedBox(width: 10,),
           //       Text("No Category"),
           //       SizedBox(width: 10,),
           //       Icon(Icons.arrow_drop_down_outlined),
           //     ],
           //   ),
           //   height: 20,width: 50,
           //   decoration: BoxDecoration(color: Colors.black12,
           //       borderRadius: BorderRadius.circular(20)),
           // ),
           // SizedBox(height: 20),
           // Text("Snake Day",style: TextStyle(fontSize: 20),),
           // SizedBox(height: 20),
           // Text("07:24PM,2022/3/4"),
           // SizedBox(height: 20),
           // Text("March 30th")
    //      ],
    //   ),
    // // );
    //   ]
    //
    )
     );

}
