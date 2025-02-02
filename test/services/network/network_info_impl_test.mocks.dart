// Mocks generated by Mockito 5.4.0 from annotations
// in kraken/test/services/network/network_info_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:cross_connectivity/src/connectivity.stub.dart' as _i3;
import 'package:cross_connectivity/src/core/connectivity_service.interface.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rxdart/rxdart.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeValueStream_0<T> extends _i1.SmartFake
    implements _i2.ValueStream<T> {
  _FakeValueStream_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Connectivity].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivity extends _i1.Mock implements _i3.Connectivity {
  MockConnectivity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ValueStream<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _FakeValueStream_0<bool>(
          this,
          Invocation.getter(#isConnected),
        ),
      ) as _i2.ValueStream<bool>);

  @override
  _i2.ValueStream<_i4.ConnectivityStatus> get onConnectivityChanged =>
      (super.noSuchMethod(
        Invocation.getter(#onConnectivityChanged),
        returnValue: _FakeValueStream_0<_i4.ConnectivityStatus>(
          this,
          Invocation.getter(#onConnectivityChanged),
        ),
      ) as _i2.ValueStream<_i4.ConnectivityStatus>);

  @override
  _i5.Future<bool> checkConnection() => (super.noSuchMethod(
        Invocation.method(
          #checkConnection,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<_i4.ConnectivityStatus> checkConnectivity() => (super.noSuchMethod(
        Invocation.method(
          #checkConnectivity,
          [],
        ),
        returnValue: _i5.Future<_i4.ConnectivityStatus>.value(
            _i4.ConnectivityStatus.wifi),
      ) as _i5.Future<_i4.ConnectivityStatus>);

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
