import 'class/travel.dart';
import 'enums/transport.dart';

void main() {
  Travel travel = Travel(transport: Transport.airplane);

  print(travel.totalLocalVisits);

  travel.visit("Museum");

  print(travel.totalLocalVisits);

  travel.totalLocalVisits = 10;

  print(travel.totalLocalVisits);
}
