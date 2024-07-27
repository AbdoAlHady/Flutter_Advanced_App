
import 'package:advanced_flutter_app/features/home/ui/widgets/doctors/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../data/models/specialization_response.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key,  this.doctorsList});
  final List<Doctors>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList!.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorModel: doctorsList![index],);
        },
      ),
    );
  }
}
