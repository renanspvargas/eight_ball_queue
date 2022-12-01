import 'package:eight_ball_queue_manager/imports.dart';

class PlayerRepository extends ChangeNotifier {
  late Database db;
  final List<Player> _players = [];

  get players => _players;
}
