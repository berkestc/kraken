import "dart:async";

import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";
import "package:fpdart/fpdart.dart";
import "package:kraken/constants/failure_messages.dart";
import "package:kraken/core/models/failure/failure.dart";
import "package:kraken/services/network/network_info.dart";
import "package:kraken/services/network/network_service_impl.dart";
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";

import "network_service_impl_test.mocks.dart";

@GenerateMocks([Dio, NetworkInfo])
void main() {
  late NetworkServiceImpl networkService;
  late MockDio mockDio;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockDio = MockDio();
    mockNetworkInfo = MockNetworkInfo();
    networkService = NetworkServiceImpl(mockDio, networkInfo: mockNetworkInfo);
  });

  group("NetworkServiceImpl", () {
    const testUrl = "https://example.com";
    final response = Response<Map<String, dynamic>>(
      data: {"key": "value"},
      requestOptions: RequestOptions(path: testUrl),
    );

    test("should return a successful response when connected and get request succeeds", () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockDio.get(testUrl)).thenAnswer((_) async => response);

      final result = await networkService.get(testUrl);

      expect(result, equals(right(response)));
      verify(mockNetworkInfo.isConnected);
      verify(mockDio.get(testUrl));
    });

    test("should return Failure.noConnection when not connected to the network", () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      final result = await networkService.get(testUrl);

      expect(result, equals(left(const Failure.noConnection(noConnectionMessage))));
      verify(mockNetworkInfo.isConnected);
      verifyNever(mockDio.get(any));
    });

    test("should return Failure.connectionTimedOut when Dio throws connection timeout exception", () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockDio.get(testUrl)).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: testUrl),
          type: DioExceptionType.connectionTimeout,
        ),
      );

      final result = await networkService.get(testUrl);

      expect(result, equals(left(const Failure.connectionTimedOut(connectionTimedOutMessage))));
      verify(mockNetworkInfo.isConnected);
      verify(mockDio.get(testUrl));
    });

    test("should return Failure.unknownError when an unknown error occurs", () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockDio.get(testUrl)).thenThrow(Exception());

      final result = await networkService.get(testUrl);

      expect(result, equals(left(const Failure.unknownError(unknownErrorMessage))));
      verify(mockNetworkInfo.isConnected);
      verify(mockDio.get(testUrl));
    });

    test("should return Failure.connectionTimedOut when TimeoutException is thrown", () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockDio.get(testUrl)).thenThrow(TimeoutException("Connection timed out"));

      final result = await networkService.get(testUrl);

      expect(result, equals(left(const Failure.connectionTimedOut(connectionTimedOutMessage))));
      verify(mockNetworkInfo.isConnected);
      verify(mockDio.get(testUrl));
    });
  });
}
