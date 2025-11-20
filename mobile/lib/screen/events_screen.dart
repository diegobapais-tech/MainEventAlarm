import 'package:flutter/material.dart';
import 'package:mobile/screen/event_details_screen.dart';
import 'package:mobile/data/testing_events.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  void _selectEvent(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EventDetailsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Event Alarm')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double w = constraints.maxWidth;
          final double h = constraints.maxHeight;
          final double containerWidth = 0.9 * w;
          final double containerHeight = 0.1 * h;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: (0.03 * w)),
            child: ListView.builder(
              itemCount: testingEvents.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _selectEvent(context);
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Card(
                    child: Container(
                      width: containerWidth,
                      height: containerHeight,
                      padding: EdgeInsets.symmetric(
                        vertical: (0.05 * containerHeight),
                        horizontal: (0.03 * containerWidth),
                      ),
                      child: Column(
                        children: [
                          Text(
                            testingEvents[index].eventName,
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(testingEvents[index].date2String),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(testingEvents[index].arena),
                                  Text(testingEvents[index].location),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
