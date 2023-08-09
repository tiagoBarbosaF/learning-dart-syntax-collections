import '../enums/transport.dart';

class Travel {
  static String workCode = "DSDUISH";
  double money = 0;
  Transport transport;
  Set<String> recordVisits = <String>{};
  Map<String, dynamic> recordTravelPrices = {};
  int _totalLocalVisits = 0;

  Travel({required this.transport});

  int get totalLocalVisits => _totalLocalVisits;

  set totalLocalVisits(int value) {
    value < 10 ? _totalLocalVisits += value : print("No no no, just stop!");
  }

  printCode() {
    print(workCode);
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

  visit(String local) {
    recordVisits.add(local);
    _totalLocalVisits++;
  }

  travelPrices(String local, dynamic price) {
    recordTravelPrices[local] = price;
  }
}
