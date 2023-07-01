import 'package:events_webapp/viewmodels/events_provider.dart';
import 'package:events_webapp/views/event_view.dart';
import 'package:events_webapp/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventsView extends ConsumerWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventDataProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Events list"),
        ),
        body: events.when(
            data: (eventList) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Wrap(
                      spacing: 26,
                      runSpacing: 26,
                      children: eventList!.events!
                          .map((e) => EventCard(
                              imageUrl: e.performers!.first.images!.huge!,
                              eventName: e.venue!.name!,
                              eventDate: e.visibleAt!,
                              eventVenue: e.venue!.displayLocation!,
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        EventDetailsPage(eventData: e)));
                              }))
                          .toList(),
                    ),
                  ),
                ),
            error: (err, s) => Center(
                child: Text("Somthing went wrong please try again $err")),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
