import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class NoteLogic extends GetxController {
  final NoteState state = NoteState(tittle: '', Date: '', name: '');
  List<IconData> listoficons = [

    Icons.add_alarm,
    Icons.abc_outlined,
    Icons.ac_unit,
    Icons.access_time_filled_outlined,
    Icons.accessibility_rounded,
    Icons.add_chart,
    Icons.account_box_sharp,
    Icons.access_time,
    Icons.add_alert,
    Icons.add_card_sharp,
    Icons.add_chart_outlined,
    Icons.account_box_sharp
  ];
  List<NoteState> modellist = [
NoteState(tittle: "MY DAILY APP", Date: "2022/3/4", name: "ONYEKA", ),
    NoteState(tittle: "Todays logic", Date: "2022/5/24", name: "victor", ),
    NoteState(tittle: "coding easy", Date: "2022/24/8", name: "major", ),
    NoteState(tittle: "AI wizerd", Date: "2022/6/10", name: "General", ),

  ];

}
