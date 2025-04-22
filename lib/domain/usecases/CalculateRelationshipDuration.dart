import 'package:couple_time_app/domain/entities/relationship.dart';

class CalculateRelationshipDuration {
  String call (Relationship relationship){
    final DateTime now = DateTime.now();
    final Duration duration = now.difference(relationship.startDate);

    final int hours = duration.inHours % 24;
    final int minutes = duration.inMinutes % 60;
    final int seconds = duration.inSeconds % 60;
    int years = now.year - relationship.startDate.year;
    int months = now.month- relationship.startDate.month;
    int days = now.day- relationship.startDate.day;

    if (days<0){
      months = months - 1;
      days = days + DateTime(now.year, now.month, 0).day;
    }

    if (months<0){
      years = years - 1;
      months = months + 12;
    }


    return 'O Casal ${relationship.name1} e ${relationship.name2} estão juntos há $years years, $months months, $days days, $hours hours, $minutes minutes, $seconds seconds.';
  }
}