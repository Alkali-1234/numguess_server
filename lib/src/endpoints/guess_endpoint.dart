import 'dart:math';

import 'package:numguess_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GuessEndpoint extends Endpoint {
  Stream<GuessResponses?> guessStream(
      Session session, Stream<int> stream) async* {
    session.log("Guess Endpoint");
    final authInfo = await (session.authenticated);
    if (authInfo != null) {
      //* TODO: Authenticated users
    }
    int correct = Random().nextInt(100) + 1;
    await for (int guess in stream) {
      if (guess == correct) {
        yield GuessResponses.correct;
        return;
      }
      if (guess > correct) {
        yield GuessResponses.lower;
      }
      if (guess < correct) {
        yield GuessResponses.higher;
      }
    }
  }
}
