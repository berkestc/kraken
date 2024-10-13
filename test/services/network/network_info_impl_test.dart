import "package:cross_connectivity/cross_connectivity.dart";
import "package:flutter_test/flutter_test.dart";
import "package:kraken/services/network/network_info_impl.dart";
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";

import "network_info_impl_test.mocks.dart";

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfoImpl = NetworkInfoImpl(connectivity: mockConnectivity);
  });

  group("isConnected", () {
    test("should forward the call to Connectivity.checkConnection", () async {
      final tHasConnectionFuture = Future.value(true);

      when(mockConnectivity.checkConnection()).thenAnswer((_) => tHasConnectionFuture);

      final result = networkInfoImpl.isConnected;

      verify(mockConnectivity.checkConnection());
      expect(result, tHasConnectionFuture);
    });

    test("should return false when there is no connection", () async {
      when(mockConnectivity.checkConnection()).thenAnswer((_) => Future.value(false));

      final result = await networkInfoImpl.isConnected;

      expect(result, false);
    });

    test("should return true when there is a connection", () async {
      when(mockConnectivity.checkConnection()).thenAnswer((_) => Future.value(true));

      final result = await networkInfoImpl.isConnected;

      expect(result, true);
    });
  });
}
