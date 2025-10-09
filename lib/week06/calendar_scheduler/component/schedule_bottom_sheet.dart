import 'package:myapp/week06/calendar_scheduler/component/custom_text_field.dart';
import 'package:myapp/week05/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  @override
  Widget build(BuildContext context) {
    // 키보드 높이 가져오기
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return SafeArea(
      child: Container(
        // 화면에 반 높이에 키보드 높이 추가하기
        height: MediaQuery.of(context).size.height / 2 + bottomInset, //
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset), // 패딩에 키보드 높이 추가해서 위젯 전반적으로 위로 올려주
        )
      )
    )
  }
}