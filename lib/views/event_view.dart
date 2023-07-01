import 'package:events_webapp/models/event.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  final Events eventData;

  const EventDetailsPage({Key? key, required this.eventData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventData.title!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 16),
            Text(
              'Date: ${eventData.datetimeLocal}',
              style:const TextStyle(fontSize: 18),
            ),
           const SizedBox(height: 16),
            Text(
              'Venue: ${eventData.venue!.name}',
              style:const TextStyle(fontSize: 18),
            ),
           const SizedBox(height: 16),
            Text(
              'City: ${eventData.venue!.city!}',
              style:const TextStyle(fontSize: 18),
            ),
          const  SizedBox(height: 16),
            Text(
              'State: ${eventData.venue!.state!}',
              style:const TextStyle(fontSize: 18),
            ),
           const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child:const Text('Buy Tickets'),
            ),
          ],
        ),
      ),
    );
  }
}
