import 'package:events_webapp/models/event.dart';

class EventList {
	List<Events>? events;
	Meta? meta;

	EventList({this.events, this.meta});

	EventList.fromJson(Map<String, dynamic> json) {
		if (json['events'] != null) {
			events = <Events>[];
			json['events'].forEach((v) { events!.add(Events.fromJson(v)); });
		}
		meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (events != null) {
      data['events'] = events!.map((v) => v.toJson()).toList();
    }
		if (meta != null) {
      data['meta'] = meta!.toJson();
    }
		return data;
	}
}


class Meta {
	int? total;
	int? took;
	int? page;
	int? perPage;

	Meta({this.total, this.took, this.page, this.perPage});

	Meta.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		took = json['took'];
		page = json['page'];
		perPage = json['per_page'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['total'] = total;
		data['took'] = took;
		data['page'] = page;
		data['per_page'] = perPage;
		return data;
	}
}
