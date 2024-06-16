import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_info.g.dart';

@Riverpod(keepAlive: true)
Raw<NetworkInfo> networkInfo(NetworkInfoRef ref) {
  final connectivity = Connectivity();
  final networkInfo = NetworkInfoImpl(connectivity);
  networkInfo.addListener(() => ref.notifyListeners());
  ref.onDispose(() => networkInfo.dispose());
  return networkInfo;
}

abstract class NetworkInfo {
  bool get isConnected;

  Future<void> startMonitoring();
}

class NetworkInfoImpl with ChangeNotifier implements NetworkInfo {
  final Connectivity _connectivity;
  bool _state = true;

  NetworkInfoImpl(this._connectivity);

  @override
  bool get isConnected => _state;

  @override
  Future<void> startMonitoring() async {
    final connectivityStream = _connectivity.onConnectivityChanged;
    connectivityStream.listen((event) {
      _state = !event.contains(ConnectivityResult.none);
      notifyListeners();
    });
    await _connectivity.checkConnectivity().then((event) {
      _state = !event.contains(ConnectivityResult.none);
      notifyListeners();
    });
  }
}
