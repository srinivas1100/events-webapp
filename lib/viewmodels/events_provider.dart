import 'package:events_webapp/models/event_list.dart';
import 'package:events_webapp/services/event_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventsProvider = Provider<EventService>((ref) => EventService());

final eventDataProvider = FutureProvider<EventList?>((ref) async{
  return await ref.watch(eventsProvider).getAllEvents();
});
