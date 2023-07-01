
class Events {
	String? type;
	int? id;
	String? datetimeUtc;
	Venue? venue;
	bool? datetimeTbd;
	List<Performers>? performers;
	bool? isOpen;
	String? datetimeLocal;
	bool? timeTbd;
	String? shortTitle;
	String? visibleUntilUtc;
	Stats? stats;
	List<Taxonomies>? taxonomies;
	String? url;
	double? score;
	String? announceDate;
	String? createdAt;
	bool? dateTbd;
	String? title;
	double? popularity;
	String? description;
	String? status;
	AccessMethod? accessMethod;
	bool? conditional;
	String? visibleAt;
	String? isVisibleOverride;
	int? tdcPvoId;
	int? tdcPvId;


	Events({this.type, this.id, this.datetimeUtc, this.venue, this.datetimeTbd, this.performers, this.isOpen,  this.datetimeLocal, this.timeTbd, this.shortTitle, this.visibleUntilUtc, this.stats, this.taxonomies, this.url, this.score, this.announceDate, this.createdAt, this.dateTbd, this.title, this.popularity, this.description, this.status, this.accessMethod, this.conditional, this.visibleAt, this.isVisibleOverride, this.tdcPvoId, this.tdcPvId});

	Events.fromJson(Map<String, dynamic> json) {
		type = json['type'];
		id = json['id'];
		datetimeUtc = json['datetime_utc'];
		venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
		datetimeTbd = json['datetime_tbd'];
		if (json['performers'] != null) {
			performers = <Performers>[];
			json['performers'].forEach((v) { performers!.add(Performers.fromJson(v)); });
		}
		isOpen = json['is_open'];
		
		datetimeLocal = json['datetime_local'];
		timeTbd = json['time_tbd'];
		shortTitle = json['short_title'];
		visibleUntilUtc = json['visible_until_utc'];
		stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
		if (json['taxonomies'] != null) {
			taxonomies = <Taxonomies>[];
			json['taxonomies'].forEach((v) { taxonomies!.add(Taxonomies.fromJson(v)); });
		}
		url = json['url'];
		score = json['score'];
		announceDate = json['announce_date'];
		createdAt = json['created_at'];
		dateTbd = json['date_tbd'];
		title = json['title'];
		popularity = json['popularity'];
		description = json['description'];
		status = json['status'];
		accessMethod = json['access_method'] != null ? AccessMethod.fromJson(json['access_method']) : null;
		
		conditional = json['conditional'];
		visibleAt = json['visible_at'];
		isVisibleOverride = json['is_visible_override'];
		tdcPvoId = json['tdc_pvo_id'];
		tdcPvId = json['tdc_pv_id'];
		
		
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['type'] = type;
		data['id'] = id;
		data['datetime_utc'] = datetimeUtc;
		if (venue != null) {
      data['venue'] = venue!.toJson();
    }
		data['datetime_tbd'] = datetimeTbd;
		if (performers != null) {
      data['performers'] = performers!.map((v) => v.toJson()).toList();
    }
		data['is_open'] = isOpen;
		
		data['datetime_local'] = datetimeLocal;
		data['time_tbd'] = timeTbd;
		data['short_title'] = shortTitle;
		data['visible_until_utc'] = visibleUntilUtc;
		if (stats != null) {
      data['stats'] = stats!.toJson();
    }
		if (taxonomies != null) {
      data['taxonomies'] = taxonomies!.map((v) => v.toJson()).toList();
    }
		data['url'] = url;
		data['score'] = score;
		data['announce_date'] = announceDate;
		data['created_at'] = createdAt;
		data['date_tbd'] = dateTbd;
		data['title'] = title;
		data['popularity'] = popularity;
		data['description'] = description;
		data['status'] = status;
		if (accessMethod != null) {
      data['access_method'] = accessMethod!.toJson();
    }
		
		data['conditional'] = conditional;
		data['visible_at'] = visibleAt;
		data['is_visible_override'] = isVisibleOverride;
		data['tdc_pvo_id'] = tdcPvoId;
		data['tdc_pv_id'] = tdcPvId;
		
		return data;
	}
}

