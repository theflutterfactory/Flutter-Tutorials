import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final String title;
  final Widget body;

  InfoCard({
    @required this.title,
    @required this.body,
  });

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            widget.body,
          ],
        ),
      ),
    );
  }
}
