import 'package:flutter/material.dart';
import 'package:pro_cris_flutter/components/organisms/pro_cris_header.dart';

import 'package:pro_cris_flutter/components/atoms/appointments_icon.dart';
import 'package:pro_cris_flutter/components/atoms/students_icon.dart';
import 'package:pro_cris_flutter/styles/pro_cris_colors.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProCrisHeader(),
      body: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Column(
          children: [
            Material(
              color: ProCrisColors.purple[300],
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: ProCrisColors.purple[100]!,
                      width: 2,
                    ),
                  ),
                ),
                child: TabBar(
                  indicatorColor: ProCrisColors.gold[400],
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  labelPadding: EdgeInsets.only(bottom: 0, top: 0),
                  tabs: [
                    Tab(
                      icon: AppointmentsIcon(),
                      text: 'Rotina',
                      iconMargin: EdgeInsets.all(0),
                      height: 46,
                    ),
                    Tab(
                      icon: StudentsIcon(),
                      text: 'Alunos',
                      iconMargin: EdgeInsets.all(0),
                      height: 46,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text('Aulas'),
                  ),
                  Center(
                    child: Text('Alunos'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
