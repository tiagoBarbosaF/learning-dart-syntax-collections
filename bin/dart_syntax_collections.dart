import 'class/person.dart';
import 'enums/transport.dart';

void main() {
  choiceMeansTransport(Transport.skate);

  Set<String> recordVisits = <String>{};
  recordVisits = recordDestinations('Fortaleza', recordVisits);
  recordVisits = recordDestinations('São Paulo', recordVisits);
  recordVisits = recordDestinations('Bahia', recordVisits);
  recordVisits = recordDestinations('Fortaleza', recordVisits);
  print(recordVisits);

  Map<String, dynamic> recordTravelPrices = {};
  recordTravelPrices['Fortaleza'] = 1300;
  recordTravelPrices['São Paulo'] = 1000;
  recordTravelPrices['Bahia'] = 900;
  recordTravelPrices['Fortaleza'] = 1300;
  recordTravelPrices['Porto Alegre'] = 'Very expensive';

  print(recordTravelPrices);
  print(recordTravelPrices['Bahia']);

  Person person = Person('Tiago', 37, true);
  print(person.toMap());

}

choiceMeansTransport(Transport transport) {
  switch (transport) {
    case Transport.car:
      print('I\'m going by car.');
      break;
    case Transport.bicycle:
      print('I\'m going by bicycle.');
      break;
    case Transport.train:
      print('I\'m going by train.');
      break;
    default:
      print('I\'m going to an adventure. Doesn\'t matter was the method.');
      break;
  }
}

recordDestinations(String destination, Set<String> database) {

  database.add(destination);

  return database;
}
