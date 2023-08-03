import 'enums/transport.dart';

void main() {
  choiceMeansTransport(Transport.skate);
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
