import 'package:events_webapp/models/event.dart';
import 'package:events_webapp/models/event_list.dart';
import 'package:events_webapp/services/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventService {
  ApiService apiService = ApiService();
  Future<EventList?> getAllEvents() async {
    var response = await apiService.get(
        uri:
            "https://api.seatgeek.com/2/events?client_id=MzQ2NDI4NzV8MTY4ODE4MzQ2My43MjQzMTYx");
    if (response != null) {
      return EventList.fromJson(response);
    } else {
      return null;
    }
  }

  Future<Events?> getEvent({required String eventId}) async {
    var response = await apiService.get(
        uri:
            "https://api.seatgeek.com/2/events/$eventId?client_id=MzQ2NDI4NzV8MTY4ODE4MzQ2My43MjQzMTYx");
    if (response != null) {
      return Events.fromJson(response);
    } else {
      return null;
    }
  }
}

final eventsProvider = Provider<EventService>((ref) => EventService());

final eventDataProvider = FutureProvider<EventList?>((ref) async{
  return await ref.watch(eventsProvider).getAllEvents();
});
