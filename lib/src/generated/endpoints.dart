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
import '../endpoints/create_user_data_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/get_user_data_endpoint.dart' as _i4;
import '../endpoints/guess_endpoint.dart' as _i5;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'createUserData': _i2.CreateUserDataEndpoint()
        ..initialize(
          server,
          'createUserData',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'getUserData': _i4.GetUserDataEndpoint()
        ..initialize(
          server,
          'getUserData',
          null,
        ),
      'guess': _i5.GuessEndpoint()
        ..initialize(
          server,
          'guess',
          null,
        ),
    };
    connectors['createUserData'] = _i1.EndpointConnector(
      name: 'createUserData',
      endpoint: endpoints['createUserData']!,
      methodConnectors: {
        'createUserData': _i1.MethodConnector(
          name: 'createUserData',
          params: {
            'userInfo': _i1.ParameterDescription(
              name: 'userInfo',
              type: _i1.getType<_i6.UserInfo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['createUserData'] as _i2.CreateUserDataEndpoint)
                  .createUserData(
            session,
            params['userInfo'],
          ),
        )
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['getUserData'] = _i1.EndpointConnector(
      name: 'getUserData',
      endpoint: endpoints['getUserData']!,
      methodConnectors: {
        'getUserData': _i1.MethodConnector(
          name: 'getUserData',
          params: {
            'userInfo': _i1.ParameterDescription(
              name: 'userInfo',
              type: _i1.getType<_i6.UserInfo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['getUserData'] as _i4.GetUserDataEndpoint).getUserData(
            session,
            params['userInfo'],
          ),
        )
      },
    );
    connectors['guess'] = _i1.EndpointConnector(
      name: 'guess',
      endpoint: endpoints['guess']!,
      methodConnectors: {
        'guessStream': _i1.MethodStreamConnector(
          name: 'guessStream',
          params: {},
          streamParams: {
            'stream': _i1.StreamParameterDescription<int>(
              name: 'stream',
              nullable: false,
            )
          },
          returnType: _i1.MethodStreamReturnType.streamType,
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
            Map<String, Stream> streamParams,
          ) =>
              (endpoints['guess'] as _i5.GuessEndpoint).guessStream(
            session,
            streamParams['stream']!.cast<int>(),
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i6.Endpoints()..initializeEndpoints(server);
  }
}
