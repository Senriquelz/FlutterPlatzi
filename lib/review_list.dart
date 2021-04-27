import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Rodolfo neutron", "1 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/people2.jpg", "Roberto Flores", "2 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/people3.jpg", "Jean Lindao", "2 review · 2 photos", "There is an amazing place in Sri Lanka"),

      ],
    );
  }

}