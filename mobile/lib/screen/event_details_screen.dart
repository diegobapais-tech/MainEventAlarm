import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mobile/model/event_details.dart';
import 'package:mobile/data/testing_events.dart';
import 'package:mobile/model/fight.dart';

class EventDetailsScreen extends StatefulWidget {
  final EventDetails eventDetails = testingEventDetails[0];

  EventDetailsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.eventDetails.eventSummary.eventName.split(':')[0],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
            Text(
              widget.eventDetails.eventSummary.eventName.split(':')[1],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double w = constraints.maxWidth;
          final double h = constraints.maxHeight;
          final double containerWidth = 0.9 * w;
          final double containerHeight = 0.25 * h;
          final double fighterBoxWidth = 0.30 * containerWidth;
          final double fighterBoxHeight = 0.45 * containerHeight;
          final double weightClassBoxHeight = 0.17 * containerHeight;
          final double oddsBoxWidth = fighterBoxWidth;
          final double oddsBoxHeight = 0.15 * containerHeight;

          final List<Object> flattenedFightsList =
              widget.eventDetails.flattenedFightsList;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: (0.03 * w)),
            child: ListView.builder(
              itemCount: flattenedFightsList.length,
              itemBuilder: (context, index) {
                final listItem = flattenedFightsList[index];

                switch (listItem) {
                  case String text:
                    return Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );

                  case Fight fight:
                    return Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: containerHeight,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: weightClassBoxHeight,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(width: 1)),
                              ),
                              child: Text('${fight.weightClass} bout'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: fighterBoxWidth,
                                  height: fighterBoxHeight,
                                  color: Colors.amber,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        fight.fighter1.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        fight.fighter1.lastName,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        fight.fighter1.record,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),

                                Text('vs', style: TextStyle(fontSize: 18)),
                                Container(
                                  width: fighterBoxWidth,
                                  height: fighterBoxHeight,
                                  color: Colors.amber,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        fight.fighter2.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        fight.fighter2.lastName,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        fight.fighter2.record,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: oddsBoxWidth,
                                  height: oddsBoxHeight,
                                  color: Colors.pink,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.flag),
                                      SizedBox(width: (oddsBoxWidth * 0.05)),
                                      Text(
                                        fight.fighter1.nationality,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),

                                Text(fight.odds.fighter1),
                                SizedBox(width: (containerWidth * 0.1)),
                                Text(fight.odds.fighter2),
                                Container(
                                  width: oddsBoxWidth,
                                  height: oddsBoxHeight,
                                  color: Colors.pink,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.flag),
                                      SizedBox(width: (oddsBoxWidth * 0.05)),
                                      Text(
                                        fight.fighter2.nationality,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border(top: BorderSide(width: 1)),
                                ),
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.alarm))
                              ),
                            ),
                          ],
                        ),
                      ),
                    );

                  default:
                    return SizedBox.shrink();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
