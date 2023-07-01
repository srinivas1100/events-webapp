import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {Key? key,
      required this.imageUrl,
      required this.eventName,
      required this.eventDate,
      required this.eventVenue, required this.onTap})
      : super(key: key);
  final String imageUrl;
  final String eventName;
  final String eventDate;
  final String eventVenue;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 350,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(-2, -2)),
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(2, 2))
            ],
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageUrl))),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eventName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      eventDate,
                      style: const TextStyle(color: Colors.black54),
                    ),
                    Text(eventVenue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
