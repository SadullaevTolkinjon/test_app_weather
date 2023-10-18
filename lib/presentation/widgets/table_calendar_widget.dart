import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/constants/icons/icon_const.dart';

class TableCalendarWidget extends StatelessWidget {
  TableCalendarWidget({
    super.key,
    required this.onDaySelected,
    required this.onRangeSelected,
    required this.focusedDay,
  });
  final Function(DateTime, DateTime) onDaySelected;
  final Function(DateTime?, DateTime?, DateTime) onRangeSelected;
  final DateTime focusedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: focusedDay,
      currentDay: focusedDay,
      firstDay: DateTime(1900),
      lastDay: DateTime(2030),
      // selectedDayPredicate: (day) => ,
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonShowsNext: true,
        formatButtonVisible: false,
        leftChevronIcon: ChevronButton(
          iconPath: IconConstants.arrow_back,
        ),
        rightChevronIcon: ChevronButton(
          iconPath: IconConstants.arrow_forward,
        ),
        titleTextStyle: TextStyle(
          color: ColorConstants.darkBlue,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      calendarStyle: CalendarStyle(
        todayTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorConstants.white),
        defaultTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorConstants.darkBlue),
        holidayTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorConstants.darkBlue),
        weekendTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorConstants.darkBlue),
        todayDecoration: const BoxDecoration(
          // borderRadius: BorderRadius.all(
          //   Radius.circular(8),
          // ),
          //  shape: BoxShape.rectangle,
          color: Color(0XFF1762B8),
        ),
        selectedDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          shape: BoxShape.rectangle,
          color: Color(0XFF1762B8),
        ),
        // disabledDecoration:  const BoxDecoration(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(8),
        //   ),
        //   shape: BoxShape.rectangle,
        //   color: Color(0XFF1762B8),
        // ),
        // defaultDecoration:  const BoxDecoration(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(8),
        //   ),
        //   shape: BoxShape.rectangle,
        //   color: Color(0XFF1762B8),
        // ),
      ),
      // calendarBuilders: CalendarBuilders(
      //   selectedBuilder: (context, day, focusedDay) => Container(
      //     color: ColorConstants.darkBlue,
      //     height: 40,
      //     width: 40,
      //     child: Text(day.toString()),
      //   ),
      // ),
      onDaySelected: (selectedDay, focusedDay) =>
          onDaySelected(selectedDay, focusedDay),
      onRangeSelected: (start, end, focusedDay) =>
          onRangeSelected(start, end, focusedDay),
    );
  }
}

class ChevronButton extends StatelessWidget {
  const ChevronButton({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(
          color: ColorConstants.black,
        ),
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(iconPath),
    );
  }
}
