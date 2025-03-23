import 'dart:math';

import 'package:numguess_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GuessEndpoint extends Endpoint {
  Stream<GuessResponses?> guessStream(
      Session session, Stream<int> stream) async* {
    session.log(
        "Guess Endpoint called! User ID: ${(await session.authenticated)?.userId}");
    int correct = Random().nextInt(100) + 1;
    List<int> guesses = [];
    late DateTime startTime;
    await for (int guess in stream) {
      if (guesses.isEmpty) startTime = DateTime.now();
      guesses.add(guess);
      //* C/H/L Checks
      if (guess == correct) {
        yield GuessResponses.correct;
        break;
      }
      if (guess > correct) {
        yield GuessResponses.lower;
      }
      if (guess < correct) {
        yield GuessResponses.higher;
      }
    }
    final authInfo = await (session.authenticated);
    if (authInfo != null) {
      final game = Game(
          correct: correct,
          timestamp: DateTime.now(),
          duration: DateTime.now().difference(startTime),
          guesses: guesses);
      //* Add game to database
      final userData = await User.db.findById(session, authInfo.userId);
      if (userData == null) return;
      userData.games.add(game);
      final updatedUser = await User.db.updateRow(session, userData);
      session.log("Updated user data! New user: $updatedUser");
    }
  }
}
