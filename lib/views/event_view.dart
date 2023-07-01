import 'package:events_webapp/models/event.dart';
import 'package:events_webapp/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  final Events eventData;
  final String imageUrl;

  const EventDetailsPage(
      {Key? key, required this.eventData, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(eventData.title!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imageUrl)))),
                  ),
                  Expanded(
                    child: VenueDetailsPage(
                      venue: eventData.venue!,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Performers",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: eventData.performers!.length,
                      itemBuilder: (context, index) {
                        Performers performers = eventData.performers![index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: EventCard(
                              imageUrl: performers.image!,
                              eventName: performers.name!,
                              eventDate: performers.type!,
                              eventVenue: performers.slug!,
                              onTap: () {}),
                        );
                      },
                    ),
                  ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VenueDetailsPage extends StatelessWidget {
  const VenueDetailsPage({super.key, required this.venue});
  final Venue venue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${venue.name}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text('Address: ${venue.address}'),
            Text('City: ${venue.city}'),
            Text('State: ${venue.state}'),
            Text('Postal Code: ${venue.postalCode}'),
            Text('Country: ${venue.country}'),
            Text('Timezone: ${venue.timezone}'),
            const SizedBox(height: 16),
            const Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text('Number of Upcoming Events: ${venue.numUpcomingEvents}'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Perform action when the button is pressed.
              },
              child: const Text('See All Events'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Venue Website',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                // Open the URL in a web browser or WebView.
              },
              child: Text(
                venue.url!,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ));
  }
}