class Venue {
	String? state;
	String? nameV2;
	String? postalCode;
	String? name;
	String? timezone;
	String? url;
	double? score;
	Location? location;
	String? address;
	String? country;
	bool? hasUpcomingEvents;
	int? numUpcomingEvents;
	String? city;
	String? slug;
	String? extendedAddress;
	int? id;
	int? popularity;
	AccessMethod? accessMethod;
	int? metroCode;
	int? capacity;
	String? displayLocation;

	Venue({this.state, this.nameV2, this.postalCode, this.name,  this.timezone, this.url, this.score, this.location, this.address, this.country, this.hasUpcomingEvents, this.numUpcomingEvents, this.city, this.slug, this.extendedAddress, this.id, this.popularity, this.accessMethod, this.metroCode, this.capacity, this.displayLocation});

	Venue.fromJson(Map<String, dynamic> json) {
		state = json['state'];
		nameV2 = json['name_v2'];
		postalCode = json['postal_code'];
		name = json['name'];
		
		timezone = json['timezone'];
		url = json['url'];
		score = json['score'];
		location = json['location'] != null ? Location.fromJson(json['location']) : null;
		address = json['address'];
		country = json['country'];
		hasUpcomingEvents = json['has_upcoming_events'];
		numUpcomingEvents = json['num_upcoming_events'];
		city = json['city'];
		slug = json['slug'];
		extendedAddress = json['extended_address'];
		id = json['id'];
		popularity = json['popularity'];
		accessMethod = json['access_method'] != null ? AccessMethod.fromJson(json['access_method']) : null;
		metroCode = json['metro_code'];
		capacity = json['capacity'];
		displayLocation = json['display_location'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['state'] = state;
		data['name_v2'] = nameV2;
		data['postal_code'] = postalCode;
		data['name'] = name;
		
		data['timezone'] = timezone;
		data['url'] = url;
		data['score'] = score;
		if (location != null) {
      data['location'] = location!.toJson();
    }
		data['address'] = address;
		data['country'] = country;
		data['has_upcoming_events'] = hasUpcomingEvents;
		data['num_upcoming_events'] = numUpcomingEvents;
		data['city'] = city;
		data['slug'] = slug;
		data['extended_address'] = extendedAddress;
		data['id'] = id;
		data['popularity'] = popularity;
		if (accessMethod != null) {
      data['access_method'] = accessMethod!.toJson();
    }
		data['metro_code'] = metroCode;
		data['capacity'] = capacity;
		data['display_location'] = displayLocation;
		return data;
	}
}

class Location {
	double? lat;
	double? lon;

	Location({this.lat, this.lon});

	Location.fromJson(Map<String, dynamic> json) {
		lat = json['lat'];
		lon = json['lon'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['lat'] = lat;
		data['lon'] = lon;
		return data;
	}
}

class AccessMethod {
	String? method;
	String? createdAt;
	bool? employeeOnly;

	AccessMethod({this.method, this.createdAt, this.employeeOnly});

	AccessMethod.fromJson(Map<String, dynamic> json) {
		method = json['method'];
		createdAt = json['created_at'];
		employeeOnly = json['employee_only'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['method'] = method;
		data['created_at'] = createdAt;
		data['employee_only'] = employeeOnly;
		return data;
	}
}

class Performers {
	String? type;
	String? name;
	String? image;
	int? id;
	Images? images;
	bool? hasUpcomingEvents;
	bool? primary;
	Stats? stats;
	List<Taxonomies>? taxonomies;
	String? imageAttribution;
	String? url;
	double? score;
	String? slug;
	String? shortName;
	int? numUpcomingEvents;
	String? imageLicense;
	int? popularity;
	String? imageRightsMessage;
	List<Genres>? genres;

	Performers({this.type, this.name, this.image, this.id, this.images,  this.hasUpcomingEvents, this.primary, this.stats, this.taxonomies, this.imageAttribution, this.url, this.score, this.slug,  this.shortName, this.numUpcomingEvents,  this.imageLicense, this.popularity, this.imageRightsMessage, this.genres});

