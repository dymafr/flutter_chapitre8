import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../models/trip.model.dart';

class TripOverview extends StatelessWidget {
  final VoidCallback setDate;
  final Trip mytrip;

  double get amount {
    return 0;
  }

  const TripOverview({super.key, required this.setDate, required this.mytrip});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Text(
            'Paris',
            style: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  mytrip.date != null
                      ? DateFormat('d/M/y').format(mytrip.date!)
                      : 'Sélectionnez une date',
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: setDate,
                child: const Text('Sélectionnez une date'),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              const Expanded(
                child: Text(
                  'Montant / personne',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                '$amount€',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}