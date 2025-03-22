/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Game
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  Game._({
    required this.correct,
    required this.timestamp,
    required this.duration,
    required this.guesses,
  });

  factory Game({
    required int correct,
    required DateTime timestamp,
    required Duration duration,
    required List<int> guesses,
  }) = _GameImpl;

  factory Game.fromJson(Map<String, dynamic> jsonSerialization) {
    return Game(
      correct: jsonSerialization['correct'] as int,
      timestamp:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['timestamp']),
      duration:
          _i1.DurationJsonExtension.fromJson(jsonSerialization['duration']),
      guesses:
          (jsonSerialization['guesses'] as List).map((e) => e as int).toList(),
    );
  }

  int correct;

  DateTime timestamp;

  Duration duration;

  List<int> guesses;

  /// Returns a shallow copy of this [Game]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Game copyWith({
    int? correct,
    DateTime? timestamp,
    Duration? duration,
    List<int>? guesses,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'correct': correct,
      'timestamp': timestamp.toJson(),
      'duration': duration.toJson(),
      'guesses': guesses.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'correct': correct,
      'timestamp': timestamp.toJson(),
      'duration': duration.toJson(),
      'guesses': guesses.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _GameImpl extends Game {
  _GameImpl({
    required int correct,
    required DateTime timestamp,
    required Duration duration,
    required List<int> guesses,
  }) : super._(
          correct: correct,
          timestamp: timestamp,
          duration: duration,
          guesses: guesses,
        );

  /// Returns a shallow copy of this [Game]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Game copyWith({
    int? correct,
    DateTime? timestamp,
    Duration? duration,
    List<int>? guesses,
  }) {
    return Game(
      correct: correct ?? this.correct,
      timestamp: timestamp ?? this.timestamp,
      duration: duration ?? this.duration,
      guesses: guesses ?? this.guesses.map((e0) => e0).toList(),
    );
  }
}
