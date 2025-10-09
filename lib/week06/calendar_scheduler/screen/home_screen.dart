import 'package:myapp/week05/calendar_scheduler/component/main_calendar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/week05/calendar_scheduler/component/schedule_card.dart';
import 'package:myapp/week05/calendar_scheduler/component/today_banner.dart';
import 'package:myapp/week06/calendar_scheduler/component/schedule_bottom_sheet.dart';
import 'package:myapp/week05/calendar_scheduler/const/colors.dart';


class HomeScreen extends StatefulWidget {
  // StatelessWidget에서 StatefulWidget으로 전환
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedData = DateTime.utc( // 선택된 날짜를 관리할 변수
    DateTime.now().year,
    DateTime.now().month,
    DataTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    // build() 함수 내부 Scaffold 위젯
    return Scaffold(
      floatingActionButton: FloatingActionButton( // 새 일정 버튼
        backgroundColor: PRIMARY_COLOR,
        onPressed: () {
          showModalBottomSheet( // BottomSheet 열기
            context: context,
            isDismissible: true,  // 배경 탭했을 때 bottomSheet 닫기
            builder: (_) => ScheduleBottomSheet(),
            
          )
        }
      )
    )
  }
}