	Performers.fromJson(Map<String, dynamic> json) {
		type = json['type'];
		name = json['name'];
		image = json['image'];
		id = json['id'];
		images = json['images'] != null ? Images.fromJson(json['images']) : null;
		hasUpcomingEvents = json['has_upcoming_events'];
		primary = json['primary'];
		stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
		if (json['taxonomies'] != null) {
			taxonomies = <Taxonomies>[];
			json['taxonomies'].forEach((v) { taxonomies!.add(Taxonomies.fromJson(v)); });
		}
		imageAttribution = json['image_attribution'];
		url = json['url'];
		score = json['score'];
		slug = json['slug'];
		shortName = json['short_name'];
		numUpcomingEvents = json['num_upcoming_events'];
		imageLicense = json['image_license'];
		popularity = json['popularity'];
		imageRightsMessage = json['image_rights_message'];
		if (json['genres'] != null) {
			genres = <Genres>[];
			json['genres'].forEach((v) { genres!.add(Genres.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['type'] = type;
		data['name'] = name;
		data['image'] = image;
		data['id'] = id;
		if (images != null) {
      data['images'] = images!.toJson();
    }
		data['has_upcoming_events'] = hasUpcomingEvents;
		data['primary'] = primary;
		if (stats != null) {
      data['stats'] = stats!.toJson();
    }
		if (taxonomies != null) {
      data['taxonomies'] = taxonomies!.map((v) => v.toJson()).toList();
    }
		data['image_attribution'] = imageAttribution;
		data['url'] = url;
		data['score'] = score;
		data['slug'] = slug;
		data['short_name'] = shortName;
		data['num_upcoming_events'] = numUpcomingEvents;
		data['image_license'] = imageLicense;
		data['popularity'] = popularity;
		data['image_rights_message'] = imageRightsMessage;
		if (genres != null) {
      data['genres'] = genres!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class Images {
	String? huge;

	Images({this.huge});

	Images.fromJson(Map<String, dynamic> json) {
		huge = json['huge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['huge'] = huge;
		return data;
	}
}

class Stats {
	int? eventCount;

	Stats({this.eventCount});

	Stats.fromJson(Map<String, dynamic> json) {
		eventCount = json['event_count'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['event_count'] = eventCount;
		return data;
	}
}

class Taxonomies {
	int? id;
	String? name;
	int? parentId;
	DocumentSource? documentSource;
	int? rank;

	Taxonomies({this.id, this.name, this.parentId, this.documentSource, this.rank});

	Taxonomies.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		parentId = json['parent_id'];
		documentSource = json['document_source'] != null ? DocumentSource.fromJson(json['document_source']) : null;
		rank = json['rank'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['id'] = id;
		data['name'] = name;
		data['parent_id'] = parentId;
		if (documentSource != null) {
      data['document_source'] = documentSource!.toJson();
    }
		data['rank'] = rank;
		return data;
	}
}

class DocumentSource {
	String? sourceType;
	String? generationType;

	DocumentSource({this.sourceType, this.generationType});

	DocumentSource.fromJson(Map<String, dynamic> json) {
		sourceType = json['source_type'];
		generationType = json['generation_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['source_type'] = sourceType;
		data['generation_type'] = generationType;
		return data;
	}
}

class Genres {
	int? id;
	String? name;
	String? slug;
	bool? primary;
	Images? images;
	String? image;
	DocumentSource? documentSource;

	Genres({this.id, this.name, this.slug, this.primary, this.images, this.image, this.documentSource});

	Genres.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		slug = json['slug'];
		primary = json['primary'];
		images = json['images'] != null ? Images.fromJson(json['images']) : null;
		image = json['image'];
		documentSource = json['document_source'] != null ? DocumentSource.fromJson(json['document_source']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['id'] = id;
		data['name'] = name;
		data['slug'] = slug;
		data['primary'] = primary;
		if (images != null) {
      data['images'] = images!.toJson();
    }
		data['image'] = image;
		if (documentSource != null) {
      data['document_source'] = documentSource!.toJson();
    }
		return data;
	}
}





