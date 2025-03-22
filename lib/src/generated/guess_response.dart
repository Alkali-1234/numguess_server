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
import 'guess_responses.dart' as _i2;

abstract class GuessResponse
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  GuessResponse._({required this.response});

  factory GuessResponse({required _i2.GuessResponses response}) =
      _GuessResponseImpl;

  factory GuessResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return GuessResponse(
        response: _i2.GuessResponses.fromJson(
            (jsonSerialization['response'] as int)));
  }

  _i2.GuessResponses response;

  /// Returns a shallow copy of this [GuessResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  GuessResponse copyWith({_i2.GuessResponses? response});
  @override
  Map<String, dynamic> toJson() {
    return {'response': response.toJson()};
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {'response': response.toJson()};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _GuessResponseImpl extends GuessResponse {
  _GuessResponseImpl({required _i2.GuessResponses response})
      : super._(response: response);

  /// Returns a shallow copy of this [GuessResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  GuessResponse copyWith({_i2.GuessResponses? response}) {
    return GuessResponse(response: response ?? this.response);
  }
}
